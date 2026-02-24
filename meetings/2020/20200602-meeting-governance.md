# Meeting Notes: Governance, Jun 02 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 40 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- johndavies24
- joltz
- kurt2
- lehnberg
- quentinlesceller
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/297) was accepted, with the point "jaspervdm update" added, and a "4.0.0 beta" point added to Other Questions.

### 2. Action point follow ups from previous meeting

_None._ 


### 3. Jaspervdm update

- _lehnberg:_ I had a chance to chat with Jasper just before this meeting. He's alright, wanted to pass on to the meeting that he's taking a leave of absence for personal reasons.
   - 👍: _antiochp, quentinlesceller, johndavies24_
- _lehnberg:_ There's no clear timeframe for how long he will be away, but he's keen on coming back at some point. He also wanted to make clear that he intends to honour his commitments as per his currently active funding period upon his return. (Somehow, exactly how tbd). Any questions about that?
   - _johndavies24:_ Wish him the best!
      - 👍: _kurt2_
   - _antiochp:_ Looking forward to having him back with us.
      - 👍: _quentinlesceller_
   - _lehnberg:_ Seconded to both.
      - 👍: _joltz, yeastplume_
- _lehnberg:_ So this means we should probably spend some extra time thinking about what this means for 4.0.0.

### 4. [GUI wallets](https://forum.grin.mw/t/the-official-grin-gui-wallet/7209)
- _yeastplume:_ I am sorry, I have had absolutely no time or headspace to think about it since the previous meeting.
- _joltz:_ 🔔 for me, haven't done much there since last meeting, mainly focused on slatepack stuff. Hope to return to this after release.
- _lehnberg:_ Okay, so let's table this, create a grin-pm issue about it, and track it using the regular issue tracker?.
   - 👍: _quentinlesceller_
- _joltz:_ Sounds good- this is definitely important and we need to get around to it at some point.
- _yeastplume:_ Sounds good, I really do want to get to this but the hf needs are more pressing.
   - 👍: _joltz, quentinlesceller, lehnberg_

### 5. RFC & sub-teams update
- _lehnberg:_ In order of appearance: https://github.com/mimblewimble/grin-rfcs/pulls

#### 5.1 [Slatepack](https://github.com/mimblewimble/grin-rfcs/pull/55)
- _joltz:_ I should have slatepack ready for FCP by end of the week - just need to add a few last details. Hoping to have a brief focused security review before final release - maybe a 10-25 hour initial assessment to catch most obvious issues. Not sure if it makes sense to try to do a request for funding or just call in a favor considering the limited timeline.
   - _lehnberg:_ A brief slatepack security review would be awesome.
      - 🚀: _antiochp_
