# Meeting Notes: Governance, Jul 28 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 80 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- joltz
- kurt2
- lehnberg
- mably
- paouky
- phyro
- smokeking80
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/318) was reviewed and accepted, with the addition of two discussion points: "CVE-2020-15899" and "Nervos", and "Scheduled hard forks added under "Other questions", time permitting.

### 2. Action point follow ups from previous meeting
_None._

### 3. [Funding request, @Paouky](https://forum.grin.mw/t/request-for-funding-paouky/7560)
- _lehnberg:_ Floor is open for questions. @paouky I've not kept myself up to date on the forum and feedback → is the current funding request up to date?
   - _paouky:_ In its core, yes. I did describe some more in the comments section tho.

- _lehnberg:_ So tl;dr: 3 x 1.5k eur for 3 months of work. For two specific areas:
   1. Create a marketable, one-stop introduction resource for grin.
   2. Official documentation/wiki work.

   Is that right?
   - _paouky:_ Right. The foundation of the work would be to improve upon num. 2, and point 1 is a bonus to represent the beginner-material nicely.

- _lehnberg:_ Nice. Well we've definitely seen you around grin for a while and you're a known face. :) Do you have any previous relevant experience in creating websites or writing technical documentation? Any examples that you could point to?
   - _paouky:_ I've a bit of insider technical documentation work for operating certain electrical systems, but it's not public or meaningful enough so I didn't mention it. Basically, I don't have the track record to prove abilities which is a big part of the reason I'm asking for a low price considering its a short-term contract for full time work. My qualification is being an avid bitcoin and grin user and learner.
   - _lehnberg:_ Good answer 👍

- _yeastplume:_ It's a good funding proposal, in my opinion. Paouky has been active and exemplary as a community member, and the proposal concerns areas that desperately need work. My only concern is that we haven't seen any deliverables from paouky before, so I'm definitely willing to consider the request, but perhaps on a month-by-month basis at first (and with all other things required from full-time workers, status updates, etc).
   - _paouky:_  I support @yeastplume's suggestion and see why it makes sense.

- _phyro:_ I think this is a great opportunity for a couple of reasons. First, paouky has been around for some time and seems to be someone that can be relied on - I've not seen him have immature attitude. He doesn't know the details (from what I understand) of the protocol but this might help in conveying the the idea to non-tech people. He's not asking for a lot. As a bonus, he seem to be good with communicating with communities - this is my judgement from his new twitter account.
   - 👍: _yeastplume_

- _paouky:_ And to iterate a bit on @phyro 's comment, I've been working on going much more in depth in my understanding of the technical details..
   - 🚀: _phyro, antiochp_
   - _lehnberg:_ Yeah I read that you begin bsc in computer science in three months. Must say I felt jealous: a) I wish I was doing that, and b) what a nice way to warm up for comp sci studies!
   - _paouky:_ I do feel very fortunate!

#### Decision: Approve @paouky funding request

- _lehnberg:_ Okay, so suggestion to modify the request to month-by-month (still 3 x eur 1.5k in total), with the expectation that there will be regular (weekly) progress updates?
   - _paouky:_ 👍
- _lehnberg:_ And then after month 1 we do... What exactly? A quick check in a governance meeting before we proceed with the next month?
- _tromp:_ I support the proposal with 2nd and 3rd month of work each conditional on review of previous month's work. (no need for weekly review).
   - _lehnberg:_ To be clear: Meant a weekly forum post in the styles of other who have funding outlining what progress was made etc, not that we're doing weekly reviews of @paouky. :)

- _joltz:_ I also support the proposal with yeast's modification. I'm happy to see the engagement with this kind of work and am optimistic that the outcome will be positive for our ecosystem 👍
   - 👍: _antiochp, phyro_

- _lehnberg:_ Okay so... Any objections to this? Will give it some minutes to gestate.

   [...]

- _lehnberg:_ _carried_ 🚀
- _lehnberg:_ Looking forward to having you around @paouky you got your work cut out for you!
- _paouky:_ Thank you everybody, appreciate the faith you have in me and I'll do everything bring the value expected of me:)
   - 🙌: _antiochp, joltz_
