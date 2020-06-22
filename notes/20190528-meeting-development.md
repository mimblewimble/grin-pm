# Meeting Notes: Development, May 28 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5ced4cfcad024978c6433f03). Follow-up meeting chat transcript [here](https://gitter.im/grin_community/dev?at=5cee9efcff3f016baa6f2bbf) Meeting lasted ~ 120 + 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- bladedoyle
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

## Special note
Parts of the meeting discussion was extended into a follow up session the following day at the same time. The meeting notes are written as if it was a single meeting to keep things easy to digest.

## Agenda points & Actions

### 1. Retrospective

- _ignopeverell:_  We had mostly smaller fixes and testing for 1.1.0.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/137) accepted. 

### 3. Action point follow-up

#### 3.1 v1.1.0 communication

_lehnberg:_ Not actioned, was out of pocket most of last week. But given where we are with 1.1.0 I’m making that a priority this week.

#### 3.2 Documentation of git branching model

_ignopeverell:_ Not done yet, still need to document this.

#### 3.3 CI Status

_quentinlesceller:_ grin, grin-wallet, grin-miner, and rust-secp256k1-zkp are all using azure-pipeline. I'll also switch secp256k1-zkp to use this moving forward.

#### 3.4 v2.0.0 CuckARoo tweak proposal

_tromp:_ Write-up for Cuckarood29 is on forum: https://forum.grin.mw/t/mid-july-pow-hardfork-cuckaroo29-cuckarood29. Will start working on a verifier soon. Meanwhile miner writers can start adding cuckarood support using my repo as reference.

#### 3.5 [Bulletproof proposal](https://github.com/mimblewimble/grin-wallet/issues/105)

_jaspervdm:_ I posted the proposal almost 2 weeks ago. No comments that invalidated the whole approach so i started coding it. I'd say implementation is over halfway done, there are 4 PRs open on the relevant repos and 1 of them (on libsecp) is ready for review.


### 4. Security review status

- _ignopeverell:_   The status is about the same as last time, except that we paid. It would be good if someone went back to the findings, checked what was fixed and filed issues for non-critical ones.
   - _yeastplume:_ I can take that action.

### 5. Integration tests

- _hashmap:_ Integration tests were moved to grin-wallet, so testing grin node's code makes me a sad panda.
   - _yeastplume:_ They heavily relied on the wallet being there, so were moved to grin wallet, where they don't really belong. The api tests themselves should be moved back to grin. The other server/mini network tests are very out of date and need quite a bit of work and thought to bring them up to scratch. And given that these are tests, I think it's less a case of figuring out/knowing what needs to be done, and more a case of nobody wanting to do them because writing tests can be boring. We definitely need a method of triggering all these tests (that reference both the wallet and node) when grin changes. It also might be worthwhile looking at the framework that's there already to test the wallet. It runs and builds up chains in-process instead of relying on sockets being opened, and it might be possible to extend it to cover testing needs more generally. On the node API tests, it might be worth building a test framework around them in the same manner as the wallet v2 api, tackling both issues at once.
   - _hashmap:_ I can review and make sure we have good test coverage in grin repo, and move back what can be moved back easily, fix what had a dependency on the wallet either by removing the dependency or mocking a test wallet.
  
### 6. Grin v1.1.x

_ignopeverell:_ We'll see if this happens, realistic timeline would be in the next few weeks to a month. So maybe a v1.1.1 but it's unlikely any other patch beyond that before v2.0.0.

### 7. Grin v1.1.0 & Grin v2.0.0

- _ignopeverell:_ Any blocker to releasing?
- _quentinlesceller:_ Are we sure about the new slate format given 2.0.0 will be released in July?
   - _jaspervdm:_ I think exchanges will be slow updating to the new version, which means many users will complain that their deposits don’t work and we have to keep telling them to add -v 0. maybe we should set v0 as default and switch to v2 at the hard fork?
   - _yeastplume:_  I think I'm okay with that until forcing an update at the hard fork.

_Support by hashmap, ignopeverell, quentinlesceller_

- _ignopeverell:_ So the process with v1.1.0 is:
   1. PR to default to v0
   2. Tag and release
   3. Release notes, mostly about wallet changes
- _yeastplume:_ I will tag the wallet repo once the node repo is tagged and crates are on crates.io. There's only really [mimblewimble/grin-wallet#112](https://github.com/mimblewimble/grin-wallet/pull/112) outstanding, whether to put that into 1.1.0 or not.
   - _ignopeverell:_ Too late for that I think, I'd leave it for v2.0.

_Discussion on the approach and order of enabling v2 of wallet api, what transaction slate formats should be supported and when, the bulletproof rewind scheme, and the transition as part of the hard fork. After deliberation, the following agreement was reached:_

* Grin-wallet v1.1.0 will default slate output to SlateV0, and ensure that users who want to output the newest SlateV2 format must add -v 2 to their command.
* Grin-wallet v1.1.0 will contain both the V1 and V2 Owner/Foreign APIs. The V2 APIs use the V2 slate by default.
* SlateV2 in grin-wallet 1.1.0 will contain a block_version field that indicates what version of the Grin Protocol it is intended for.
* Grin-wallet 1.1.0 will fill the block_version field as 1.0 (consensus).
* Grin-wallet 1.1.0 will halt if it detects the current block is later than the hardfork block (hardcoded rule).
* Grin-wallet 1.1.0 will produce bulletproofs in the older recovery format.
* Grin-wallet 1.1.0 will not attempt post transactions to a node if the node reported height is >= the hardfork height.
* Grin-wallet 2.0.0 will fill the block_version field of the slate as 2.0.
* Grin-wallet 2.0.0 will refuse to process slates with a block_version of 1.0.
* Grin-wallet 2.0.0 will not post transactions to a grin node reporting a current block height < HF height.
* Grin-wallet/Grin node v2.0.0 will have a node API tweak to ensure grin-wallet 1.1.0 cannot communicate with grin-node 2.0.0.
* Grin-wallet 2.0.0 will turn off the V1 owner/foreign APIs, and use the V2 APIs only.
* Grin-wallet 2.0.0 will drop support for SlateV0 and SlateV1, and default to using SlateV2 only.
* Grin-wallet 2.0.0 will only produce bulletproofs in the newer recovery format once the HF occurs.

 _yeastplume:_ I'll need a couple of days to get the changes into the wallet and would like another beta here just for reassurance, so would be look to be launching 1.1.0 about time next week? It's tight, but at least the approach is clear.

### 9. Release planning

- _ignopeverell:_ Wiki doc here: https://github.com/mimblewimble/docs/wiki/Release-planning When the releases are made, we can follow this doc to make sure release notes are accurate and hopefully useful.

### 10. Other questions

None

**Meeting adjourned.**
