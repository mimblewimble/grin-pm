# Meeting Notes: Governance, Sep 08 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 110 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- anynomous
- bladedoyle
- dtavarez
- hashmap
- i1skn
- jaspervdm
- joltz
- kurt2
- lehnberg
- paouky
- phyro
- quentinlesceller
- smokeking80
- timtimbo
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda: Governance, Sep 08 2020

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/341) was reviewed and accepted without any additions. 

Related discussion:

- _antiochp:_ Just commented over there.
   - _lehnberg:_ @antiochp what's meant by that? `core == council` no?
   - _antiochp:_ That's a good question I think. We can have core devs that are not on the council right? And council members not necessarily in core. Its a little ambiguous.
   - _paouky:_ Even I didn't know there's a difference.
   - _lehnberg:_ We're not talking about core devs. We're talking about membership to the core team, which was previously called council. These guys: https://grin.mw/governance#core-team. This is a relevant read https://github.com/mimblewimble/grin-rfcs/blob/master/text/0002-grin-governance.md.

   - 👍: _anynomous_
   - _antiochp:_ Ok then core team vs core devs is _really_ confusing. (And that's coming from somebody on both.)
      - _paouky:_ How do you see the difference?
   - _anynomous:_ Maybe go back to 'council' and use core for dev only.
   - _lehnberg:_ Yes, and what's the core the devs are working on? The rust implementation is core?
   - _antiochp:_ These are all good questions.
   - _lehnberg:_ Tbh, I was the one who proposed the name change to core. And I've since come to _hate_ the name core team. Violently.
   - _paouky:_ I'm seriously in favor of calling it the council.
   - _lehnberg:_ I'd second that. Let's think about how we can go back to that name (after the meeting) and see if we can come up with some reasonable proposal for doing so. Was a bad move then, and I should have been stopped. It's all your fault!
   - _anynomous:_ Go back to council, and use core for core developers, which we can now define. It was new to me, that core was also used for non developers. And make a clear list of what the responsibilities are of core and of the council.
      - 👍: _paouky, dtavarez_

- _antiochp:_ To be entirely honest I had no idea we changed it from "council" to "core team". And have always used "core" to mean the core dev team.
   - _lehnberg:_ What's the core dev team?
   - _antiochp:_ Those with commit rights to the repo.
   - _tromp:_ I have no commit rights but consider myself a core dev.
   - _antiochp:_ Ok yeah what @tromp said - its a rough overlap with commit rights, but not 100%.
   - _lehnberg:_ Commit rights is not what determines what gets merged. It's just the action of merging something, that hopefully is in line with some predetermined process.
      - 👍: _tromp_

- _paouky:_ I'd say we can define core devs as regular contributors to the rust repos.

### 2. Action point follow ups from previous meeting
_None._

### 3. @i1skn [funding request](https://forum.grin.mw/t/request-for-funding-i1skn-ironbelly-wallet/7733/)

- _lehnberg:_ Floor is yours @i1skn for any statements, and for others to ask questions.
   - 🚀: _antiochp, dtavarez, phyro, quentinlesceller, lehnberg_
- _i1skn:_ Well, thanks @lehnberg! I do not feel the need to do any statements, I think I wrote everything in the post above. But I'm happy to answer any questions here:).

- _lehnberg:_ Is the request for full time or part time work?
   - _i1skn:_ It's a part time work.
   - _anynomous:_ Which percentage of full time equivalent work.
      - 👍: _kurt2_
   - _i1skn:_ My calculations were based on working around 16h a week. It's actually 4 months, and It would depend on the needs of the wallet in the next year. Right now there are some features, which require significant effort, so this request exists. But before more than a year I was working on the project as well. Let me know if that answers your questions or not.
   - _anynomous:_ Ok, so 7500 per month for full time work equivalent.
      - _phyro:_ I think it's ~10k for 40h/week.
      - _i1skn:_ No, it's 10k full time equivalent.
      - _anynomous:_ Ok, but that would be 3 months. With 4 months 4000*40/16*3/4 = 7500.
      - _i1skn:_ My plan was to receive 4k a month for the period of 4 months.
      - _anynomous:_ A ok. Clear.

- _dtavarez:_ @i1skn are you planning to keep working on the wallet after these 3 months?
   - 👍: _quentinlesceller, lehnberg, kurt2, timtimbo, paouky, phyro_

- _lehnberg:_ Do you intend to ensure ironbelly will be compatible with grin v5.0.0 (post hf4)? I see the funding expires in december, hard fork is in january, so it's a bit unclear.
   - _paouky:_ (and for future changes i.e. Elimate finalize step rfc).
   - _kurt2:_ Yes, relevant question. If by luck the eliminate last step is secure and that we can know it soon enough (3 or 6 months), it is worth considering that all the implementation done for current tx building does not become too much legacy after we intend to port the change into grin.
   - _i1skn:_ Yeah, my intent is to port everything new introduced recently and make compatible with the next hf.
      - 👍: _lehnberg, quentinlesceller_

- _lehnberg:_ To be clear, it's 4k eur, 4 months (sep, oct, nov, dec), is that right?
   - _i1skn:_ Yeah, starting from mid sep and ending by the time close to hf considering that right now is 8 sep:)

