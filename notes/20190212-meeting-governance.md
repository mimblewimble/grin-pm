# Meeting Notes: Governance, Feb 12 2019

Governance meeting held Feb 12 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c62e0c84003460b2d3b1791). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* catheryne_n_twitter
* davidburkett
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* numecca
* noble_block_twitter
* quentinlesceller
* rw258906
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/58) accepted.

### 2. Action point follow ups from previous meetings

[Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190129-meeting-governance.md):

* **Decision making process:** No update. **@hderek** has however done an extensive job [documenting grin governance](https://medium.com/blockchain-capital-blog/grin-governance-a-novel-approach-154aca07291b).
* **@yeastplume** to add status section to end of each point of libsecp audit: [Done](https://grin-tech.org/audits/jpa-audit-report.html).
* **@mcdallas:** [StackExchange created](https://area51.stackexchange.com/proposals/121344/grin), needs at least 60 people to follow the project, with 40 proposed questions that have 10+ upvotes in order to move to the next stage.
* **lehnberg:**
   * I’ve updated [News & Channels](https://github.com/mimblewimble/docs/wiki/News-and-Channels) on the wiki to have communities listed more clearly;
   * Also created [Events](https://github.com/mimblewimble/docs/wiki/Events), where anyone can list (and promote) their grin meetup.
   * Fund spending transparency report not created yet, we have not any spends, but still thinking about the right format for it. **@rw258906** has offered to help as they have experience doing transparency reports for other orgs.
* **ignopeverell:** https listener for donations has been created. Only 0.61 grins in test donations so far.


### 4. [Security audits](https://github.com/mimblewimble/grin/issues/1609)
* Everyone in the council has been distributed a synopsis with proposals by Coinspect, Quarkslab and NCC.
* **catheryne_n_twitter:** Sergio has confirmed he would participate.
* **ignopeverell:** NCC is really out of our price range and ridiculously high compared to the others
* **tromp:** I recommend coinspect based on their researchers' long experience with finding exploits.
   * **ignopeverell:** Someone who was part of the sec research community also looked at the proposals and thought that Coinspect had been taking a better look at the work to be done.

#### Decision: Security audit firm
* The meeting unanimously decided to proceed with Coinspect's offer.
   * Competitive quote
   * Well reviewed by other projects (Zcash)
   * Pitch reviewed by security researcher, said it showed most effort out of the three companies.
   * Accepts payments in crypto.
* Work to be delivered is as per previous agreed [minimal scope](https://github.com/mimblewimble/grin-pm/issues/20).
* **catheryne_n_twitter:** to proceed with getting a contract drafted. 

### 4. Dev fund

#### 4.1 Misc spends
* For example [forum costs](https://github.com/mimblewimble/grin-pm/issues/58#issuecomment-460750620)
* Agreement to revisit once it becomes more of an issue. 

#### 4.2 Promotion of donations

* **yeastplume:** We should be keeping the fundraising pressure on at all times, not just when there's an immediate need or campaign. 
   * **ignopeverell:** We could do a monthly summary with said reminders.
   * **lehnberg:** If there’s a monthly / quarterly transparency report produced, we could highlight the donations received in the same period.

### 5. Promotion of other projects

* [Relevant issue on grin-pm](https://github.com/mimblewimble/grin-pm/issues/52), there are some proposals there, other suggestions are welcomed.
* **jaspervdm:** We could implement the ["leaderboard"](https://github.com/mimblewimble/grin-pm/issues/52#issuecomment-462708272) proposal until we think of a better idea, maybe.
   * **ignopeverell** I do think the leaderboard is nice and a good idea, it's just a partial answer to the problem (see the objectives as outlined in the issue).
   * No objections to removing company logos from the "companies" section on Friends of Grin in favour of instead displaying them in the leaderboard. URL link should still remain however.   
   * There was general support for implementing the leaderboard as a way to improve on Friends of Grin, but further discussion to be taken offline in the issue (and subsequent pull request) to iron out the details.
* More ideas regarding the objectives in https://github.com/mimblewimble/grin-pm/issues/52 are welcomed.

### 6. Exchange integrations

* _lehnberg:_ No news from the teams that had the questions, which I think is good news. Bittrex announced support over the weekend. I think we can remove this topic from future governance meeting agendas unless we have new developments.

### 7. Risk mgmt brainstorm
* All council members have completed the [risk assessment](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming). 
* **rw258906:** So went over everything and things look great, we are down to a hand full of risks that need to be addressed.
   * Key risks are: 5, 6, 7, 16, 17, 20, and 22 (order is numeric and not based on importance)
   * So the next step is to have a discussion and determine how to address the main problems. The best way to do this, in my opinion, is for me to talk with the experts and then we will post something online and open it up for wider discussion. They had the highest expertise on the subjects in question, I'm not excluding the rest of the team, I just want them to give their opinion about the risks firs and ultimately they should be leading the team in addressing the risks.
   * Steps involved:
      1. Determine the best strategy for the risk, i.e.: accept, avoid, mitigate, or transfer;
      2. Justify why we pick that strategy;
      3. Open up for debate;
      4. Create the plan.
   * I propose we handle the first stages in private (lets create pages for each) and then come back discuss publicly next meeting?
* Meeting agreed with the approach.

### 10. Other questions

None

**Meeting adjourned.**
