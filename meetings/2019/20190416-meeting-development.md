# Meeting Notes: Development, Apr 16 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5cb5ee0f8148e555b2b56c81). Meeting lasted ~ 60 min.

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
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _ignopeverell:_ Today today is pretty much Grin's 3 months release anniversary! Nothing big and shiny in the past 2 weeks I think, we're in pre-release mode. The largest PR in grin was maybe the variable size PMMR by @antiochp. Lots of consolidation and progressing on existing stuff. @quentinlesceller has been busy trying different CI tools.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/102) accepted.

### 3. Action point follow-up

#### 3.1 [Travis CI alternatives](https://github.com/mimblewimble/grin/issues/2691)

- _quentinlesceller:_ We've opted to pursue Azure Pipelines over Gitlab, looks like it will fit our needs better. So the whole building and test on macOS/Linux/Windows is almost done. Problem is mainly that the VM given by Azure hasn't that much space available compared to Travis so I need to make sure tests clean up after themselves. The removal of the wallet tests should also free 19.5 GB of tests. After that fix CI should pass and after that I'll focus on the release process (which is mainly done just the wrong tag). It also seems like Windows is very sensitive about deleting directories currently in use. I think I'm on track for having a successful build/CI today, not sure if it's going to be faster. Windows takes 20 minutes to build, but Azure Pipelines should be introducing caching soon, which should speed up the process.
  - _antiochp:_ Can we share assets between jobs? Specifically - could we build crates and then share these across multiple jobs/pipelines later on? That was a big limitation of travis.
  - _quentinlesceller:_ Basically building once and then testing each in parallel? I'll check but I don't think that's possible.

#### 3.2 Manual test documentation

- _kargakis:_ [The first version of the document is on the wiki](https://github.com/mimblewimble/docs/wiki/Release-testing). I started down the route of specifying various tests and quickly realized I was reinventing the existing tests. So I ended up adding a point about making the existing tests more reusable. Getting the existing test suite into a place where it can run against a live node/wallet will be great, and having such a suite in place could also be beneficial for other node/wallet implementations.
  - _ignopeverell:_ Indeed. Great. If you have more feel free to add to it, and if anyone wakes up some morning with a burning desire to do some testing automation, there you have it. I see many of those are basically running some of the existing tests on old data, which would require some rearranging I think. And that would be our integration tests I think, so what's in `server` and possibly some of `chain` and of course `grin-wallet`, talking to existing servers. Are we tracking this as an issue btw?
  - _kargakis:_ I can open one.

### 4. Security review status

- _ignopeverell:_ Nothing new in the last week so the last update still applies

### 5. Protocol versioning & features handling

- _davidburkett:_ I wanted some clarification, triggered by changes in [mimblewimble/grin#2743](https://github.com/mimblewimble/grin/pull/2743). The suggestion I’m making is to always increment protocol versioning when we add a new message, or change an existing one. Capabilities should only be used for optional features.
  - _antiochp:_ I suspect the version mentioned in that PR was a bit misleading - but this is a useful discussion to have. `v0` was for a fixed size bunch of kernels in a data file, `v1` was for a variable size bunch of kernels (so the data file would have bytes "missing" in it). And a node should be able to support receiving both (either `v0` or `v1`) from a peer. Less about a new capability or msg, more about the actual bytes in the data file, the versioning of the `kernel_data` message specifically. It's kind of orthogonal to protocol versioning, and needs to be versioned regardless of protocol needs.
  - _ignopeverell:_ I think what @DavidBurkett is advocating is doing both @antiochp, so the higher kernel data version triggers the protocol higher version, so that it's more explicit. I think the main motivation is to spare ourselves the future complexity of dealing with multi-version matrixes
  - _davidburkett:_ Correct, and then there’s no reason to tell the peers the version as part of the kernel data message. The peer would already know (because they know your protocol version).
  - _antiochp:_ So I get kernels back from a peer and based on the peer protocol version I make an assumption around what version of kernels they are - that would work too yes. We already expose a protocol version via hand/shake (but it's just `0` right now). What kind of granularity do we need for bumping a protocol version though?
  - _davidburkett:_ Any addition to the protocol just increases by 1. Unless we feel the need to make a major bump (increase by 1000 or something), for whatever reason. We could even have it so we make peers only support up to, say 100 versions in the future.
    - _antiochp:_ That line defining current protocol version is going to be the source of much merge conflicts.
    - _ignopeverell:_ It just needs a little coordination if two breaking changes go into the same release. I don't think every new software version, even major, necessarily triggers a protocol increase.
    - _davidburkett:_ Right. I meant every release that has a protocol change. I can document this on the wiki.

### 6. Grin v1.1.0

- _ignopeverell:_ As mentioned current status seems to be "pretty solid".
- _yeastplume:_ To avoid missing anything, I put together a PR to merge master into 1.1.0, naturally this comes with a bit of risk and needs to be reviewed, but it's either that or create more annoyance with functionality missed because it only went into master. Given where we are and to mitigate this going forward, I'd propose branching master to 1.0.x legacy now, then merging my PR into master instead, so 1.1.0 becomes the new master. Then we can run with the new master for a bit until we're comfortable with it, then release. This would mean all current PRs, particularly ones around CI, would have to be rebased into it once that's done. I
- _mcdallas:_ If we followed what bitcoin is doing we wouldn’t have to deal with these massive merges.
  - _ignopeverell:_ It's either merges or backporting PRs
  - _antiochp:_ Bitcoin is not necessarily the only (or even best) standard in terms of release management. (But if it were up to me we would only have master and only ever tag from there.)
- _yeastplume:_ I've merged master into 1.1.0 several times, so I hope very much everything is in it, but I think we should run with 1.1.0 as master for a few days just to be sure, then release. I've set the version number in the PR to 1.1.0-beta.2 anyhow, perhaps quentin can finish up his CI work first then have a practice run on it to create beta 2.
  - _ignopeverell:_ Yes, sounds reasonable.
  - _quentinlesceller:_ +1 for 1.1.0 to be the new master.
  - _antiochp:_ +1 for 1.1.0 to be the new master.

### 6. Grin v1.0.3

- _ignopeverell:_ Released long ago, nothing to add there.

### 7. Wallet related issues migration to grin-wallet

_Issues were migrated to the new `grin-wallet` repo by @lehnberg following the meeting, using the list provided by @kargakis._

### 7. Other questions

None.

**Meeting adjourned.**
