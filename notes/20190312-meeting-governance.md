# Meeting Notes: Governance, Mar 12 2019

Governance meeting held Mar 12 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c87c9b3293ac75db5954568). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* catheryne_n_twitter
* crazymonkyyy
* davidburkett
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* kbielecki__twitter
* lehnberg
* nass769_twitter
* rw258906
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/71) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Fund spending transparency
* @lehnberg created income and spending logs, under [grin-pm/financials](https://github.com/mimblewimble/grin-pm/tree/master/financials).
   * If you notice that there’s a donation that’s not tracked by income_log.csv, feel free to open a PR for it!
   * This powers [hall of fame section](http://grin-tech.org/friends.html) by @nijynot.

* @hashmap raised a good question about whether @yeastplume's campaigns should be included in income and spendings. @yeastplume's funding has been handled by him directly, and if we include it under income, it would create an imbalance if we also don't include it under spending.
   * We see no reason to change how it's been handled so far. 
   * But at the same time, donations to @yeastplume campaigns should also be counted for inclusion to Hall of Fame. But it's not income, tracked in `income_log.csv`

##### Decision: Move out yeastplume funding from income_log

* move any references of yeastplume funding campaigns out from income_log, and into a new csv, that tracks funding that is not project income but that still should count for hall of fame.
* update Hall of Fame to read data from this csv as well.

#### 2.2 @antiochp funding

* Has not been processed yet, on @antiochp's own request.

* _antiochp:_ I'm able to announce that I have secured funding for (at least) 3 months from an external company (unable to say who just yet, but working on this). They're funding me to continue to work full time on Grin - with _some_ work exploring Confidential Assets (mainly R&D initially).


### 3. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* _catheryne_n_twitter:_ We have an executed contract and payment. No update from them yet, but their draft report is due 4/20.

### 4. CVE-2019-9195

#### 4.1 Network status

_ignopeverell:_: Still many that have yet to upgrade. I'm somewhat comforted by the fact that new installs are what matter the most for this vulnerability, but a faster upgrade cycle would be nicer. In about 4 months, everyone will have to upgrade regardless. Based on my seed I'd say about 50% are running v1.0.2.

#### 4.2 What went well

* _ignopeverell:_ I think the disclosure process went well, we were able to process it quickly, produce a fix, review and include it discreetly without too much problem. The fact that it was rather localized made that simpler as well. I think the upgrades themselves could be improved obviously, and perhaps communication around the waiting period, to track who has updated (or hasn't).

* _lehnberg:_ my call outs for what went well:
   * Our disclosure process worked.
   * We had a chance to prepare for the disclosure, and were ready to move on a fix immediately.
   * A first draft fix was ready in <24h 
   * The fix was patched to master in <72h

#### 4.3 What could be improved 

* _lehnberg:_ 
   * Our internal processes could be better defined in advance, i.e. what happens from the point of receiving a vulnerability and onwards. This is about what we do internally once we have this issue. how do we work, what’s our approaches, etc.
   * Our official policies about how to treat vulnerabilities might make sense to be published and announced in advance. So that our actions do not come as surprises to the community and wider ecosystem. This is more about what our philosophy is about vulnerabilities, to be shared externally. What we do, how we do it, do we disclose to others, when etc.
   * I think in the end, judging from the what seems to be a lack of backlash from the community, we didn’t handle it horribly. But it would be good to have this firmed up better in advance, to reduce the risk of mistakes.


#### 4.4 Questions

* Should we add another backup contact for disclosure?
   * Seems like having a third contact would make a lot of sense.
* Should we have an isolated small group working on a fix as we had or treat all core devs as the task force?
   * _lehnberg:_ This time we took a compartmentalized approach. Only those who needed to know, i.e. myself (receiving it initially) and then the devs that actually were working/testing knew what the vulnerability was.
   * _ignopeverell:_ I think it was the right approach, and I think we need to explain to those who aren't working directly on the vulnerability that it's not a trust problem.
   * _yeastplume:_ If it's established policy it should help with that. Also, the others can be told there is an issue and severity without going into detail.
   * _antiochp:_ I think we should agree on the compartmentalized approach and define it in the response docs, just so there is no confusion around how it works next time. I think the concern was more that we were making decisions on the fly.
* How do we handle disclosure to Grin forks?
   * _yeastplume:_ Not all forks are equal, because we don't necessarily trust any and all fork maintainers to behave responsibly with the info. Perhaps tiers of when we inform people?
* How do we handle disclosure to other Mimblewimble projects?

#### Decision: Review our security vulnerability process

1. Write a forum post outlining above (and other) questions. Solicit feedback and comments from the community.
1. Distill resulting discussion into a wiki document to be discuss in a governance meeting.
1. Adopt any changes into security policies in a future governance meeting.
1. Update our policy as required.



### 5. Treasury management

#### 5.1 Hedging/currency fluctuations

* General discussion around hedging and having a strategy to exchange to different crypto to avoid currency fluctuation risks.
* _garyyu:_ The Grin Dev Fund is not a purpose for “keeping”, it’s for spending.
   * _yeastplume:_ Yes, that is generally the plan, but we don't have all developers lined up for the next year, and we don't have anything like the stability to hire developers on expected cash flows. So the cash will have to accrue until such time as it can be doled out.
* _lehnberg:_ I could see a rationale for why currency hedging between say BTC/ETH/GRIN would make sense, but it's also a headache.
   * _antiochp:_  Hedging across those gets us into "taxable events" territory though.
* _ignopeverell:_ I don't think we can convert without headaches, and stand more chance to Do It Wrong. So this discussion is in a way moot. Only way we can balance is through spending. So for example, if an entity accepts zcash, and we want to get rid of them, then we can spend that first. I think generally we want some grins and some BTCs and that we're likely to get a regular trickle of the former. But we can decide on a case by case basis on spending too.
   * _nass769_twitter:_ With the amsterdam event on the 26th, we made the decision that the sponsorship donations will stay in the currency of the specific donation, so no one can accuse somebody else of making the ‘wrong’ decision to convert to another currency. Yes there is a potential down risk by just holding, but at least no risk of bad actions. In the meanwhile things that have to be paid are converted BTC>EUR, at the moment of the transaction.

##### Decision: Treasury management

No conversions for the purpose of hedging. The only way we manage funds is by choosing which funds we spend from, and when. The general position is that we prefer to hold grins and BTC mainly.

We control the currency in which we receive donations from by choosing whether to add support for it or not.

#### 5.2 ETH donation address

Already been tracked for a while: https://github.com/mimblewimble/grin-pm/issues/14

Action on @ignopeverell to figure out how to set up a multi-sig for ETH.

#### 5.3 Decision: Updating income spending logs

Decision to update logs through PRs with reviews as we make changes.

#### 5.4 Decision: Reporting

Quarterly reporting, with 2019Q1 report due in April. 

Contents:
1. Here’s what was received this period.
2. Here’s what we spent this period.
3. Here’s what we have left.

### 6. Promotion of other projects

No real progress beyond the leaderboard / hall of fame on Friends of Grin.

* _ignopeverell:_ I would still like to find a way to reward companies that employ grin developers.

### 7. Gary Yuu proposal to hire developers

_continuation from [last meeting](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190226-meeting-governance.md#7-gary-yuu-proposal-to-hire-developers)_

* Relevant [update from Ignotus](https://github.com/mimblewimble/grin-pm/issues/71#issuecomment-471954443).

#### Decision: Funding for Ignotus Peverell

The meeting unanimously decided to fund Ignotus Peverell for a period of 3 months at the going rate of USD 10k/month. 

### 8. Risk management

_lehnberg:_ On freeze until there’s a vision/mission established.
    * _rw258906:_ It doesn't make sense to have risk management if we can't define what's at risk.
    * _ignopeverell:_ I think it's good to have done what we've done, but perhaps we're not entirely ready for the next step in formalisation.

### 9. Other questions

None

**Meeting adjourned.**
