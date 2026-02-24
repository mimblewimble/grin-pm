# Meeting Notes: Governance, October 23 2018

Governance meeting held Oct 09 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5bcf3794bbdc0b2505894c52). Meeting lasted ~ 1h45min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antioch
* Catheryne_N_twitter
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* tromp
* yeastplume
* quentinlesceller

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/1) accepted, with `4. Governance to-do's ahead of mainnet` tabled for a future meeting. 

### 2. Action point follow ups from previous meetings

* Security audit write-up is complete and [has been published](http://grin-tech.org/sec_audit.html).
* Third party quote was obtained for [securuity audits](https://github.com/mimblewimble/grin/issues/1609).
* [/grin-pm repo](https://github.com/mimblewimble/grin-pm) introduced and in use.

### 3. [Security reviews / audits](https://github.com/mimblewimble/grin/issues/1609)

#### 3.1 Use of entity and funds

* Most of the security firms need an entity in which to enter into an agreement with, and to invoice and get paid from. Most also want payment in fiat (or charge a premium for crypto).
* @catheryne has reached out to Ostif to see if they can help with the entity issue, no reply yet.
* @yeastplume has an entity that could act as intermediary in order to execute any agreement and scope of works, receive & convert the crypto into fiat, and finally pay the invoices. 

#### 3.2 Funding of security audit

* Currently 0.40 BTC of 16 BTC target has been raised, i.e. 2.5%.
* @catheryne suggests two main categories to divide offers in exchange for donations:
   1. **Marketing.** Exposure, sponsorship logo placements, [Grincon0](http://grincon.org) sponsorship etc.  
   1. **Exchange of prized info/goods.** Collectible items, money-can't-buy-experiences. Signed shirts, place messages in blocks. Auction of equipment, developer face time, 1:1 meet and greets, speeches at company events, a UTXO off the genesis block, or a 1 grin ICO.
* Most pressing is Grincon0 sponsorship as it's time constrained. Discussion about having three sponsorship packages - silver, gold, grin. Put info on grin-tech.org, outline how much a package costs, and set a sponsor deadline (in order to print material etc).
* Grincon0 should also encourage optional donations from participants.
* grin-tech.org and "friends of Grin" section should be spruced up a bit to make it more attractive.

##### Action points:
* [X] @ignopeverell to send out another request for funding.
* [X] @hashmap to confim what degree of sponsorship is acceptable to Grincon0 venue hosts.
* @lehnberg to create issues to track: 
   * [X] auction items
   * [X] sponsorships of Grincon0
   * [X] Grincon0 donations

### 4. Vision / Mission / Values

* No update, doc has still not been published
* We need to move forward, and pushing it out on website might be useful

#### Action points:
* [X] @lehnberg to ensure some [type of draft is published somewhere](https://forum.grin.mw/t/help-us-write-grins-mission-statement/1114) by the next governance meeting

### 5. Risk managment

* @RiskyMan1 has put together a new document, on [Risk brainstorming](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming). @lehnberg tidied up and put on the wiki, also moved all the other risk management docs into their own section on the sidebar.
* There's also a [spreadsheet](https://docs.google.com/spreadsheets/d/1zTtlMIgJFzmyedKD07dA0jn3eP4HD7eZqLjD8cVd_4c/edit?usp=sharing) where anyone can go in and add risks (as rows) and then put in their personal (subjective) scoring, according to a certain score template.

#### Action points:
* [X] @lehnberg to chase council members + core devs to input risk assesments for next meeting into spreadsheet.
* [X] @lehnberg to publish a forum post on the topic.


### 6. Proof of work 

* @tromp has published AR proposal in a [forum post](https://forum.grin.mw/t/choice-of-asic-resistant-pow-for-gpu-miners/1017), callled Cuckaroo.
    * _@tromp:_ "As proposed, it is expected to take 7 GB to run at full speed, but might become optimized for 6GB later."
* Discussion around what the process will be for adopting. Open public discussion (see forum post), taking in feedback from community, and in the end it will be a technical decision by core devs on how best to implement.
* Would be useful to have [small first implementation during T4](https://github.com/mimblewimble/grin/issues/1818). Not clear if it actually would be deployed on T4 or not. If hard-forked in it would be with mainnet parameters.
* Any finalization of Mainnet AR POW means that Mainnet needs to be launched at a maximum 3 months after that, or the AR POW needs to be tweaked again. 
* Next steps:
   * wait for a little more feedback
   * implement something for lower cuckoo sizes and iron out the kinks
   * also have something in @tromp's repository
   * figure out if we want to hard fork it in T4 or we're happy to introduce it just for mainnet
* Discussion around mainnet release target date, `2-4 months from today` was floated. 

### 7. Other questions

None
