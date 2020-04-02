# Meeting Notes: Development, Mar 31 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- jaspervdm
- joltz
- lehnberg
- mcmmike
- phyro
- quentinlesceller
- tenthousandlakes
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ Past couple of weeks have seen a lot of activity and discussions towards the items we'll be discussing today, transaction building, slate reduction, relative kernels, one-sided txs... too much for one brain to keep track of, particularly these days. but all good and productive

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/267) reviewed and accepted, with `how to handle upgrades after 5.0.0` tabled for the next meeting. "Testing", and "/packaging & releasing" were struck from the agenda.

### 3. Action point follow-up

#### 3.1 Tx-building RFC started?
- _yeastplume:_ @lehnberg did start the tx building rfc, which is now split into many rfcs. I intend to have the slate minimalization rfc out this week.
   - 👍: _lehnberg_
- _lehnberg:_ Yes, I've not retired the hybrid rfc yet, but should happen in days.

#### 3.2 Tor censorship resistance RFC started?

- _yeastplume:_ This task has morphed slightly as well, I recall reading something related to this recently.

- _joltz:_ As mentioned yesterday in @grincoin.teams.wallet_dev I've decided to split my efforts up into two RFCs: `standardizing slate serialization and armoring` and `standardizing transaction transports`. Both RFCs include a focus on improving both developer and user experiences and will benefit from ongoing feedback from wallet developers and services already supporting Grin. 

   I'm focusing on `standardizing slate serialization and armoring` first. (I'm working on serialization and armoring together because there is some synergy there but as some point it might make sense to break them out.)With a robust solution here, we can inform our ability to standardize transaction transports. This will hopefully support a "minimally viable transaction" that can be universally implemented in wallets/exchanges/pools/services/shops while still respecting privacy and achieving an acceptable level of usability. 

   Currently the `standardizing slate serialization and armoring` RFC draft contains three possible complete solutions for standardization. I'm working to provide as much data as possible for each option so that we can make an informed assessment based on the tradeoffs and converge on one. (We also might find that none of the options get us what we want but we will still be closer to our goal.) 

   Sneak peek: one option that I've been working on with @lehnberg is https://saltpack.org which handles serialization and armoring and gives us encrypted slates and transaction proofs. It has some tradeoffs which will be thoroughly discussed in the RFC. If saltpack is too clunky for us we can still modify and use their armoring technique for better usability. If that still isn't conservative enough we can follow pgp's 20-year-old RFC to armor msgpack encoded binaries 😎

   If anyone wants to share strong feelings on slate serialization or armoring outside of this meeting feel free to pm me, I hope to have an initial draft of this RFC out for review this week. also happy to quickly chat about serialization/armoring now if anyone has general questions or concerns before I submit a giant RFC pull request. :)
      - 👏: _phyro, yeastplume, lehnberg, tenthousandlakes_
   - _yeastplume:_ This is all top-class quality stuff, thanks @joltz.
   - _jaspervdm:_ Cool, checking it out.
   - _antiochp:_ Saltpack is from the keybase folks right?
      - 👍: _tenthousandlakes_
      - _joltz:_ Yep. It's a little new for my taste but worth exploring.
      - _quentinlesceller:_ > saltpack's been in active development by keybase and collaborators since 2017.

