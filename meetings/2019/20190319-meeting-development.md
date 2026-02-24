# Meeting Notes: Development, Mar 19 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c910413fa5b721a1fb59f84). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* davidburkett
* garyyu
* hashmap
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
* _ignopeverell:_  
   * Bigger things are probably Dandelion++ and the wallet separation, both expected with v1.1.0. yeastplume has been happily hacking away on https://github.com/mimblewimble/grin-wallet so follow that if you want wallet development updates.
       * _yeastplume:_ Wallet is nice and separated, last week was slate forwards and backwards compatibility and refactor to allow for automated doc/integration testing of the v2 API. I'm pretty sure v1.1.0 can also include the V2 API.
       * _antiochp:_ Dandelion++ is pretty close - working through feedback, most of it code cleanup. Got kind of sidetracked as I think I figured out how to do ["variable length MMRs"](https://github.com/mimblewimble/grin/pull/2690) now in a relatively clean way.
   * Other than that, a fair amount of cleanup PRs and still some fixes so things are generally more reliable.
   *  I'm still working on i2p, taking over a rust client API at the moment to be able to programmatically create server and client routes on demand, and then some fun PRs like verifiable transactions.
* _DavidBurkett:_ Just released the Grin++ wallet on floonet, so there’s likely to be an influx of Grin++ nodes there. Let me know if anyone notices anything crazy happening.
   * _mcdallas:_  I log my node’s peers here: https://grin.report/d/jeTROiqmz/peers?orgId=1&var-Network=floo

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/77) accepted.

### 3. Action point follow-up

#### 3.1 Enabling nightly builds and test runs for windows + MacOS
* _garyyu:_  Blocked by https://github.com/mimblewimble/grin/issues/2667.
   * _yeastplume:_ That's been outstanding for months and TravisCI still haven't addressed it. Means windows builds are currently a very manual process where you have to temporarily remove the github token from the project.
   * _antiochp:_ TravisCI got bought by [Ideracorp](https://www.ideracorp.com/) - I would not be surprised if their progress slows - I think they also [laid off some chunk of the travis dev team](https://www.reddit.com/r/programming/comments/atjltu/layoffs_at_travis_ci_their_team_was_being/). I think they're basically in maintenance mode (and not fixing anything).
   * _Meeting agreed it make sense to explore alternatives, and [an issue was created for this purpose](https://github.com/mimblewimble/grin/issues/2691)._

#### 3.2 libsecp update

_ignopeverell:_ Actioned.

### 4. First update from the security review

* _ignopeverell:_ We received a first full pdf update from Coinspect with a list of findings that we have to fix, some that are just bugs, and some that are a little more worrisome. Although nothing quite as bad as our vulnerability from a few weeks back. There is a general concern around some 3rd party libraries (like zip-rs in said vulnerability) used in consuming the txhashset zips that fast sync uses. So I think we'll have to work a little bit toward making that process more sandboxed generally, in a belt and suspenders manner. So far Coinspect has been doing a good job digging through our code.

### 5. Grin v1.1.0

* _ignopeverell:_ With the windows build done, I believe we just need Dandelion++, and the separation of wallet, to be ready.
   * _yeastplume:_ Wallet & Windows needs testing, but should be fine. Also going to expand to include the v2 api in 1.1.0. No need to branch the wallet at present, it only works for 1.1.0 at the moment, but will branch on release. The wallet should move faster than grin, I'd imagine the API will change quite a lot over time and more quickly, so it'll be quicker to get to 1.2.0 and beyond.
   * _antiochp:_  I can park everything else and focus on getting the PR for Dandelion++ ready, maybe another day of work or so.
* _mcdallas:_ Also, webhooks are in the 1.1.0 branch 

The meeting agreed to **target a release of v1.1.0 in ~ 3 weeks**.

### 6. Grin v1.0.3

* _ignopeverell:_ I think we'll need a 1.0.3 in the next week or so, plenty of small improvements in reliability that I think we should push. 

The meeting agreed to **target a release of v1.0.3 in ~ 1 week**.

### 7. Other questions

#### 7.1 Hard fork schedule & process
* _lehnberg:_ What’s the process of the hard fork, and scheduling?
   * _ignopeverell:_
     *  the process as I had it in mind but somewhat unrefined was:
         1. talk to @tromp about cuckaroo tweaks
         2. publicly specify those tweaks a couple months in advance
         3. see if there's anything else we'd want to put in the hard fork (I don't think so)
         4. remove the kill switch in the code
         5. release
     *  timeline around july for release.  


**Meeting adjourned.**
