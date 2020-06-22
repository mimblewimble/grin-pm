# Meeting Notes: Governance, Jan 03 2019

Governance meeting held Jan 03 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c2e238cbabbc178b21faa19). Meeting lasted ~ 80 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* priori-incantatem
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/31) accepted, with the following points added under Other questions:
* Rescheduling of Jan 15 Governance meeting.
* Bikeshedding
   * Genesis block message
   * Currency symbol
   * Exchange ticker

### 2. Action point follow ups from previous meetings

[Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20181218-meeting-governance.md):
   * Decision making process documentation: No update
   * Mainnet prios crowd-sourced: No update
   * [Decision log:](https://github.com/mimblewimble/grin-pm/issues/30)
      * _lehnberg:_ The decision is that such a log would be good to have, and that it should be under `/grin-pm`. No log has been made yet, but PRs are welcomed.

### 3. POW
* @tromp has finished all solvers.

#### 3.1 GPU Memory reductions
* @tromp has also been busy working on implementing the [recent discovery of memory reductions](https://forum.grin.mw/t/gpu-mean-memory-reductions/1517) for the POW algorithms. Known minimum memory required now is 5.5 GB and 11 GB for CuckARoo and CuckAToo respectively. These have been merged into `grin-miner`.
* Further reductions are possible at the cost of performance and complexity. There are no plans on implementing those in grin-miner.
* _ignopeverell:_ In lieu of the discovery of lower memory requirement, there are no plans to change anything. 
   * **The right to make tweaks to CuckARoo remains however**, as has explicitly been communicated in the past.
   * If a change is necessary to keep it AR but eliminates some cards, I'd still be in favor of it.

### 4. [Security audits](https://github.com/mimblewimble/grin/issues/1609)
* JP Aumasson audit result has been [published](https://grin-tech.org/audits/jpa-audit-report).
   * [ ] **@yeastplume** to add status section to end of each point of audit.
* No news from other firms given the holidays.
* [X] Igno to update https://github.com/mimblewimble/grin-pm/issues/20.

### 5. Mainnet planning

* Floonet relaunched, no issues.
* Genesis block spent, no issues.
* In good shape for Jan 15, with no anticipated delays. 
* _tromp:_ we cannot easily test a cuckatoo32 solution easily on floonet.
   * _igno:_ hopefully not an issue.
* _mcdallas:_ Is there a time set for the 15th?
   * _igno:_ I'll announce one a few days before. The process should start around the time of these meetings and take an hour or two to do some checks and dry runs.

### 6. Mission statement

* _lehnberg:_ Last meeting we said narrowing it down to 3-5 statements would be good. This has not happened, if anything it feels like everytime I ask for the list to consolidate, we just get more suggestions. https://github.com/mimblewimble/grin-pm/issues/27 tracks most of them now.

#### Decision: 
   * [X] lehnberg to [create a forum poll](https://forum.grin.mw/t/vote-on-grins-mission-statement/1724) for all suggestions.
   * Poll will be non-binding.
   * Results will be discussed on the next governance meeting with the aim to reach a conclusion.

### 7. Website
* Pull requests are coming in for the website. Mainly clean up and fixes. 
* _lehnberg:_ Still not seeing a lot of action in terms of improving it. Either it’s generally looking really good, or nobody cares enough to improve. Or both.
   _igno:_ Or people don't necessarily think they can go and mess with the website entirely, or it's "good enough".

#### Decision:
   * Make link to ["improve this website"](https://grin-tech.org/page-contribution-howto) more prominent on the website.

### 8. Risk mgmt brainstorm
* Blocked until council members antioch and yeastplume complete [risk assessments](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming).

#### Decision:
* Deadline to complete scoring by end of January.

### 9. Other questions

#### 9.1 Rescheduling of Jan 15 Governance meeting
* Jan 15 Governance meeting moved to **Jan 17** at the same time 3PM UTC so as not to conflict with Mainnet release.

#### 9.2 Bikeshedding

##### 9.2.1 Genesis message
* _igno:_ I've tried to set something as the initial kernel offset sum and it broke things, not sure I'll have time to look too far into it.
   * _lehnberg:_ Can we agree to not have a genesis message? With the rationale that it just adds risk/complexity for no good reason? And we’re a lightweight/simple project so this is anathema to our ethos?
* **Meeting decided on not to include a message in the genesis block.**

##### 9.2.2 Currency code
* Proposals discussed: `GRIN`, `GRN`, `XGR`, `XGRN`, `XGN`
* [X] lehnberg to [create a forum poll](https://forum.grin.mw/t/vote-on-grins-currency-code/1720/) for all suggestions.
   * Poll will be non-binding.
   * Results will be discussed on the next governance meeting with the aim to reach a conclusion.

##### 9.2.3 Currency symbol
* [X] lehnberg to [create a forum poll](https://forum.grin.mw/t/vote-on-grins-currency-symbol/1726) for all suggestions.
   * Poll will be non-binding.
   * Results will be discussed on the next governance meeting with the aim to reach a conclusion.

**Meeting adjourned.**