- _anynomous:_ So your rate is equivalent of that of the core devs from grin, 10k a month..
   - _i1skn:_ Yeah, let me know if you think it's unfair.

- _lehnberg:_ So 4 months starting from date of approval?:)
   - _i1skn:_ Well, that makes sense to me. Does it to you?:)
   - _lehnberg:_ Yes, sure. Just want to get everyone on the same page.

- _paouky:_ I'll be honest I think it's quite a lot. But it's hard to judge.
- _anynomous:_ Same here, even for the core devs I find 10k a bit hard to swallow.
- _bladedoyle:_ Senior software devs make about $160k/year in silicon valley.
   - _paouky:_ Do you expect an open source project to pay the same as a tech unicorn in one of the most expensive region in the world?
- _phyro:_ 10k rate for a good developer is not uncommon.
- _anynomous:_ True, but not everyone who is good gets paid that much. Meaning you can get a certain amount in industry does not automatically mean it should become default. Anyhow, I know plenty of people disagree with me on this.
- _antiochp:_ You could probably double that at least for a "unicorn" to be fair.
- _bladedoyle:_ 160k plus benefits. I’m just offering a reference not voting.
- _paouky:_ If you devs think it's fair, I'm on board. I have no developer experience and never was paid for it so...
- _anynomous:_ Maybe, but that would automatically assume you are the best of the best and the unicorn wants you.
Anyhow, I do think the country someone should live in should be taken into account. Theoretically everyone can earn loads while working remotely for a us based company.
- _kurt2:_ 3k or 4k seems fair to me, but I am trying to see if the work will not become too much legacy if we are able to change tx building soon. I do not know much the answer to that since the infra might be flexible enough to not re-do everything, or too much.
   - 👍: _paouky, phyro, anynomous_
   - _phyro:_ You mean 3k or 4k monthly for 16h right?
   - _kurt2:_ Yes.

- _i1skn:_ Well, I do not see a challenge to bring something from grin-wallet to ironbelly if it's not relating to i/o (files, tor, setting up http server etc.).

- _tromp:_ It's not realistic to expect round reduction to be implemented by hf4. The new signature scheme must be thoroughly reviewed and vetted.
   - 👍: _phyro_
   - _kurt2:_ Yes, but less than a year or 9 months might be enough, if we hired a cryptographer for a few weeks or a month to review it for example.

- _anynomous:_ Where do you live (country) @i1skn?
   - _i1skn:_ Germany.
   - _paouky:_ I don't think country is a good parameter. The important thing is the result we get. I do not mind if a good dev from zimbabwe does it.
      - 👆: _phyro, timtimbo, quentinlesceller_
   - _anynomous:_ True, just put it as information.

- _lehnberg:_ Are you employed full time today @i1skn?
   - _i1skn:_ Yes.

- _dtavarez:_ For context, 4k monthly is the minimum for a senior developer in germany.
   - _quentinlesceller:_ Full time.
   - _anynomous:_ https://blog.honeypot.io/how-much-do-developers-earn-in-germany/
- _anynomous:_ If the results are good and support stays after the next hardfork, the money is well spend.

- _i1skn:_ Just to be clear. My calculation was like that - I took the rate from the core devs requests and applied part time on it.

- _lehnberg:_ Okay, at this time we're running a bit over.

