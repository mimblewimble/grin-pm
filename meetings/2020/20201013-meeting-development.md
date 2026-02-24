# Meeting Notes: Development, Oct 13 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 100 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- jaspervdm
- joltz
- lehnberg
- mcmmike
- phyro
- quentinlesceller
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _antiochp:_ Grin v4.1.1 was released last week to fix the sync issue we saw in testnet. @tromp has some new RFCs up for discussion (I guess we can discuss this when we get to RFCs) and PIBD is making good progress thanks to @jaspervdm.
- _tromp:_ Cool; now floonet can be for 2nd layer
   - 👍: _antiochp, quentinlesceller, joltz, lehnberg, vegycslol_

### 2. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/353) with "QA Funding Request Follow up" added.

### 3. Action point follow ups from previous meetings

#### 3.1  [Mitigating re-org risks actions](https://github.com/mimblewimble/grin-pm/issues/327)
- _mcmmike:_ The monitoring system is still running, I have not seen any reorg > 1 lately except the one test we did end of last month. Someone wanted to add a comment to the [forum post](https://forum.grin.mw/t/set-up-monitoring-of-our-p2p-network-in-order-to-detect-any-attacks/) based on the last dev meeting, on how to use it with some post-hooks? Based on our system we are collecting the logs from all nodes at the moment and doing the analysis once a day. But if the hooks are easier to implement we can give it a try. 
   - _lehnberg:_ yes, I that was @jaspervdm IIRC.
   - _jaspervdm:_ Yes my bad, it slipped my mind. The hooks require some state tracking. Cleaner solution, maybe not easier. I will try not to forget to post on the forum. 
   - _mcmmike:_ thank you, we will definitely try it, as I am curious on how they work.

- _antiochp:_ Do we intend to alert or notify somehow based on this analysis?
   - _lehnberg:_ If we're feeling ambitious, we could even have a keybase bot writing in a channel whenever there's a re-org... 
   - _mcmmike:_ I am just providing the data and analysis and you guys/girls have access to it at least all devs. We are changing the format in the upcoming month once we can implement it into our API and from there you can attach a bot, etc.
      - 👍: _antiochp, quentinlesceller, vegycslol_
   - _lehnberg:_ nice
   - _antiochp:_ awesome

- _lehnberg:_ @mcmmike this is doing the community a real favor -- thank you very much for your work with getting this set up!
   - 👍: _antiochp, antiochp, phyro, lehnberg, joltz_

- _mcmmike:_ I can even share our internal syslog script, so additional trusted Grin-node's can be added to our central-logging. Just let me know if you need anything else on the forum or DM.
   - 👍: _antiochp_

### 4. Follow up: Request for funding, [QA team student, Oct-Nov](https://forum.grin.mw/t/request-for-funding-q-a-team-student-for-october-november-2020/7861)

- _antiochp:_ https://forum.grin.mw/t/request-for-funding-qa-team-student-for-october-november-2020/7861/9. I've been out of the loop a bit with this - where are we at currently regarding the QA proposal?
- _lehnberg:_ So as per [last week's meeting notes](https://github.com/mimblewimble/grin-pm/blob/master/notes/20201006-meeting-governance.md#3-request-for-funding-qa-team-student-oct-nov), the action was on @quentinlesceller and @joltz to work with @mcmmike and @mickvd99 to formalize the deliverables a bit.
- _mcmmike:_ By last Friday, Mick and Quentin had a short talk about learning RUST and possible help on small codebase issues. As well as Mick did an update on the possible deliverables on his github: https://github.com/WarmBeer/GrinTesting 
- _quentinlesceller:_ Indeed, I discussed with Mick last Friday trying to see what its skills are and what he will be up to. So far it's an ongoing conversation.
   - 👍: _mcmmike_
   - _antiochp:_ Great - if Mick is open to learning rust and open to helping implement fixes is things are uncovered in testing then that would be awesome, even just to collaborate on fixes etc.
   - ☝️: _vegycslol, quentinlesceller_
   - _quentinlesceller:_ yes that'd be great
   - _mcmmike:_ perhaps its a good idea to connect Mick and Quentin again and let them work out something. In the meantime please go through the Github and let us know if we need to organize it in a different way?
   - _quentinlesceller:_ I'll have a look at the GitHub today @mcmmike.
   - 👍: _mcmmike, antiochp_
   - _antiochp:_ Sounds like progress.

- _lehnberg:_ So should we table the matter of the funding request once again to next governance meeting then? or are we happy to decide today?
   - _quentinlesceller:_ I think next week is fine.
   - _mcmmike:_ I think , its better if we pospone. Everyone is fine with it and knows exactly what he will be doing.
      - 👍: _quentinlesceller_

- _tromp:_ I'd like to see a rough list of deliverables.
   - 👍: _quentinlesceller, antiochp_
- _tromp:_ Improving our test suites to cover current blind spots is very fund worthy.
   - 👍: _lehnberg, mcmmike, phyro_
   - _quentinlesceller:_ Absolutely.

### 5. v5.0.0 planning:
#### 5.2  Fee RFC
#### 5.3  PIBD status
#### 5.4  Other pending issues
#### 5.1  Fix DAA RFC

- _antiochp:_ Fix DAA - @tromp 
   - _tromp:_ I've not received much feedback lately.
   - _jaspervdm:_ I had a question there but will post in the PR.
   - _joltz:_ It is in FCP so get any comments in soon if you have them

- _tromp:_ It seems people are happy with the fee shift changes.
   - 👍: _antiochp_
   - _antiochp:_ oh yeah Fee RFC is in FCP also for another week

- _lehnberg:_ @tromp can you mark `fix-fees` as no longer a draft? https://github.com/mimblewimble/grin-rfcs/pull/63 
- _tromp:_ can do

- _jaspervdm:_ PIBD: PR with important building block is in review by @antiochp, additional reviewers always welcome. Writing 2 RFCs now.
   - 🚀: _joltz, vegycslol_
- _antiochp:_ this is our first real use case taking advantage of Merkle proofs which is 🔥.
- _lehnberg:_ So @jaspervdm both https://github.com/mimblewimble/grin-rfcs/pull/68 and https://github.com/mimblewimble/grin-rfcs/pull/52 are relevant? or does 68 replace 52?
   - _jaspervdm:_ 52 is replaced by 68 and another one.
   - _lehnberg:_ clear, would you mind closing 52 in that case?
   - _jaspervdm:_ Yep 
      - 👍: _lehnberg_

- _lehnberg:_ @tromp / @phyro are any of the "smaller wallet RFCs" (safe cancel, payjoins, early payment proofs) targeted for v5.0.0?
   - _tromp:_ payjoins probably not
   - _phyro:_ they all seem on the wallet level
   - _tromp:_ But cancel should be able to make it in. Early payment proofs probably won't make it either.
   - _phyro:_ I do think having cancel prior to making exchanges adopt all the changes would be great.
   - _lehnberg:_ safe cancel == late locking? not really, right?
   - _tromp:_ No. we definitely want late locking in  by 5.0.0
   - _lehnberg:_ where's late locking in all this? is that an RFC to come, or something that won't need an RFC
   - _phyro:_ safe cancel = play protection.
      - 👍: _lehnberg_

- _tromp:_ As late locking has no user visible effect, it doesn't have an RFC.
   - _lehnberg:_ not sure that's the criteria for RFCs, Fix DAA doesn't have a user visible effect either no?
   - _tromp:_ It does. Difficulty changes are quite visible. I mean it's a consensus change.
   - _lehnberg:_ Let me rephrase: Though I'm quite sure that not having their outputs locked are visible to the end user, I'm not sure that's what determines whether it needs an RFC or not.
   - _antiochp:_ RFC criteria is more around desire to discuss changes in advance?
   - _lehnberg:_ "significant changes" 
   - _tromp:_ late locking can be considered a wallet optimization
      - 👍: _phyro, vegycslol_
   - _jaspervdm:_ Yes don’t think it requires an RFC. 
   - _lehnberg:_ Ok, but it's something we do want to get in 5.0.0 as I understand it? 
   - _tromp:_ yes we do
   - _lehnberg:_ I recall something about how it made sense if we're dropping https and enforcing slatepack as this makes transacting experience better.
      - 👍: _antiochp_
   - _phyro:_ exchanges can't get stuck with locked outputs if users don't "collaborate"
      - 👍: _vegycslol_

- _lehnberg:_ Okay, so today is October 13, ~ 3 months away from HF 4. It's time we think about our scope and milestones a bit. So based on above we have:
 
   v5.0.0 list
   1. Fix DAA (RFC by @tromp, impl by: ?)
   2. Fix fees (RFC by @tromp, impl by: ?)
   3. (Partial) PIDB (RFC by @jaspervdm, impl by: @jaspervdm /@antiochp)
   4. Late locking (impl by: ?)
- _lehnberg:_ Anything else?
   - _joltz:_ 5. Deprecate HTTP(S)
   - _tromp:_ safe cancel
   - _antiochp:_ I suspect we are resource constrained here given number of wallet features proposed.
   - _tromp:_ yes, we can only add the simplest of features.

- _lehnberg:_ v5.0.0 list
  1. *Fix DAA* (RFC by @tromp, impl by: ?)
  2. *Fix fees* (RFC by @tromp, impl by: ?)
  3. *(Partial) PIDB* (RFC by @jaspervdm, impl by: @jaspervdm /@antiochp)
  4. *Late locking* (impl by: ?)
  5. *Deprecate HTTPS* (RFC by @joltz, impl by: ?)
  6. *Safe cancel* (RFC by @tromp, impl by: ?)
  
    is @yeastplume around?

- _tromp:_ So payjoins and fancy payment proofs are out of the picture.
- _yeastplume:_ Am here, yes.
   - _lehnberg:_ we miss you 🙂
   - _yeastplume:_ Aww, I miss you too.
   - _lehnberg:_ you've been replaced by a question mark. it's not the same
   - 💯: _vegycslol_
- _antiochp:_ You're about to be volunteered for various deliverables.
   - 💯: _vegycslol, quentinlesceller_
   - _yeastplume:_ Awesome!
   - _lehnberg:_ Yeah just want to get a grip for what (if any) of these we can expect you to deliver.
   - _yeastplume:_ Deprecate https, I definitely can handle. I might ask for a bit of assistance with the implementation of 4)
      - 🚀: _phyro, lehnberg, joltz, vegycslol_
   - _jaspervdm:_ I can help with 4.
      - 👍: _yeastplume, vegycslol_

- _antiochp:_ @tromp you're planning to implement both (1) and (2) right?
   - _tromp:_ Yes, I will Although I may request some minor help along the way.
      - 👍: _antiochp, vegycslol_

- _lehnberg:_ 

   **v5.0.0 list**

   1. Fix DAA (RFC by @tromp, impl by: @tromp)
   2. Fix fees (RFC by @tromp, impl by: @tromp)
   3. (Partial) PIDB (RFC by @jaspervdm, impl by: @jaspervdm/@antiochp)
   4. Late locking (impl by: @yeastplume/@jaspervdm )
   5. Deprecate HTTPS (RFC by @joltz, impl by: @yeastplume )
   6. Safe cancel (RFC by @tromp, impl by: ?)

- _tromp:_ I'll start spending less time on writing RFC and proposing new naming conventions, and more time coding. :-)
   - 👍: _quentinlesceller_

- _lehnberg:_ (1st person is considered point)
   - 👍: _antiochp, jaspervdm_
   - _antiochp:_ I'm likely 2nd person on (2). Not so sure about (1) ...

- _lehnberg:_ That's great, already looking much better. 6 is still with the pesky questionmark... 
   - _antiochp:_ I'm not entirely sure (6) is realistic right now.
   - _lehnberg:_ for being a "small" release, it sure feels like a mouthfull... amazing how that always happens in software dev! 

- _lehnberg:_ We're touching an awful lot of places...
   - 😅: _joltz_
- _antiochp:_ And yes "(Partial)" in PIBD is important - this will not be 100% replacement immediately.
- _tromp:_ We can drop 6, or only implement the simpler unspend.
   - _phyro:_ Yes, the respend can be introduced later.
   - _quentinlesceller:_ Yeah it doesn't look very hard to implement
   - _lehnberg:_ If we drop 6, how bad is it to implement it as a minor release (5.1.0) instead? Does it even matter?
   - _phyro:_ If I understand correctly, unspend would need to know which inputs were used in txid, and then create a selfspend and broadcast.
   - _quentinlesceller:_ The respend part will need a change in the transaction status and next transaction creation.
   - _antiochp:_ Yeah I don't think its necessarily tied to the 5.0.0 schedule and an individual wallet can upgrade to 5.1.0 for this feature.
   - _tromp:_ Yes, it's like cancel, but with issuing of selfspend. It can easily be done in minor update.
   - _quentinlesceller:_ 👍

- _lehnberg:_ let's drop it then.
   
   **v5.0.0 list**

   1. Fix DAA (RFC by @tromp, impl by: @tromp)
   2. Fix fees (RFC by @tromp, impl by: @tromp)
   3. (Partial) PIDB (RFC by @jaspervdm, impl by: @jaspervdm/@antiochp)
   4. Late locking (impl by: @yeastplume/ @jaspervdm )
   5. Deprecate HTTPS (RFC by @joltz, impl by: @yeastplume )

- _antiochp:_ It's all local data right? and nothing on the slate?
   - _tromp:_ Right; safe cancel doesn't use slates.
   - _antiochp:_ When is current estimate for when HF is estimated to occur?
   - _tromp:_ Guessing jan 19 or so.

- _lehnberg:_ In terms of milestones, when I look at what we did for v3.0.0 (https://github.com/mimblewimble/grin-pm/issues/204), it looked something like this:

   * **Scope freeze:** 17:00 UTC on October 29.
   * **Beta:** Early December
   * **Release candidate:** Late December
   * **Final release:** Early January

- _antiochp:_ I'm guessing holiday period is all kinds of disruption with covid etc. so we should account for that. This is not a normal Dec/Jan - yeah, work from home, kids, etc. just less time all around.
   - _lehnberg:_ Yeah that sounds like a reasonable assumption to me. So we should try to play it safer than last perhaps? But what could that be?
   - _antiochp:_ I'd err on earlier in Dec for the release candidate?
   - _lehnberg:_ Like Dec 15?
   - _antiochp:_ this is the last scheduled HF and we _really_ don't want to rush anything in in the last week or so
      - 👍: _lehnberg, joltz, quentinlesceller, yeastplume, jaspervdm, phyro_
   - _quentinlesceller:_ Yeah agree with @antiochp 
   - _antiochp:_ Even if we end up sitting around feeling like we wasted a week. I don't want to spend Jan trying to roll a "fix" out.

- _lehnberg:_ Shall we freeze scope today? Is there realistically anything we expect to happen between now and say next dev meeting?
   - 👍: _joltz, quentinlesceller_
   - _antiochp:_ I think your list looks good for scope.
   - _jaspervdm:_ Agree. 
   - _lehnberg:_ yeah I mean even if something else comes up, we won't have resources for it. 
   - _antiochp:_ Right

- _lehnberg:_ 
   - Scope freeze: Tue Oct 13
   - Beta: Tue November 24
   - Release candidate: Tue December 15
   - Final release: Tue Jan 5. ?
- _antiochp:_ yeah if we can have a beta release in Nov I'm 👍

- _tromp:_ We need to discuss testnet progress.
   - _lehnberg:_ Testnet fork would occur... when in all this? also: did we want to make some changes to testnet as part of the fork? We discussed sth like that last tuesday, this would be additional work to factor in.
   - _tromp:_ @yeastplume can you dedicate one of your lesser GPUs to help keep testnet going?  We should be able to cover your electricity costs.
   - _quentinlesceller:_ Yeah also I made some calculation and renting AWS ec2 instance is pricey for that.
   - _yeastplume:_ Yes, I probably can. Yeastmonster is a bit stripped but I still have a machine with a 2080 in it.
   - _jaspervdm:_ Oh right, what do we think of setting a smaller graph size for testnet. It would help anyone building on (top of) Grin.
      - 👍: _mcmmike_
   - _tromp:_ @jaspervdm I suspect that would require some nontrivial code changes.
   - _lehnberg:_ Any reason why that would lessen the quality of the testnet? Are we confident that it wouldn't affect matters much when testing?
   - _quentinlesceller:_ Yep but then it’s not really the same as mainnet too. Like testing mining software and pool.
   - _tromp:_ i feel better keeping it same
      - 👍: _joltz_
   - _jaspervdm:_ Yes it would change PoW related tests such as mining. But it would be better for tx building etc since it’s would be easier to have a stable stream of blocks. 
   - _quentinlesceller:_ That would introduce additional complexity IMO. 
   - _antiochp:_ What's the difference between testnet just having lower diff vs a smaller graph size?
   - _tromp:_ perhaps we could look into that after HF5, possibly for an additional testnet.
   - _quentinlesceller:_ @antiochp mine it with a cpu ? The current lowest diff is still too high for a cpu.
      - 👍: _antiochp_
   - _jaspervdm:_ Yes we could create a separate testnet. Let’s call it Floonet! Ha 
      - 😢: _antiochp, vegycslol_
   - _tromp:_ It should be manageable for a multi core cpu, but to keep memory requirements more modest, I would need to write a cpu slean miner. It will still take more than 20s per attempt. Oh, given low probability of 42 cycle that's indeed too slow.

- _lehnberg:_ Okay so we're deciding NOT to touch any floonet specific stuff for 5.0.0 → correct?
   - _jaspervdm:_ Seems most seem to be against, sure. Also no reason we couldn’t have HF6 for testnet. 
       - 👍: _antiochp_
   - _antiochp:_ I vote for _not_ trying to make testnet cpu mineable prior to 5.0.0 (just to minimize risk of complicating things). And revisit this later.
      - 👍: _tromp, joltz, vegycslol, lehnberg_

- _lehnberg:_ We all okay with this timeline to target?
   - Scope freeze: Tue Oct 13
   - Beta: Tue November 24
   - Release candidate: Tue December 15
   - Final release: Tue Jan 5. ?
   - :🚀: _antiochp, quentinlesceller_
   - _jaspervdm:_ It’s a challenge, but yes. 

- _lehnberg:_ We all okay with this list being the "frozen scope"?

   **v5.0.0 list**

   1. Fix DAA (RFC by @tromp, impl by: @tromp)
   2. Fix fees (RFC by @tromp, impl by: @tromp)
   3. (Partial) PIDB (RFC by @jaspervdm, impl by: @jaspervdm/@antiochp)
   4. Late locking (impl by: @yeastplume/ @jaspervdm )
   5. Deprecate HTTPS (RFC by @joltz, impl by: @yeastplume )
   - 👍: _joltz_

- _tromp:_ We'll pick a testnet fork height later, once it's chugging along nicely.
   - _antiochp:_ Aim for early Dec for testnet fork?
   - _tromp:_ ok
   - _antiochp:_ I don't remember what we did last time. Or what the delta between testnet and mainnet was.
   - _lehnberg:_ Testnet forked Dec 19 according to this: https://forum.grin.mw/t/grin-v3-0-0-hard-fork-upgrade-jan-2020/6036 RC was released Dec 13, i.e. ahead of the fork.
   - _antiochp:_ that was winging it a bit

- _lehnberg:_ 
   - Scope freeze: Tue Oct 13
   - Beta: Tue November 24
   - Testnet fork: Tue December 08
   - Release candidate: Tue December 15
   - Final release: Tue Jan 5

- _antiochp:_ Yeah those dates look good. So we basically have 5-6 weeks of dev time until beta.

- _lehnberg:_ @tromp any work related to `grin-miner` or cleanup of pow code that we're not factoring in here?
   - _quentinlesceller:_ `grin-miner` should be okay. we might want to do a bit of cleanup later
   - _tromp:_ at most only trivial changes for pow
      - 👍: _antiochp_
   - _antiochp:_ oh right, there's no AR variant being introduced this time...

- _lehnberg:_ Okay so nothing that needs it's own tracking here? Is it stuff that can happen post 5.0.0 as well?
   - _antiochp:_ we might want to track the pow changes on the list: just bump header version and rules around pow
   - _tromp:_ pow itself is all good
   - _lehnberg:_ okay who's going to be doing that?
   - _tromp:_ I can.
      - 💪: _antiochp_

- _lehnberg:_  **v5.0.0 list**

   1. Fix DAA (RFC by @tromp, impl by: @tromp)
   2. Fix fees (RFC by @tromp, impl by: @tromp)
   3. (Partial) PIDB (RFC by @jaspervdm, impl by: @jaspervdm/@antiochp)
   4. Late locking (impl by: @yeastplume/@jaspervdm )
   5. Deprecate HTTPS (RFC by @joltz, impl by: @yeastplume )
   6. Bump header version + any pow changes (impl by: @tromp). 

   P1 (critical): 1, 2, 6
   P2 (important): 3, 4, 5
   
   With the logic that P1s are consensus changes, P2 is stuff that doesn't affect consensus. could we even move some stuff down to a P3 (fix if time)?

   - _antiochp:_ Not to dismiss anything but PIBD is a P3 as we can do this outside the HF schedule. late locking may be more valuable short term.
   - _jaspervdm:_ Yes agreed, it would be easier to introduce some of it during a HF for the p2p changes but not strictly required .
   - _lehnberg:_ 
     - P1 (critical): 1, 2, 6
     - P2 (important): 4, 5
     - P3 (fix if time): 3
     
     Okay great! Very productive stuff today!
   - _antiochp:_ yay!
   - _quentinlesceller:_ Indeed great job
      - 🚀: _joltz, mcmmike, jaspervdm, jaspervdm_

- _joltz:_ Before we move on, are there any remaining concerns preventing deprecate http(s) RFC (https://github.com/mimblewimble/grin-rfcs/pull/54) from moving into FCP now?
   - 👍: _lehnberg, antiochp, phyro, quentinlesceller_
   - _antiochp:_ If anyone has any strong objections then FCP is the time to raise them,
   - _joltz:_ Great, if @paouky is around, please move the RFC into FCP.

### 6. Slatepack adoption status / docs
- _joltz:_ Action point on me to draft a message this week for exchanges to include:
  - Reminder of http(s) deprecation and cutoff date
  - Pointer to slatepack/https(s) deprecation RFCs and associated documentation
  - Offer extra support via #support channel or other keybase channel

   I'll share a draft with these contents in a keybase channel this week for feedback for how we can improve the messaging and contents for a successful ecosystem upgrade with as little pain as possible. My goal is to have this message sent out to known exchanges/services that have not upgraded by next week's governance meeting.

   If there anything else that we think can be done here to make improvements/reduce friction, please let me know here or async when you get a chance.
      
   - 👍: _antiochp, lehnberg, jaspervdm_

   - _tromp:_ Also a reminder that exchanges are responsible for guarding against replay attacks
      - 👍: _joltz_

### 7. Other questions

#### 7.1 [Grin-Pi](https://github.com/MCM-Mike/Grin-Pi)

- _mcmmike:_ **https://github.com/MCM-Mike/Grin-Pi is making progress.** 
   
   We have successfully tested the automated deployment of an RPI4 using Puppet with one of the Discord users. And we solved the headless installation of RUST!

   **Goals for Grin-PI:**

   Auto deployment of a Grin-Node / Grin-Wallet or both or only one component based on choosing a Puppet template on a RPI4 and everything is publicly availabale for download and audit.

   As a bonus, I hope for Christmas I will have some customized RPI4 GRIN-cases to send out.
   - 🚀: _antiochp, lehnberg, jaspervdm, quentinlesceller_
   - _lehnberg:_ amazing
   - _mcmmike:_ Thank you all for your great work developing GRIN 👍
   - _tromp:_ thank you too for your contributions, @mcmmike!
   - _antiochp:_ yes, thank you! @mcmmike 

- _lehnberg:_ I've been thinking a lot about home nodes, there's no other more straight forward way to do a node that accepts inbound connections than doing it over Tor, right? Would be awesome if these little Grin-PI boxes could actually help secure the network.
   - _mcmmike:_ hope so, as they should be affordable and also easy to setup, this is why we are helping deploying GRIN-node.
   - _lehnberg:_ I suppose a user could always open up a port, but not sure how easy that is to pull off for most.
   - _antiochp:_ Tor for p2p is potentially a little tricky because it ends up segregating all the home nodes into a network of their own. if they only connect via Tor
      - 👍: _mcmmike_
   - _lehnberg:_ Yeah, it would need to be a hybrid somehow: accept inbound connections over Tor, listen for any attacks / malfeasance on Clearnet? But does that really help enough I wonder?
   - _antiochp:_ I'd argue if you're sophisticated enough to run a Pi node you can probably configure your router to port forward etc.?
   - _lehnberg:_ Yeah probably...
   - _mcmmike:_ well, we are trying to keep it as simple as possible for users, therefore reducing the complexity . but for the port opening, we don't have a solution which is not centralized.
   - _lehnberg:_ Ideally the box would be just sth you turn on and that's it.
   - _mcmmike:_ We could send out ready to plug-and-play RPI4 boxes. But still port opening is an issue.
   - _antiochp:_ yeah
   - _lehnberg:_ Well, sth to think about. Not super urgent for first iteration.
      - 👍: _mcmmike_
   - _mcmmike:_ yep
   - _lehnberg:_ And who knows, post 5.0.0 we might start looking into Tor for nodes as well. 
   - _antiochp:_ They can still connect outbound regardless, just not accept inbound peer connections.
      - 👍: _joltz, lehnberg, mcmmike_
   - _joltz:_ https://en.bitcoin.it/wiki/Setting_up_a_Tor_hidden_service is relevant here for sane/secure configuration for the network.

**Meeting adjourned.**