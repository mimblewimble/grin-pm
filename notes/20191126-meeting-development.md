# Meeting Notes: Development, Nov 26 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5ddd3e101659720ca8ae0dd0). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- DavidBurkett
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

* _yeastplume_:_ Hope everyone is okay and back in their usual places after a successful grincon1 that got a bit blurry towards the end. Okay, so a little bit of a distraction last week that I don't think we need to dwell over. Despite all that, things still moving ahead quickly on development fronts. @antiochp mostly been working on faster sync enablement according to the RFC, @tromp has been cooking a new bird and preparing the HF code, I've mostly been trying to get payment proofs in place, mostly there just need some API honing.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/218) accepted, with a question about API v2 added in Other questions.

### 3. Action point follow-up

#### 3.1 Open RFCs

* _lehnberg:_ Shepherds assigned as per the [dec 05  governance meeting](https://github.com/mimblewimble/grin-pm/blob/master/notes/20191105-meeting-governance.md#62-rfcs).
* _yeastplume:_ I think 2 RFCs that should really have been moved into FCP aren't there yet: 
   * Improved Wallet State Mgmt - @quentinlesceller;
   * Tor transaction building - @yeastplume;

* _yeastplume:_ So on TOR transaction building, I just had a couple of comments for @DavidBurkett to add a couple more bits of detail on the derivation path, I think that was it. On improved wallet management, there was a small addition suggested by @jaspervdm, but I don't think that needs to prevent it entering FCP as is.
   * _DavidBurkett:_ Ah, never saw those comments. I'll get to that in the next day or so.

* _quentinlesceller:_ Regarding improved wallet state mgmt, it is actually in FCP, I announced on keybase, but not on the PR, will do so now.

### 4. Release planning

#### 4.1 v3.0.0 status
* _lehnberg:_ Planning issue: https://github.com/mimblewimble/grin-pm/issues/204, [node milestone](https://github.com/mimblewimble/grin/milestone/15), [wallet milestone](https://github.com/mimblewimble/grin-wallet/milestone/6).

_The meeting reviewed and refreshed statues of individual items._

* _yeastplume:_ [9 (File locks for wallet)](https://github.com/mimblewimble/grin-wallet/issues/148) won't be happening just now, it was something I thought might be needed but won't be for the time being, so let's remove that from scope.

* _lehnberg:_ Looking at [our schedule](https://forum.grin.mw/t/grin-v3-0-0-hard-fork-upgrade-jan-2020/6036), we should be releasing beta binaries in 6 days (Tuesday next week. Is that realistic?
   * _yeastplume:_ Let's say Thursday next week instead? 

* _lehnberg:_ On Sunday this week, Dec 1, we're also meant to:
   > Communicate with exchanges and mining pools to make sure everyone is aware and are getting ready for the upgrade, offering assistance as required.

   I could ping them in the ecosystem Keybase team. Anything else we should be doing in addition to this?
   * _quentinlesceller:_ Communicate with mining software devs.
   * _tromp:_ I can post messages in all bitcointalk grin miner threads.
   * _yeastplume:_ There's a lot of changes need to be communicated. I need to collect all the ones I know about into a wiki.

* _lehnberg:_ Okay so maybe:
   * Target Monday Dec 2 for that information document / post about what exactly 3.0.0 contains
   * Target Thursday Dec 5 for first beta binaries

* _tromp:_ floonet hardfork height has been tentatively set at 298_080,  roughly on December 19th at 12:00 UTC.

### 5. Package manager status

* _lehnberg:_ How's that going, what are we doing?
https://github.com/mimblewimble/grin-pm/blob/master/notes/20191112-meeting-development.md#51-package-managers.
Quentin [your proposal](https://github.com/mimblewimble/grin/pull/3107#issuecomment-554456707) was interesting, should we create a `/packaging` repo?
   * _quentinlesceller:_ Reference https://github.com/bitcoin-core/packaging. BTW I think we should have some kind of check list or automated process for release for snap, choco, brew, apt.
   * _antiochp:_ Makes a lot of sense
   * _lehnberg:_ @JosephGoulden had some ideas about automated processes as well I believe so might make sense to collaborate on that.
   * _yeastplume:_ Yep, I think it would be fine to keep them all in one place, we'd just perhaps need to create a 'packaging' team of people who maintain packages and have write access to that repo. @quentinlesceller would you like to drive that?
   * _quentinlesceller:_ Yes, I'll create a meta-issue to track.

### 6. Project focus 

![radar-chart](https://i.imgur.com/oMhih7N.png)

* _lehnberg:_ So I touched upon this in the talk at grincon1, and sth that was triggered by conversations with @jaspervdm. We have this tl;dr of grin aiming to be privacy-preserving, scalable, minimal/lightweight, and fair (which includes being open/inclusive), which I think captures our core values quite well.
  
   Mimblewimble as proposed was nice as it offered better scalability and better privacy for the same/similar security as bitcoin, in other words more for less, and very few trade-offs aside from the unaudited supply (which is not an issue unless DLP assumption does not hold).

   But moving forward, some ideas/improvements might come with different, more difficult trade-offs. We may for example need to sacrifice some privacy for added scalability, or vice versa. And my question then is, how are our four values ranked between themselves? If we could map them out in a radar chart how would this look?

   For example, we’re often being labelled (and label ourselves at times) as a ‘privacy coin’, but at the same time, I see nobody advocating for the same type of on-chain privacy as shielded Zcash for example. Or that we adopt Monero ring signatures for that matter. So clearly we’re not ready to do do “whatever it takes” to get to “the best possible privacy” the current state of tech can offer us.

   In the past I’ve described Grin as taking a “Goldie-locks approach” to many of these things. Not too hot, not too cold, just about right. But not sure how accurate that really is of a depiction. And also not sure how well it serves us. “Jack of all trades, master of none” might not be the best description for a cryptocurrency to have.

   If we’d be able to achieve some kind of general agreement about where our priorities should lie, what’s really important, and what’s much less so, it would set a more specific direction for us to pursue. It would make it easier to decide which of the Open Research Problems that matter most to us right now. We are able to optimise better for a specific functionality/outcome.

* _DavidBurkett:_ FWIW, I actually am in favor of something like shielded txs and/or ring signatures. But I am waiting to see what the best possible approach is.

* _yeastplume:_ I think this is a very good discussion to be having. If we decided we wanted to be a privacy coin, there are plenty of things we could throw at it today. But yes, I don't think we want to compromise scalability or rush to include existing techs without more thought and consideration. I also worry somewhat that we're likely to find ourselves ossified in the face of new ideas that have come out and continue to come out since the particular technical decisions were taken to include what's currently in Grin into Grin.
   * _DavidBurkett:_ Yea. Realistically, even a 10x improvement over bitcoin's scalability doesn't make Grin usable as cash without payment channels. So I'm personally willing to sacrifice some scalability for privacy. But it's so early, I don't want to sacrifice the scalability YET, just for some weak existing solution.
   * _yeastplume:_ Can accept that.. no blockchain based currency is ever going to be able to handle cash or visa levels on its own. However, scaling also has implication on fairness and privacy as well.. ideally anyone could run a node without needing loads of expensive hardware.
   * _DavidBurkett:_ Yes, and along that note, the biggest privacy advantage of Grin over most privacy coins is the fact that everybody can run their own node. So we don't want to sacrifice that.

* _lehnberg:_ Another thought: there's been talks about this "compact" chain, BLS signatures + some accumulator or what not. Having sth like this, might give you a very very small chain, but still make it easy (easier even?) to link transactions. What degree of privacy sacrifice would we be willing to accept, to achieve some improved degree of scalability? And, stuff like added hardness assumptions (for instance, those that comes with use of BLS), I imagine scores negatively on the `minimalism` axis.
   * _yeastplume:_ Well.. definitely the `security` axis, which I don't think is represented.
      * _jaspervdm:_ In a way, that's the minimalism axis.  
   * _DavidBurkett:_ I don't understand "minimalism". What's the idea behind striving for minimalism in the first place? Just simpler dev?
      * _lehnberg:_  Well, less is more in the sense of simpler dev, less error prone, and better design in general. If sth is too complicated to verify, then how can you trust it to work as intended?
      * _yeastplume:_ Maybe not simpler dev.. ensure that the technologies that we choose to compliment MW in Grin are elegant and fit nicely rather than creating unwieldy bolt-ons in the name of 'better privacy'.
         * _DavidBurkett:_ Right, so avoid Zcash. But I wouldn't want to limit elegant solutions like BLS just because we want to be "Minimal"
         * _lehnberg:_ BLS might be elegant, but nobody seem to know that the assumptions made in order for it to work holds. So it's not like it comes without added risk. 
      * _tromp:_ I subscribe to "Simple is Beautiful" and MW delivers on that front. It's also minimal in footprint and crypto assumptions.
         * _DavidBurkett:_ Simple may be beautiful, but is simple useful? If we can't provide real privacy, and we only provide linear scaling improvements over bitcoin, what use case does Grin solve?
            * _lehnberg:_ This is a good question.

* _lehnberg:_ Btw, it's also possible that this is not really an issue, i.e. that "trying to do all" of the above at the same time might be a feature rather than a bug. I'm just not completely convinced. And I worry that we'll not be able to make anything more than incremental improvements in that case.

* _DavidBurkett:_ I'm really thinking it's privacy & scalability vs minimalism. I think fairness is already largely covered by our launch, emission schedule, and PoW plan.

* _yeastplume:_ The case of someone behind a TOR node wanting to send grin to someone else via a TOR hidden service, is it really something that nobody would want to be doing just because someone pointed out last week that inputs can be mapped to outputs like we already knew? Honing in a bit, I think we want an answer to the transaction graph issue... not to merge in hastily tomorrow, but it should very much be an area of focus without getting too lost in the clouds.
   * _lehnberg:_ I don't disagree, but... the main issue with the tx graph mapping is the flashlight attack. Monero is susceptible to it as well, all decoy based protocols are.
   Transact enough times with a party, you'll be able to make guesses about where their outputs are going, and where they are being merged with other outputs that possibly belong to them as well. We can come up with lots of clever mitigations, but ultimately, it becomes a statistical analysis problem. And if you're a high value target, a motivated attacker will be able to spend a lot of effort to attempt to deanonymize you.
   * _DavidBurkett:_ All coins aside from Zcash are. But right now, our anonymity set is 1, so if we can increase it to 12, we're arguably "better than Monero", with much better scalability. 
   * _lehnberg:_ Not disagreeing, but I'm wondering whether "better than Monero" is something that matters in this context.
      * _j01tz:_ There is value in increasing the cost to carry out an attack, even if an attack is still possible for a cost.
      * _DavidBurkett:_ It definitely matters. I think you would have to throw out minimalism to beat the flashlight attack.
      * _yeastplume:_ Yes, and my main concern with these is that without a degree in statistics and a lot of time and resources it's more or less impossible to determine how effective any particular approach will be. Granted this is true about everything in an experimental coin, but I think in this case it would be very easy to bung in something that seems like a good idea at the time and gives a lip service like '8x better than Monero' while actually causing ourselves more issues down the line that we just can't foresee
      * _lehnberg:_ yes, and then we leak something on side-channels or whatnot and still fail. In no way do I want to come off as trivialising this, or saying it's not important. I'm just trying to say it's very hard to get right, and it involves more than just making the graph a bit better obfuscated.
      * _DavidBurkett:_ Yea, perhaps we can't get it right though, and we shoot for getting it reasonable. I don't think we need to compete with Zcash. But generally, I agree, solutions need to be very well-vetted before applying them to the base layer of Grin.

  
* _DavidBurkett:_ But back to the original topic. Does anyone think we actually can do any better at scalability without sacrificing minimalism? I really don't.
   * _yeastplume:_ Not with today's technology. So really, it's about how long we're willing to wait or actively research.
   * _DavidBurkett:_ But even with future technology, the best you can do is get rid of kernels and reduce BP sizes.

* _Tromp:_ I'm not convinced we need to have linkability "solved" ASAP. We do need to think about possible mitigations, but as long as they come with compromises of scalability and minimalism, we should not rush to adopt them.
   * _lehnberg:_ I'm also wondering about this. There's a big distinction between what can be achieved using passive or active means here. It might be good to publish a blockchain explorer that links the outputs/inputs of blocks, as it makes it clearer to users that this is something that is possible today and 'comes with the protocol'.
   * _yeastplume:_ Possibly. It might make it clearer that jumping from that to 'That's Yeastplume's wallet!' is a massive stretch. Double down on it for now instead of hastily hacking in a 'solution'
   * _lehnberg:_ Exactly. It's more transparent, one way or the other. And I think we should be as transparent as possible
   * _tromp:_ You mean like a mempool explorer?
   * _lehnberg:_ I would start with simply linking the inputs and outputs. Click on a UTXO commitment in grinscan used as an input, and you go to the tx where it was created as an output. This is the most basic, fundamental linking, and something I think we ought to be VERY transparent about.
   * _tromp:_ I think that'd be a good idea. Especially if we do find cheap (not harming scalability or minimalism much) linkability mitigations and you can clearly see their effect in said explorer.
      * _lehnberg:_ Exactly @tromp, security by obscurity is not really the way to go here, and by producing better tooling, we're levelling the playing field for all players. 
   * _yeastplume:_ Yeah, I like that approach, then it's basically 'challenging' people to see how they can use that info. Then at the very least we might gain more info about how big of a problem it actually is.
   * _lehnberg:_ If we would have had this, then that "attack" last week would have been moot. Sure, maybe the de-aggregation of dandelion-aggregated transactions would have been some kind of revelation, but given how few tx are being aggregated, it would hardly have been news.
   * _yeastplume:_ That would also help us in a second media round where we go 'okay, here you go, here's the transaction link challenge', which I think is more catching than 'we kludged in a solution'
   * _jaspervdm:_ Sounds like a good idea to me, I will look into it.

### 7. Other questions 

#### 7.1 API v2

* _quentinlesceller:_ https://github.com/mimblewimble/grin-rfcs/pull/28#pullrequestreview-317312697. @hashmap idea is to have like 2 tokens: One for wallet and mostly get data; another for Node management. In that sense, I think having 2 different endpoints with two secrets is more logical. Just like the Wallet API. Basically a foreign/owner API. 
* _yeastplume:_ I'm good with that personally, I think splitting up the API logically is a worthy approach
so long as all of the functions needed by a wallet are in the same API.
* _jaspervdm:_ Yep, would be really helpful.
* _quentinlesceller:_ Okay that will requires a bit more work on my side. I'll try to push it tomorrow.

**Meeting adjourned.**
