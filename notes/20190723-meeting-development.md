# Meeting Notes: Development, July 23 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d37214ed1cceb1a8daa875e). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- chisa0a
- davidburkett
- j01tz
- kargakis
- lehnberg
- mably
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_ Don't know if anyone noticed but Grin Hardforked itself last week. I think the focus on preparing for it really helped there, as well as reducing the scope of the 2.0.0 to minimize confusion. I think the worst that happened was that a few people had to restart their wallet listeners, but other than that it gave all the appearances of being a non-event. This is very much down to all of the hard work by the entire community, so well done everyone. As an added bonus, we should be over our Slate/Versioning incompatibility issues for now, and I think we're all inclined to be much less inclined to make any changes there without a very good reason.
   * _DavidBurkett:_ +1 Fork went really well. No more slate issues. Feels really great to be over that hurdle.
* _yeastplume:_ So with 2.0.0 out of the way, we're starting to move forward again on development, with much chat going on in the subgroup channels, new features being considered and worked on. It's still too early to give too much detail about future release plans, but these should be starting to form over the next few weeks. For my part, I've been working on some wallet RFCs I think are needed and refactoring in preparation for API enhancements, perhaps one or two others want to sound off themselves on what they've been doing as well?
   * _quentinlesceller:_ Working on adding the SyncStatus to the Grin API, which started here [mimblewimble/grin#2964](https://github.com/mimblewimble/grin/pull/2964). Also we reapplied the tx archive hashset generation every 720 blocks on milestone/2.x.x [mimblewimble/grin#2951](https://github.com/mimblewimble/grin/pull/2951)
   * _antiochp:_ Been out of the loop for a week or so (watched the HF from a safe distance) - catching up this week on everything that's been going on. But mainly focused on some refactoring/rework of the MMR internals (based on the floonet testing we did pre HF) - [mimblewimble/grin#2918](https://github.com/mimblewimble/grin/pull/2918) (and some follow up work, not yet in a PR). The other big one is "relative lock heights" which will likely require a slate serialization change (which would need RFC'ing).
   * _DavidBurkett:_ I submitted an RFC for a header change during a future hardfork, which now seems like a failure after @antiochp poked a really big hole in it. I'm also working on RFCs for a new BBS-like slate transport mechanism, and one around improving dandelion.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/157) accepted, with the addition of points raised by @antiochp and @quentinlesceller.

### 3. Action point follow-up

#### 3.1 Integration tests issue

* _yeastplume:_ Actioned by @hashmap, issue created: https://github.com/mimblewimble/grin/issues/2957

### 4. Security review status

* _j01tz:_ All issues have been initially addressed. Still waiting on further review of potential fixes. Some issues will require more thought. For example we may have code in place to catch cases triggered in PoCs but it may not be sufficient to fully address all of the underlying issues. May have to do some thinking in those cases to determine best path forward.
   * _yeastplume:_ +1 yes, just as a general update, discussions of all of the issues has been ongoing in the background. We should be able to get to the issues we need to review over the next week.
* _lehnberg:_ It would be good if we could nail down a target timeline here that would allow us to complete the audit publication within 90 days of receipt. We received end of April IIRC, which would mean end of July (gulp). I would like to argue the case that we make this the top priority for now until it’s out. It’s been dragging for enough time, we’ve got @j01tz here ready to help, and we’ve put the HF behind us. Let’s huddle up and work together to get this sucker out ASAP so we can put it behind us.
   * _anctiochp:_ Makes a lot of sense
   * _DavidBurkett:_ +1 Many are getting anxious to see the results, myself included. And some rumors are starting to spread on Telegram.
   * _yeastplume:_ Fair enough. I don't think there's a ton of work here to get it over the line, perhaps we just need someone on core team to take point on reviewing the issues/responses? The best person for each review would differ depending on the issue.
      * _lehnberg:_  I'll take the action to see if I can get one core member assigned per issue.
