# Meeting Notes: Governance, Apr 21 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 70 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- hashmap
- jakoberiksson
- joltz
- lehnberg
- mcmmike
- quentinlesceller
- renzokuken
- tenthousandlakes
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/276) accepted.

- _lehnberg:_ Note that drazenv pulled their funding request. https://forum.grin.mw/t/request-for-funding-bls-sigs-research/7257/20. In what I hope is temporary. I expect drazenv will be resuming it at some point in the future.

### 2. Action point follow ups from previous meeting

#### 2.1  @antiochp & @yeastplume paid & logs updated

Actioned.

### 3. [Burn-rate & runway report](https://github.com/mimblewimble/grin-pm/blob/master/financials/reports/burnrate_runway.md)

- _lehnberg:_ I took the liberty to create this report to give a monthly snapshot of overall financial health of the fund. @joltz made a good suggestion that as spends increase, they should also be categorized into types.
   - 👍: _renzokuken_
- _yeastplume:_ Only just looking properly now. Given the fluctuations in BTC this seems like something that needs a few scenarios.
- _lehnberg:_ Good thinking! For next month I can do runway simulations assuming different BTC prices.
   - 👍: _yeastplume_
- _lehnberg:_ What would the scenarios be? $2k, $5k, $10k, $15k? To be clear, it's not meant to be super forecasting, it's a very very rough snapshot of where we are and when funds can be expected to run out if we continue like we do. Obviously if price moves, it can go up or down, if our spend moves, it can go up or down. It's not something we're committed to, it's like a thermometer.
   - _yeastplume:_ Yes, understood. Obviously it's a living doc, perhaps band scenarios to current, then +-50% value or the line?
   - _lehnberg:_ Yeah maybe that would be good. Current price, +50%, -50%.
   - _yeastplume:_ And a nice wavy graph! With different colours.

### 4. [Q1 Financial Transparency report](https://github.com/mimblewimble/grin-pm/blob/master/financials/reports/funding_transparency_2020Q1.md)

- _lehnberg:_ It speaks for itself, I think. Floor is open for questions/thoughts.

### 5. [Suggestion: Re-structure keybase](https://github.com/mimblewimble/grin-pm/Issues/276#Issuecomment-614661631)

- _tenthousandlakes:_ Are the admins of keybase interested in a simpler keybase team/channel structure?
- _lehnberg:_ Yes, there’s the proposal by @tenthousandlakes to *restructure keybase*. A more detailed writeup: Https://gist.github.com/tenthousandlakesmn/ae6595b06d7656ab8875a4af2b7cdccd. @tenthousandlakes can you expand a bit on the motivation behind this proposal? What are the problems it will solve?
   - _tenthousandlakes:_ The proposal is a first draft at removing the rooms that have little to no activity and/or similar purpose. Consolidating crypto/dev and the teams general chats, removing #flip, consolidating the #github-updates.

- _lehnberg:_ For others too lazy to click through, the general gist (as I read it) is to consolidate all sub-teams and channels into two main categories: One *general* (`@grincoin`) and One *technical* (`@grincoin.technical`).
For reference, our current teams are as follows:
   ```
   @grincoin.teams.wallet_dev (active
   @grincoin.teams.node_dev (active)
    @grincoin.teams.community (inactive, but was active during grincon1)
    @grincoin.teams.moderation (inactive)
    @grincoin.teams.fundraising (inactive).
   ```
   I can see the rationale for why perhaps we should retire the fundraising, community, and moderation teams as they are inactive right now, and instead maybe create #fundraising #community in @grincoin main team instead. Makes these groups a bit more discoverable.
   - _yeastplume:_ Don't we have dev and general already though?
   - _tenthousandlakes:_ The big picture is to make keybase more open to the grin ecosystem and less of a dev only interface.
- _lehnberg:_ @tenthousandlakes but isn't @grincoin#general already open to grin ecosystem? What in your proposal makes things more accessible? For moderation we already have the #wg_moderation thread, which is also quite inactive. The idea was to encourage sub-groups to form that would be as self-governed as possible around a specific topic.
Why could that still not be the case under a channel like #fundraising instead of a subteam?
   - _antiochp:_ 👍 on retiring inactive teams and consolidating some of these under grincoin.
      - 👍: _tenthousandlakes_