- _lehnberg:_ Have a look in particular about the [signcryption](https://saltpack.org/signcryption-format) part. A question I have is whether it could be used for some really lightweight payment proofs, but I doubt it. As no key exchange would be required. But the problem (O suspect) is proving that a certain recipient received payment. It's easy to prove sender sent, but they could send to themselves.

- _antiochp:_ I don't want to derail but have we looked at https://github.com/filosottile/age also?
   - _joltz:_ Yea I took a look at age, it will be mentioned in the RFC though it didn't seem as natural of a fit to me.

- _yeastplume:_ Great. this is in such capable hands that I think everyone else should just get a 🔔 
   - 🚀: _tenthousandlakes, quentinlesceller, phyro_

### 4. Planning, v4.0.0

_During this topic, the meeting was live-editing the planning issue and reviewing items on the fly. The section is condensed to focus on the decisions about particular items on the list._ 

- _lehnberg:_ Planning issue: https://github.com/mimblewimble/grin-pm/issues/248. In the previous meeting, we had said that we would aim for scope freeze today. I'm thinking we throw everything we got up on the wall and then work our way down to a more narrow list. And anything that comes out, goes into "out of scope" with a motivation.


- _jaspervdm:_ We should put `remove owner api v2` on the list.
- _yeastplume:_ Sorry, yes where did https://github.com/mimblewimble/grin/issues/3092 come from?
   - _lehnberg:_ Was proposed by mcm-mike
   - _lehnberg:_ @mcmmike were you saying you would be willing to take that on? Or was it a proposal in case someone else wanted to develop?
   - _mcmmike:_ Are we talking about issue #3092 ? And if so no, I can not develop, sorry. I was just did mention it and was in favor of it when you guys could implement it. 
      - 👍: _antiochp, lehnberg_ 
   - _yeastplume:_ This is describing a huge change at the protocol level, this would need much discussion and an rfc at the very least. I appreciate it being raised and dicussed but I don't think we can consider it for the 4.0 release.

- _lehnberg:_ Okay so is there anything more to throw onto the wall before we begin cutting down? Some kind of timelines are here btw https://forum.grin.mw/t/grin-v4-0-0-network-upgrade-hard-fork-3-july-2020/7001 2020-06-01 scope freeze feels a bit off there! 😅. But yeah, early june beta binaries, floonet hard fork lateish june. Hard fork mid july. April is around the corner. So there's two full development months? In which a lot of rfcs need to be written, and a lot of code?
   - _yeastplume:_ Looks like it. That's not a lot of time for the number of things we have up there.
   - _lehnberg:_ Not at all. Whilst some dev work can hopefully happen in parallel to RFCs, just like you've been doing for compact slates, it's quite risky. As the RFC can uncover that our ideas were not good enough or that we decide to go in a different direction.
   - _yeastplume:_ I think we need to err on the side of caution here with respect to what we're biting off.
      - 🎯: _tenthousandlakes_
   - _lehnberg:_ Yes. I guess if we keep a relatively ambitious list, but are a bit conservative with the p1s and p2s, then the p3s could be cut if we can't make it.
   - _yeastplume:_ Let's just go through them, set priorities and cut then see where we are.


- _antiochp:_ Still an open question around my priorities, if nrd is de-prioritized then its going to potentially affect scope for 4.0.0.
   - _phyro:_ I still think at least an rfc for nrd should be published asap so that people have the time to wrap their heads around it.
      - 👍: _lehnberg, yeastplume, tenthousandlakes_

- _antiochp:_ Lets also not get _too_ caught up in "things absolutely must go into 4.0.0 hf" - it may be harder later but not impossible.
   - 👍: _phyro_

- _lehnberg:_ `1 cuckaroo tweak.` Looks good, I presume
   - _yeastplume:_ Need to fire up the yeastmonster again, but that one is a given
   - _tromp:_ Haven't started coding yet, but know the spec for next c29.

- _lehnberg:_ `2	p2	node	duplicate outputs`: What's the deal with that? Will duplicate outputs require rfc?
   - _antiochp:_ Basically if nrd was still in question, then that would be an alternative consensus breaking change that we believe we want to do at some point. Yes it would require an rfc. The more I think about it, the less it makes sense to target 4.0.0 with that. It was more a "if not nrd, then what to focus on instead". Maybe drop that from 4.0.0 and pretend it was never suggested?
   - _lehnberg:_ Motivation is that it can go into 5.0.0? Or that it's no longer applicable?
   - _antiochp:_ Yes, or later. still applicable but not a priority.

- _lehnberg:_ `3	p2	node	relative kernel locks`	@antiochp	mimblewimble/grin-rfcs#19
   - _antiochp:_ That is still there and still my official priority unless we decide otherwise
      - 👍: _yeastplume_
   - _antiochp:_ Sounds like preference right now is to continue with RFC and then revisit.
      - 👍: _lehnberg_
   - _lehnberg:_ P2 or p1 for node? I put it as p2 because if it didn't get in, we would survive. If it was almost ready it could go into 5.0.0 and the world would not end.
      - 👍: _antiochp_

- _lehnberg:_ `4 | p? | wallet | compact slates | @yeastplume | https://github.com/mimblewimble/grin-wallet/issues/317 (incomplete, needs rfc)`. What's the p on that one?
   - _yeastplume:_ P1, rfc inbound
      - 👍: _lehnberg_
- _lehnberg:_ `5 | p? | node | deprecate node api v1 | @quentinlesceller | tbd | 📝 |`. What's the p? @quentinlesceller you're on this? I think I put you down tentatively.
   - _quentinlesceller:_ 👍
   - _lehnberg:_ P1? seems a bit urgent. Based chats etc. Means it could be removed completely for 5.0.0.
   - _yeastplume:_ I think it can be a p2, but more or less considered done. It just needs a warning at complication time and for us to announce it.
   - _quentinlesceller:_ Yes p2. 

- _lehnberg:_ `6 | p? | node | parallell ibd | ? | tbd | 📝 |` Lots of question marks on this. Whats up with parallel initial byte download? This means afaik to get rid of txhashset.zip. 
   - _antiochp:_ I raised this as an alternative focus -its a usability pain point.
   - _lehnberg:_ Yes, and performance as well arguably. What do people feel about it? Should it go into 4.0.0? _can_ it go into 4.0.0?
   - _tromp:_ I'm looking forward to seeing huge speedups in my syncing.
   - _lehnberg:_ Do we know what the alternative to current approach would be? Iirc grin++ already does sth differently, right?
   - _jaspervdm:_ No, do not think so. It requires new p2p messages.
   - _lehnberg:_ Oh. 2 months feels feasible to get the work done? 
   - _tromp:_ Maybe all the support can go into 4.0.0, so that nodes can set a mode where new method is used along with old to verify identical results
   - _lehnberg:_ And then converge on the final approach in time for 5.0.0?
   - _tromp:_ And then we finally switch in 5.0.0 and remove old method.
      - 👍: _lehnberg, yeastplume_
   - _lehnberg:_ Seems like a safer way going about things than doing a full switch and praying that all the bugs were ironed out.
   - _jaspervdm:_ So that means every new ibd downloads and verifies the kernel set twice?
   - _tromp:_ Only if nodes set the mode to do extra work (off by dflt).
   - _antiochp:_ Yeah that would be a natural way of rolling this out.
   - _antiochp:_ It would be opt-in, but with wide support across the network.
   - _lehnberg:_ Okay, I'd like us to press on here. shall we set sth temp on this and then revisit if we need to once we gone through all the other items?
      - 👍: _antiochp, jaspervdm_
   - _jaspervdm:_ Assign me for now, we can change later if required.

- _lehnberg:_ `6 | p? | wallet | announce deprecation for running http listener for external addresses? | ?  | tbd | 📝 |` We don't have a good alternative to http at the moment (at least not in an rfc). But if we don't announce deprecation in 4.0.0, we can't turn it off for 5.0.0.
   - _jaspervdm:_ We can always announce in 5.0.0 and bake in some disable date / block height. less ideal but doable. But before we do, we have to make sure there is a good standard to replace it, obviously.
   - _lehnberg:_ Yes. just wondering if that would be good as wallets / pools / exchanges might miss the memo. And then one day it all breaks down. But I guess that's valid on fork day too. Leave as question mark for now and move on? Or are we ready to take a stance?
   - _yeastplume:_ We defer decision until we've been through the list once?
   - _lehnberg:_ Oki.
  
- _lehnberg:_ `7 | p? | wallet | slate serialisation | @j01tz  | pending rfc | 📝 |` @joltz are you sure you can do both serialization and armored slates in one go? I could then merge the two.
   - _joltz:_ The implementation code required for slate serializing/armoring could vary quite a bit depending on which option we converge on. the most basic option could be implemented fairly quickly but the most complex option (which out of the box supports encrypted slates, payment proofs etc) may take longer than we have to securely implement depending on how many are working on it etc. I'd say p2/p3, it would be really nice if we could get it out in the wild sooner rather than later but not worth rushing something we don't have confidence in, especially if it will be used in every transaction at some point. anyone have strong feelings here? Well they can be very related because the serialization will inform the armoring to some degree. I'm not certain whether it is better to have merged or separate tbh
   - _lehnberg:_ I'd be inclined to begin iterating on this asap in the wild, and then improve as we go along. I.e. maybe no need to encrypt slates from the get go, but start with armoring. And serialization. And then improve in a future version if there's uptake etc.
   - _joltz:_ It's a bit tricky because if we use saltpack armoring I have to modify it a bit to get integrity during transport. And then assess security risks there.
      - _lehnberg:_ Is integrity a priority at this stage though?
      - _joltz:_ Fair question.
      - _lehnberg:_ I might be wrong, but it seems less like an issue at the moment.
   - _yeastplume:_ I think that's the right approach. if we p2 them then we can get to them if we can for this release, but this can probably get into the wild optionally in a 4.1.0 and used exclusively in 5 if needed?
      - 👍: _joltz_
   - _lehnberg:_ Oki p2 on both, and we keep separate for now. Question: joltz is writing rfcs. Who's submitting the pull requests?
      - _joltz:_ I'll propose a modified option to get things released sooner and maintaining compatibility to expand later
      - _yeastplume:_ I intend to implement
      - _lehnberg:_ Oki, so I put you both on these then.
      - _joltz:_ I'll help as best I can with implementation (still have to get more familiar with grin-wallet before I'm super useful)
      - 👍: _yeastplume_

