# Meeting Notes: Development, Sep 03 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d6e802dfda04e4c9d67650b). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- davidburkett
- hashmap
- jaspervdm
- j01tz
- kargakis
- lehnberg
- m4dw4x
- mcdallas
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_ So as far as the past couple of weeks, steady progress as always. @antiochp has been MMR-fighting, particularly chasing down an invalid root bug as well as optimising rewind behaviour. @tromp has been folding photon's improvements into his solver, and much discussion has been going on regarding how we'd ultimately like to deal with transaction exchanges. As per usual these days, my work has mostly been on the wallet API, and happy to say the lifecycle work is nearly complete, just a few more functions I'm working on there then I can move on to other things.
* _antiochp:_ Yeah we think we have the last of those issues resolved now with [mimblewimble/grin#3017](https://github.com/mimblewimble/grin/pull/3017). Thanks to @garyyu and @j01tz for tracking this one down.


### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/183) accepted.

### 3. Action point follow-up

Version 2.1.0 planning is [underway](https://github.com/mimblewimble/grin-pm/issues/179), and has been actioned.

Communications for the second hard fork has not yet been actioned. 

### 4. Security review status

* _j01tz:_ I heard back from Coinspect at end of last week. All fixes look good, they just want to double check one issue. Expecting an update from them any day now.  Hopefully we can have everything published soon.
   * _lehnberg:_ Fantastic. What’s the procedure there? Is there a press release and  blog post? Do we do it jointly?
   * _j01tz:_ Yes it would be a coordinated release/blog post. was going to talk with Juliano about it more this week and get it synced up with team on this side to determine things like release dates, final content review etc. We have already discussed this a bit. I will make sure to bring any of those details here before moving forward to publishing anything.

### 5. Status of open RFCs

#### 5.1 Variable size kernels

[mimblewimble/grin-rfcs#21](https://github.com/mimblewimble/grin-rfcs/pull/21)

* _yeastplume:_ This will be merged next week if no major objections.

#### 5.2 Transaction building

[mimblewimble/grin-rfcs#24](https://github.com/mimblewimble/grin-rfcs/pull/24)
[mimblewimble/grin-rfcs#25](https://github.com/mimblewimble/grin-rfcs/pull/25)

* _yeastplume:_ There are two new drafts put up by @DavidBurkett regarding transaction building that are worth everyone considering in detail. Also, if anyone hasn't there's another wallet subteam channel dealing with this topic: grincoin.teams.wallet_dev#tx-building So, very much worth catching up with the conversation in there, I think this is the single biggest hurdle that grin will need to face before even thinking about wider adoption


### 6. Release planning

* _yeastplume:_
   * Scope: https://github.com/mimblewimble/grin-pm/issues/179
   * Node milestone: https://github.com/mimblewimble/grin/milestone/14
   * Wallet milestone: https://github.com/mimblewimble/grin-wallet/milestone/5

* _lehnberg:_ 
   * Target date for beta: Week of Sep 30
   * Target date for release: Week of Oct 14

_The meeting agreed to the proposed dates._


### 7. Other questions 

#### 7.1 Hard fork timelines

* _lehnberg:_ Just a note that the Hard fork is around the corner, any consensus breaking ideas or ideas that makes sense to be rolled out to the network at once
should probably be put into RFCs today.
* _tromp:_ does Cuckaroo tweak require a RFC as well?

_The meeting agreed that Cuckaroo tweaks do not require RFCs and should be carried out the same way as the process established in the first hard fork._

**Meeting adjourned.**
