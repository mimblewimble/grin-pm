# Meeting Notes: Development, Mar 05 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c7e8f0ab1503b3d70841ed1). Meeting lasted ~ 75 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* davidburkett
* garyyu
* hashmap
* jaspervdm
* kargakis
* lehnberg (30 minutes late)
* quentinlesceller
* rentenmark
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
* _ignopeverell:_  
   * I believe the larger things in the works have been the wallet being moved to a separate repo, windows fixes/build becoming supported, and continuing work on Dandelion++.
   * Windows now have travis-ci built pre-release binaries for both grin and grin-wallet, courtesy of yeastplume. Targeted for 1.1.0.
   * garyyu also did some cleanup on the libsecp side to get Travis working on those tests.
   * jaspervdm has some additions to a few wallet-related APIs.
   * Jeremy Rubin has also done multiple nice cleanup PRs, a couple of them still pending.
   * GandalfThePink dropped a paper, related discussion [here](https://github.com/mimblewimble/grin/issues/2504#issuecomment-467446197)
   * I've been looking fairly closely at i2pd, expecting that to continue for some time.

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/68) accepted.

### 3. Action point follow-up

#### 3.1 Error management alternatives collated
* _hashmap:_ Not ready, but some results are [here](https://github.com/mimblewimble/grin/issues/2542). I checked tokio, actix and some other projects. Rust error management story is still a bit pathetic, so I’d try to simplify what we have mostly by removing mutual wrapping of errors and reducing the number of such layers. I no longer think that mega error makes sense.

### 4. Grin v1.0.2

* _ignopeverell:_ My peers show about 50%, which I guess isn't too bad at this point. A quick reminder to service operators that may have a look at this later that regular upgrades are always a good idea.


### 5. Enabling nightly builds and test runs for windows + MacOS

* _ignopeverell:_ Could we trigger them with some cron job that would trigger a specific travis build? 
   * _garyyu:_ Yes it does, I can take this task.

### 6. New release of rust-secp

* _ignopeverell:_ New release of rust-secp, for which an updated libsecp would be best. Anything we really want in there before I cut the release?
   * _jaspervdm:_ https://github.com/mimblewimble/rust-secp256k1-zkp/pull/46
   * _ignopeverell:_ ok will take a look.

### 7. Grin v1.1.0

* _ignopeverell:_ anything still holding 1.1.0? beside perhaps Dandelion++? 
   * _yeastplume:_ From my perspective it's just wallet split and windows support, which are in a good enough state to go.
   * _hashmap:_ Async stratum real world test, will ask @hendi and @bladedoyle for help.
   * _davidburkett:_ Even if code complete is coming soon for Dandelion++, it should probably have a decent bit of testing around it before making it into a release.
* _ignopeverell:_ So no release date for v1.1.0 yet but mostly testing left and we'll see what we do with d++. 

### 8. Grin v1.0.3?

* _ignopeverell:_ Whether we'll need a v1.0.3 before v1.1.0 or not I think is too early to tell. There's nothing new that would justify it for now I think but I wouldn't rule it out.

### 9. Improvement proposals

#### 9.1. [Provable interactive transactions](https://github.com/mimblewimble/grin/issues/2652)

* _yeastplume:_ Do we need a particular discussion of these proposals at the moment? The discussion is ongoing on the issues and I don't think most people would have had a chance to think about them yet.
   * _ignopeverell:_ Agreed, I need to have a read as well.
   * _jaspervdm:_ Yeah I think its too early to bring up in a meeting. It's at least on everyone's mind now so I suggest people post their thoughts in the issue.
   * _garyyu:_ OK, please take a review on this Provable Tx solution and let’s continue discussion there when needed :-)

#### 9.2. [Read Only Wallet Database User and Read Only Wallet API](https://github.com/mimblewimble/grin/issues/2653)

* _ignopeverell:_ Let's discuss on the relevant issue(s) again then, and adding the use case you have in mind would be helpful as well @garyyu.


### 10. Other questions

_rentenmark:_ UTXO selection. It would be really nice to have in the wallet a target utxo size or something similar. Current wallet is not very smart about utxo management.
   * _yeastplume:_ Sure, different selection strategies can be added, might be worth some refactoring to allow different strategies to be added in a pluggable manner.
   * _ignopeverell:_ Want to start a PR with a first rough impl for discussion?
   * _rentenmark:_ Yep, i can work on it.

**Meeting adjourned.**