- _i1skn:_ Ironbelly is using all crypto logic from `grin-wallet`. So if Something is related to pure data manipulation it should be easily portable to ironbelly.
   - 👍: _antiochp, quentinlesceller_
- _i1skn:_ Also, there was at least one example of me back-contributing to `grin-wallet` when I've implemented fee estimation priod to transaction on ironbelly and it did not exist in `grin-wallet` at the time. I'm planning to keep it this way if I implement something new or fix a bug.

- _quentinlesceller:_ I'm personally in favor of this funding request @i1skn. However having both a full time job + that is going to be a lot.
- _yeastplume:_ I am as well.. Keep in mind ivan's been working on ironbelly since before grin was launched. I'm okay with seeing him get some funding to continue his work based on his contribution to date.
   - 👍: _lehnberg, quentinlesceller, phyro, paouky, joltz, hashmap, smokeking80_

- _lehnberg:_ _okay, so about here's the time someone needs to object strongly in order for this to be reconsidered_.

- _phyro:_ I do think people should not just copy core devs rates though. It is the maximum rate for the best full stack developers in germany, so I am also against taking it as a standard. Having said that I am still in favour of funding @i1skn.
   - 👍: _anynomous_
   - _timtimbo:_ https://forum.grin.mw/t/question-about-funding-gui-wallets-like-ironbelly-or-grin/7559.
   - _paouky:_ It's the standard from now on.
   - _yeastplume:_ Right, this amount shouldn't be a precedent for anything.
      - 👍: _quentinlesceller_
   - _paouky:_ It is though. Same reason every core dev gets 10k. David Tavarez asked 4k.
   - _yeastplume:_ Disagree, the pool of people who've worked on grin since inception is small. I'm willing to gloss over the amount for now as a recognition of service.
   - _paouky:_ If another person wants to contribute to docs sometime in the future, he'll ask around my request.
   - _antiochp:_ I think earlier in this process might have been a better time to bring discussions around rates up.
   - _paouky:_ This is not an objection to rates.
   - _yeastplume:_ And what antioch just said.
   - _anynomous:_ Sure, but I do think we should have the same consideration for david tavarez.
   - _paouky:_ Its just a statement contradicting yours. Not saying the rates are wrong, just that it *is* a precedent. I think we can end the discussion here though, lets move on.
   - 👍: _anynomous_

- _lehnberg:_ Aside from the above expressed concerns, do we have any objections? Or any counter-proposals?

- _kurt2:_ What about 3 or 3.5k for this request, and 4.5 or 5k for future work on grin wallet to implement eliminate last step or any further improvement in the middle term after hf. Based on results of the upcoming 4 months.

- _anynomous:_ Some result/reward based payment would not be bad, especially since it might be hard to get everything done in time next to full time work. Anyhow, I am ok both ways, trust or reward based payment.

- _paouky:_ These are not proposals for gov meeting though, should have been proposed earlier I believe. Now it's approve / not approve.
   - 👍: _quentinlesceller, antiochp_

#### Decision: Approve @i1skn funding request

- _paouky:_ And I think it's approved.
   - 👍: _anynomous_

- _phyro:_ I'm not against the rate itself btw, I just find it weird the way it was picked. I don't think we should be lowballing here, there was time to do his before. It's nice that we have an existing community member who already knows what they're doing and are using grin-wallet from the backend so it's still definItely a yes from me.

- _quentinlesceller:_ I think later on, end of the year or beginning next year, we should try to think a bit more about the rates so we try to stay as fair as possible with everyone involved.
   - 👍: _kurt2, timtimbo_

- _yeastplume:_ I'm okay with this for now, it's our collective fault for not hashing though these amount issues earlier. It's a yes from me but It cannot set a precedent, and we need actions to discuss how to deal with these issues in future.
   - 👍: _paouky, phyro, anynomous_

- _anynomous:_ It is a yes from me to fund @i1skn based on his previous contributions.

- _joltz:_ I'm grateful to have more interest and talent focusing resources on improving grin. Ivan has been with grin since the beginning and I'm happy to have him more involved. I was thrown off a bit today when I see that the request is for part time work and that you already have a full time job. For the future I think it would be helpful to frontload with that information in your proposal. That being said, few people have been contributing to grin for this long and I support Ivan's request for work.
   - 👍: _quentinlesceller, tromp, dtavarez, phyro, lehnberg, anynomous, yeastplume, paouky_
  