- _lehnberg:_ ` 9 | p? | node | full chain archive sync at protocol level | ? | ? | 📝|` https://github.com/mimblewimble/grin/issues/3092. Is there anyone here that is willing to implement that for 4.0.0?
   - _antiochp:_ Not for 4.0.0 no
   - _yeastplume:_ I don't think it can be implemented for 4.0.0
   - _antiochp:_ And we could roll that out outside of hf schedule for interested parties
      - 👍: _quentinlesceller_
   - _lehnberg:_ Okay so it's not consensus breaking even?
   - _jaspervdm:_ No, only p2p.
   - _antiochp:_ And then only between full archival nodes.
   - _lehnberg:_ Oki that's taken out then.


- _lehnberg:_ Oki please refresh: 9 items, 5 wallet, 4 node. 3 p1s, 5 p2s, 1 p?.
   - 📉: _antiochp_

- _lehnberg:_ Yeastplume look heavy loaded
   - _yeastplume:_ No, think I'm fine. Compact slate work is mostly done, so it's p2s for me with joltz.

- _lehnberg:_ Oki. Can we get some of the p2s into p3s? That we're ready to drop first if the shit hits the fan? Http listener p3? Although I suspect it's not that complicated to announce a deprecation. So doesn't give us much.
   - _joltz:_ I'll sleep better when http is deprecated
   - _lehnberg:_ Me too
   - _yeastplume:_ We can p3 http listener, then announce deprecation if we come to a solution in time.
   - _yeastplume:_ Can be at any time before the 4.0.0 release, nothing needs to be 'frozen' for that. 
   - _lehnberg:_ Yeah maybe it's possible. Oki listener p3

