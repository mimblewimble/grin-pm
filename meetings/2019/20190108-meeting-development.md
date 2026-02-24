# Meeting Notes: Development, Jan 08

Development meeting held Jan 08 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c34bb461948ad07e809efff). Meeting  lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* garyyu
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* newtownf1
* priori-incantatem
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
_igno:_ The past 2 weeks have mostly been fixes and small improvement as would be expected. We still have quite a few bugs to squash and small improvements to do, that keeps us busy. Most of the activity has been on the proof-of-work side, with
@tromp having added new solvers that can work in less memory and that has been integrated in grin-miner. The floonet relaunch also happened and went well, with none of the issues of the first launch.

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/34) accepted.

### 3. Action point follow-up
No action points reviewed.

### 4. Mainnet planning

* No additional points to raise on libsecp audit.
* _garyyu:_ I still can't 100% fix the connection exhaustion problem. 
   * _igno:_ Will take a look as well.
* Mainnet version: v1.0.0

#### 4.1 Mainnet release time
Process expected to start around 3PM UTC. It's expected to take an hour or two before genesis is out.

#### 4.2 Mainnet initial difficulty
Details here: https://github.com/mimblewimble/grin/issues/2121

#### 4.3 DNS seeds
* 4 DNS names for mainnet
* More IPs for those names to reference are needed but that will happen as people get their machines ready.

#### 4.4 Project readiness updates

##### 4.4.1 Exchanges
* A lot of exchanges have expressed interest and some are working on integrations.
* Announcements to come from the individual exchanges once they are ready. 
* Bisq introduced support: https://github.com/bisq-network/bisq/pull/2217

##### 4.4.2 Mining pools

* Grinmint: Ready for prime time.
* MWgrinpool: _bladedoyle:_ 
   * Overall, Im happy with the state of things:
      * Node stability seems good
      * Miner stability seem ok
   * Im mostly worried about:
      * wallet performance
      * last minute changes that are hard to adapt to or that I dont know about

#### 4.5 Mainnet launch dry run
* Agreement to run a small launch test among the developers ahead of the launch.

### 5. Post-mainnet planning

* v1.1.0: Bug fixes, small quality of life stuff, performance improvements.
* Leaves time to improve documentation.
* v2 api
* https://github.com/mimblewimble/grin-miner/issues/88

### 6. Other questions

* CPU usage on miner, possible degradation with multiple cards.
   * _yeastplume:_ 
      * Solution rate should stay the same with multiple cards, roughly.
      * perhaps `cpuload=1` should be the default now? We removed a large busy wait from grin-miner.
   * _igno:_ If there's an actual slowdown with many cards compared to one, we ought to get some numbers first.

**Meeting adjourned.**
