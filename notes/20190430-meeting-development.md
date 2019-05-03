# Meeting Notes: Development, Apr 30 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5cc862f9b4700e023dfae263). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- davidburkett
- garyyu
- hashmap
- ignopeverell
- jaspervdm
- kargakis
- lehnberg
- mcdallas
- quentinlesceller
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _ignopeverell:_  It's been mostly fixing loose ends and doing testing before 1.1.0, with various small improvements. [#2780](https://github.com/mimblewimble/grin/pull/2780) is a pretty good one from @hashmap as well, and good timing. @yeastplume is almost done with the invoicing API too.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/111) accepted. @davidburkett added slate version to Other Questions.

### 3. Action point follow-up

#### 3.1 [Travis CI alternatives](https://github.com/mimblewimble/grin/issues/2691)

- _quentinlesceller:_ Just got back from holidays, I still have a small issue with windows environment variable but nothing blocking. Hopefully beginning of the week this is fixed and we're up and running on Azure Pipelines. Next steps would be to merge then link azure-pipeline and maybe do a test release to ensure everything is working well. 
  - _yeastplume:_ Sounds like a candidate for 1.1.0-beta-2. Were you intending to give the wallet the same treatment? If not, I can just use the old build system for 1.1.0 for now.
  - _quentinlesceller:_ Yes, I think we can safely target end of the week for me. Once /grin is up and running, next up would be integration with grin-wallet, which shouldn't be long after.

#### 3.2 Issue tracking tests

- _kargakis:_ Done
   - grin issue: [mimblewimble/grin#2768](https://github.com/mimblewimble/grin/issues/2768)
   - grin-wallet issue: [mimblewimble/grin-wallet#86](https://github.com/mimblewimble/grin-wallet/issues/86)

#### 3.3 Protocol versioning write up on wiki
- _davidburkett:_ [Done.](https://github.com/mimblewimble/docs/wiki/P2P-Protocol#protocol-versions-and-capabilities) I single-handedly decided on the phase-out strategy, so please review that and make sure there are no disagreements.
   - _ignopeverell:_ Yes, a few reviews would probably be a good thing.
   - _lehnberg:_ Let's track reviews in an issue and close once people are happy with it.

### 4. Security review status

- _ignopeverell:_ Coinspect has asked for an additional week to finish the report. They've reviewed the wallet and are working on some final findings. 

### 5. Grin v1.1.0

- _ignopeverell:_ v1.0.0 it has not been released yet but is looking more and more stable. I believe @yeastplume was suggesting another beta, which would be a good idea at this stage. Looks like we're getting pretty close to me.
- _jaspervdm:_ Should we wait for the final Coinspect report and implement all fixes before v1.1 is released?
   - _ignopeverell:_ Would be good but I wouldn't want to depend on further delay from them, so maybe only if the report comes soon after beta2.
   - _jaspervdm:_ Makes sense.
- _lehnberg:_ Exchanges have been asking for more info, like what the specific API changes needed to be supported by them etc. I could write something up, but don’t have enough answers at this stage, so would be good to maybe sit down and flush this out with someone who has.
   - _ignopeverell:_ Let's do it together, you, me and @yeastplume. We can each fill up different parts: you can take the organizational aspects, I can take grin and @yeastplume grin-wallet.
   - _quentinlesceller:_ Would be nice to have all this on https://grin-tech.org and keep official announcements and download links to binaries there.
- _hashmap:_ Update on my 1.1.1. plans before I have to leave: I’d like to reduce node’s cpu usage, 2 days ago it was 65% on my mac, my goal is 5%.

### 6. Grin future versions

- _ignopeverell:_ As soon as 1.1.0 is released we'll have 2 things to track:
   1. Improvements to 1.1.0 that will be 1.1.x;
   2. Our first hard fork is nearing, we'll have to start a 2.0.x branch or at least a set of PRs to start with. We need to start discussing Cuckaroo tweaks soon. And of course the `if now > 6 months later { boom }` in the code.
- _lehnberg:_ Do you have a target for a version you would like i2p to be included in yet? Anything consensus breaking?
   - _ignopeverell:_ No, only slight tweaks to the peer message but those shouldn't even impact peer negotiation, being a feature. Nodes will either be pure TCP only, both, or i2p only. With "both" being a bridge between the networks. It's not targeted for 1.1.0, the first version with it will likely have it entirely optional,maybe a 1.2.0 if it's ready on time? But could also go as a 1.1.x.
   - _lehnberg:_ Going with both for the time being with a slow migration over to full i2p at some point if it works as it should seems like a sensible goal to aim for.
   - _ignopeverell:_ Indeed.
   - _This is a truncated summary, i2p topics including NAT traversal, seeding, avoiding network splits, and opting for an i2p-only route were discussed._

### 7. Git branching model

- _yeastplume:_ Do we have any particular problems with the current way we do it?
   - _lehnberg:_ I created the [issue in question](https://github.com/mimblewimble/grin/issues/2779) to discuss, I for one don't actually understand the current approach.
   - _davidburkett:_ You're not the only one.
   - _yeastplume:_ Fixes to master, aiming for next point release, branch for next minor release, put breaking changes there, merge master into branch once in a while to keep it up to date.
      - _antiochp:_ The final deployment step is something I'm not 100% clear on with our current approach - do we merge back into master and then deploy from there (for 1.1.0 for example)? or are we deploying 1.1.0 from the 1.1.0 branch? 
      - _kargakis:_ Let's get this documented properly. It should be part of CONTRIBUTING or a different doc linked in CONTRIBUTING.
      - _ignopeverell:_ Good idea, I will do this. There is a method to this madness, we tried several ways actually. I'm not aware of an approach that doesn't require either merge (with possible snafus) or cherry picking (with possible snafus). Cherry picks isn't great for open source, you have to be very diligent and practically not allow a PR unless it comes with cherry-picks for all active branches. So you get N PRs instead of 1.

### 8. Other questions

#### 8.1 Slate versioning

- _garyyu:_ https://github.com/mimblewimble/grin-wallet/issues/95
- _yeastplume:_ There's versioning for the V2 api, also I didn't want to have the version function return the specific version the client is running, seems that would just make life a little bit easier for anyone looking for exploits should a particular version have something known to be exploitable. 1.1 can just check whether the v2 version function exists. If not, just send slate version 0. The v2 version (and onwards) function returns the current slate version.
- _davidburkett:_ I guess my proposal is move 'check_version' out of /v2/. Just have /version.
   - _yeastplume:_  Ahh okay. I can see that. I'm for some reason assuming /v2/ will cover all versions of the api. v1 is http, v2 is json-rpc, but there will be versions within that, retrieved via the check_version function, which will always be at the v2 endpoint, that's kind of what I was assuming. check_version is a json-rpc function like all v2 api calls. It's documented in the api rustdoc. I don't think we necessarily want to change the endpoint each time there's a change to the version API, that's what that version function is for.

**Meeting adjourned.**
