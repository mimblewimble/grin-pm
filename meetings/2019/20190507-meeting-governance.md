# Meeting Notes: Governance, May 07 2019

Governance meeting held May 07 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5cd19dc12e2caa1aa6242bb3). Meeting lasted ~ 75 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* akatasonov
* antiochp
* chisa0a
* davidburkett
* emptykeg
* garyyu
* hashmap
* jaspervdm
* lehnberg
* LokarBOA
* mcdallas
* newtownf1
* nijynot
* quentinlesceller
* yeastplume


_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/115) accepted.

### 2. Action point follow ups from previous meetings

* _lehnberg:_ The only follow up we had from last meeting was the /site issue for the friends of grin improvement, created here: [mimblewimble/site#126](https://github.com/mimblewimble/site/issues/126) There's been no takers so far, those wishing to help out please comment on the ticket.
   * _nijynot:_ I can work on this after the budget issue if no one else picks it up. 

### 3. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* _lehnberg:_ We received the final report from Coinspect last night. It’s been shared with the council, and we’re taking a couple of days to digest, we’ll likely have questions back to Coinspect, so will be a couple of back and forths in the next days/weeks. Conservative estimate for the publication of the audit reports is ~ 4 weeks from now.
 
### 4. Funding status

* _quentinlesceller:_ I think [we just received a 50 BTC donation](https://blockchair.com/bitcoin/address/bc1qdgs8vkpzr256qjlzlfht72z3mhcrdrt6wj2rfjw39j8us24gz8uq78qj65). Whoever is behind this and maybe reading this thank you so much from the whole Grin team. It will definitely help us. 
   * _lehnberg:_ Indeed, a really big and heartfelt thanks. We’ll ensure we’ll put that to good use.
   * _jaspervdm:_ A big thank you to the person(s) behind it.
#### 4.1 Financial Transparency Report
* _lehnberg:_ The Q1 report was just merged, and is available [here](https://github.com/mimblewimble/grin-pm/blob/master/financials/reports/funding_transparency_2019Q1.md). Would be good to get feedback on the format and contents. A better format would be nice. Is it possible to use markdown files on grin-pm as is and display on /site?
   * _nijynot:_ Should work, will probably require some JS etc. I can look into it a bit more later on.
   * _lehnberg:_ Great, will create an issue to track this.
 * _lehnberg:_ In terms of actual content, we spent USD 3600 on discourse forum, BTC 4.482 on coinspect audit and ~9.5k grins to igno as a donation. At the end of the quarter we had roughly ~$123k’s worth of assets, a lot of which is earmarked for Grin audit that we’ll be paying for shortly now that we got the final report. Obviously with today’s news we’re in a much better financial position in Q2.

#### 4.2 2019 Budget

   * _lehnberg:_ I created a draft in [mimblewimble/grin-pm#130](https://github.com/mimblewimble/grin-pm/issues/130). There’s a link to a google spreadsheet there that has an idea of what a 2019 budget could look like. This could then be iterated on. I'd like us to move away from google sheets, and instead keep something in our repos. I have not figured out a good way for us to handle this yet. I would like to have some spreadsheet-style functionality to make it easy to work with, and that’s hopefully something @nijynot could help us with. Some additional comments:
      * Audit fees are included.
      * I put in @yeastplume’s costs even though he’s been running separate campaigns. As we’ve discussed in the past, makes sense to have full overview of the money the project as a whole will need.
      * I’ve blanked @antiochp’s line in there because he’s currently funded by an anonymous good samaritan. No idea whether that will be the case or not moving forward, but here’s to hoping.
      * I put fulltime dev 4 and 5 as placeholders (as suggestions) and wanted to raise it as maybe something that would be worth striving for, but not sure about that.
      * I’ve also put in bug bounties, mining bounties, and development grants as other ways we could want to spend money in 2019. Don’t know what the right amounts would be, or how it all would work.
   * _lehnberg:_  So have a think about it and we can discuss. What should we focus our available funds on for the remainder of this year? Would we want to add more full time devs? How would that process be? Are there other activities we should be doing? You can either add a topic to an upcoming governance meeting agenda, and/or raise an issue on /grin-pm repo, or write a post on grin-forum.org with your proposal.
   
### 5. Simplify onboarding process

* _quentinlesceller:_ I'd like to propose a change on the website and simplify the onboarding process for new users.
That'd be including binaries directly and adding GUI wallets just like [bitcoin.org](https://bitcoin.org/en/choose-your-wallet) does. Avoid going on GitHub as much as possible. I don't know if it is doable with markdown though.
   * _nijynot:_ Not doable in markdown, but doable with html. I support the change of simplifying the onboarding too. Currently, most links link to github, which is not the best experience.
   * _lehnberg:_ I think a simplified onboarding flow makes a lot of sense, we should have friendly download buttons for the official Node, Wallet, and Miner. If we add 3rd party wallets, will we be held accountable if these do not maintain a certain level of standard and quality?
   * _nijynot:_ Adding wallets does make it better for the ecosystem overall, as people won't need to dig deep in the wiki to find them, but does make us a little bit liable, in a sense.
   * _quentinlesceller:_ I'd say the minimum requirement is open source after that we can add a disclaimer. Maybe only nodes and wallets for now. I can create an issue to track this.
   * _jaspervdm:_ Sounds good.
 * _quentinlesceller:_ Also forgot to add but would be good to add an "Announcement" section on the website, for  major releases, or important vulnerabilities. I'm not 100% sure about this though cause we have the forum already. 
   * _lehnberg:_ Indeed, but then it would at least make sense to link to the forum’s announcement section on the website.

### 6. Promotion of other projects

Related issue: https://github.com/mimblewimble/grin-pm/issues/52

* _lehnberg:_ After this meeting there’s the monthly ecosystem meeting taking place in https://gitter.im/grin_community/ecosystem, those interested should join. Last meeting we also discussed [mimblewimble/site#126](https://github.com/mimblewimble/site/issues/126) which we touched upon at the beginning of today’s meeting. 
 
### 7. Grin evangelism

* _lehnberg:_  How can we get more people involved, from all walks of life, but preferably people that have software development experience? I’ve discussed with some people in the community to create a kind of “Grin meetup starter pack” that we could share with instructions, and make it as easy as possible to organize meetups about Grin if you want to support the project. If there’s anyone who wants to help out with that, feel free to reach out.


### 8. Other questions

* _emptykeg:_ We need a "Mastering Grin" book. :)
   * _newtownf1:_ Andreas (Antonopoulos) might be interested in writing it.
   * _lehnberg:_ Reach out to him and get him involved! 

**Meeting adjourned.**
