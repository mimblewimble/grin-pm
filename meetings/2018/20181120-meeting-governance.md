# Meeting Notes: Governance, November 20 2018

Governance meeting held Nov 20 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5bf4219b2ef5b06e40977a28). Meeting lasted ~ 2h 20min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* catheryne_n_twitter
* gpestana
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mably
* narzan771
* quentinlesceller
* RyanZim
* STEELERS2018
* tromp
* vcorem
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/17) accepted, with some changes to the order.

### 2. Action point follow ups from previous meetings

[Previous actions](https://github.com/mimblewimble/grin-pm/blob/master/notes/20181106-meeting-governance.md):
*  Yeastplume's accountant has been unavailable. Intends to speak  with him in the next day or so, and will update once it happens.
*  _lehnberg:_ Regarding the security brief, with https://github.com/mimblewimble/grin-pm/issues/20 and Catheryne reaching out immediately thereafter using that as a base, I did not do anything further. Felt like it was actioned basically.
* [Risk management brainstorm:](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming) Council members who had yet to complete the risk assessments were named and shamed.

### 3. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* Igno put together [reduced scope](https://github.com/mimblewimble/grin-pm/issues/20) which Catheryne sent out to the firms on the shortlist (Kudelski, Quark, x-41).
* Trail of Bits said they needed 2-3 months notice and so are out of the process.
* The rest have until Monday to send back a bid.
* Selection process:
   * Candidates to be evaluated based on price, reputation of the firm, and scope of the proposal.
   * Council decides, with guidance from Catheryne.
* Discussion on how to relate to the current downturn in USD price of BTC, and whether to postpone audits until the market had a chance to recover. Meeting in general felt like we should proceed regardless of price.
* Based on this, an approach of incremental audits was suggested, where we audit what can be audited based on what the available funds afford us.
* In terms of priority, crucial non-rust portions such as the libsecp256k1 fork was deemed the most important.
* Discussion on whether audit should block mainnet release. 
   * _Igno:_ I'm not entirely fine with mainnet before full audit but we don't have money raining down from the sky so it is what it is.
   * The rest of the meeting agreed, as in it's not ideal, but there is no better alternative than a partial audit of crucial parts. 
 
#### 3.1 Decisions:
* Audit does not block mainnet release.
* Incremental audits to be done, starting from libsecp256k1 fork, based on what could be afforded. 
* Igno to [send a final call for audit contributions to mailing list](https://lists.launchpad.net/mimblewimble/msg00599.html).
* Fund raising closes for the security audit on Nov 30. Any additional funds following this goes to the general fund.
* Catheryne to update audit companies on the direction.

### 4. POW

#### 4.1 General update

* _tromp:_ We have a detailed cuckaroo spec now, codified in cuckaroo branch, with a working simple miner and Igno having coded corresponding rust verifier. I'm still working on mean cuda miner. It compiles but produces the wrong results in trim somewhere. Investigating.

#### 4.2 [AF Cuckatoo32 feasibility](https://forum.grin.mw/t/cuckatoo32-feasibility)
* _tromp:_ Asked in the post about possibly relaxing memory requirements. I received no feedback reassuring me that cuckatoo32 is easily handled by ASICs. One mfg that wants to make ASICs expressed strong preference for starting with cuckatoo31, so that they can run in under 1s. The risk of a single chip ASICs for cuckatoo31 is small, as they would need at least 320 MB SRAM, with already a 4x overhead for extra passes. The Z9 for example has 144 MB SRAM/chip. Cuckatoo31 would also make it easier for GPU miners to mine the AF-friendly POW in the case there is absence of ASICs. So in all, I think we should relax the AF POW from Cuckatoo32 to Cuckatoo31, whilst keeping the linear increase schedule:
   * Cuckatoo31 is phased out after 1 year;
   * Cuckatoo32 is phased out after 2 years; etc.

#### 4.3 Decisions
* The ASIC Fiendly POW for mainnet is relaxed from Cuckatoo32 to **Cuckatoo31**, whilst keeping the linear increase schedule as before and expressed above.
* Action to express the linear increase scheudule in the code prior to mainnet release, tracked in https://github.com/mimblewimble/grin/issues/2001.

### 5. Mainnet planning

#### 5.1 Arguments for Jan 15 launch date

* It's a Tuesday
* It's ~ 2 months away, which should leave enough time to deploy and test the full PoW;
* It's in line with us having been in stabilization mode since T4 already;
* It's far enough after season holidays and the new year;
* It's easy to remember;
* It’s in Q1!
* It's close enough to bitcoin's 2nd 10 year anniversary;
* It's a perfect segue into [grincon(0)<US>](https://grincon.us) date of Jan 28;

#### 5.2 Genesis block release process
* Related [forum post](https://forum.grin.mw/t/genesis-block-message/250).
* A couple of possible constraints discussed:
   1. Include some message
   1. Include the hash of a bitcoin block, proving the block wasn't pre-mined
   1. Have very high difficulty
   1. Have the genesis block PoW match the difficulty
* _Igno:_ 3 & 4 are very hard togeter, add 2 and it's impossible. My preference would be to prioritize 2 and 3.
* ~ 1M GPUs expected to be directed towards Grin for launch.
* Discussion around potentially auctioning of 1-60 grins from the genesis block. Tabled discussion point for next meeting.
* Low multiple of hours (<12) preferred for the first block.
* Bitcoin block hash a good way to prove no pre-mine.

#### 5.3 Decisions
* Jan 15 2019 target for Mainnet launch is unanimously accepted by the meeting, with the exception of @yeastplume who fully and wholeheartedly object to any given release date. 
* Accompanying mainnet launch there will be clear messaging on website and elsewhere that this is still immature tech, use at your own risk, and another big pile of caveats.
* Genesis block release process:
   1. High initial difficulty based on X mid-range GPUs (not the RTX yet) with `10K < X < 1M`
   1. Include a recent-enough bitcoin blocks hash somewhere (either an input or a root) as proof of no pre-mine.
   1. We can't match that difficulty in the timeframe anyway so don't bother, a valid cycle will suffice.
   1. Process should be scripted, to ensure it happens fast and published everywhere right away. Suggestions discussed: git commit, perhaps as an external file so rebuild isn't needed, forum post, timestamp slightly in the future as well.
 * Continue discussion re collectible coinbase from genesis block next meeting.

### 6. Working with exchanges
* We've started to see "co-operation requests" from exchanges.
* There's little to no interest in paying listing fees.
* General discussions are mainly to be handled in grin/lobby on Gitter. Any technical questions can be handled in grin/dev. Any sensitive (security, trade secret or otherwise) topics can be discussed privately, but a public channel is the default.
* Those who are qualified are free to charge for their service and help exchanges in any way they see fit. If a donation to the general fund is added to that, all the better, but is not a requirement.
* _yeastplume:_ Assisting a for-profit 3rd party isn't something the community is paying for.

### 7. Dealing with conflicts of interest

* General discussion about what to do, how to depose people from the council, what if there is no resolution and it's clear that there's an issue. Also general governance discussion about the role of the council, the role of Igno as leader, etc. 
* Council members are all free to go find jobs/work/consultancy gigs utilising their grin experience. This is not a conflict per se, but they should notify the rest of the council.
* _yeastplume:_ If you don't want the council knowing something, that's probably a red flag.
* Common sense prevails.
* _Igno:_ So far we've avoided too hard rules and try to all be reasonable individuals and use discussion to iron things out, hopefully we can keep it that way as long as possible.
   * _RyanZim:_ I agree; however it's wise to make some rules while things are reasonable, so they're in place when times change an reasonableness is gone. At the end of the day, conflicts get resolved, though if there's no good system, they spill into the whole ecosystem, and it gets ugly. (i.e. BTC UASF)
* _Igno:_ I think addressing conflicts of interests openly and all trying to be nice and understanding about it is an important first step. I think we've come this far because everyone here is very nice and hopefully we all try hard to keep it that way.
* #dontbeadick

### 8. Mission statement

* No update

### 9. Website content

* Content can only be better than what we have now, and can be improved incrementally.

### 10. [Website design](https://forum.grin.mw/t/help-me-design-and-add-content-to-our-site/1035/)

* Decision to move forward with one of JollyGrin's (GrinNinja) designs (details to be ironed out in the [grin/design](https://gitter.im/grin_community/design) channel) for the website, as long as it's compatible with jekyll (or similar static site generator).

### 11. Risk mgmt brainstorm
*  Blocked until council members complete [risk assessments](https://github.com/mimblewimble/docs/wiki/Risk-Brainstorming).

### 12. Other questions

None

**Meeting adjourned.**
