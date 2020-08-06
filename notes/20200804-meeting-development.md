# Meeting Notes: Development, Aug 04 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- joltz
- kurt2
- lehnberg
- mably
- paouky
- phyro
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ On a quick reminisce during the lazy days of summer. It's been mostly a few refinements, addressing issues, and post-hf clean ups, refactors, etc. Of recent note there's been a interesting discussion of [eliminating the finalize step](https://forum.grin.mw/t/eliminating-finalize-step/7621/22) from David Burkett.

   Also a new contributor, who's added some code and sparked some discussion on slatepack max sizes unsedd (whose handle on KB I don't seem to have) https://github.com/mimblewimble/grin-wallet/pull/495.
   - 🚀: _joltz_

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/322) was accepted without modifications.

### 3. Action point follow ups from previous meetings

#### 3.1 [Release checklist](https://github.com/mimblewimble/grin-pm/pull/292)
_Actioned._

#### 3.2 [Mitigating re-org risks actions](https://github.com/mimblewimble/grin-pm/issues/327)

- _yeastplume:_ Forum post [has been published](https://forum.grin.mw/t/trade-offs-when-handling-re-org-attacks/), the rest of the items hav enot progressed.

#### 3.3 Bulletproofs+ questions
#### 3.4 Bulletproofs+ reach out to researchers

- _yeastplume:_ So on bulletproofs+ questions, I forgot who was to have taken that point, let me look.
   - _lehnberg:_ Was meant to be you and I, I believe. (we've not done it)
   - _yeastplume:_ Yes, I think we can safely assume that.

- _lehnberg:_ But yeah I think key takeaways were to understand:
   1. whether bp+ is compatible with what we're doing in grin with bulletproofs (storing extra info etc);
   2. whether original bp authors were thumbs up on the approach of bp+;
   3. even if all good in 1 & 2, would we really touch libsecp for this right now?

   If we would, then 1 &2 makes sense and should be a priority. If not, maybe it's not really that urgent.

   - _kurt2:_ The answer for 1) is yes.
   - _yeastplume:_ Right, be is a bunz/poelstra question.
   - _joltz:_ And 4) is it even possible to get an adequate level of review between now and hf even if that is the only thing we focus on? Wrt both specification and implementation.
      - 👍: _phyro_

- _tromp:_ I'd rather have effort spent on pibd than on doing bp+ before hf4.
   - 👍: _kurt2, yeastplume, phyro_

- _kurt2:_ Note that for 1), there are two solutions to retrieve the value v at wallet restore. 1) lll algorithm, which is a bit slow. 2) adding 64 bits of data to bulletproofs+ to store v directly (hidden version of v). So we probably have to assume that 2) is the only reasonable solution. Just for notice:) 64 bits is not a lot of extra data anyways.

- _yeastplume:_ On 3), I've implemented aggsig (which is a simple algorithm), and made some changes to some bp code to allow for derivation path storage. I don't feel I'd be the right person for a full bulletproof+ implementation. And It feels bp+ would be an easy sell to the community for a reason for an hf, once it's more fully reviewed and if audited impls later become available. It doesn't feel like an emergency.
  
- _joltz:_ I'm not sure we are in a position to expend the resources necessary to get bp+ from its current state to production ready. May be best to take long road and collaborate with greater community on that.
   - 👍: _yeastplume, tromp, paouky, lehnberg_

### 4. v5.0.0 planning:

- _yeastplume:_ I guess that all leads into... 5.0.0 planning.. I think I might not be alone in wondering what we should be doing, it feels like a lot of things were thrown out as potential changes, with many rejected for some reason or another.Or rather, a sense they weren't urgent, or appropriate. It feel like short of pow changes there isn't much that people are clamouring for in the last hf.
   - _lehnberg:_ Well, clamouring I think there are. I'd maybe say it's hard to build consensus around any proposal.
- _tromp:_ Pibd!
- _kurt2:_ Unique kernels! :o

- _joltz:_ If only we had a process to formalize these ideas and track the comments...
   - 🔥: _yeastplume, phyro_
   - 🧂: _lehnberg, phyro_

- _lehnberg:_ Is there anything 5.0.0 related from that list we ought to talk about today? Tromp you're writing an RFC for the proposed difficulty adjustment change, correct?
- _yeastplume:_ That's true.. Remember everyone that we don't require rfcs to be peer-reviewed, intensely researched and then typed up with hundreds of supporting formulas and proofs in latex. Just get the idea up there in any form.
- _tromp:_ I'm focussed on writing an RFC for changing DAA but would be happy to help on an RFC for adding (re)-play protection rules to grin-wallet.
   - _lehnberg:_ Help... @phyro you mean? 😬
      - 👀: _phyro_