- _lehnberg:_ Okay - nobody's saying no - I call consensus for *approve*.
   - 🚀: _phyro, quentinlesceller, paouky, joltz, smokeking80_
   - _quentinlesceller:_ 👍

- _lehnberg:_ Congrats @i1skn.
   - 🎉: _paouky, phyro, quentinlesceller, joltz, anynomous, smokeking80_

- _i1skn:_ Thanks everyone who's participated! I've noted the feedback and will try to achieve everything I've stated in the request.
   - 👍: _anynomous, kurt2, yeastplume_
   - _dtavarez:_ Thanks to you!

### 4. @davidtavarez [funding request](https://forum.grin.mw/t/request-for-funding-davidtavarez-grin-mobile-wallet/7774/) 

- _lehnberg:_ Floor is open for questions, let's try to keep this one tighter on time, still have a lot of points to go through! Request is for `eur 4k * 3 months`.

- _dtavarez:_ 3 months. First, I want to clarify... I'm requesting 4k/month for 3 months: September, october and november. I won't make a commitment for the whole month of december, that is why is not included. The mobile wallet will be full compatible with grin 5.0 and I'm not planning to release it publicly before january 2021. Of course, any developer will be able to clone the repository, compile it and run it. Everything will be well documented. I will need to invest on buying some devices for testing, including phones, tablets and a a raspberry pi, and I would like to use all my next holidays to boost up the development.
   - 👍: _yeastplume, quentinlesceller_

- _dtavarez:_ I have no plans to leave grin, that means I will keep working after this process, with a small break on december to avoid a burnout.
   - 🤩: _joltz, quentinlesceller, kurt2_

- _dtavarez:_ Some features of the mobile wallet won't be compatible with ironbelly for a while, but I'm open to contribute with ironbelly after these features become stable, like transactions via nfc.
   - _i1skn:_ From my side I'm willing to collaborate, so both projects are compatible (taking into consideration, that ironbelly should be compatible with `grin-wallet` as well).

- _dtavarez:_ (pre-cooked answers 😂)
   - 🚀: _kurt2, antiochp, quentinlesceller_
   - _lehnberg:_ 👏for the wall of text!

- _tromp:_ I wholeheartedly support david's rather modest request.
- _yeastplume:_ As do I.
- _lehnberg:_ @dtavarez 
   1. What country Are you based in?
   2. Are you employed full time already?
   3. Is this request for full time or part time?
      - 👍: _quentinlesceller, anynomous_
  - _dtavarez:_ 
    1. I'm based in germany
    2. currently, yes... But not sure for the next months.
    3. around 30 hours per week and on weekends around 16 hours.
         - 👍: _kurt2_
      - _quentinlesceller:_ 8 hours per day on weekends?
      - _dtavarez:_ Yes.
         - 💪: _joltz, kurt2, kurt2_
      - _quentinlesceller:_ Wow that's dedication.
      - _dtavarez:_ It's just 3 months... But also that's why I want to have part of december to disconnect myself a bit.

- _anynomous:_ Same here, just wondering if the funding/months will be enough since it also involves work in the backend.

- _kurt2:_ @dtavarez I don't remember exactly if you stipulated on your post on the forum, do you plan to make a full node wallet feature in your working period?
   - _dtavarez:_ Full node wallet.
   - _kurt2:_ Great!

- _i1skn:_ Will it support "remote node" mode for users with limited bandwidth or slow devices?
   - _dtavarez:_ Technically possible, yes.

- _anynomous:_ I still am questioning if the time you are asking funding for will be enough since it will involve work on the grin++ node itself as well, so not just the front-end.

