# Meeting Notes: Development, Dec 11

Development meeting held Dec 11 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c0fd1204808192b031decc7). Meeting lasted ~ 90min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* clefu
* davidburkett
* droslean
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* jackrack
* kargakis
* mcdallas
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
* _ignopeverell:_ Update is much as 2 weeks ago: we're getting ready for mainnet, no large features, many small bugfixes and incremental improvements. In addition, we're working out what's required for mainnet, such as [genesis block release process](https://github.com/mimblewimble/grin/issues/2053).

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/24) accepted.

### 3. Action point follow-up
* _tromp:_ I concluded that bitcoin soft limits are simply lower block limits in the default block construction code, same as in grin
* [Windows issue was opened](https://github.com/mimblewimble/grin/issues/2062).
* _lehnberg:_ Things like the previously agreed [Pull Review Process](https://github.com/mimblewimble/grin-pm/blob/master/notes/20181127-meeting-development.md#6-pull-request-review-process) risks being drowned in past meeting notes. There have also been questions around the processes for council member election, general decision making procesess, etc. Might be good to put together a location for all these where it’s documented. Some kind of “home for all our things we’ve agreed in the community", that we can update once they change.

### 4. Proof of Work
* _tromp:_ I was distracted last week by chasing some other bugs in my solvers, and implementing other requested features. so didn't make much progress on cuckaroo mean cpu. There's still a failing cargo test on the mean cuckatoo miner that's hard to reproduce in isolation.
* _hashmap:_ OpenCL Cuckatoo is coming now that rust 2018 is out of the way.
* _antioch:_Daira from Z-cash [posted on the forum regarding Dual POW](https://forum.grin.mw/t/how-would-block-rewards-work-with-2-mining-algorithms/864/5).
   * _tromp:_ There's nothing we can improve on our setup from that discussion (yet).

### 5. Mainnet planning

#### 5.1 Permanent Testnet / Beta

* Decision to switch from current Testnet4 to a new testnet which will be the permanent beta testnet moving forward.
* Will allow testing of genesis block release process.
* First `testnet4 + testnet`, then `testnet + mainnet`.
* Small delta from actual mainnet, things like ports and network magic number, and dns seeds.
* ETA: next week.

#### 5.2 [Switch commitments](https://github.com/mimblewimble/grin/issues/998)

* Should not have `must-have` label, as it's not consensus-breaking or pre-mainnet-critical.
* _jaspervdm:_ I'm finishing the PR this week.
* Discussion around whether a flag for `switch / not-switch` should be added. This could be hidden in the bulletproof to preserve privacy.
* To be discussed further in the pull request.

#### 5.3 Genesis block
* _igno:_ What should be done with the coinbase? Multi-sig?
* _antioch:_ I'm not convinced the _first_ tx in Grin mainnet should be an (effectively) untested multisig.
* Meeting felt comfortable for Igno to hold on to the coinbase without a multi-sig.

### 6. [Dependency policy](https://github.com/mimblewimble/grin/issues/2103)
* _yeastplume:_ Non-issue. The only reason regular uses need to worry about rust is the stage of development. Ultimately there will be distro packages and nobody other than developers should have to care what's going on during the build process.
* _antiochp:_ There's a mismatch between rust (regular fast releases by design) and linux distros (stable but slow releases).
* _clefu:_ Distro packaging is important for user adoption and for developers (as not everybody is happy with rustup or a docker instance).
   * _antioch:_ Rust without rustup is an "you're on your own" kind of thing though, and Rust packaging in a distro is a non-issue for binary releases.
* _igno:_ The current set of developers is fine with the current approach and it follows current Rust best practices. You can disagree with either or both but I don't see why we should bend accomodate that.
* The meeting opted not to change the current process.


### 7. Other questions

* Discussion around potential text string message to include in Genesis block without conclusion.


**Meeting adjourned.**