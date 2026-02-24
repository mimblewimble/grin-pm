# Meeting Notes: Governance, December 04 2018

Governance meeting held Dec 04 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c0696ba3f503110362491cf). Meeting lasted ~ 1h 40 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* burrata
* catheryne_n_twitter
* hashmap
* ignopeverell
* jaspervdm
* lehnberg
* phooton
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/22) accepted, with 'Voting feature' added as a second other question.

### 2. Action point follow ups from previous meetings

[Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20181106-meeting-governance.md):
* [Risk management brainstorm:](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming) Council members @yeastplume, @hashmap, and @antiochp had yet to complete the risk assessments and were named and shamed.

### 3. POW
* Questions that were raised in the latest dev meeting: Do we support Cuckaroo29+? Do we support low-mem GPUs?
* The answers to both those questions are unequivocally: No.
* _igno:_ This should not be a surprise: it's always been this way. If you wanted to influence this decision, 3 months ago was the time.
* Cuckaroo29 will be the only AR algorithm for mainnet launch, with an approximate memory requirement of 7-8GB.
* Miners can document performance using the [GPU mining stats](https://github.com/mimblewimble/docs/wiki/GPU-Mining-Stats) wiki page.

### 4. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* Current audit funds: ~ 10.4 BTC, 0.8 ZEC 
* No firm confirmed as of the meeting.
* _igno:_ someone with very good reputation in the cryptography space (not 100% I can name them yet so I won't) has also been commissioned to look at our fork of libsecp. It won't be a full audit with all the bells and whistles of an auditing company with it should still be a deep code review. This was generously donated to us by a kind invidvidual.
* As for other firms, quote came in from Quarkslab, which was the only firm that was ready to start immediately.
* @catheryne to confirm they accept BTC payments, and if not, @yeastplume is ok to handle payments/contracting via his company.
* With that in mind, Quarkslab would then start with 3-4 grin crates listed in the [reduced scope](https://github.com/mimblewimble/grin-pm/issues/20). 
* **Agreement for Catheryne to action Quarkslab immediately.**

### 5. Mainnet planning
* Milestone: https://github.com/mimblewimble/grin/milestone/4
* Multiple must-haves left, but not as critical as those that have been cleared already.
Bottom line is we're more or less ready.
* Genesis block with content in it is not supported yet, Igno working on introducing support this week.
* Discussion around auctioning a section of the genesis coinbase. Meeting in generally was against this, opting for keeping things simple and uncontroversial for launch. One notable detractor was @antiochp who was in favour of auctioning off some small amount. The current position is that we will not do this. 

### 6. Mission statement
* _lehnberg:_
   * No update, but the thread is active, which is good. I’ve deliberately been hands off, but will start to engage in time for the next meeting. 
   * Will try to comment on some stuff, round up a couple of the general themes and proposals, and see what kind of sense we can make of it.
   * Let’s target the next governance meeting to try to settle the general direction. Keeping in mind that we’ll mostly have to agree on what we all do not at least disagree about.
   * I will communicate the process to the forum thread.

### 7. [Website design](https://forum.grin.mw/t/help-me-design-and-add-content-to-our-site/1035/)

* Decision to move forward with JollyGrin's (GrinNinja) white design, convert to Jekyll, and release. 
* And then PRs will be accepted for improvements.

### 8. Risk mgmt brainstorm
* Blocked until council members complete [risk assessments](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming).

### 9. Other questions

#### 9.1 Goals & Priorities post mainnet

* GIMP Grin Improvement Proposal template structure and process.
* * Current focus of core team is getting mainnet out, which is just another development milestone.
* People wanting go get involved can always attack the [open issues](https://github.com/mimblewimble/grin/issues?q=is%3Aopen+is%3Aissue+label%3A%22help+wanted%22). 
* **burrata** to:
   * [ ] Begin crowd-sourcing proposals for what should be post mainnet priorities.
   * [ ] Attempt to improve documentation structure.

#### 9.2 Voting feature

* _bladedoyle:_ When there is a contentious decision to be made where both paths forward are reasonable but different, how will the decision be made?
* _igno:_ Current process: Voice your concern, issue or opinion, make sure it's heard, and then either developers or the council will see if they want to work on it or not. You can also decide to work on it yourself and gather feedback and if it's sensible and doesn't break anything badly it'll get merged.
* [ ] **burrata** to document findings on current decision making process from an external perspective. Possibly add it as an addendum to CONTRIBUTING.md, but can begin as a wiki page. 
* @lehnberg & Igno to support, once there's a wiki page or a gist.github.com to review.


**Meeting adjourned.**
