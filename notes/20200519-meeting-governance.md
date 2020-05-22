# Meeting Notes: Governance, May 19 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 50 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- dburkett
- joltz
- lehnberg
- phyro
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions
### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/290) was accepted without modifications, and a 4.0.0 planning triage happening in the #dev channel after the meeting.

### 2. Action point follow ups from previous meeting
None.

### 3. [GUI wallets](https://forum.grin.mw/t/the-official-grin-gui-wallet/7209)

- _lehnberg:_ Joltz wrote [a post on the forum](https://forum.grin.mw/t/the-official-grin-gui-wallet/7209/16) about criteria. @yeastplume you have any other thoughts?
   - _yeastplume:_ Read through the thread, and I do but I haven't had a chance to think about it properly just yet.

- _lehnberg:_ Btw @joltz  → I notice both your options rely on the core or security teams to vet the wallets. What if we could do it in a way where the review process was more community-led somehow? Submit a pull request → there's a certain number of approvals or whatnot → it gets merged.
- _joltz:_ Correct, both teams are required for approval in option 1 and both teams are required for ratings in option 2. The idea was to have some sort of filter to prevent purposefully malicious wallets from appearing. If we can find a clean way to do it without relying on those teams and without too much concern for malicious listings it would be a win.
- _lehnberg:_ Perhaps not have any kind of subjective 'scoring', and instead check boxes based on certain functionality / characteristics?
- _joltz:_ It can get murky there. Wallets can design themselves to tick those boxes and still not really be good for users etc. But if we can find the right criteria such that if any wallet follows we can have a certain degree of confidence that is great.
- _lehnberg:_ Yes, but I think it gets even murkier if we (core or security team) are supposed to make qualified opinions there. (Unless we actually audit the wallets in detail, that is).
- _joltz:_ For me it comes down to risk to fund loss to a user from finding a wallet on the official site. We want the chance of this as low as possible imo. Or at least to be sure the user is properly informed of the risks.
- _joltz:_ But yeah a lot of subjectivity at play here no matter what unless we just put the onus entirely on the users to research.
- _lehnberg:_ It's a trade-off. If we want chance to be as low as possible, we list grin-wallet and call it a day. We seem to want more than that.
- _joltz:_ I think option 2 is a fair balance. Don't have any opinions that are too strong though- still needs more thought.
- _yeastplume:_ I do think we want some checkboxes that need to be checked, but need to think some more as well, bit busy with other things at the moment.
- _lehnberg:_ Table until next meeting then?
   - 👍: _joltz, yeastplume, quentinlesceller_
   - _yeastplume:_ Yep, sounds good.

- _joltz:_ Also for anyone lurking, feel free to add feedback here in the forum thread https://forum.grin.mw/t/the-official-grin-gui-wallet/7209/16.
  
### 4. RFC & sub-teams update
- _lehnberg:_ Going in the order of the list of open rfcs:
https://github.com/mimblewimble/grin-rfcs/pulls.

#### 4.1 [Slatepack](https://github.com/mimblewimble/grin-rfcs/pull/55)
- _joltz:_ Slatepack is going well, @yeastplume is already working on the implementation at https://github.com/mimblewimble/grin-wallet/pull/410, there are still a few open questions like key generation and finalizing the hrps, would be grateful for any feedback there if anyone gets time.
- _lehnberg:_ If slatepack RFC is to be merged prior to v4.0.0 going out, it's getting quite tight now. Assuming 2 week final comment period. Two weeks left for the 4.0.0 beta.
- _yeastplume:_ I'm trying to work through key generation at the moment to see how it fits in.
   - 👍: _joltz_
- _joltz:_ Once the key generation is accounted for it should be ready for fcp I think.
- _yeastplume:_ Hope that should be sorted by the end of this week.
- _lehnberg:_ Sweet. Anyone willing to shepherd?
   - _yeastplume:_ I could shepherd but I'm a bit deeply involved.
   - _quentinlesceller:_ I can.
      - 🙏: _joltz, lehnberg_

- _joltz:_ Just throwing this out now- I want to try to squeeze a short focused security review of all of this new tx stuff in 4.0.0 before we fork if possible.
   - _lehnberg:_ How is that defined?
   - _joltz:_ Would find a researcher to do a reduced scope review for a few hours before launch. If we don't have time to do a formal fund request for it I might be able to ask a favor this time. So as soon as we get slatepack/compact slates code to freeze get someone to review for security in the testing period before launch.
      - 👍: _yeastplume_
   - _lehnberg:_ Would be great 👍

#### 4.2 [Deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)
- _lehnberg:_ What do we do with this rfc? On the one hand, we're proceeding with announcement of deprecation. On the other, actual deprecation really deserves to be defined in an RFC I think?
- _joltz:_ I think it should be fcpd? Slatepack itself doesn't deprecate http(s) and it is such a major change it probably does need an rfc.
- _lehnberg:_ Yeah. Is it mature enough to the point of fcp? Afaict it's only I who's done a review.
- _joltz:_ Right, it could definitely use another review or two. The content itself is really simple though, mostly lots of justification. The reference explanation is only a few lines.
- _lehnberg:_ I can shepherd it. Happy to put it in fcp, but given our workload ahead of 4.0.0, even if I chase say @yeastplume for a review not sure how much time he'll be able to give it. How about we don't finalize this RFC until after 4.0.0 is out?
- _joltz:_ Are we taking any steps to deprecate in 4.0.0 like warning messages or anything?
- _lehnberg:_ (does it need to be adopted before we announce deprecation?). Yes, so warning messages we've agreed are going into 4.0.0 (last meeting).
- _yeastplume:_ I think we can do the RFC shortly after, we still reserve the right to reverse it if for some reason the RFC doesn't work out.
   - _joltz:_ This makes sense. We can give slatepack a try before formally deprecating http(s).
- _lehnberg:_ But the details of the actual deprecation I'm thinking does not need to be finalized right now?
- _lehnberg:_ Allright, so I'll be shepherd, and will go easy on the gas pedal for now?
- _joltz:_ 👍 sounds good, thanks.

#### 4.3 [Parallel IBD](https://github.com/mimblewimble/grin-rfcs/pull/52)
- _lehnberg:_ Jasper is away but received an update.
- _joltz:_ I think jasper is working on an update coming soon.

#### 4.4 [e2e encrypted slates over http(s)](https://github.com/mimblewimble/grin-rfcs/pull/50)
- _lehnberg:_ @dburkett is this still relevant given that http(s) now is deprecating?
- _joltz:_ Slatepack should replace this RFC assuming it is accepted and http(s) is deprecated.
- _dburkett:_ It appears that slatepack is going to be merged, so no, this is not relevant. I'll close.
   - 👍: _lehnberg_

#### 4.5 [Compact slates](https://github.com/mimblewimble/grin-rfcs/pull/49)
- _lehnberg:_ In fcp, ends on 21st in *two days*. @quentinlesceller you feel it's in good shape? Ready to be merged?
- _quentinlesceller:_ I'll have a look this afternoon but definitely yes. So I'll merge on thursday if there isn't any objections.
   - 👍: _lehnberg_

#### 4.6 [N(e)rd kernels](https://github.com/mimblewimble/grin-rfcs/pull/47)
- _lehnberg:_ In fcp, ends on 21st in *two days*. There was some updates during fcp. All in all looking good, I'm taking another nitpick pass and checking with tromp and others if happy before merging.
- _tromp:_ There was another application of relative kernels published recently: The succinct atomic swap by ruben somsen.
- _lehnberg:_ Yes! Right, absolute time locks are not needed.
- _tromp:_ But I think it's better done with absolute locks anyway.
- _lehnberg:_ I don't think it has any impact on the RFC itself right? Or the nrd approach?
- _tromp:_ No, the relative locks are an optimization allowing for only 2 txs to do the swap, with the caveat that bob has to stay online to check to alice cheating. I think that caveat is better avoided with the 3rd tx. In which case no relative lock is needed. So to me it's a questionable use of relative locks. And not needed to be considered in rfc. The issue wld be if nrd kernels can also have adaptor signatures. Which I did not have time to study.
   - _lehnberg:_ Hmm... Interesting. I'll ping Antioch and raise this.
- _tromp:_ Maybe the RFC could just mention and include reference to sas.
   - 👍: _lehnberg_

#### 4.7 [qa team](https://github.com/mimblewimble/grin-rfcs/pull/45)
- _joltz:_ It can probably be closed until there is more interest/energy directed there.

#### 4.8 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)
- _lehnberg:_ There's not been any progress in the pr, and shepherd jasper wanted to extend another two weeks.
- _yeastplume:_ There was progress, just a couple of short modifications yesterday.
- _lehnberg:_ Oh! Where? Commit tree looks empty.
- _yeastplume:_ Uhh.. Thought they were there. Ahh, that would have been a forgotten 'git push'.
- _lehnberg:_ Haha. There now.:)
- _yeastplume:_ Better leave it there for review then.
- _lehnberg:_ 👍 another two weeks it is. Would be good to get reviewers looking at that change then @dburkett @i1skn @johndavies24 and others who have this matter warm at heart. Would be great if we could arrive to the next governance meeting with a clear understanding whether we're ready to merge. 

### 5. Other questions
_None._

**Meeting adjourned.**