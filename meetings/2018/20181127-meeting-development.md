# Meeting Notes: Development, Nov 27

Development meeting held Nov 27 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5bfd5c10ced7003fe1942c74). Meeting lasted ~ 75min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* davidburkett
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* mcdallas
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 0. Retrospective
* _ignopeverell:_ We've mostly been busy with consolidation, @yeastplume is continuing his work on the wallet. No new features, just cleanup, bugfixes, issue investigation, and getting ready for mainnet now. With the notable exception being Cuckaroo, which should be ready now. 

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/19) accepted.

### 2. Action point follow-up
* P2P tx building: Will not be handled prior to mainnet.
* [Block-size soft limit](https://github.com/mimblewimble/grin-pm/blob/master/notes/20181113-meeting-development.md#7-other-questions): Soft limit was [added](https://github.com/mimblewimble/grin/issues/1974), defaulting to the max limit instead of using a constant.
   * _tromp:_ I want to get more clarity on what Bitcoin did with soft limits.

### 3. Proof of Work
* Tromp is still writing Cuckaroo CPU miner, CUDA miner ready. 
* Question on minimum GPU card sizes for Cuckaroo, and possibly allowing Cuckaroo29+. Discussion for next governance meeting. 
   * _igno:_  If it's hobby users then they'll get a card that works, I think there's a lot of positive in getting more grin-dedicated miners as well.
* Discussion around changing the reward balance from being expressed in percentage, in favour of a fixed point 32-bit fraction. Fractions of 100 look a bit arbitrary and impercise.
* _igno:_ I'm worried that fixes to the scaling bug and ratio are going to be a bit of a headache to maintain with T4. T5 and beta mainnet is not preferred, a bit too late for that. We ned to start getting used to live with backward compatibility.

### 4. Mainnet planning
* Little over 6 weeks left to launch.
* Mainnet issues tracked [here](https://github.com/mimblewimble/grin/issues?q=is%3Aopen+is%3Aissue+milestone%3AMainnet).
* _igno:_ If you have an issue in mind that you think is a requirement and isn't in there, please add it. If you're looking for something to focus on, please pick something from that list.
* In parallel, we keep pursuing our own internal audit, we pick some part of the code and see if there's something that could be wrong or bad with it.

### 5. Windows support
* _mcdallas:_ The way I see it there are 3 main UX issues that might hurt adoption:
   * Windows support
   * Ability to send/receive effortlessly (without having to forward ports)
   * Some way for the recipient to initiate the tx (for online shops). Something like `grin wallet invoice` and `grin wallet pay`.
* Building on windows fails at croaring. If you get past that there are other build dependency issues.
* We could focus on 'wallet only' for windows first. But still requires a lot of effort.
* _yeastplume:_ I don't really think we should be worrying about windows ahead of launch unless someone from the community wants to pick it up. We're not expecting to have all bases covered for everything in a month and a half, and there are far too many other things to focus on. These are things that can be addressed over time post-launch.
* @jaspervdm to open issue and add 'help wanted' tag.
* @davidburkett has been working on a C++ based windows node that's targeted to be ready for mainnet. If there's a win-based miner that's working in time that can be integrated, it can be included.

### 6. Pull request review process
* Existing process: Complex PRs need one review, trivial ones don't.
* The entire current code base should not be trusted to be honest, which might be aided by peer review.
* However, we have a lot of trivial merges still and we don't want to slow down progress with bureacracy, but as we get closer to mainnet, it's still good to agree on some procedures.
* _igno:_ So the question is whether a trivial change adds much to that overall risk calculation, and at this point I think the cost of reviewing all of them would outweigh the benefit.
* Agreed new process:
   1. Trivial PRs can be directly merged
   1. Non-trivial PRs need at least one review
   1. Identified consensus-touching PRs need 2 reviews
   1. Igno stops committing straight in the repo, even once in a while
 * Supporting libs will not always get the same scrutiny as grin commits. (Example tromp's cuckoo repo).

### 7. Other questions

None

**Meeting adjourned.**