- _lehnberg:_ Consolidating into fewer groups might encourage more centralization. At least on development side of things.
- _yeastplume:_ I think current subgroup structure is fine.
- _tenthousandlakes:_ We have our keybase community split over multiple teams and channels. Subteams remove discoverability. Grincoin should have everything for the community.
- _lehnberg:_ How about we start with consolidating the inactive community teams into general @grincoin? That puts everything community related into one place?
   So @tenthousandlakes instead of having
   ```
   @grincoin
   @grincoin.teams.wallet_dev (active)
   @grincoin.teams.node_dev (active)
   @grincoin.teams.community (inactive, but was active during grincon1)
   @grincoin.teams.moderation (inactive)
   @grincoin.teams.fundraising (inactive)
   ```

   what about having
   ```
   @grincoin
   @grincoin.teams.wallet_dev (active)
   @grincoin.teams.node_dev (active)
   ```
   - 👍: _hashmap_
- _quentinlesceller:_ There is obviously a discoverability issue with keybase right now.
   - _lehnberg:_ I agree.
- _tenthousandlakes:_ Why the distinction between wallet and node teams? Grin core seems like a group of backend rust devs.
   - _lehnberg:_ Because there are two distinct repos with very different functionalities. :)
   - _tenthousandlakes:_ One team, seperate projects.
   - _lehnberg:_ Ultimately they will likely end up having different release schedules and different considerations. And there's different people interested and involved in these two teams.
   - _antiochp:_ Yeah - we may have a lot of overlap between the teams but there is value in having places for separate conversations. Easy to lose focus when there is a single channel for "dev" stuff (discoverability not withstanding).
   - _lehnberg:_ And hard to block out unwanted chatter.
- _tenthousandlakes:_ I'm not suggesting one channel, the technical sub-team would have:

   #general
   #github
   #research
   #node
   #wallet
   #mining
   - _lehnberg:_ Yes - but the idea is to have wallet and node run their own show. Rather than competing for the same space. So #research is node research and vice versa.
   - _antiochp:_ #github for example is good to keep separate per project/repo (too noisy otherwise).
   - _lehnberg:_ And we can monitor for future feedback from active contributing developers that they would like to join up into one technical team, and consider it at that point again?
   - _tenthousandlakes:_ That sounds good, I'm more concerned with getting keybase open to the ecosystem than I am reorganizing other developers flows. 👍
   - _lehnberg:_ Awesome 👍. Thanks for the proposal.

### 6. RFC & sub-teams update

- _lehnberg:_ [RFCs](https://github.com/mimblewimble/grin-rfcs/pulls), in order of appearance:

#### 6.1 [Parallel IBD](https://github.com/mimblewimble/grin-rfcs/pull/52)
- _lehnberg:_ Author is @jaspervdm who's not here today. Two hours young, haven't read yet. But glancing at it now, looks like it's quite substantial already.
   - 🚀: _antiochp_

#### 6.2 [e2e encrypted slates over http(s)](https://github.com/mimblewimble/grin-rfcs/pull/50)
- _lehnberg:_ Author: @dburkett, still in early stage:
   ```
   this RFC is incomplete, and has several placeholders throughout. The technical details of The proposal will be finished if There is a general consensus around The usefulness and viability of The approach.
   ```
   As far as I can tell, the main motivation and use-case for this is for the hedwig style http(s) relays.
   - _dburkett:_ And payment proofs, yes.
   - _lehnberg:_ Right, good point. 


#### 6.3 [Compact slates](https://github.com/mimblewimble/grin-rfcs/pull/49)

- _lehnberg:_ Seems to be progressing? Anything worth updating on?
- _yeastplume:_ Will likely need another revision, but nothing to major. May add binary slate serialization, depending on outcome of discussions.

#### 6.4 [Slate serialization](https://github.com/mimblewimble/grin-rfcs/pull/49)

- _lehnberg:_ Speaking of serialization. :) So how do these two play together?
- _joltz:_ An updated slate serialization RFC will be up today or tomorrow. Fortunately this RFC is mostly specifying the way the implementation currently works today, so there shouldn't be changes required on the implementation to complete this (we are describing existing behavior for grin-wallet, not prescribing new behavior).
- _lehnberg:_ And what about binary slates. Does it touch this rfc? Is that sth better to handled in the compact slate rfc?
- _joltz:_ That will also be in the RFC following yeast's example as we may end up with multiple ways to serialize. At least that is how I've been modeling it.
- _yeastplume:_ Yes, the slate serialization RFC operates on a blob at a higher level, the compact slate RFC defines the blob.
   - 👍: _joltz_
   - _lehnberg:_ Multiple levels of blobs.
      - _yeastplume:_ Blobs all the way down.

