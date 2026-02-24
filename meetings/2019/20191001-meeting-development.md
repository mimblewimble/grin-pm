# Meeting Notes: Development, Oct 01 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d936a98290b8c354a0baa76). Meeting lasted ~ 50 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- davidburkett
- hashmap
- jaspervdm
- j01tz
- lehnberg
- quentinlesceller
- tromp
- yeastplume


_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_  So most immediate work the past couple of weeks has been on getting the 2.1.0 beta out, we've had a few false starts, and are waiting for [a final (important) issue resolution to be merged](https://github.com/mimblewimble/grin/pull/3069), and then we should have a 2.1.0-beta.3 ready for public consumption. I've also been working on a PoC implementation of [mimblewimble/grin-rfcs#24](https://github.com/mimblewimble/grin-rfcs/pull/24), and results are looking good so far. I hope to have it at the state where tor is (still very optionally) integrated for sends and receives ready for merge into master shortly after the 2.1.0 beta comes out. Anyone have any other dev work they'd like to point out?
   * _quentinlesceller:_ Hopefully I should have a v2 Node API RFC out there soon.
   * _yeastplume:_ Nice, would be good to have that generated in the same way the wallet APIs are done.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/193) accepted.

### 3. Action point follow-up

* _Ignotus removed from security contacts?_ Not actioned yet, [in process](https://github.com/mimblewimble/grin/pull/3009).
* _Canaries set up?_ Not actioned yet, [in process](https://github.com/mimblewimble/grin-security/pull/1).
* _2.1.0 betas out?_ Two betas have been released so far.

### 4. Security

* _j01tz:_  Just waiting on Coinspect to have time to compile things from their end. I'll reach out this week to try to set a hard date. All issues have been addressed and confirmed fixed, just waiting on reporting at this point.

### 5. Status of open RFCs

* _yeastplume:_ So, status of Open RFCs, I don't think much has changed, other than an ongoing PoC for tor integration, as I mentioned.

#### 5.1 Transacting via Tor Hidden Services

[mimblewimble/grin-rfcs#24](https://github.com/mimblewimble/grin-rfcs/pull/24)

* _yeastplume:_ I think after some work and testing and a few refinements and changes I'd be advocating for acceptance of that RFC. Although we won't be able to advocate removing all other forms of exchange just yet, we can certainly include it as optional, even preferred on platforms where it's supported.

* Various questions raised by meeting participants: 
   * What's the adoption path? Is it preferred method on some platforms?  
   * Any peculiarities of service configurations?
   * What's the key derivation path used for service naming?
   * How are addresses handled? Can addresses be reused? Are they stored or managed somewhere?
   * What's the rationale for bundling / non-bundling tor, and which approach is recommended?

* _yeastplume:_ I'm starting to think we should default to preferring it, then degrading gracefully to http with big warnings for the user to install TOR for a better experience, but that can go into the next RFC. For now I will just aim for making it optional via a "tor" method on the send and listener.
* _lehnberg:_ So the current POC sets up a hidden service for the wallet user who runs it?
   * _yeastplume:_ Still working on that, but it generates a hidden service derived from a wallet key derivation path. It's in the most recent push, code to generate service files for one or many keys, and a torrc to run them. Next step is to insert some tor process control lib. I don't think it should be bundled by us, but should use whatever tor is installed on the system, and OS packaging can handle ensuring it's there. (we might want to provide these packages) The process is like, run usual wallet listener on 3415, configure hidden service to proxy between onion address and 3415. For listening. For sending, it's send to a tor process via a socks listener. But this should all become automated, and the only requirement on the client end should be 'tor installed and on path'.
* _DavidBurkett:_ Can you have multiple hidden services on a single port?
  * _yeastplume:_  I believe you can, I'm setting it up so service keys and torrc are generated for a number of wallet-derived keys, not just one.
* _hashmap:_ Do we need tor service on the node side?
  * _yeastplume:_  wallet->Node communication is still via http, something we should look to improve on in the future.
  
* _DavidBurkett:_ Also, it will need another RFC, but I want to reiterate that it would probably be best to include payment proofs before releasing tor tx building.
   * _jaspervdm:_ Were you planning on writing that RFC as well? If not, i could take a stab at it. 
   * _DavidBurkett:_ I was yes, but you're welcome to. Or maybe we can design it together?

### 6. Release planning



#### 6.1 Branching

* _antiochp:_ I have a couple of PRs for master that should not go into 2.1.0 so maybe worth discussing branching for 2.1.0?
   * _yeastplume:_ I think that's a good idea, it would be short-lived enough anyhow, perhaps we can branch on beta.3 release?
   * _antiochp:_ Yeah I'd be good with that - tag it then we can branch off that same sha. Once that one remaining PR is merged in right?
* _quentinlesceller:_ So creating a current/2.1.x branch? Yeah might be a mess but we'll manage :)
* _yeastplume:_ Yes to current/2.1.x, which will release 2.1.0 from
and we'd be retiring current/2.0.x after 2.1.0 is released.

#### 6.2 v3.0.0

* _yeastplume:_ When are we due to have some thoughts in on 3.0.0 planning?
   * _lehnberg:_ My thinking was to get to that immediately once 2.1.0 is out, but we could start before even if you think it makes sense?
   * _yeastplume:_ I think your timing is good. Perhaps add it to next dev meeting and it can be the focus?

* _antiochp:_ Oh forgot to say earlier - I renamed the existing 2.x.x milestone to 3.0.0 in github. I think it kind of ended up being used to tag anything _not_ going into 2.1.0...


### 7. Other questions 

* _jaspervdm:_ I had a thought earlier today that I wanted to bring up. Right now, we only store the kernel excess of a tx if we are the sender and we don't have any change output. I think we should change that to always store the transaction excess for every transaction we insert into the db, regardless if we are the sender or receiver. My reasoning for it is 3-fold:
   * We can't calculate it after the fact, so if the user needs it sometime later for whatever reason, they are out of luck
   * Users can use it to quickly find their tx on block explorers
   * Exchanges/pools/payment providers can use it to check on-chain status without relying on the grin-wallet. They can also communicate it to their users as something that is analogous to an on-chain txid
  
   Not every tx will always have a excess associated to it (for example it won't be recoverable when restoring from seed), but I think its still an improvement for regular operation.
   It would be a change that probably only requires a few lines of code. What do you think?

   * _yeastplume:_ I don't think there's any harm in storing it. Just need to ensure the code that's selectively doing the kernel lookup isn't triggered (I think it's currently based on the presence of a stored kernel excess). Want to get it in soon, though. So I can get this in while we wait for the POW issue to be finalized, and we aim for a beta.3 release tomorrow?
      * _jaspervdm:_ yeah, agreed 
      * _hashmap:_ It works, will address review comments in 5-7 hours, after a meeting at cbase.

**Meeting adjourned.**