* _lehnberg:_ Also, as the official shepherd, I’d like to make you all aware of the open RFC re security: [mimblewimble/grin-rfcs#13](https://github.com/mimblewimble/grin-rfcs/pull/13) Please review, comment, ask, input, feedback on the PR.

### 5. Hard fork retrospective 

* _lehnberg:_ In hindsight, while we got there in the end and it went really well, it felt as the HF almost took us by surprise. We had to rush to put together the timeline. And it all got very tight between 2.0.0 and 1.1.0 as we know. So might be good to become a bit more rigid in the release planning in these six month intervals, i.e. “aim for no minor release x weeks before a major" or such. v3.0.0 will be out in January. We probably don’t need to nail down the exact number of minor releases we do, but reasonably thinking, "if it ain’t out by mid-december, it won’t be out before HF" or sth like that.
   * _yeastplume:_ Yes, I think in hindsight it's clear we needed more and better forward release planning, which I think spawned a lot of the governance reorg and RFC discussions.

* _lehnberg:_ I think also we should note that we ought to think about even better comms with ecosystem for next time.
   * _yeastplume:_ Agreed, earlier and more precise about changes.

* _chisa0a:_ Better docs + comms around the miner, a clear explanation that it was a GPU-only release, updated README on the git repo, up-to-date docs on how to mine, etc.
   * _kargakis:_ The wiki list should be fairly up to date for 3rd party miners: https://github.com/mimblewimble/docs/wiki/Community-projects#miners 
   * _yeastplume:_ I think there's a bit less focus on grin-miner these days since it was very quickly and definitively surpassed by 3rd party miners very soon after launch, and grin-miner exists as more of a reference for them at this point. So it may be a case here of deciding what to do with grin-miner overall, we could add a discussion point for the next meeting.

### 6. Status of particular open issues

* _quentinlesceller:_ I'm going to do a follow up on each issue and do this async, since @hashmap is not there.

### 7. 2.x.x -> master branch

* _antiochp:_ So master is currently tracking 2.0.0 and we have a bunch of changes on 2.x.x post HF. We want to close the loop here in terms of the process and get back to dev on master, and do it in such a way to avoid missing anything.
   * _yeastplume:_ Yeah, I think we have this a bit backwards at the moment. Ideally at a release we should be keeping a branch for maintenance fixes for that release, but continuing to develop on master, it's far less confusing that way.
   * _antiochp:_ I propose a simple "master should be fully compatible with current release", where our current version is 2.0.0. Anybody should be able to build and deploy master and have it run successfully against mainnet.

#### Decision: Breaking changes in releases

##### Tl;dr

* Patch releases, i.e. `v . . x`: Bug fixes
* Minor releases, i.e. `v . x .`: New features that are backward compatible. 
* Major releases, i.e. `v x . .`: Breaking changes.

A change can be introduced in a minor release, as long as the old functionality does not break. It becomes deprecated, with the intention to be removed in the next Major release.

*Note:* Wallet developers who link directly will still need to deal with internal changes between minor versions.

##### Detailed discussion

* _yeastplume:_ We've said that minor releases can contain (non-consensus) breaking changes (like a change to the Node API)?
   * _lehnberg:_ So my understanding is that anything that’s backwards compatible can go into a minor, where `version = major.minor.patch`. 2.0.0 was a major, 1.1.0 was a minor, 1.0.3 was a patch. Patches are for bug fixes, small tuning. Minors are for introducing new, backwards compatible functionality.
   * _antiochp:_ If we can only safely make (non-consensus) changes every 6 months then something is broken with our process.
      * _lehnberg:_ You can make an API change in a minor release, but you would/should be backward compatible and support the old format, but deprecate it. And you can remove the deprecated as part of a major release, i.e. a hard fork.
      * _antiochp:_ Yes - we should be focusing on making things backward compatible and decoupling changes from the HF schedule
      * _quentinlesceller:_ Yes both can be supported until hard fork
* _yeastplume:_ So I think we're thinking master = non-breaking changes (of any sort) for next patch release, 2.1.0 branch = non-consensus, non wallet-compatibility breaking changes, 3.0.0 branch -> next HF changes.
   * _lehnberg:_ I still don’t understand why we need to have breaking changes whatsoever in 2.1.0. Why not just support both (old and new) until the hard fork? I’m all for new functionality and improvements, let’s stick them all in minor releases for that matter. Just don't break what's already there and working. Until next HF. We want to minimize the headache for the ecosystem to support Grin. We can’t be telling mining pools exchanges and wallet devs to assign resources every time we push out a minor release.
   * _DavidBurkett:_ That's a fair point.
   * _antiochp:_ I can get behind a 6 month "deprecate and remove" schedule that just happens to be aligned with the HF schedule.
      * _mably:_ +1
   * _yeastplume:_ I can take that point as well.
* _quentinlesceller:_ Why not have major release outside of hard fork? That's the easiest way imo. We can always release Grin 3.0.0 in 2 months with breaking changes (non consensus)
   * _lehnberg:_ That’s also possible. Right now, the hard forks give us the grace of enforcing some kind of roadmap planning on us. Over time, it will become more a matter of remaining friendly towards community and developers and wider ecosystem as a whole.
   * _antiochp:_ Yes agreed - it gives us checkpoints where we know everyone will be running new code (I just don't want to start making assumptions that they are intrinsically linked somehow).
* _yeastplume:_ I'm fine with deprecate-and-remove as well for external facing APIs, but again, so long as it's understood that wallet developers who link directly will need to deal with internal changes when updating between minor versions. Otherwise refactoring becomes too restrictive.
   * _Support from DavidBurkett, antiochp, lehnberg._  

#### Decision: Branching model

* _yeastplume:_ So we should have:
   1. a point-fix branch for patches, in this case `releases/2.0.x`,
   2. `master` for the next minor release, i.e. `2.1.0` in this case,
   3. a branch for the next major release where all consensus-breaking changes go, `milestone/3.0.0` in this case.


### 8. Planning

* _yeastplume:_ Beyond the above, I don't think we're far enough along yet to go into exact details on the content of the releases. 
   * _lehnberg:_ Yes, might make sense to look at planning in two weeks and do rest of feature chat on Github / sub-teams for now.

### 9. RFC process & sub-teams update

* _yeastplume:_ I don't have much to say here other than I think it's going well, with RFCs being created and subteams having active discussions. Anyone have anything to observe about this? 
   * _lehnberg:_ Anyone up for a Quality/Infrastructure sub team? Technical documentation, non-technical documentation, QA, testing, toolchain, developer productivity, guides, how-tos.
   * _DavidBurkett:_ Seems like a good idea

### 10. Other questions

None

**Meeting adjourned.**