- _phyro:_ I support this request as well 👍 burkett was saying he might leave at some point (hope he doesn't), but if this happens, does the fact that he might not maintain the grin++ node codebase impact this project?
   - 👍: _anynomous_
   - _dtavarez:_ Great question... In case david leaves, I'm more than willing to take ownership of grin++ but that's something unclear right now; everything will remain open source.

- _quentinlesceller:_ Why not use grin-wallet as backend @dtavarez? I don't have anything against g++ just asking.
   - 🚀: _phyro_
   - _dtavarez:_ I consider that the community enriches with more options and it helps to have a bit more of decentralization. There are other pros too that I would like to discuss but I would need to have another space for that other than this.

- _anynomous:_ I am in full favour of funding you, but I do think the planning for all those features is optimistic, lets see. Maybe a 4th month would be prudent.

#### Decision: Approve @dtavarez funding request

- _lehnberg:_ _okay, so about here's the time someone needs to object strongly in order for this to be reconsidered_.

- _quentinlesceller:_ @dtavarez can you answer my question above about the choice of backend?
   - _lehnberg:_ Thanks for this, I'd be curious to hear these reasons too fwiw, perhaps you could write in #dev later?
   - _dtavarez:_ Yes.

- _lehnberg:_ Okay - nobody's saying no - I call *consensus for approve*.
   - 🚀: _phyro, antiochp, quentinlesceller, i1skn, smokeking80, joltz_
- _lehnberg:_ Congrats @dtavarez 🍾.
   - _dtavarez:_ Muchas gracias:).
- _phyro:_ Congrats 👍
- _quentinlesceller:_ Congrats @dtavarez.
- _joltz:_ Beyond excited to have two new people helping build grin in a more empowered capacity, thanks to both of you @dtavarez and @i1skn.
   - 🚀: _i1skn_
- _paouky:_  looking forward to seeing the grin++ mobile wallet! Such an empire.
   - 👍: _dtavarez_
- _quentinlesceller:_ Indeed.
- _kurt2:_ Congratulation to dtavarez. I like the intented dedication and motivation for This project with all the expected hard work, and think it can really benefit grin ecosystem. I salute the core team for supporting the request. This is not everyday that we can see this humility and will to cooperate with another implementation (here financially) from a project's reference implementation. Respects.
   - 👍: _dtavarez_

### 5. [Remove Igno as BDFL](https://github.com/mimblewimble/grin-rfcs/pull/62)

- _phyro:_ It would be fun if he objected now.
   - 😂: _paouky_

- _lehnberg:_ Cliff-notes for the confused: 
https://github.com/mimblewimble/grin-rfcs/blob/master/text/0002-grin-governance.md#organization--processes
first point: `ignotus peverell, as creator of grin, is considered bdfl and leader of the core team.`.
   
   Motivation for removal:
   > davidburkett commented 4 days ago
   > decentralized projects should not have a "benevolent dictator for life". I think keeping that statement, while probably meant as merely a nod to his awesome work starting this project, does more harm than good.
- _lehnberg:_ My comment on the pr:
  > i'm +1. Others in the core team have objected to this in the past, we never got around to change it.
  > 
  >> while probably meant as merely a nod to his awesome work starting this project
  >
  >not only. When this RFC was adopted, there was still an expectancy that igno might be coming back, and nobody was comfortable restricting igno's authority over the project at the time.
- _quentinlesceller:_ I think we kept it as a david said a nod to the awesome work that he did with grin.
- _paouky:_ Indeed seems reasonable to remove it.
- _antiochp:_ If we get rid of this we should maybe add a line to the "credits" to replace this.
   - 👍: _quentinlesceller, lehnberg, joltz, timtimbo, vegycslol_
   - _quentinlesceller:_ Yeah but maybe that's not the right place?
   - _lehnberg:_ Credits in `readme.md`. Of grin repo.
   - _antiochp:_ Yes, or somewhere similar.
   - _lehnberg:_ I think it's a good place personally, very fitting as they were the ones who created that section in the first place afaik.
   - _quentinlesceller:_ 👍

- _tromp:_ It's become rather inaccurate, so I'm fine with removal. Igno is no longer leading much.

- _paouky:_ I'm kind of surprised he agreed to be named bdfl in the first place.
   - _lehnberg:_ He didn't. This was post departure.
   - _paouky:_ Ah ok.
   - _quentinlesceller:_ The whole structure appeared after. But not the council.
   - _lehnberg:_ So yeah. And for a decentralized project to have a bdfl that is not there, doesn't really make a lot of sense probably.
   - _paouky:_ Ye I remember the ol' technocratic council.

- _lehnberg:_ And others (like @yeastplume iirc) have questioned this line in the past too.

- _kurt2:_ I have nothing to keep bdfl naming for igno. It's rather a funny meme today at this point.

#### Decision: Remove @ignotus as BDFL

- _lehnberg:_ So yeah, is there any _objections_ to approving this pr?.
- _yeastplume:_ I have raised this before, it’s weirdly cultish at this stage so okay with the change.

