# Meeting Notes: Governance, Nov 05 2019

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5dc18e91e886fb5aa25b388f). Meeting lasted ~ 45 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* 0xb100d
* antiochp
* DavidBurkett
* j01tz
* lehnberg
* paouky
* quentinlesceller
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/210) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Budget display on site?

* _lehnberg:_ Now that we’ve got a new website, I wonder a bit about that budget display on website action point
What exactly do we want to display there? Is it some visualization of spends from spending log? or future forecasted spends as well?
   * _yeastplume:_ Surely a link to the [budget docs](https://github.com/mimblewimble/grin-pm/tree/master/financials) would suffice?
   * _lehnberg:_ We also got transparency reports (Q3 is overdue, action on myself to complete for next meeting). So yeah, I guess maybe a “financials” sub-section of sorts with links to relevant stuff in the GitHub section?

#### 2.2 Binaries download/onboarding flow

* _lehnberg:_ See here https://grin.mw/community. I would suggest we remake “Community” into “Download” and list:
   * Download instructions for official release of grin & grin-wallet, maybe with homebrew instructions etc now that this is available.
   * Community wallet projects that are more user friendly below that section, with indication of different OS/platforms supported.
* _yeastplume:_ absolutely, sounds like a good idea. Criteria for inclusion: Open source + no blindingly obvious reasons to believe they're not genuine efforts?
   * _lehnberg:_ Sounds good to me.
* _quentinlesceller:_ Yeah that would make sense. Plus a big get started on the front page would be good too, a la https://z.cash/get-started/. 


### 3 [Open research problems](https://github.com/mimblewimble/docs/wiki/Grin-Open-Research-Problems)

* _lehnberg:_ I took a quick pass earlier today. Clarified asynch transaction building point, added Erlay as a topic. I think we should add another topic, something to touch on the recent advances in zk protocols, Halo and SuperSonic in particular. Not sure what the topic should be, but it would be interesting to have these evaluated to see if there’s anything of them that would be relevant to us. I believe they were what partly triggered the initial proposal of hiring a cryptographer.
   * _quentinlesceller:_ Something like "Research on novel ZKP schemes"? or "Investigate novel ZKP primitives".
   * _lehnberg:_ Yeah something like that. Want to add it?
   * _quentinlesceller:_ Ok adding to my todo.

* _DavidBurkett:_ Private payment channel hubs would be worth adding too. Something like tumblebit. I'll add it. 

### 4. Website

Covered as part of section 2 above.

### 5. Grincon1

* _lehnberg:_ [Current schedule](https://forum.grin.mw/t/grincon1-tentative-program-schedule/6384/) looks relatively solid now so might do good by putting it on [the website](https://grincon.org)?
   * _quentinlesceller:_ Yes.
* _lehnberg:_ Speakers we’ve reached out to, handed out slick presentation templates design courtesy of @nijynot. It’s been relatively quiet in the keybase channel for grincon, but yeah we’re moving forward. I reached out to one of the sponsors to confirm their donation. Would be good to get more sponsors of course, so if anyone wants to help spread the word, here are the details: http://grin.mw/grincon_sponsorship

* _Paouky:_ What do you plan to do with money from sponsors?
   *  _lehnberg:_ Current plan is to have them go to grin general fund.

* _0xb100d:_ TMGOX is sending stickers and grinoires to grincon1.
   * _quentinlesceller:_ Nice. Can’t wait to see the grinoire :)

### 6. RFC & Sub-teams update

#### 6.1 Sub-teams

* _lehnberg:_ No moderation team, the lead on that is still absent a bit. Anyone who wants to get involved in moving moderation sub-team forward (and do work on this) is welcome to DM me.

#### 6.2 RFCs

* _lehnberg:_ Current status: https://github.com/mimblewimble/grin-rfcs/pulls; there's a bunch of development ones are open but lacking a shepherd. Being a shepherd involves herding cats to the point where some kind of loose consensus decision arrives, or doesn't. You’re not really making decisions, as much as prodding people to share input/opinion and drive things forward. It's defo not good practice to shepherd one's own RFC.

_After some discussion, the following shepherds were agreed and assigned:_

   * [Node API v2](https://github.com/mimblewimble/grin-rfcs/pull/28) - @lehnberg;
   * [Enable Faster Sync](https://github.com/mimblewimble/grin-rfcs/pull/29) - @DavidBurkett;
   * [Improved Wallet State Mgmt](https://github.com/mimblewimble/grin-rfcs/pull/30) - @quentinlesceller;
   * [Tor transaction building](https://github.com/mimblewimble/grin-rfcs/pull/24) - @yeastplume;
   * And [Payment Proofs](https://github.com/mimblewimble/grin-rfcs/pull/31) - @antiochp.

* _yeastplume:_ We probably want to aim to have these done and accepted by the end of this month. When is feature-complete for V3 supposed to be?
   * _lehnberg:_ Not sure we’ve set dates for that, see timeline here: https://forum.grin.mw/t/grin-v3-0-0-hard-fork-upgrade-jan-2020/6036 Might be good to tighten that timeline in the dev meeting on tuesday, and have firm dates on all those milestones.
   * _yeastplume:_ Yeah, let's do that.

### 8. Other questions

None.

**Meeting adjourned.**
