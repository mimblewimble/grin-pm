# Meeting Notes: Governance, May 21 2019

Governance meeting held May 21 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5cd19dc12e2caa1aa6242bb3). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* chisa0a
* davidburkett
* emptykeg
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* quentinlesceller
* tromp
* yeastplume


_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/134) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Status of misc. /site improvements

* _ignopeverell:_ I don't think anything new was done to the site, unless I missed something.
   * _quentinlesceller:_ I could tackle the onboarding the issue this week.  

### 3. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* _ignopeverell:_ We got the full report and had a few back-and-forths since then with Coinspect. They will update the report and review as we fix issues, several I believe have already been fixed. I'm personally satisfied with the work performed, the findings and report were solid. I think we should pay them the remainder of what we owe them.
   * _kargakis:_ Will coinspect make it public, i.e. issue a press release, that they worked on the audit?
      * _lehnberg:_ Dunno, we can ask them about this.  

#### Decision: Coinspect payment
The meeting agreed to pay the final 10.458 BTC installment for the audit work conducted by Coinspect. @lehnberg to obtain an address and also ask about jointly announcing the audit results.
 
### 4. Funding status

#### 4.1 2019 Budget
* _lehnberg:_ Relevant [issue](https://github.com/mimblewimble/grin-pm/issues/130). I insterted placeholder items in the budget to stimulate a discussion. Haven’t received much feedback or comments, would be great to have some more.
   * _kargakis:_ It would be good to be consistent with how we mark payments: If they are one-off, they should be marked as such. 
      * _lehnberg:_ I agree, I should change that. 
   * _antiochp:_ Regarding my own situation, I am likely to be good for another 3 months, but I have no firm plans out beyond that.
      * _lehnberg:_ Understood.   
   * _ignopeverell:_  Perhaps different color for cost already incurred?
      * _lehnberg:_ Makes sense.
  * _ignopeverell:_ We want all the devs we can get, but we're cheap and poor. We need help, but you shouldn't think about money too hard. There is still a ton of things to do, core things move slower but we have plenty of space for bug fixes, more user-friendly stuff, QoL, tests, etc.
     * _lehnberg:_ It’s good to forecast, to get a sense of our current burn rate and also our runway. But maybe it’s pointless to do so? we can also be completely ad hoc and reactive, and just say “yes, we need more donations” and “yes, we need more developers" - “please contribute".
     * _ignopeverell:_ Exactly. Don't think the budget is pointless though, it's just a good plan to have.
     * _yeastplume:_ It's hard to put out a reasonable budget and cash flow predictions when there's zero regular income.
 * _lehnberg:_  I just find it hard to say we need money if we got a big donation and can’t explain how we plan to use it. Even if the plan is wrong (doesn’t matter), it’s still better to be able to say “yes, we got a donation, but it will last us until x approximately, and then we’ll need more. so we need your help!" 
    * _yeastplume:_ Yes, so an 'indicative' budget is good to have and maintain, if lightly.
    * _ignopeverell:_ Budget is just setting up a budget, not deciding all that's on it. We're not a company, we're a collective, it takes more time to get to those decisions and that's a good thing for this project

_[... truncated]_

* _lehnberg:_ Okay so this was really helpful. I think I got an idea for the level / direction of the budget. We think a budget is good to have, but it should focus on existing/known spends, and not plan for future undecided items. It helps us keep track of our existing burn rate, rather than projected burn rate. I’ll work on it some more and circulate here again. And then we can look at moving it away from google sheets.
   * _ignopeverell:_ Yes, and we can always add something to the discussion at some point that may (or may not) find its way into the budget.

_Meeting agreed._

### 5. Promotion of other projects

* _kargakis:_ We could consider adding a page that includes all promoters in the [grin presentation template](
https://github.com/mimblewimble/grin-pm/tree/master/presentations/templates), then anyone presenting can potentially choose to include it in their slides and say a good word about the sponsors.
 
### 7. Grin evangelism

* _ignopeverell:_   I haven't heard anything new on Grin evangelism, other than meetups that keep happening like the one organized by @hashmap in Moscow. If you're thinking about doing a meetup in your own region, it's a great way to get more people interested.


### 8. Other questions

#### 8.1 Wiki access control 

* _chisa0a:_ Some troll deleted the wallet docs last week. Prehaps we should set up some kind of access control? Even wikipedia has access control setup for a min threshold + reputation.
   * _ignopeverell:_ Yeah, unfortunately, that's not available in github yet. It's easy to find and restore any attacks though no?
   * _kargakis:_ Also, if one wants to help out, they can click Watch on mimblewimble/docs. Then every update on the wiki shows up in your activity. The deletion is obvious in the git history, the only problem is that you have to pull the wiki locally in order to see that.
* _chisa0a:_ Don't want to make a big issue of it if more experienced feel its a non-issue atm.
   * _ignopeverell:_ Indeed, maybe we wait until we have at least a few occurrences of this before we make any changes that can stifle contribution.

_Meeting agreed._

**Meeting adjourned.**
