# Meeting Notes: Development, Sep 01 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 100 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- joltz
- kurt2
- lehnberg
- mably
- paouky
- phyro
- tromp
- quentinlesceller
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ We seem to be in a period of a lot of thinking and reflection, both on technical and governance issues. There's quite a bit of exciting stuff on the horizon, particularly with some new funding requests, but at least to me it still feels like we're up in the air with respect to what we think we want to achieve by HF4, if anything.

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/339) was accepted, with [https://github.com/mimblewimble/grin/issues/3430](https://github.com/mimblewimble/grin/issues/3430) added to the agenda on @antiochp's request, and the order of slatepack adoption progress and unscheduled HF points reversed.

### 3. Action point follow ups from previous meetings

#### 3.1 [Mitigating re-org risks actions](https://github.com/mimblewimble/grin-pm/issues/327)

_1 of 3 actions done. No progress since last._

- _lehnberg:_ So this is not an action only on me haha. I did one of three, happy to help with the rest as well for what it’s worth.
- _paouky:_ Considering the amount of developers actively working on grin atm, probably best to let this action point slide.
   - _lehnberg:_ Well, on the one hand yes. On the other, it’s nice to know if we’re being attacked.
- _joltz:_ The second point requires a fair amount of time and devops ability. I think @mcmmike expressed some interested (and I'd be happy to help setup).
   - 👍: _lehnberg_
- _quentinlesceller:_ The third one is already done also by a third party: https://www.crypto51.app. Probably broken though 🤔
   - _lehnberg:_ Is that formula good enough for us too?
   - _quentinlesceller:_ I think so https://github.com/tdickman/crypto51
   - _lehnberg:_ I can try to move that one forward with the help of tromp perhaps.
- _yeastplume:_ Okay, let's just leave it outstanding for now. Do we want to reassign/make the action point more granular?
- _joltz:_ It's probably ok for now as is. I'll try to bother @mcmmike about setting up some monitoring infrastructure around this. The third point seems to just use CMC + nicehash APIs and a basic calculation so shouldn't be too bad.
  - 👍: _lehnberg, yeastplume, quentinlesceller_

### 4. v5.0.0 planning:

#### 4.1 DAA RFC
- _tromp:_ Still awaiting comments.
   - _phyro:_ Yeah I think it should get more review.
   - _joltz:_ 🔔 for me on review for DAA.
   - _lehnberg:_ Any chance we could reach out to some POW people for review?
- _tromp:_ I specifically want to call attention to optional reduction for `FutureTimeLimit. We allow blocks to have timestamp up to 12 mins in future. Just because bitcoin timestamps can be 12*10 mins in future. But it still seems too generous and difficulty adjustment benefits from having less wiggle room for timestamp manipulation.
   - _joltz:_ Do we know why bitcoin chose that parameter?
   - _tromp:_ I heard silly arguments like allowing for wrong timezone settings. In this day and age a server should be able to have accurate time within a few seconds so I would argue for at most 1 min off.
   - _joltz:_ Sounds intuitive but want to think on it some more.
   - _tromp:_ Anyway, i encourage ppl to read RFC and perhaps play with the online simulator that I link to [in this thread](https://forum.grin.mw/t/bch-upgrade-proposal-use-asert-as-the-new-daa)
   - 👍: _joltz, quentinlesceller_
- _joltz:_ Is there anyone outside of the community here that you would like to give it a review when it is ready?
   - _tromp:_ I could ask zawy12. 
- _phyro:_ https://twitter.com/peterktodd/status/1295928073448304640 is this relevant in any way?
   - _lehnberg:_ Yeah I naively thought about ETH 2.0 testnet clock fail as well. No idea whether it applies though.
   - _antiochp:_ Takeaway there seems to be agreement that multi-second skew is ok and expected, except for Peter Todd saying 1 day skew is possible...
   - _joltz:_ I feel like there may be a lurking "gotcha" in there somewhere but maybe not, will need to think about it some more. would be good to ask for more feedback from anyone relevant we can think of that will offer some of their time 👍
   - _tromp:_ I see that peter todd wants to allow times up to 1 day ahead for bitcoin. :(

#### 4.2 Fees RFC
- _tromp:_ Still being written. I spent my time past week more on replay protection RFC.
   - 👍: _lehnberg, phyro, quentinlesceller, joltz_ 
- _tromp:_  I'm gonna have an RFC soon to put fees in line with weights. As the current settings are rather arbitrary and not miner incentive compatible.
- _yeastplume:_ Ahh, right. Is it worth taking into account consideration on how fees might be handled when using late locking?
   - _tromp:_ Good point.
   - _yeastplume:_  I'm not sure how we want to handle that case, but it would seem the originator would need to estimate high.
   - _tromp:_ If a party needs more than 1 input and 1 output, then that should be known in time for doing partial kernel sig.

#### 4.3 MMR index discrepancies
- _yeastplume:_ This sounds painful. They're 0 indexed in some places, 1 indexed in others.
- _tromp:_ Yeah, not sure if I'll get around to addressing that. Probably not, don't hold your breath. :)
- _antiochp:_ 🙉
- _yeastplume:_ Heh, okay. Will remain one of the funny little implementation quirks everyone has to deal with for all eternity (like much of javascript, for instance).
- _lehnberg:_ Tbh would be great if stuff is indexed the same way across the board, but get that it’s a pain to do it in the last hard fork, shame we didn’t think of it before.

#### 4.4 Security/efficiency improvements

- _antiochp:_ IBD is the big one still tentatively for HF4
efficiency wise.
- _joltz:_ I think that point is more to just keep in mind as we go through other upkeep/changes as it will be our last opportunity for easy major security-related changes.
- _tromp:_ yes, PIBD will be huge syncing efficiency improvement.
- _antiochp:_ but we need dev resources for that, aka Jasper.
- _phyro:_ is PIBD worked on though?
- _paouky:_ Nope, afaik.
- _tromp:_ Work is suspended until Jasper returns. I propose we re-assign it if he doesn't return soon.
   - _antiochp:_ Re-assign to who?
   - _tromp:_ Tough question
   - _antiochp:_ lol
   - _paouky:_ I got it, give me 3 years and its done.
      - 👍: _quentinlesceller_
   - _yeastplume:_ Yes, that's a tough one. Won't be an easy reassign. Can we have a point to come back and make a  final decision on this one at the next meeting?
   - _quentinlesceller:_ Realistically there is 2 months left to develop that.
   - _tromp:_ I guess antioch is best candidate, but that means he can't work on other planned stuff.
   - _antiochp:_ Yeah I don't have bandwidth to start another project currently.
- _lehnberg:_ Friendly reminder that PIBD doesn’t require a hard fork.
   - _antiochp:_ Aim was to get new p2p messages in play as part of the hardfork. So hardfork not required but definitely easier to roll out that way.
   - _tromp:_ PIBD only effective if large fraction of nodes support it. We can do it post HF4 if PIBD nodes and nonPIBD nodes can work side by side.
- _yeastplume:_ Okay, so let's come back to that one no later than next dev meeting.

- _kurt2:_ I have just asked Suyash Bagad, last year student at Indian Institute of technology in Bombay, author of the paper on upper bounds on Grin Outputs, author of the paper of an improved version of Revelio (proof of reserve for exchange using bulletproofs), author of rust implementations of bp and bp+, if he is interested/has time/feels capable of doing the parallel IBD implementation (probably through a funding request, this I don't know exactly). He answered to me he will look at it and get back to me.
   - _yeastplume:_ Okay thanks for that, keep us posted.
   - _quentinlesceller:_ Nice. Let us know if he is interested.

#### 4.5 https://github.com/mimblewimble/grin/issues/3430

- _antiochp:_ Yeah we are juggling backward compatibility support for various p2p protocol versions - it would be nice if we could use HF4 to consolidate this. Basically break backward compatibility using HF (as a proposal). It gives us a chance to do some much needed cleanup post HF4, and simplify internals etc. It's effectively the last chance to do this cleanly like this. In theory we can deprecate later but it gets a lot more complicated and this will be a slow process.
   - _tromp:_ Seems like a prudent decision. Let's deprecate p2p versions < 3 together with HTTP on HF4.
   - _quentinlesceller:_ Yeah seems like a good thing to do. 👍

### 5. Slatepack Adoption status / docs

- _joltz:_ @paouky has been working on slatepack integration documents, I think he has a draft out there somewhere which is coming along nicely.
   - _quentinlesceller:_ here https://paouky.github.io/docs/technical/slatepack-integration/
- _quentinlesceller:_ I'll dedicate some bandwith to the doc process this week.
   - 🙏: _joltz_
- _joltz:_ Before too long we will want to start reaching out to exchanges and services not already supporting slatepack and notify them of http(s) deprecation and give them resources needed to update before next HF. Does 60 days seem reasonable for a notice?
   - _quentinlesceller:_ If we can do that before that'd be better? But 60 days is fine (that'd be mid november).
   - _joltz:_ The more the better to avoid risk of temporary de-activation after next HF.
   - _lehnberg:_ Also keep in mind that we’re in / entering crazy season. Exchanges may soon not have time to deal with us.
- _lehnberg:_ Btw was discussing with paouky yday: I’ll create a #docs (temporary?) channel where we all can sync on anything docs related? Could be good to get everyone on same page.
   - 👍: _joltz, quentinlesceller_

### 6. Unscheduled hard fork process alignment
- _yeastplume:_ Is there an outcome we're trying to get from this discussion point?
   - _joltz:_ If not a concrete process to follow, maybe a more generic approach for how to handle this kind of thing. There may not be a concrete policy to follow step by step but maybe we can reach an agreed general desired approach.
   - _lehnberg:_ Yeah, a game plan for when we need to fork
   - _tromp:_ Assuming we can't get the round reduction and integrated payment proofs done in time for HF4.... we then have a strong incentive to do a HF5 sometime in the next 1-2 years. After careful review of the new schnorr cryptography.
      - 👍: _antiochp, mably_
      - _joltz:_ As well as payment channel and BP+ opportunities.
      - _lehnberg:_ So just to be clear on that, what would we guess are the chances of getting that in for HF4? 10%?
      - _antiochp:_ 0.1-0.01%
      - _tromp:_ <1%
      - _joltz:_ In addition to requiring a ton of review it would require some major code changes which would also require a ton of review.
      - _lehnberg:_ Oh. I’m going on vacation again, two years brb. Can we unlaunch Grin and do it over for 2023?
         - 🙃: _joltz_
      - _lehnberg:_ Taking Grin private at $0.42
- _yeastplume:_ Can always launch Grin2.
   - _antiochp:_ moving to a new signature scheme would effectively be Grin 2.0 yes, and this is arguably a new signature scheme.
   - _lehnberg:_ Is it completely beyond the realm of reason to ask we schedule in another fork in for this?
   - _antiochp:_ I think we'd need to schedule it without having a scheduled date though.
   - _lehnberg:_ I know the reasons not to, and seems like it could be a really nice motivation for unscheduled hard fork. Arguably better than taproot. But still...
   - _yeastplume:_ Set for a random block in the next 5 years, based on a hash of a target block's POW.
   - _tromp:_ I think we should schedule HF5 after the crypto reviews are done.
   - _lehnberg:_ Centralisation is bad, but decentralisation before we’ve got enough traction might tie our hands up.
   - _antiochp:_ We have no idea how long this will take?
   - _lehnberg:_ If we set a date, we’d have to hit it. If we don’t set a date, we don’t have to do anything. Just devil’s advocating it.
   - _antiochp:_ Sure, unless we fail to hit it, which is entirely possible.
   - _lehnberg:_ But then we could add another one? But yeah, I see the problems with this of course.
      - _antiochp:_ lol
      - _joltz:_ What is to stop us from doing that perpetually though?
      - _tromp:_ Nothing.
   - _lehnberg:_ Just worry we'll never get there otherwise.
   - _yeastplume:_ But then it's hardforks all the way down.
   - _tromp:_ Let's agree to have a HF5 in the next 3 years but not schedule it until we're ready enough (within 6 months). But presumably we'll run out of sensible &very-desirable consensus changes eventually
      - _lehnberg:_ You mean, not schedule it, and hope to do an HF5 with support of the ecosystem, correct?
      - _tromp:_ Correct, not schedule it now.
      - _yeastplume:_ Grin Classic(tm) is born.

- _joltz:_ Sensible and desirable sound very subjective. What is sensible to all of us today may or may not be to the active core team in 3 or 5 years.
- _antiochp:_ We can signal our intent and desire to do an HF5 in a couple of years, but it will always be opt-in.
   - _joltz:_ I would be curious what this would look like in practice. 
   - _tromp:_ Maybe it wld look like that Monero classic that didn't go along with the Pow change, and quickly became economically irrelevant.
- _phyro:_ Perhaps it would make sense to first convince ourselves we want another HF for this (not saying we don't). But this is the first time I've seen us talk about this. What is the problem if we don't do this and how bad is it?
- _tromp:_ Exactly, our desire is to eventually freeze the consensus model but we don't know yet if HF5 will get us there.
- _joltz:_ I think by fleshing out our upgrade process we may have a better understanding of what approach to take here.

### 7. Other questions

_None._

**Meeting adjourned.**

