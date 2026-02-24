# Meeting Notes: Governance, November 06 2018

Governance meeting held Nov 6 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5be1ac75f25a725338fdf19a). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
_Some joined 1h into meeting as a result of time zone confusion:_
* catheryne_n_twitter
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mably
* quentinlesceller
* runcrypto-michael
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/5) accepted, with some changes to the order.

### 2. Action point follow ups from previous meetings

* [Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20181023-meeting-governance.md) has mainly been acted on, with only risk management lacking sufficient progress.

### 3. Grincon
* Not much progress on [auctions](https://github.com/mimblewimble/grin-pm/issues/9) for Grincon.
* Sponsors progressing better, one confirmed and two additional parties had shown interest.
* Attendance on the meetup event is capped out, and the guest list is filling up as well. It's expected to be busy, not all who have marked attending will actually show up. Anyone who wants to ensure a spot should ge there early.

Action points:
* [X] Side note for @lehnberg to track adding support for ethereum donations to the project.

### 4. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* Nearly 25% progress towards funding.
* The 10% markup that OSTIF charges for handling crypto is less than ideal. Yeastplume has offered to handle the fiat conversion through his company.
* Discussion on security audit process: We put together a brief and have companies pitch for the business. Offering a quote and a description of their approach and deliverables. There are multiple criteria we should select on, such as: availability, previous experience, price.
* Kudelski, Quark, x-41, and Trail of Bits shortlisted for pitching for the work from a generic brief.

Action points:
* [ ] @yeastplume to check with accountants about the logistics of being the contracting entity that also pays in fiat to the security companies.
* [ ] @lehnberg to put together a first draft of security brief in time for next meeting.

### 5. Governance to-do's ahead of mainnet
* Aside from current open issues such as Audit, Mission, Website design, it would also be good to improve the actual content of the website. Allowing new users to be onboarded better, some status info, tools like wallets and mining pools. In style of https://getmonero.org or https://bitcoin.org/en/.
* If there's anthing else anyone is feeling is missing prior to mainnet in terms of governance, they can raise this as an issue on /grin-pm or in a forum post.

### 6. Mission statement
* [Forum post](https://forum.grin.mw/t/help-us-write-grins-mission-statement/1114) discussing the topic.
* Discussion on whether the project should describe itself as 'anarchic', the meeting thought not. More like following the open source philosophy of development (bazaar-style).

### 7. Risk mgmt brainstorm
* Council members in particular should complete the risk assessment: https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming
* All members of the community are welcomed to participate.

### 8. Proof of Work update
* _Ignopeverell:_ Not much left on the governance side, most of what is left is to implement cuckaroo so that it's well specified.
* _Tromp:_ 
   * I expect to have a cuckaroo solver implemented next week.
   * I worry that cuckatoo asics will be hard to make with very high bandwidth requirements. The risk is that ASICs take several seconds on cuckatoo32 which hurts progress-freeness and will take longer still on cuckatoo33. But we really don't know until we see what comes out after launch
      * _Ignopeverell:_  We can reevaluate after 6 months but ASICs being too slow isn't something anyone had much to worry about before.

### 8. Other questions

None