- _lehnberg:_ Armored slates p3? Since serialization drives the armoring? I'm having really high hopes about armored slates being the new file being the new standard.
   - 👍: _joltz_

- _quentinlesceller:_ Future wise I would much prefer we switch to github actions but that's very low priority and just nice to have.

- _lehnberg:_ We can't stop anyone from fixing other issues. I'm asking more, out of the consensus breaking list we have, is there anything in it that we are ready to cut first in the event of a crunch?
   - _yeastplume:_ Maybe armored slate
   - _lehnberg:_ Yes → p3?

- _lehnberg:_ Ok refresh. @joltz  you can survive with that?
   - _joltz:_ It can be pushed to p3 but not consensus breaking.

- _lehnberg:_ Okay now it looks nice and tight:
   * 3 x P1
   * 4 x p2
   * 2 x p3
   * 5 wallet, 4 node

- _yeastplume:_ Looks good
   - 👍: _antiochp, joltz, lehnberg, yeastplume, quentinlesceller, jaspervdm_

### 5. Other questions

- _quentinlesceller:_ Where are we regarding the all lib and one builder?
   - 🚀: _tenthousandlakes_
   - _yeastplume:_ @quentinlesceller absolutely nowhere, consensus/compat breaking stuff is more of a priority, but I'd love to see that issue logged and tracked.
   - _quentinlesceller:_ Yes that's why I'm bringing that up. will open a tracking issue in grin node repo?
      - 🚀: _joltz, lehnberg_
      -  _yeastplume:_ Excellent, thanks!

**Meeting adjourned.**