- _lehnberg:_ Ideally, the RFC would be agnostic to the outcome of that, but maybe that's wishful thinking? I.e. Impact of security review would be related to implementation?
   - _joltz:_ Yeah this is more in the impl side. But may have impacts in RFC.
   - _yeastplume:_ Well, the whole wallet could do with a security audit. And I'm sure the node does as well at this stage.Perhaps there is a bigger task here to plan for 5.0.0?
      - _joltz:_ I agree whole wallet needs audit badly but I do not think we would have time before we would want slatepack reviewed.
   - _joltz:_ (though made RFC with simple primitives as possible so shouldn't be much changed).
   - _lehnberg:_ Yeah. It's okay to make minor changes to an accepted RFC that does not "alter the spirit" of it. So if something comes up, perhaps it's okay to update RFC accordingly? Assuming the whole thing is not thrown out for a different scheme.
   - _lehnberg:_ Okay so I guess... RFC can move forward independently of the (separate) question of a security review (for what and when).
      - 👍: _joltz_
- _joltz:_ Would be really nice to do another large audit before final hf.
- _lehnberg:_ @quentinlesceller as shepherd are you onboard with getting slatepack RFC to FCP this week?
   - _quentinlesceller:_ Yes absolutely.
      - 🚀: _lehnberg_

#### 5.2 [Deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)
- _lehnberg:_ As discussed, we're okay to look at this after hf. Obviously any progress / feedback can occur now as well.
   - 👍: _joltz, yeastplume_

#### 5.3 [Parallel IBD](https://github.com/mimblewimble/grin-rfcs/pull/52)
- _lehnberg:_ So given Jasper's absence as per above, I reckon this will be inactive for the time being.
- _antiochp:_ PIBD on hold but nothing blocking hf3.
   - 👍: _lehnberg_

#### 5.4 [N(e)rd kernels](https://github.com/mimblewimble/grin-rfcs/pull/47)
- _lehnberg:_ This has had a _very_ generous time in fcp. Been a few tweaks a while back from @antiochp. There's been no more feedback so I reckon I'll go ahead and merge later today?
   - 👍: _antiochp, joltz, quentinlesceller_

#### 5.5 [qa team](https://github.com/mimblewimble/grin-rfcs/pull/45)
- _joltz:_ My understanding was plan was to close that RFC due to interest/resources. It is good to have in theory but in practice may be spread too thin currently to support.
- _lehnberg:_ It's easy to re-submit a QA RFC, even copy/pasting what we had there. If anyone ever feels like taking the lead. I don't think anyone is explicitly against it, more a matter of someone rising up and working through the open questions and turning it into something actionable.
   - 👍: _joltz, quentinlesceller_

#### 5.6 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)
- _lehnberg:_ In jasper's absence, I'm happy to step up as shepherd there, and get this bad boy over the finish line.
- _yeastplume:_ That's good to merge I think, as soon as FCP expires.
- _lehnberg:_ Let _me_ be the judge of that, haha. *_rolls up sleeves_*
- _yeastplume:_ Feel free to rewrite from the ground up. Quoting your favorite economists and ethical philosophers.

### 6. Other questions

#### 6.1 v4.0.0 Beta
- _lehnberg:_ Re: IBD issue, am I correct in thinking that's not an issue whatsoever?.
   - _antiochp:_ IBD work can continue after hf3 - timing was just for convenience (rolling out new api endpoints etc.).

- _quentinlesceller:_ Before going deep into 5.0.0 I'd like to propose a grin-wallet v3.1.2 which fix the tor send on the v3.1.1. PR is ready: https://github.com/mimblewimble/grin-wallet/pull/425 What I need is grin and grin-wallet v3.1.1 on crates.io. I'll happily do it if someone give me access.
   - _yeastplume:_ @quentinlesceller I can probably give you access to all the crates, pm me user.
      - 👍: _quentinlesceller, lehnberg_

- _yeastplume:_ For the beta, there's one pr to merge on the grin side, one on the wallet side, then I think we can do a beta1 and write a post with skeletal release notes outlining things to test. We can get all this done over the next 24 hours. A lot of stuff changed in a very short period on the wallet command line to accommodAte slatepack, and the earlier all the permutations gets in use and start being tested, the better. There are one or two more additions I want to make over the next couple of weeks, but nothing major. But probably quite a few bugs to iron out.
   - 👍: _lehnberg_
   - _quentinlesceller:_ I have some bandwidth to test and help @antiochp @yeastplume.
   - _lehnberg:_ Sounds good. Where are we with tromp's hardfork3 fork? Https://github.com/mimblewimble/grin/pull/3335.
   - _lehnberg:_ Is that the one we're waiting for on the node side?
   - _yeastplume:_ Yes.
   - _lehnberg:_ What about antioch's https://github.com/mimblewimble/grin/pull/3302. Is that what he meant does not hold up beta?
   - _quentinlesceller:_ This one still wip?
   - _lehnberg:_ Ah that's the second pr, right?
   - _antiochp:_ Yes that one.
   - _lehnberg:_ Right. Okay, so yeastplume will look to cut betas by thursday? Both for node and wallet?
   - _yeastplume:_ Yep, earlier if possible.
   - _lehnberg:_ Fantastic 👍.
   - _quentinlesceller:_ 👍 thank you.

**Meeting adjourned.**