# Meeting Notes: Development, May 26 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- heisenberg1995
- joltz
- kurt2
- lehnberg
- mably
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions
### 1. Retrospective
- _yeastplume:_ Just as a yeasty reminisce the past couple of weeks has been very much trying to get all of the changes in for 4.0.0, reckon it's been similar for everyone.

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/293) was accepted without modifications.


### 3. Action point follow ups from previous meetings

#### 3.1  Crates.io
- _yeastplume:_ Not actioned, crates still need updating to 3.1.1.
   - _lehnberg:_ 🔔.

#### 3.2 Release checklist
- _quentinlesceller:_ Release checklist [is created](https://github.com/mimblewimble/grin-pm/pull/292) but is still a wip document. I'll update it later today.
   - ✅: _yeastplume_
   - _lehnberg:_ 0.5 x 🔔

### 4. Status of [Grin v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)
- _lehnberg:_ We're 1 week away from tentative betas.
- _yeastplume:_ From my end it feels tight but achievable, on the understanding slatepack will not necessarily be 100% perfect. Particularly, there will only be a single address per wallet for now (with multiple addresses to come when we spec exactly how they'll work). Let's go through line by line.
   - 👍: _lehnberg_

- _lehnberg:_ Cuckaroo tweak, @tromp?
   - _tromp:_ See the [hf3 pr](https://github.com/mimblewimble/grin/pull/3334), includes cuckarooz. Not much progress on the cuda miner yet though, except on paper.
   - _yeastplume:_ Needs review still, but seems good to go?
   - _tromp:_ Well, there is the floonet timing...
   - _yeastplume:_ /// floonet second hard fork height, set to happen around 2020-06-20.
   - _tromp:_ I just took a guess on where would be june 20.
   - _yeastplume:_ Was just going to mention that, with release candidate due June 16, that would seem okay? Though do we not want the floonet swapover during a beta rather than leaving it that late?
   - _tromp:_ Seems ok. Just please double check if height is still on target then. Beta is fine too:)
   - _yeastplume:_ Okay, can you add comments just so we don't forget? I think it'll be fine. These are target dates anyhow, we have 10 days between floonet and final release to fix anything up. Just add the comment to the github issue.
   - _quentinlesceller:_ Yep that'll be fine.
   - _tromp:_ Ah, ok.
   - _lehnberg:_ Okay so we're going with june 20? For floonet?
   - _tromp:_ That's consistent with previous hfs.
      - _quentinlesceller:_ Last year it was around june 23 so yeah pretty consistent: https://forum.grin.mw/t/grin-first-hard-fork-mid-july/5148/3
         - 👍: _lehnberg_
   - _yeastplume:_ Yep, all okay with that.

- _lehnberg:_ Compact slates @yeastplume is done, just wanted to check that testing has happened to the point where you're satisfied as well? Or do you want more eyeballs?
   - _yeastplume:_ Any issues will become apparent during the beta phase. Am satisfied with where it is right now.
- _lehnberg:_ Cool. Nice work making all that happen.
- _quentinlesceller:_ Yep impressive.

- _lehnberg:_ Slatepack @j01tz, @yeastplume so yes you were saying.
- _yeastplume:_ For slatepack, it's 80% there, still needs
   - api functions
   - changes to command line to support the flow
   - any tweaks to the armoring that need to happen.
- _lehnberg:_ One listening Address? Address re-use in the first impl? Or not?
- _yeastplume:_ No address reuse for now, but should be an easy target for 4.1.0.
   - 👍: _joltz, quentinlesceller, lehnberg_
- _lehnberg:_ Ah the other way around, very nice.
- _yeastplume:_ I got that wrong, edited. 1 wallet, 1 address for now.
- _lehnberg:_ Oh. Ah.
- _lehnberg:_ Haha.
- _quentinlesceller:_ 👍 anyway.
- _lehnberg:_ Ok, that will do as well then I guess.
- _yeastplume:_ But easy enough to move to multiple addresses afterwards.
- _joltz:_ There is some complexity there that is better to get right than force something rushed.
   - 👍: _lehnberg_
- _yeastplume:_ Indeed and agreed. Current master has all of the slatepack tests in place so you can see examples of everything being output. Was hoping @joltz could have a look at any tweaks required to the armoring.
- _joltz:_ Sure, I should be able to sneak some time to take a look there today 👍
- _yeastplume:_ Great! So I'll just be doing the api and command line changes and prepare for beta.
   - 🚀: _quentinlesceller_
- _joltz:_ Sounds good 🚀

- _lehnberg:_ Parallel IBD @jaspervdm is away, but last time I heard there was some progress there.

- _lehnberg:_  relative kernel locks @antiochp.
- _antiochp:_ Pr for feature flagged initial impl is in review. I owe some responses to feedback. @quentinlesceller pointed out a couple of things we should add to RFC and 👍
   - _quentinlesceller:_ Yep had the opportunity to take a look at your PR this morning @antiochp and overall everything looks good. Can't wait to test it :)
- _antiochp:_ There is an additional big PR to go after this is merged, just fyi. Still WIP as it relies on NRD kernels actually existing in codebase. And a small wallet PR to match the additional kernel variant in the enum (so it compiles). But wallet can and will effectively ignore NRD kernels for now.
   - 👍: _quentinlesceller_
- _lehnberg:_ All check marks in todo! 🚀
https://github.com/mimblewimble/grin/pull/3303.
   - 🤩: _joltz_
   - 💅: _antiochp_

- _yeastplume:_ On http deprecation, was thinking of forcing a command line switch if you want to send via http(s). So sending will follow the slatepack flow, but if the address is an http address then you'll get a big warning telling you that this is being deprecated, and use the `--I-know-http-is-being-deprecated` flag and try again.
   - _lehnberg:_ @quentinlesceller was saying sth last meeting about not breaking anything?
   - _yeastplume:_ It will only break on the command line. Log warnings otherwise.
   - _quentinlesceller:_ I'm ok with breaking command line but not the api if possible:)
   - _yeastplume:_ No, the api will be the same.
   - _lehnberg:_ Very nice then.
   - _yeastplume:_ Cool. Not done anyhow, will do as part of command-line changes for slatepack workflow.

- _lehnberg:_ Okay so that’s the list then!
   - _yeastplume:_ awesome!

- _lehnberg:_ What are we worried about slipping? With jasper away atm, we don't have good visibility in the parallel IBD stuff, but I reckon that's fairly contained. It was only a preparatory pr for future work in any case
not the full parallel IBD.
   - 👍: _antiochp_
   - _antiochp:_ Yes, the plan was for some of the p2p msgs for IBD. So just prep work. Having them in for HF3 would simplify further work but we can work around it if need be.
   - _yeastplume:_ Okay, we just assume it's on track for now?

- _yeastplume:_ On my end, it might be a bit fiddly ensuring the command line changes are correct and according to the spec.

- _lehnberg:_ @antiochp the second PR for the NRD stuff that you mentioned, that's consensus breaking as well?
   - _antiochp:_ it is yes, technically, but this initial PR disables it entirely on mainnet so consensus breaking only on floonet/testnet. WIP here - https://github.com/mimblewimble/grin/pull/3302 (but that PR is the index only, not yet including the NRD rules driven by the index).
   - _lehnberg:_ Okay. and feels good?
   - _antiochp:_ Yes but, if it does slip we're still good with getting the ser/deser in from the first PR
and if it does slip it only slips for floonet. tl;dr Ideally we activate this on floonet, but plan b is just to get the serialization changes in for support at network level.
   - _lehnberg:_ Nice.
   - _tromp:_ So on mainnet, NRD tx will not be relayed either, right?
   - _antiochp:_ @tromp no, txs will be treated as invalid and dropped
   - _tromp:_ Good
   - _antiochp:_ "CorruptedData" at the network level as far as all mainnet nodes are concerned. We are discovering just how complicated a HF involving a consensus breaking change to tx kernels is with HF3 and to be honest this was significantly more complex than I originally assumed.
   - _tromp:_ Good thing we find out now rather than near final HF stress
   - _lehnberg:_ Definitely.
   - _antiochp:_ Yeah agreed. Probably informs how we think about subsequent HFs also.
      - 👍: _lehnberg, joltz_ 

- _tromp:_ Btw, it's scary to me how fast beam is moving, with already confidential assets and payment channels planned for their next HF, in addition to lelantus.
   - _antiochp:_ I think there are different approaches to this... I'm happy we are approaching this carefully.
   - _lehnberg:_ Indeed, quite refreshing even, we're on both ends of the spectrum here.
   - _yeastplume:_ Yes, and it's good to see different MW projects taking different directions.
   - _antiochp:_ Even if it feels like I spent the past few months adding a couple of bytes to a kernel...
      - 😅: _joltz, quentinlesceller_
   - _lehnberg:_ Those bytes will be there for quite a while potentially, so good that you are taking your time!

### 5. Anything 5.0.0 related
- _lehnberg:_ Just to recap where we are on soft forks there:
   > To support arbitrary future kernel variants we would, by definition, need to allow arbitrary data.
   
   https://github.com/mimblewimble/grin/issues/3317#issuecomment-623456602
   
   This would be pretty much unavoidable if we were to support future kernel variants, no?
   - _antiochp:_ Yes that's the big sticking point. Is it worth it?

- _antiochp:_ I think if we want to activate NRD "for real" in HF4 then we need a legit use case for it implemented at the same time. Aka we need wallet support for multisig etc.
   - _tromp:_ I think a future new kernel type warrants a hard fork.
     - _antiochp:_ From a simplicity and cleanliness perspective hard forks would appear a good fit for Grin
        - 👍: _quentinlesceller_
     - _tromp:_ Although i can't for the life of me imagine what other type we could need.
     - _antiochp:_ @tromp agreed - the theory here is adaptor sigs would be sufficient for any interesting additional features. That building "scripts" in via additional complexity on the kernels is a "bad thing".
     - _yeastplume:_ I'm in this boat as well... If it's important enough to need a new kernel type, there will be much discussion and preparation needed, enough to meet and justify the barrier of a hard fork.

### 6. Other questions

#### 6.1 Maximum inclusion height kernel
- _kurt2:_ Speaking of kernels.... May i ask if you think it would make sense to prepare for having the same security and trust models (objectively) as bitcoin by preparing an additional field to the kernel signature where we would put something like blockheight (to be determined) in the message, in order to facilitate verify that all kernel are different.
It seems very natural to desire to enforce at consensus layer that utxos are fully controlled by their owner and cannot be spent by third parties without they asked about it, which looks possible today.

   The advantage of doing this at next hard fork is that an efficient algorithm could be used sooner on the blockchain history, and we do not need to have an actual algorithm soon. Rant finished. :)
   - _yeastplume:_ @kurt2 I think you'd probably be better off speccing the proposal on the forum to give people a chance to digest what you're proposing.
   - _antiochp:_ @kurt2 I'd argue no. In that the mimblewimble "summing" is what gives us the security model. But we should discuss in the post.
   - _kurt2:_ Oki, I'll try to make a post.
      - 👍: _lehnberg, antiochp_
   - _tromp:_ kurt2 is suggesting a mandatory maximum inclusion height kernel feature so that we can efficiently enforce unique kernels.
      - _kurt2:_ Right. More efficient explanation.
      - _antiochp:_ Ah so I misunderstood - let's discuss in the post. (good reason to do it there and not here...)
   - _yeastplume:_ Yes, once we digest we can also bring it up as a subject in a later meeting. Okay, coming up on time, is there anything else anyone wants to bring up? Then that's it for now. Thanks everyone and back to the salt mines!


**Meeting adjourned.**