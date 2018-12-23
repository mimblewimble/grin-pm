# Meeting Notes: Governance, December 18 2018

Governance meeting held Dec 18 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c190b8641637902414bf6f4). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* catheryne_n_twitter
* davidburkett
* dewdeded
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg (joined for 2nd half)
* quentinlesceller
* tromp
* umma08
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/26) accepted, with additional other points "Grincon.us update" & "genesis message" added.

### 2. Action point follow ups from previous meetings

[Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20181204-meeting-governance.md):
* [Risk management brainstorm:](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming) Council members **@yeastplume** and **@antiochp** have yet to complete the risk assessments.
* Actions on **@burrata** to crowd-source post mainnet priorities and document current decision making process have yet to be completed.

### 3. POW
* @tromp's Cuckaroo CPU miner not yet done. 
* Discussion around naming conventions:
   * CuckARoo: ASIC Resistant
   * CuckAToo: ASIC Targeted
* Reminder to all miners to document performance using the [GPU mining stats](https://github.com/mimblewimble/docs/wiki/GPU-Mining-Stats) wiki page.

### 4. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* _Catheryne:_ Quarkslab cannot start until after Jan 15 and need extra days to familiarize themselves with the code. Given that, I  recommend you finish the libsecp audit and then we put it out for everyone again afterwards.
* libsecp audit is being by done by someone very well known in cryptography community, still not fully confirmed if they can be revealed.
* **Agreement to go back to more firms, while the libsecp audit proceeds, and then reevaluate next year.**

### 5. Mainnet planning
* Milestone: https://github.com/mimblewimble/grin/milestone/4
* Little less than a month to go, nothing anticipated to block a release, give or take a few days. (But never say never)
* Aim to have final testnet out this week, mirroring mainet closely.
* Igno has prepared a release script that will generate the genesis block and publish it throuch committing it to the repo, where everyone do a pull and rebuild. Genesis timestamp should be 30 min in the future roughly.
* For bitcoin block, 3 different bitcoin APIs are queried for the last block, and check they return the same. The script pauses before committing anything for Igno to validate the orphaning status.
* _davidburkett:_ Since your genesis utility is modifying code anyway, can you just have it write the full bitcoin block header to a code comment? This would address any orphaning worries.
   * _igno:_ Yes, assuming we can easily record that we could do that.

### 6. Mission statement

* https://github.com/mimblewimble/grin-pm/issues/27 is a good start, but we should try to narrow it down even further, ideally to 3-5 statements. The shorter the list to vote on, the better. 
* General sentiment to tone down the missions a bit, some are too inflated and self-important.
* Any particular preferences on the mission statement, comment on the issue.

### 7. Website
We have a new website that was finally redesigned. There's still definitely space for improvement, both with some minor cleanups and improvements on content. The website is published straight from https://github.com/mimblewimble/site so if you have improvements in mind, feel free to open some PRs.

### 8. Risk mgmt brainstorm
* Blocked until council members complete [risk assessments](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming).

### 9. Other questions

#### 9.1 New channel 'grin-trading'

* There's now a #trading channel on the [Grin Keybase team](https://keybase.io/team/grincoin).
* Purpose to faciliate OTC trading and price discussions.
* Start with keybase for now, if the main Gitter channel still ends up hosting these discussions, we may also create a dedicated Gitter channel, but no need at this stage.

#### 9.2 [Decision log](https://github.com/mimblewimble/grin-pm/issues/30)

* All were in favour of it's introduction.

#### 9.3 Rescheduling of meetings

* Next dev meeting moved to: Dec 27
* Next governance meeting moved to: Jan 3

#### 9.4 Grincon.us update
* New [website](https://grincon.us)
* 50% of tickets have sold out, 2.5 weeks after announcing.
* Any help for getting sponsors are welcomed.

#### 9.5 Genesis message
A couple of suggestions floated
* `15/Dec/1890 The Right to Privacy`
* `tuned to a dead channel`
* `i solemnly swear I am up to no good`

No decisions made.


**Meeting adjourned.**