- _phyro:_ Congrats @paouky 🍻
- _lehnberg:_ Anything I can do to help just let me know.
- _yeastplume:_ Congrats @paouky.
- _joltz:_ Looking forward to collaborating more with you @paouky 👍
- _smokeking80:_ Congrats @paouky.
   - 🍺: _paouky_


### 4. Documentation progress
- _lehnberg:_ I suspect we've not had a lot of movement there, but might see some more now given the previous discussion point.

### 5. Code of conduct progress
- _lehnberg:_  @paouky did a valiant attempt after last meeting. I've not had a chance to look at it yet, but optimistic that we'll get to it in due course.

### 6. [CVE-2020-15899](https://github.com/mimblewimble/grin-security/blob/master/CVEs/CVE-2020-15899.md)
- _lehnberg:_ Tl;dr a critical proof of work vulnerability was discovered by @tromp and fixed as part of 4.0.0. Vulnerability confirmed not to have been exploited, and no action is required by anyone.
   - 😅: _antiochp_

- _lehnberg:_ If you ever needed an argument for why less complexity is better, look no further. I personally look forward to a future with only one proof of work, one that preferably does not change.
   - 👍: _paouky_

- _yeastplume:_ Yeastmonster might be able to retire.
- _tromp:_ Yes, I will no longer need to do any cuda development.

- _mably:_ Aren't we supposed to get rid of c29 by the end of the year?
   - _tromp:_ We will.
   - 👍: _mably_

- _tromp:_ From hf4 on, it will just be cuckatoo32+.
   - ✔️: _mably_
   - _lehnberg:_ The last bird standing.

- _tromp:_ And in practice just cuckatoo32, as no-one will bother with cuckatoo33+. Except Wilke who will want to have the first c33 solution onchain:-).

- _phyro:_ Would it make sense to double check the last pow change we do or something?
   - _joltz:_ In general we should be double checking everything consensus related that we can before final hf because it will be our last clean chance for an easy fix.
   - _lehnberg:_ And then triple check that. 🧐
      - 💯: _joltz_
   - _antiochp:_ Yolo.
      - 😂: _phyro_
   - _joltz:_ Yofo: You only fork once.
   - _lehnberg:_ I think I got at least a few gray hairs this past month.
   - _joltz:_ You still have hair?!

- _lehnberg:_ But yeah... There's a question around due process There the last few weeks before fork. For prs touching consensus code etc. If we want to audit sth, when do we do that, do we code freeze earlier than usual, etc etc. Will leave that for dev meeting to figure out.
   - _antiochp:_ For hf4? I think that's def worth considering.
      - _lehnberg:_ Yes, for hf4.
   - _antiochp:_ We don't want to rush anything in, only to need an unscheduled change shortly after.
      - 👍: _joltz, lehnberg, mably_

- _joltz:_ Are there currently any planned changes?
   - _lehnberg:_ None we feel particularly confident about, as as of last week at least.
   - _tromp:_ I hope to add one, based on https://forum.grin.mw/t/bch-upgrade-proposal-use-asert-as-the-new-daa/7566/2. Will have to write me a nice rfc.
   - _joltz:_ Looking forward to reading it, that is an interesting area indeed.
   - _lehnberg:_ Yes, it was a very nice article.
   - _tromp:_ Please try out the interactive plots.
      - 👍: _joltz_
   - _lehnberg:_ Oh, didn't even see those, read from my phone. Will do.
   - _tromp:_ I forked the comparison tool and added in some variants of grin's daa.
   - _lehnberg:_ Oh wow. Available somewhere online?
   - _tromp:_ Yes, see that forum post.
      - 👍: _lehnberg_