- _lehnberg:_ Generally speaking, the entirety of rfc#0002 probably needs a lot of rework at this point.
   - 👍: _paouky_

- _lehnberg:_ Okay I take that as a lgtm.

- _paouky:_ I do not mind working on this with you and others.
   - 👍: _quentinlesceller_
   - _lehnberg:_ Sounds good!

### 6. Remove @jaspervdm & @hashmap from core team (formerly known as council) due to inactivity

- _lehnberg:_ @hashmap and @jaspervdm are you there?

- _jaspervdm:_ I am.
   - 👋: _lehnberg, smokeking80, quentinlesceller, joltz, antiochp, phyro, vegycslol_

- _quentinlesceller:_ https://forum.grin.mw/t/request-for-funding-jaspervdm-march-may-2020/7074/10?u=quentinlesceller.

- _tromp:_ In view of jasper's recent actions, we can keep him on.
   - 👍: _antiochp, lehnberg, phyro, yeastplume, quentinlesceller, vegycslol_

- _kurt2:_ Maybe we can make up honorary titles for former member, as a mean to honor their past contributions to the project. And leave them listed as such on the website/github/doc.
   - _lehnberg:_ Grin alumni? Grinlumni?
   - _kurt2:_ Something like that: ).
   - _paouky:_ Haha, that's a slippery slope, we have way too many past contributors.
   - _kurt2:_ This is something less "cold" and I think they would appreciate such tItles. It dods not hurt and can incentive some return to the project or friendly collaboration in the future, but not urgent.
      - 👍: _phyro_

#### Decision: Remove @hashmap from core team

- _lehnberg:_ Okay, so are there any _objections_ to @hashmap's removal from the core team?
   - _phyro:_ I think he himself gave a thumbs up.
   - _lehnberg:_ That's right.

- _lehnberg:_ So that's that then, clubbed.

- _lehnberg:_ @hashmap wherever you are, it's been a pleasure working with you so far, and hope to see you on github soon again.
   - 🙏: _kurt2, smokeking80, quentinlesceller, yeastplume, joltz, tromp, vegycslol_

### 7. Documentation progress

- _lehnberg:_ @paouky is there sth urgent to update on documentation? If not I propose we kick on with that in #docs. And others are free to join.
- _paouky:_ Was gonna say, nothing to discuss, will post an update on the forum very soon for whoever is interested.
   - 👍: _quentinlesceller_

### 8. Code of conduct progress

- _lehnberg:_ https://github.com/mimblewimble/site/pull/222: 
   - tweak of code of conduct
   - moving to website
   - if merged, all the other repos will have a `code_of_conduct.md` that links to this website one, so there's a single source of truth across all repos. It's been up for 26 days, feedback has been incorporated.

#### Decision: Update code of conduct

- _lehnberg:_ Can I merge?
   - 👍: _joltz, yeastplume, quentinlesceller, phyro, paouky_
   - _quentinlesceller:_ Yes.

### 9. RFC & sub-teams update
- _lehnberg:_ In terms of rfcs, noteworthy is that there are two new ones by @tromp:

   * **split one-sided transactions in pure mw** https://github.com/mimblewimble/grin-rfcs/pull/64

   * **fix-fees** https://github.com/mimblewimble/grin-rfcs/pull/63

   Please devour these and give them the scrutiny they deserve.
- _tromp:_ First one is pretty dead already as payment proofs seem impossible. So just keep it as documented failure.
   - _lehnberg:_ If so, will you close the pr? (with reason for posterity).
   - _tromp:_ Will keep open a bit to gather comments. Can close in a week or two.
   - _lehnberg:_ Sounds good.
- _tromp:_ For fees, I see no good reason to have two sets of weights, one of which is quite arbitrary, and one which in consensus. When the major requirements on fees are that they are dominated by #outputs, and that they are ideally compatible with miner incentives.
   - 👍: _vegycslol_

### 10. Other questions

#### 10.1 Governance improvement proposals
- _lehnberg:_ With everything else on today's agenda, I've not even mentioned this forum post I wrote last weekend: https://forum.grin.mw/t/dismantling-the-core-team-and-governance-structure/7801. It's very much related to governance, I urge you all to get involved if you have ideas.

**Meeting adjourned.**