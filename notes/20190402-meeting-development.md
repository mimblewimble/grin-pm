# Meeting Notes: Development, Apr 02 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5ca37913b34ccd69e752246d). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* davidburkett
* garyyu
* hashmap
* kargakis
* lehnberg
* mcdallas
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
* _ignopeverell:_  Last 2 weeks have been mostly cleanup and small fixes as far as what went into the source, and then some progression on the larger tasks being worked on, mostly dandelion++, wallet API v2, little bit of windows and I2P. Number of unwraps in the server are dropping every week thanks to @hashmap.

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/90) accepted.

### 3. Action point follow-up

#### 3.1 [Travis CI alternatives](https://github.com/mimblewimble/grin/issues/2691)
* _ignopeverell:_  Any strong opinion on what we should try next for CI? Circle CI?
   * _mcdallas:_ Gitlab?
   * _yeastplume:_ CircleCI doesn't support windows natively, as far as I know. Gitlab does. I think Gitlab gives me the best impression of suiting our needs, though I'm no expert. https://about.gitlab.com/solutions/open-source/
   * _ignopeverell:_ Alright, let's try it. We can start with the free version and then request an OS license if we need it. I'll take an action to set this up.

### 4. Security review status

* _ignopeverell:_ The review moved to things more chain org and block propagation related, so those findings are going to be interesting as well. And as we've said before, the full review will be made public once we've addressed any major issue included in it.

### 5. Grin v1.1.0

* _ignopeverell:_ Fresh beta from @yeastplume out. Just some user testing now? Anything specific? Windows? Perhaps mix of versions? Old wallet, new server and vice versa?
   * _yeastplume:_ I'd like a beta period of a couple of weeks, windows definitely should be tested a bit, especially the wallet. Also sending slates back and forth between versions. All of those mixings, yes, though I think new wallet would prefer to be running against a 1.1.0 server. Also, I think we'll need to set a policy for how long we maintain or support old versions/slates. I can try and put together a proposal for how we handle it before release. I'd also expect the minor version number to be moving much faster than the grin one due to API changes and updates.
   * _ignopeverell:_ Yes, makes sense.
* _mcdallas:_ Are we doing release candidates?
  * _ignopeverell:_ We could do release candidates, do we want to formalize that or do it depending on the results on the beta? (lots of issues vs none)
  * _yeastplume:_ I don't think we need to formalize RCs at the moment, we can do beta.1, beta.2 until we feel everything is ready.
  * _ignopeverell:_ Agreed.
* _lehnberg:_ Does it make sense to try to put together some basic tests that we can run through as and when there’s new versions? Defining a list of instructions that makes it easy for the community to help participate.
  * _kargakis:_ I think testing mixed versions is not an automated test (yet). There are a couple of complex tests that are only done manually for now as I understand it. We should document them.
  * _yeastplume:_  The automated tests test the current version. As far as sending between versions, seeing what happens when you update the wallet on old data, etc, those don't exist... we could attempt to automate them, but before we do that I think we'd want to ensure our scope for what we intend to support is defined. First step would be to document them.
  * _kargakis:_ I can try to do a first version during the weekend on the wiki.
* _DavidBurkett:_ Who's doing code review of grin-wallet repo? A lot of changes were made.
  * _ignopeverell:_ Current review is on an older revision, although current changes are more structural than touching crypto, seeds or sensitive areas. I can ask Coinspect if they'd be willing to use https://github.com/mimblewimble/grin-wallet when they get to wallet code review.
  * _yeastplume:_ Indeed, the changes split the whole crate out, then a refactor or two, but very few sensitive changes, if any.
  * _DavidBurkett:_ Sure, but sensitive changes or not, it seems like someone should be reviewing it.
  * _ignopeverell:_ True, perhaps that now the period of intense refactoring is mostly over, we can go back to a more regular review?
  * _yeastplume:_ Yes, I think that's fine, will try to do so moving forward, though there's liable to be some direct commits as I make sure the build is working. At the very worst once 1.1.0 is released.
* _ignopeverell:_ So to summarize: Current status for 1.1.0 is it's getting there, more review in grin-wallet, beta is ready to be tested, please do so and we'll start documenting some of that testing procedure as well, and we'll re-evaluate readiness in a week.

### 6. Grin v1.0.3

* _ignopeverell:_ The last PR I thought important was merged over the w/e so I'd be happy to release today.
  * Regarding a potential v1.0.4, it depends a bit on the timing of 1.1.0, but I don't foresee the need for it at the moment.

The meeting agreed.

### 7. Other questions

None.

**Meeting adjourned.**
