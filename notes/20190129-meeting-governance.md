# Meeting Notes: Governance, Jan 29 2019

Governance meeting held Jan 29 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c506ab18aa5ca5abf4eee12). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bitcoinpizza
* catheryne_n_twitter
* davidburkett
* dewdeded
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* quentinlesceller
* raghavsood
* rentenmark
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/46) accepted.

### 2. Action point follow ups from previous meetings

[Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190103-meeting-governance.md):

* **Decision making process:** No update. 
* **Decision log:** [Implemented](https://github.com/mimblewimble/grin-pm/issues/30)
* **@yeastplume to add status section to end of each point of libsecp audit:** Not done yet, expected to be done by next meeting.
* **@lehnberg to create request for proposal for how to handle promotion of other projects:** [done](https://github.com/mimblewimble/grin-pm/issues/52)
* **New website design:** Merged.
* **Grin stack exchange:** Not done. Tracked in [an issue](https://github.com/mimblewimble/grin-pm/issues/48) now. Discussed in other questions below.
* **Create Communities wiki page:** Not done
* **Create Events wiki page:** Not done

### 3. POW
* Discussion on [Ethical Mining Policy](https://forum.grin.mw/t/innosilicons-grin-asic-miner-or-paper-tiger/3241/2):
   > An ethical policy adoption, mandated by the Coin devs and community towards setting the right rules for manufacturers early in to ensure that the coins’ network is not rendered un-mineable by its community of miners and supporters. The disclosure of actual and factual quantities of ASICS being produced for every batch, quantities shipped as well as a full transparent disclosure of intent to self mine and what percentage or number of ASICS allocated to said practice. This helps miners buying into new ASICS, as well as the protection through policy for asic makers to ensure protection to the coin network with factual transparency enforcement.
   * _igno:_ Half of it is unenforceable. The part that's enforceable would be with hard forks, which we've discussed aplenty we're not doing and would only force ASIC manufacturers toward more secrecy. We can definitely encourage good practices, help out good actors and point out bad ones however. But I think we tend to do that regardless as part of orienting and policing this project, we're usually not too shy on our opinions. We can definitely start with a page listing what we'd like to see, more as an encouragement, and add manufacturers that are close to those wishes there.
   * _hashmap:_ Instead of restricting, we could encourage good behaviour, like a "fairtrade logo" or something.

### 4. [Security audits](https://github.com/mimblewimble/grin/issues/1609)
* _catheryne_n_twitter:_ I have 3 updated bids that include the wallet crate now. I will send the proposals, including my own recommendations, to Igno that can then share w/team. Once I have received a ranking, I will then proceed.


### 5. Dev fund

#### 5.1 Fund spending transparency report
* _lehnberg:_ Questions have come in about our spending, which right now is non existent. It probably makes sense to make that clear however, by by having a spending transparency report, showing money in and (no) money out.
* Yeastplume's campaigns are separate and should not be part of that. 

##### Decision: Fund transparency report
To be created by @lehnberg.

#### 5.2 Decision: Donation addresses
* @ignopeverell to run a https listener for the developer fund.

#### 5.3 Yeast funding
* $8 received since Grincon.us.

##### Decision: Yeastplume fund raise chase
@ignopeverell to send another email and post on the forum to raise funds.

### 6. Promotion of other projects

* _lehnberg:_ I believe we received a fairly big donation yesterday or so. Not sure whether it was part of fair mining or not. But thought it migt be nice to create a new section related to our “friends” section that transparently shows which company/entity donated to the dev fund (and what amount) as part of their ongoing pledge to do so. Maybe its own page, as the list could get long (hopefully). Commending those who fulfil their pledges about donating to us as part of their ongoing operations, and we need to be transparent about what we receive, from whom etc.
* Additional proposals could be made in the [relevant issue on grin-pm](https://github.com/mimblewimble/grin-pm/issues/52).

### 7. Exchange integrations

* _lehnberg:_ https://github.com/mimblewimble/docs/wiki/Exchange-A-Questions have now been answered and submitted.
[General exchange FAQ](https://github.com/mimblewimble/docs/wiki/Exchange-FAQ) I’ve not had a chance to touch, last edit was in december by @kargakis. Seems like exchanges are neverthless able to list us. So doesn't seem like the most pressing problem to tackle.
   * _igno:_ looks like it, and if there are issues they face we can help with beyond that, they're welcome to keep asking.

### 8. Website

 New website looks great (shout out to @nijynot), we’ve dicussed some more content to add in this meeting already related to funding and spending.

### 9. Risk mgmt brainstorm
* Only yeastplume left to complete [risk assessment](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming). 

### 10. Other questions

#### 10.1 Grin stackexchange
* Need >200 rep to propose a site.
* We've plenty of good candidates in community that could make the proposal, like mcdallas, rentenmark, or raghavsood.
* `grin` or `grincoin` would be suitable names.
* _rentenmark:_ The alternative to having your own site is a tag in some other SE site. Basically for low question volume topics it is often claimed that they're better off as tags in some other SE site.
   * _raghavsood:_ The closest one is bitcoin.SE, and although it is open to non-bitcoin questions, once a coin deviates too much it tends to be better off on its own site.
* _raghavsood:_ I can outline the SE process for those unfamiliar with it quickly:
   You make a proposal on Area51, which includes a justification as to why its own SE site is good. You also need to provide (anyone can provide, not just the person who proposed the site) with a list of sample questions (doesn't need answers, just the questions). Once enough sample questions with enough upvotes exist, the site moves into a beta phase. During the beta, you have to hit a certain number of metrics (questions per day, % answered, number of users with high rep (regular users), traffic, etc.).
   If the site is receiving enough interest for a few months/around a year, it will move from beta into a full site. If not, it will shut down after the beta.
   During the area51 proposal, you also need enough SE users to commit to/support the proposal before it can go to beta, which can take a few months.
   In the meantime, it may be worth pointing users to Bitcoin.SE's grin tag from the grin forums/main site.
   There's already a [tag for Grin](https://bitcoin.stackexchange.com/questions/tagged/grin) there. Bit sparse on questions, but I suppose it's a matter of letting users know where to ask.

##### Decision: stackexchange approach
We steer questions toward https://bitcoin.stackexchange.com/questions/tagged/grin and in the meanwhile we can work on a mimblewimble/grin specific site, which will take a few months even if it moves fast. @mcdallas to lead on this.

**Meeting adjourned.**