### 7. Nervos
- _lehnberg:_ We very kindly [received a big donation from Nervos](https://forum.grin.mw/t/a-message-from-Nervos/7568/). Who are looking to add mimblewimble support on their blockchain. And would like to work with people in the grin community on this. From their forum post:
   
   > Over the next few months Nervos will begin a three-Phase effort:
   > 1. Schema design (~2 months) - a general Schema will be prepared for the operation model.
   > 2. Technical specification (~2 months) - a detailed Technical specification will be produced.
   > 3. Implementation (3+ months) - construction of the codebase. 
   >
   >Nervos recognizes grin as the authority on the mimblewimble protocol and welcomes any contributions by the grin community during any of the three Phases.

- _lehnberg:_ Shall we create a `#mw_nervos` channel where those interested can have Nervos related discussions?
   - 👍: _smokeking80, tromp, yeastplume, antiochp, joltz_

- _lehnberg:_ Created: `@grincoin#mw_nervos`, see you there.

### 8. RFC & sub-teams update

- _lehnberg:_ Do we have anything meaningful to add here? If not, maybe we spend the rest of the meeting on scheduled hard forks?
   - _yeastplume:_ Yofo.

### 9. Other questions

#### 9.1 Scheduled hard forks
- _lehnberg:_ Okay, here was some thoughts (above) that I shared yesterday: [keybase://chat/grincoin#general/10285](keybase://chat/grincoin#general/10285). There's some thoughts by johndavies and kurt and others as well scrolling down from there. Whenever the topic comes up, a question is often: Well, are we supporting soft forks or not? This instructs our stance on hard forks.
- _yeastplume:_ I do not know the answer, I understand the arguments on both sides. I'm leaning towards feeling there's a danger of grin becoming stagnant if we let hardforks run out without a clear consensus mechanism how to introduce one if required. I feel the pressure to get everything in before hf4 is making people edgy and could result in rushed, unforced errors. And I also think grin is far from done, and great new discoveries remain to be made.
- _phyro:_ I liked tromp's suggestion with having one scheduled in exponential intervals 2, 4, 8, 16 years.
- _yeastplume:_ I would like us to be able to focus on building on top of grin without always feeling like we're rushing to get stuff in for the next hf.
   - 👍: _paouky_
   - _paouky:_ This is also important, especially for outside developers.
- _lehnberg:_  
   > there's a danger of grin becoming stagnant if we let hardforks run out without a clear consensus mechanism how to introduce one if required
   
   I agree
   
   >  I feel the pressure to get everything in before hf4 is making people edgy 
   
   So do i
   
   > and could result in rushed, unforced errors
   
   Please, no.

   > and I also think grin is far from done, and great new discoveries remain to be made.
   
   Definitely. But, if you add _one_ scheduled hard forks, you're in theory allowing for _infinite_ scheduled hard forks. A core team can tweak, and a community can try to hold the core team accountable to what they have promised, but it's quite a fragile system. The only reason why there's pressure for the last hf is because it's the last one. If we had many of them, I'm not sure there would have been the same pressure on making progress either.
   - _yeastplume:_ Right, but the efficacy of progress can't be properly judged until time has been allowed to elapse and results over time seen.

- _yeastplume:_ We'd still keep our pledges with respect to pow changes.
   - _lehnberg:_ We'd break one pledge and then tell people "trust us, we'll keep the other pledge".

- _lehnberg:_ And arguably, if we have no scheduled hard forks, then there should be a lot of motivation to build up for a "feature package" worthy of a hard fork, if we ever need it.

- _tromp:_ It doesn't seem that hard to introduce an unplanned hf. You get a large majority of the community to agree that it brings a very useful improvement, and then prepare the new version and pick a date...
   - 👍: _paouky, smokeking80_
   - _tromp:_ You want to avoid ppl questioning the upgrade enough to keep the old fork alive for long.
   - _antiochp:_ Agree with @tromp - if the proposed change is supported sufficiently then we should be able to hf relatively easily.
   - _paouky:_ I also agree with @tromp here.

- _antiochp:_ Right now I think there is an argument to be made that grin is not truly "live" until post-hf4.
- _phyro:_ Good point. The community controls it in any case.
- _kurt2:_ Planned or unplanned hf, I would think it might be good to put a firm cap (for example 2024, or 2028) after which no hf is allowed (unless security reason like adaptation to quantum threat), to enable (very) long term immutability.
   - _paouky:_ But then you sort of create an expectation that a hard fork might very well occur before that date.
- _tromp:_ Long term immutability has to be a social convention.
   - _kurt2:_ Right, a point in time where the community has a strong enough and rooted culture to know what it wants, and hopefully that will be something similar to btc at some point (very hard to change).

- _lehnberg:_ I am leaning towards agreeing with @tromp as well, and had my opinion swayed as part of these meetings when we first started discussing it. I totally feel like grin is "half done" at best. And I really would like to see us being able to upgrade consensus when needed. _Especially_ for critical security related bugs... I just don't see how we could do that without putting a massive degree of centralization around the core team.
   - _lehnberg:_ But... To devil's advocate that, maybe that's not a bad thing? Idk. On the One hand a lot of people are complaining about how centralized the core team is. On the other, grin is really young and with a greater degree of centralized development you can move forward and make progress faster.
      - _yeastplume:_ That would be my main concern.
   - _lehnberg:_ And if grin doesn't innovate, arguably it will stagnate. But I for one was _really_ looking forward to shifting focus away from consensus and protocol and towards end user experience more.
      - 💯: _phyro, yeastplume_
      - _phyro:_ This and p2p level privacy improvements.

- _kurt2:_ Indeed, we must specify what can (and cannot happen) before such a date, probably.
- _tromp:_ What is current behaviour when receiving p2p messages of unknown type?

- _yeastplume:_ But.. Maybe it will also raise the bar with respect to hardfork proposals.. They would have to be really elegant and obviously applicable.
   - _lehnberg:_ What would?
   - _yeastplume:_ Any hf proposals that the entire community could get behind.
   - _lehnberg:_ You mean if we had more scheduled? Or no more scheduled?
   - _yeastplume:_ If we had no more scheduled.
   - _lehnberg:_ Gotcha.
   - _lehnberg:_ Yeah. Definitely. The risk obviously would be that miners wouldn't give a shit.
   - _lehnberg:_ And we'd be stuck. But I'm not sure that's so bad.
   - _joltz:_ That is the advantage of unplanned hf- the bar is much higher as opposed to a forced scheduled hf.
      - 👍: _paouky, antiochp, phyro_
   - _joltz:_ I think the reasoning would go like: "new feature improves grin, improved grin is better price, better price is good for miners".
   - _lehnberg:_ But yeah, "new feature better be shiny, or I can't be arsed".
   - _joltz:_ Which is why the bar is higher.
   - _lehnberg:_ Even for bitcoin, taproot/schnorr doesn't seem to be a slam dunk, and I can actually understand the logic.
   - _yeastplume:_ New feature might not be shiny and far as miners are concerned.

- _lehnberg:_ Yeah so I guess the question is.... If we have no scheduled hard forks, can we live with it perhaps taking years to get everyone on the same page to make a consensus change?
   - _tromp:_ Let's say that 1 or 2 years after hf4, both nrd kernels and bp+ have been thoroughly reviewed. I could see  most ppl getting behind a hf for those.
   - _lehnberg:_ Ppl yes. Miners? No idea.
   - _lehnberg:_ Maybe if we asked really nicely. And then we'd have one less "favour" left to ask of them.
   - _tromp:_ Miners will have to go along if they see users and exchanges agreeing to adopt.

- _yeastplume:_ And how are we judging whether people are behind it?
- _paouky:_ Miners would be on-board with whatever is the common path.
   - 👍: _phyro_
   - _lehnberg:_ Common path is `do nothing` in this event.

- _yeastplume:_ Whoever screams loudest and with the least regard for civility.
- _paouky:_ They won't continue to mine on a chain with no users, they'll migrate.
- _lehnberg:_ I can totally see us being able to rally the mining pools around a do-or-die patch for a critical vulnerability. But we'd have maybe two-three of those, max, before even that grows tired...
- _tromp:_ Currently, our hfs are *strongly* planned in that the code will just refuse to go past some blockheight. That is what we will stop doing after hf4.

- _antiochp:_ Bitcoin had its uasf moment, we may need some similar strategy when the time comes (not even sure a uahf is possible).
   - _lehnberg:_ Hmm. Would be good to understand that better.
- _phyro:_ So basically we will start giving people a choice.
- _tromp:_ In that sense, monero's hardforks are all unplanned.
   - 👍: _joltz_
- _antiochp:_ I suspect a uahf is a hf.

- _lehnberg:_ Okay, so being slightly mindful on time, let's give this 10 mins more max. Is there a viable alternative to `do nothing` that we can say is on the table at this point?
   - _yeastplume:_ There certainly isn't any percieved consensus for such.

- _tromp:_ So concretely, I propose that after hf4 there will be no more block height expiry.
   - _lehnberg:_ In other words, if we make no changes, this is what will happen, correct?
   - _tromp:_ Yes.
   - _antiochp:_ Assuming the hf4 changes are made as planned.
      - _lehnberg:_ What do you mean, just so I am sure I understand.
   - _antiochp:_ I believe we stop at hf4 height currently due to header version rules etc. So this needs relaxing as part of hf4. Could be mistaken though.
   - _lehnberg:_ Ah. We need a version bump basically.
      - 👍: _antiochp_
   - _antiochp:_ Yes, and assuming we do this as we plan to then there will be no height limits beyond that.

- _phyro:_ Having them at specific time continues the current state which is "what do we change in 2 years".
   - _lehnberg:_ Yeah, and for me it's not been the best experience so far. It's been great that we've had the opportunity. But it's arguably also slowed our thinking down massively in other areas. Change for change's sake.
   - _phyro:_ Yeah.
- _phyro:_ I guess the other way is what was suggested which is no change unless great benefits with which the vast majority agrees.

- _tromp:_ We plan to put no height limit on v5 blocks. It will be the first grin unlimited.
- _yeastplume:_ I guess current position is a conscious decision to proceed as originally envisaged.
   - 👍: _antiochp_

- _joltz:_ I think we would also need an RFC dedicated to how an upgrade would actually happen on the network.

- _lehnberg:_ I mean... Okay. Let's say there's a massive development. Some BLS or ZKP breakthrough. Makes us re-evaluate our entire existence. I'm sure that would be possible to rally support for ...but any such improvement would likely come with some kind of trade-off, and I'm sure there would still be people opposed to it.
   - _yeastplume:_ There will be forks.
      - 🍴: _phyro_
   - _lehnberg:_ Exactly.
   - _lehnberg:_ And maybe rightly so.
   - _yeastplume:_ Which I think is fine, I'm all for good-faith forks.
   - _lehnberg:_ Yes, I am too.
   - _yeastplume:_ (unfortunately most aren't good faith).
   - _lehnberg:_ Would be nice to avoid it if possible, but I suspect it's very hard to.

- _joltz:_ I don't think there is any crypto breakthrough of a new tech that would fundamentally invalidate our existing work just because it would take a long time for its primitives to have a similar level of review as ours.
   - _lehnberg:_ I wouldn't know. But these are exciting times we live in. ;)
   - _joltz:_ So I think in those cases forks would be welcomed to get the testing and review up to a level where they could be considered suitable for us (or at least the model I'm working with).
      - 👍: _lehnberg_

- _lehnberg:_ 3 mins and then wrapping up.

- _phyro:_ Besides, we have more than 1.5 years advantage on the fairest emission model so we could take more time to avoid jumping to new things as soon as they get out.
   - _tromp:_ I'm really curious how many years we have to wait for another constant reward coin...
   - _phyro:_ The longer the better for grin. 🤷‍♂️

- _lehnberg:_ Okay so what's a fair bottom line to today's discussion?

- _yeastplume:_ That there is no/not strong enough consensus to consider changing our original hf plans.
- _lehnberg:_ "we see why there would be a lot of benefits with further scheduled hard forks, but at the same time, there is no consensus for a convincing alternative to current plan".

- _yeastplume:_ So if someone feels strongly the other way, they better start making a case.
   - 👍: _lehnberg_

**Meeting adjourned.**