# Meeting Notes: Development, Feb 19 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c6c1a01a378ef11f60657da). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* davidburkett
* garyyu
* hashmap
* jaspervdm
* noble_block_twitter
* quentinlesceller
* rentenmark
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
* _@yeastplume:_  Covering for Igno this week. Marching on as usual. For my own part I've been working on getting the wallet split out, which I think is done now, and moving on to the last points that need addressing for a windows release. Other than that chain is ticking along and had its one month birthday without any explosions, which I guess is something to celebrate. Others?
* _antiochp:_
   * adding a global file lock (so we don't corrupt the data with multiple grin servers)
   * getting back up to speed on Dandelion++
   * mapping peers by ip (and not by port)
   * reviewing various PRs
* _hashmap:_ Fixed 4 peers issue (for nat’d nodes), stratum issue with partial read, some rest api refactoring.
* _tromp:_ I've been discussing miner improvements with photon and lolliedieb. and am working on cuckatoo32 support.


### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/63) accepted, added ["Error management"](https://github.com/mimblewimble/grin/issues/2542) as an additional point on @hashmap's request.

### 3. Action point follow-up

#### 3.1 Update CONTRIBUTING.md with new requirements
* _yeastplume:_ Done.

### 4. Grin v1.0.x

* _yeastplume:_ The next point release is 1.0.2. I've been working more or less exclusively on 1.1.0 changes. Not sure what our plans are for when we do a 1.0.2 release and what will be in it. I guess this is the time to discuss.
* _antiochp:_ Milestone: https://github.com/mimblewimble/grin/milestone/10
   * there's some cleanup and maybe a couple of bugfixes in 1.0.2
* _davidburkett:_ Hashmap's peer fixes are a must. And I would argue should be done soon. Many (most?) users are behind NAT, and can’t maintain any peers, resulting in their nodes falling behind.
   * https://github.com/mimblewimble/grin/pull/2543
* _yeastplume:_ Looks as if a 1.0.2 could be done at any time, really. there are a couple of things that would be good to get in, and then a release seems timely. Whatever is in roughly around this time makes it.

#### Decision: v1.0.2
Target for a release sometime next week.

### 5. Grin v1.1.0

* _yeastplume:_ wallet being split off into a separate repo (which is done now but needs review), and Windows support (which is getting there). As far as timing, I'd say it's still a few weeks off, given we need to merge all changes back into the 1.0.x and perform a decent round of testing on it. Everyone please update whatever issues to reflect the milestone.
* _antiochp:_ Dandelion++ also a candidate there.
* _hashmap:_ New stratum needs proper testing, it’s tagged already (pr only). My 2 main issues are high cpu usage (which could be improved by increasing sleep time in some places, but a proper fix is to rewite p2p io whch opens a can of worms), and pmmr persistence durability. Now 1 peer consumes ~ 1% cpu.
* _tromp:_ Wallet is still defaulting to height locked kernels where it should use plain kernels. Fee is the same, but it's wasting bandidth and should be changed.
   * _antiochp:_  The bandwidth bit is a trivial change, the backend storage is far from trivial, as there is no code in place to handle different MMR element sizes.
* _yeastplume:_ As far as the 1.1.0 item, update issues and we can review where we are more definitively at the next dev meeting. That sounds good?


### 6. [Error management](https://github.com/mimblewimble/grin/issues/2542)

* _yeastplume:_ I had thought we'd had this discussion a while ago, and we were starting to use ErrorKind enums as the best solution. It's in a few crates, but not consistent.
   * _hashmap:_ Yeah, a year ago. We have too many error wrappers. Even though we uniform them it’s still pain. Like dozen `keychain::Error`.
   * _yeastplume:_ Yeah, each crate is wrapping every error from all other crates. I guess having a single crate for all errors is a possibility. But then we're going to end up with a huge ErrorKind enum. From a usage perspective, I don't see that as a huge issue, so long as the error crate doesn't itself have any dependencies on grin crates.
   * _quentinlesceller:_ Any examples?
   * _davidburkett:_ So, everything in keychain would throw a `
   keychain::Error`, but they would all unwrap to a `ErrorKind::keychain`?
   * _antiochp:_ I'm actually not opposed to having each crate wrap errors from dependent crates - its part of the api. I was just looking at something sort of related to this - https://doc.rust-lang.org/std/io/enum.ErrorKind.html. There's an `Other` ErrorKind in there (for std::io) that can wrap anything.
   * _hashmap:_ I could volunter to summarize different approaches and suggest couple for the next meeting.

_meeting agreed._

### 7. Other questions

#### 7.1 Wallets

* _garyyu:_ With wallet separated from node, how will we handle different versions of wallet and node running on the same system?
   * _yeastplume:_ Wallet lib relies on mostly core, keychain, store and util from core. We might want to ensure the grin node reports its version properly, so the wallet can fail gracefully.
* _garyyuu:_ With multuple projcts, I think we need a release page on our website, to hold 3 binaries for one release: server, wallet, miner, instead of on each github project.
   * _yeastplume:_ sure, makes sense. 
* _davidburkett:_ The user should still be able to install an old wallet, with a new node. Correct?
   * _yeastplume:_ Not sure we can guarantee that for perpetuity, but we can ensure we handle needed updates gracefully and prompt user to upgrade if necessary.
   * _hashmap:_ We might drop some apis in the future.

**Meeting adjourned.**
