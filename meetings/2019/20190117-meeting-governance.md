# Meeting Notes: Governance, Jan 17 2019

Governance meeting held Jan 17 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c4098cc7a0f4d5b19c3c1b4). Meeting lasted ~ 150 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* catheryne_n_twitter
* davidburkett
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mably
* mcdallas
* priori-incantatem
* quentinlesceller
* sjors-lemniscap
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/37) accepted.

### 2. Action point follow ups from previous meetings

[Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190103-meeting-governance.md):
* Burratta action point follow ups:
   * Decision making process documentation: No update
   * Mainnet prios crowd-sourced: No update, but we have 1.1.0 priorities nevertheless
* [Decision log:](https://github.com/mimblewimble/grin-pm/issues/30)
   * _lehnberg:_ Not done, aimed to have ready last weekend but ended up being sucked into other stuff.

### 3. POW
* @tromp away this meeting, but has published: https://forum.grin.mw/t/cuckatoo31-im-mutability/2442
   * Reassurance for **the ASIC manufacturers out there** who may be in the process of getting large amounts of money committed.

### 4. [Security audits](https://github.com/mimblewimble/grin/issues/1609)
* [Minimal scope](https://github.com/mimblewimble/grin-pm/issues/20) has been updated:
   * The Grin core crate
   * The Grin keychain crate
   * The Grin chain crate
* _catheryne_n_twitter:_ I updated the Phase II bid request to include only the core, keychain, and chain crates and re-sent it out to Kudelski, x41, NCC, Quarkslab, LondonCryptoServices (LCS), Trail of Bits, and Coinspect. London graciously declined, NCC responded but I don’t have a bid from them, and I did not hear anything back from Kudelski, x41, TrailofBits. The two competitive bids I received back were from Quarkslab and Coinspect. Both are in the ballpark of each other as far as price. Since the proposals are confidential, didn’t want to post but I sent both them to Igno. Coinspect can start Jan 28, Quarkslab mid-Feb. NCC would like to have through this weekend to complete their bid. We can wait, or we can pull the trigger on one of the 2 competitive bids that are in.
* Originally we wanted to raise in the range of ~$100k, currently we have ~17 BTC ($67k)
* Once we pick a firm, we may choose to do wallet crate audit as an extension of their work if we are happy with results.

#### Decision: How to settle on auditor
   * To wait until next week to have three bids to compare. 
   * To review quotes and make a decision in a dedicated sesssion following the developer meeting on Jan 22.

### 5. Mainnet status

* Launch went smoothly mainly, no major issues.
* Pools had a hard time due to no restriction on invalid shares, but a fix went in shortly thereafter.
* Next risk for catastrophic meltdown is when fast sync kicks in, some test already done, more tests due in a few days.

### 6. Promotion of other projects

* _igno:_ The intent here is to try to foster early good cooperation between this project and the various businesses that revolve around Grin. We want those businesses to do well and help and promote them in a reasonable way, and this project will need regular injection of money to keep going.
   * Employment, as in companies that appoint staff dedicated to work on Grin also count to this.
* _lehnberg:_ I think I would be very sceptical to any kind of official endorsement of a project that is outside of the remit of Grin core. It would however be nice to be able to distinguish the businesses/projects that contribute on an ongoing basis.
* _yeastplume:_ I think we need to be a bit careful, we can't just promote anyone who promises to dump money on us... us promoting is essentially the same as vouching.
* [X] **@lehnberg to [create issue on grin-pm that summarizes discussion and invites proposals for how to handle this](https://github.com/mimblewimble/grin-pm/issues/52).**

### 7. Exchange integrations

* _lehnberg:_ I’d like to point out the following two wiki docs:
    * https://github.com/mimblewimble/docs/wiki/Exchange-FAQ
    * https://github.com/mimblewimble/docs/wiki/Exchange-A-Questions
    * The former is a general info doc to help exchanges who are approaching us wanting to consider listing Grin. The second doc is related to a specific exchange having questions, I’m starting to populate it. Plan is to have second doc finished by the weekend, and use it to populate the main FAQ.
    * Generally, we welcome any serious exchange to integrate with us. To this date, we are not submitting any applications, and I don’t think there are any plans to do so either.

#### Decision: Exchange integration support rate
To those exchanges who have asked for dedicated integration support, meeting agreed that 1 BTC/hour, donated to the dev fund in advance, was fair.

### 8. Website

#### 8.1 New design
* _lehnberg:_ @nijynot has [worked hard on an updated version](https://github.com/mimblewimble/site/pull/72) of grin-tech.org
   * Preview: https://nijynot.github.io/site/
   * Markdown/latex support: https://nijynot.github.io/site/markdown
   * Visual identity: https://nijynot.github.io/site/visual

##### Decision: Update to website design
* [X] @lehnberg to with @nijynot to get the updated design to the point where there is good coverage, merge the new design, with any bugs squashed post merge.

#### 8.2 Chat channels and communities

From https://github.com/mimblewimble/site/pull/63:
> There's no official channel. Even though we monitor and moderate gitter, it may not always be the case (count the times the bitcoin devs have had to move from invaded channels). So I'd personally be for marking all communication channels as "community supported" and just point out which are more adapted for some purposes (i.e. help, dev, trading, banter, etc).

* _lehnberg:_ Would be good to get alignment on this. I think it makes sense personally. But there are a LOT of grin chat channels popping up all over the place. How should these be handled?

##### Decision: Managing chat channels
* Only community promoted on website should be Gitter, because that is where development is taking place.
* Add "Communities" page on wiki. This could be sorted by platform, members in community, etc. Have website link to this page.
* Add "Events" page on wiki, functioning the same way, with links from the website.

### 9. Risk mgmt brainstorm
* Only yeastplume left to complete [risk assessment](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming).

### 10. Bike-shedding decisions

#### 10.1 Currency code
Meeting adopted `GRIN` as the official currency code of the project.

#### 10.2 Currency symbol
Meeting adopted `ツ`, aka "Tsu" as the official currency symbol of the project.

#### 10.3 Mission
Meeting favoured the following mission statements:
* A. `To be a private, scalable, digital currency.`
* B. `better money ツ`

...without concluding on one of the two. General sentiment was that "private" in A needed to be reworked into something else, like "privacy-preserving" or similar. 

### 11. Other questions

#### 11.1 Grin stackexchange
* Proposed by @mcdallas.
* All were in favour.

**Meeting adjourned.**