- _kurt2:_ All the replay and plays can be helped with social engineering I think.
- _phyro:_ I guess I could put something together about anchors but definitely won't be implementation details. If anyone with more background picks this one up I'm also all for it.
- _yeastplume:_ Btw, the nice thing about that idea is that there's nothing preventing anyone from trying it whenever they like.
- _tromp:_ Would you want to help out with wallet rules rfc, yeastplume?
   - _yeastplume:_ Sure, I can do that.
- _phyro:_ Oh we're talking about sweeping rules?
   - _tromp:_ About (re)play protection rules. Possibly including anchors and payjoins.
      - 👍: _yeastplume, phyro_

- _yeastplume:_ Okay.. Is that really it for 5.0.0 dIscussion for the time being though?

- _joltz:_ It's also our last chance for critical security fixes so find 'em if we got 'em:)
   - 🙏: _lehnberg_
   - _kurt2:_ There are already critical ones. As much as reorgs can make people loose coins (which were discussed to be mitigated) the current attacks allow the theft of coins.

- _lehnberg:_ Are we all on the same page about not doing nrd activation on 5.0.0? I'm for the record still in favour of doing it.
   - _tromp:_ I'm ok with leaving both bp+ and nrd activation as prime targets for an eventual unplanned hf.
   - _yeastplume:_ Am okay with this as well. Perhaps something we didn't consider originally and are now realizing is that the last hf should possibly be the most careful and conservative one.
   - _lehnberg:_ Fair enough I guess, I can't really argue with that...

- _tromp:_ Did we plan to deprecate https as well?
   - _yeastplume:_ Yes, that we do.
   - _tromp:_ Ok, so just tor + slateplacks after hf4, cool.
   - _joltz:_ I'd like to see more feedback from slatepack integrations personally.
   - _lehnberg:_ Afaik there are few of those in the wild yet. We might want to see if we could incentivize that somehow? Maybe even a "slatepack supported" stamp and a place on the website for every service that does it.
      - 👍: _yeastplume_ 

- _kurt2:_ And as often, and unfortunately, even for the smartest organisations/communities/entities, it is after the actual realization of the attacks that we measures are taken to prevent them more strongly.
   - _phyro:_ Yeah, I think everyone here wants to get rid of the attacks which is why we had many conversations around these. We just need to decide on which approach to take.

- _phyro:_ Slatepack integration lib for exchanges? With promises of having less issues.
   - _lehnberg:_ That would be very nice as well ofc. I believe @joltz and @quentinlesceller wanted to put together integration docs.
   - _joltz:_ There should be a copy of the docs out there, just waiting for some formatting from quentin maybe.
   - _lehnberg:_ Yep believe he's away these days.

- _joltz:_ It would be good to engage services to encourage and assist them to upgrade to slatepacks before we get too close to the deadline.
- _paouky:_ Worst case, services will be rushing to implement slatepack right before the last hard fork, when it will become the only option.
   - _lehnberg:_ Or just stop supporting grin. When it stops working.
- _paouky:_ We all know that would happen haha.

- _phyro:_ I have faith if we have some transitions docs ready.

- _joltz:_ Now is a good time while things are relatively calm. If macro market picks up the engineers will be too busy to bother for sure.
   - 👍: _phyro, yeastplume, lehnberg_

- _yeastplume:_ We should have those docs out soon anyhow (and we should be making them prominent asap).
   - 👍: _joltz_



### 5. Other questions

#### 5.1 [Eliminating finalize step](https://forum.grin.mw/t/eliminating-finalize-step/7621/)

- _lehnberg:_ Perhaps somewhat related (to kernels), @mably was asking whether we could talk about david's idea of eliminating finalize step in tx building.
   - 👍: _mably_

- _tromp:_ I find the fact that a possible attacker is picking your nonces to sign with rather scary. Since they can easily introduce bias into the nonces which is a known attack leading to key leakage.
   - _kurt2:_ No they cant. The nonce is a function of a hash of a diffie hellman secret. Lets be precise. Which you can not control the output randomness. When attacker chooses new keys each time for example. And this is clear. I am not inventing this. It is call a hash function.
   - _tromp:_ Maybe it can be bias proof. But we need to nail down technical details first so we can  better reason about it.
- _yeastplume:_ Agreed, but I also like that there's basically nothing anyone can do to prevent anyone trying this. We had a lot of ideas in the early days about enabling cold storage or offline wallets by 'pre-generating some stuff', and this is along the same lines except it's deterministic.
- _yeastplume:_ Am quite happy to see varying solutions to whatever problems out there, and wallets/users can choose whichever protocol they'd like to follow if the tradeoff is acceptable to them.

- _yeastplume:_ So would definitely like to see the results of that thread written up in an rfc.
   - 👍: _phyro, mably_

- _lehnberg:_ So zooming out a bit. I guess we all can agree that the _idea_ of eliminating finalize in the tx building step is very interesting, right? Might make tx-building simpler // reduce state and mishaps. And also possibly enable some kind of simpler offline sends. Than what was previously possible. Right? Is there anyone that have a good reason why we _wouldn't_ want the third step eliminated if we could?