#### 6.5 [N(e)rd kernels](https://github.com/mimblewimble/grin-rfcs/pull/47)

- _lehnberg:_ Lots of activity there it seems. Does it start to get ready for fcp?
   - _antiochp:_ I think so yes.
- _lehnberg:_ Who's shepherd? I'll rise up to the challenge. Will try to FCP it this week then, just want to dig into it.
   - 🙌: _antiochp_

#### 6.6 [qa team](https://github.com/mimblewimble/grin-rfcs/pull/45)

- _lehnberg:_ No updates I believe.
- _joltz:_ Nope, still have some deep existential questions to be answered:)
   - 👍: _lehnberg_

#### 6.7 [create moderation team](https://github.com/mimblewimble/grin-rfcs/pull/42)

- _lehnberg:_ So what's happening with #wg_moderation? Any insights we're getting as to the fate of this rfc?
- _joltz:_ I think we are still struggling to find community members motivated and willing to contribute the time needed to build it out properly.
   - _tenthousandlakes:_ What exactly is needed? @mcmmike mentioned he could help when I posted the keybase thoughts
   - _joltz:_ Glad you asked! A good next step for someone motivated would be to take another pass at the RFC with the vision they'd like to execute on.
   - _mcmmike:_ I did tell you couple of days ago , as I am also a moderator on the non-official Discord channel, I could help out keep keybase chat clean.
   - _joltz:_ I think we need something beyond someone saying "I'll moderate", give them mod status and call it a day. We need leadership to help forge the culture and direction of a moderation team imo. Which is why I think RFC is a good platform to share that
   - _mcmmike:_ I am out here as I can not be here 24/7 moderating, if you need someone who keeps an eye open I can help.
- _tenthousandlakes:_ I'll take a look at the RFC
- _joltz:_ I don't think we necessarily need an individual 24/7 in channels moderating hard, but a good start would be to stage what an effective moderation team would look like, provide the guidelines to make that happen etc. @mcmmike and @tenthousandlakes have both expressed interest in maybe taking a pass at it. We could let it sit for another two weeks to see if any changes have been made, then table it I guess.
   - 🚀: _tenthousandlakes_
- _mcmmike:_ I will not make changes to the community RFC has to be done by @tenthousandlakes, as I am not thinking this is as important now for me (sorry).
- _lehnberg:_ What does "table it" mean in this context? I.e. If no changes, we close it?
   - _joltz:_ Yes, close for now. I think most would agree the team in theory would be beneficial but unfortunately it would require some motivation and energy to coherently put together a working team. We may just not be there yet and want to revisit as the community grows.

#### 6.8 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)

- _lehnberg:_ The FCP period is expiring today I believe. There's been some last minute changes to account for funding discrepancies and exchange rate fluctuations. Shepherd @jaspervdm might want to let the RFC "soak" a few days before merging, in case others have more comments.
- _yeastplume:_ There were a couple of changes, should probably give them at least a few days for review.
   - 👍: _lehnberg_

#### 6.9 [Multiple named wallets](https://github.com/mimblewimble/grin-rfcs/pull/12)
- _lehnberg:_ No progress right? 
   - 👍: _yeastplume_

### 7. Other questions

None.

**Meeting adjourned.**