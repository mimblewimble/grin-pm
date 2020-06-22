# Meeting Notes: Development, October 30

Development meeting held Oct 30 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5bd87220435c2a518e2b8fcd). Meeting lasted ~ 90min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* lehnberg
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 0. Retrospective
* _ignopeverell:_ T4 happened, and it worked out relatively fine. Since release, everyone has been looking at small things here and there and generally cleanup. Yeastplume has given miner a good oil and filter change. I've done some cleanup on sync which I think I'll merge today, @tromp has been busy looking at our current secondary adjustments and doing simulations with @jaspervdm graph tools, also found a bug and providing abort support within solvers. 



### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/4) accepted.

### 2. Action point follow-up
None needed.

### 3. Mainnet planning
* _ignopeverell:_ We're getting there from a dev stand point. we just have to keep testing, keep fixing and improving, if you have some time where you feel like looking at code go check some crate you haven't looked at for a while and see if you can find some issues.
* Mainnet milestone: https://github.com/mimblewimble/grin/milestone/4
* https://github.com/mimblewimble/grin/issues/998 is tagged `must-have` but is not protocol dependent. 
* After some discussion, it was decided that T4 is desired to be our 'real' testnet. This means that we should hardfork in any consensus breaking changes and get in the habit of doing so on an ongoing basis.
* This means that CuckARoo is getting HF'ed in (target end of November), as will any consensus breaking bug fixes and tweaks.
* Question about whether to remove the deprecated `previous` on the headers . Antioch is working on a PR and then there can be a discussion on the PR whether to keep it or not.
* https://github.com/mimblewimble/grin/issues/25 likely saved for one of the mainnet hard forks.
* Desired mainnet experience:
   1. Download a binary
   1. Run binary
   1. Opens the web wallet (as `http://127.0.0.1:port` in the browser)
   1. Sync
   1. Ready for file-based transactions.
   * http(s) tx should not be default
   * explicitly no official windows support
* Web-wallet is not functional and does not support file-based tx today, in definite need of a spruce up. @Yeastplume is on it.
* Mining is considered advanced use case, will not require as much hand holding as Web wallet interface and experience.
* Config can determine whether to only run a node instead of wallet as well etc.
* Meeting considered web-wallet GUI a requirement for mainnet, CLI only is not acceptable.

### 4. P2P Tx building
* https://github.com/mimblewimble/grin/issues/1798
* Not expected for mainnet but a "nice to have" after.
* [ ] @hashmap to provide thoughts on libp2p and crust in issue

### 5. POW
* _tromp_: Casey rodarmor had some [good criticism of cuckatoo on forum](https://forum.grin.mw/t/scheduled-pow-upgrades-proposal/820/30)


### 6. Other questions

None.