- _yeastplume:_ And if the drawbacks are known and documented, users will be better informed as to whether they're an acceptable convenience trade-off.
   - _lehnberg:_ In my most humble opinion, we don't want a situation where there are multiple ways to finalize a grin transaction or it will be a ux nightmare. So either 1 trip + broadcast or 2 trips + broadcast. But not both at the same time.
      - 👍: _paouky_

- _kurt2:_ It would be fair to give the constructions to a cryptographer for review. If we think we could implement it.
   - 👍: _phyro_

- _yeastplume:_ We also can't stop anyone from doing so if they choose.
   - _lehnberg:_ Yes, we can't prevent it. But we ought to urge consistency here.
   - _yeastplume:_ Can only advocate.
   - _lehnberg:_ Which can go quite far.
   - _yeastplume:_ Indeed. We can also urge consistency to the point of rigidness.. But we're getting ahead of ourselves. We need a proper write-up.
   - _lehnberg:_ Yeah, it's great that the forum thread is active, which feels like a nice whiteboard brainstorming kind of thing. Would be good to have a document that keeps track of the latest and greatest of _the_ actual proposal. As it's very hard to parse and understand that. I think payment proofs are worked out right? Or not?
   - _kurt2:_ Yes they are. Well, we are not cryptographer. So still 0.0001% to have missed something.
   - _phyro:_ You mean 5%? Not missing things is hard.
   - _kurt2:_ I mean or the attacks, I would say something like 4%. For the fact that payment proof is provided, I think I am fairly certain it is sound.
   - _lehnberg:_ Okay, it's nice that we have these percentages.
      - 😂: _phyro_
   - _yeastplume:_ Right, let's not hold anyone to them.

- _lehnberg:_ But yeah, if we want a cryptographer to review sth, it helps to have an actual proposal. That we could point to. I love forum threads, but not sure it's the right format.
   - _phyro:_ No They are not. They too easily get side-tracked as well.

- _kurt2:_ Yeah for me I know nothing about wallet implementations. So I just do the theory.
   - 👆: _phyro_

- _kurt2:_ Anyone is free to make a proposal.

- _joltz:_ A good place to brainstorm original idea to get it solidified as a proposal for an rfc.

- _tromp:_ Sometimes it's good to start a new thread with a first post that summarizes insights gained in earlier thread.
   - 👍: _lehnberg, phyro_
   - _lehnberg:_ @kurt2 do you think david would be interested in writing something like that to get us all on the same page? Given it's his original idea and all.
   - _kurt2:_ Ah, not any idea if he wants, I guess he could but I havent asked him.

#### 5.2 Expiring kernels
- _kurt2:_ There were ek in the agenda? Or maybe the decision is already taken? Just asking... :)
   - _lehnberg:_ I think expiring kernels (ek) right now doesn't have a strong consensus around it. Some are nay, Some are yay, Some are unknown. Without a consensus, it won't go in, that's for sure. Something like this no-finalize idea, should it actually require ek, might help to sway people on it, I don't know.

   But then the no-finalize-idea would need to be formalized, and it would need to be established how/why ek is a must, etc etc and a lot of consensus building would need to happen. So there's a lot of work there. :)
   
   This is my understanding of the current status. It's not like we can take an official decision that there is no official agreement on how to move forward.
   - _kurt2:_ There is also a proposal without expiry.
   - _lehnberg:_ There's a proposal for having expiring kernels without expiry?
   - _kurt2:_ Unique kernels without expiry ya. Well, a document. But thanks for the answer about ek @lehnberg.
      - _lehnberg:_ Np, it's nothing new I think, it's the same situation it's been for a while.
   - _kurt2:_ Yes but the non expiring has not been discussed. No problem if people do not want.
   - _lehnberg:_ I don't know which of all the 5-6 different threads and proposal that is personally. So it's very possible it's not been discussed, I've personally lost track somewhere two three weeks back. Something needs to happen if we're going to get out of this (local?) equilibria. If no action is taken, It won't go into 5.0.0.
   - _phyro:_ The replay/play discussions kind of died out 2 weeks ago.
   - _lehnberg:_ If anyone wants to force a discussion for anything technical or consensus breaking, there's a clear way to do that → write an RFC and open a pull request. Even if it's a draft, means, we must deal with it.
   - _kurt2:_ I mean I would be glad to hear the decision formalized. Or not if it has not been taken. So that people stop searching or arguing. Iif payjoin/unspendable outputs.
   - _paouky:_ @kurt2 why not write an RFC to sum up the discussion? Everybody would be much more open to that.
   - _phyro:_ I don't think anything was chosen, at least I have not seen anything and I try to read all the things lol.
   - _kurt2:_ Ah oki. Thanks phyro.
- _joltz:_ I don't think any approach would be chosen anyway without a complete accompanying rfc.

**Meeting adjourned.**

