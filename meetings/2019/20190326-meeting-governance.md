# Meeting Notes: Governance, Mar 26 2019

Governance meeting held Mar 26 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5c9a3eac52c7a91455fbdee9). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* BTCSnacky_twitter
* crazymonkyyy
* davidburkett
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* yeastplume
* quentinlesceller

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/87) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 yeastplume funding broken out from income_log?
Actioned.

#### 2.2 antiochp funding processed?
Not applicable. 

##### Decision: antiochp funding re-evaluation
In lieu of antiochp [having received an alternative source of funding](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190312-meeting-governance.md#22-antiochp-funding), it was agreed that his [previously agreed funding](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190226-meeting-governance.md#decision-fundingfor-antioch-peverell) would be reconsidered and raised in a future governance meeting again if/when it became relevant again. 

#### 2.3 ETH donation address

* _ignopeverell:_ I looked at Parity multisig and that was a big no, I'm not entirely sure what to do.
   * _jaspervdm:_ One option would be to convert all ETH to BTC.
      * _lehnberg:_ This would be in the spirit of keeping things simple, and also in line with [our previously agreed policy on treasury management](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190312-meeting-governance.md#decision-treasury-management), as we prefer to hold grins and BTC mainly.
      * _ignopeverell:_ agreed, especially if we do the donation conversion ASAP.

##### Decision: Treasury management of ETH

Rather than having a multi-sig ETH wallet, @ignopeverell will keep a regular wallet that donors could send ETH donations to. Funds received in this wallet will be converted ASAP into BTC using an exchange method of choice, and the converted BTC in turn transferred into the regular multi-sig wallets. ETH and BTC amounts to be tracked in the `income_log` and `spending_log` to keep accurate book keeping. 

### 3. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* _ignopeverell:_ We received a nice intermediary report from Coinspect, with good findings and more general points about things we could do better. We've addressed some of the findings already and will be working toward getting it all addressed over the coming weeks. There's likely to be a few more things before they're done but I think the process is progressing nicely on both side so far.
* _kargakis:_ Will the report be published once the audit has concluded?
   * _ignopeverell:_ Yes, we may however need some added time in between receipt and publication to ensure everything that needs to be addressed is addressed before publishing.
 
### 4. [Security vulnerability process review](https://forum.grin.mw/t/please-help-evaluate-grins-security-process/4537)

* _lehnberg:_ Forum post created, but not much engagement yet unfortunately. What's the process for how to move forward?
* _ignopeverell:_ I see it as an iterative process, if there is good feedback we can integrate it and improve the process accordingly, otherwise keep the process unchanged.

### 5. Proof of Work: [AT Phase Out thread](https://forum.grin.mw/t/obelisk-grn1-chip-details/4571)

* _tromp:_ A [forum thread was created](https://forum.grin.mw/t/obelisk-grn1-chip-details/4571) with new information on ASIC chip performance.
   *  The announcement of single chip ASICs for C31 has undermined our phase out schedule, which looks like it won't be able to serve its original intended purpose of thwarting single chip ASICs in the foreseeable future.
      *  _ignopeverell:_ I'm not convinced about the "undermined" part.
      *  _hashmap:_ +1
   *  _antiochp:_ @tromp - can you give a quick recap on the why around - "original intended purpose of thwarting single chip ASICs in the foreseeable future"?
      * _tromp:_  Single chip memory capacities grow over time as processes get smaller
so a pow that wants to enforce a memory io bottleneck needs a correspondingly growing memory requirement. And I wanted to put this out of reach of a single chip design at the time. But I'm less convinced today that avoiding single chip ASICs is worthwhile enought to accept the downsides that come with phaseouts. The main downsides being:
        * Less efficient competition, as better resourced actors would have a more significant advantage over others.
        * Less efficient resource usage as people need to spend a lot more money on upgrading hardware, although this is not certain.
        * Potential need to hard fork in the future as progress freeness is in danger due to low GPS on larger graphs.
   * I would like to see C31 and C32 asics come out and judge their yield and performance and ROI and such before deciding whether we really want to phase out C32 and beyond.
* _lehnberg:_ Here is the estimated phase out schedule as it currently stands:

   Cuckatoo | Start of <br> phase out | Expected to be <br> fully phased out
   ---|---|---| 
   AT31 |Jan 15 2020 | Aug 19 2020
   AT32 | Jan 15 2021 | Aug 27 2021
   AT33 | Jan 15 2023 | Sep 3 2023
   AT34 | Jan 15 2027 | Sep 10 2027

   * _ignopeverell:_ Right, **we don't want to change the phase out of Cuckatoo31 (AT31)**, but we can certainly see how things evolve in the next 6-9 months to decide on longer horizons and the future phase out of Cuckatoo32 (AT32).
   * _tromp:_ Yes, if my proposal is accepted then AT32 has a potentially much longer lifetime. Until we recommit to more phaseouts, which would then likely be at a later date than in the current schedule
   * _lehnberg:_ So **only phase out of AT32 (commencing ~ Jan 15 2021)** would be at play for a **potential** change, **but something we would decide on later**. And I suppose by us discussing this right now, we’re signaling a *relatively* open mind for this, so any ASIC mfg planning their 2021 activities today should take *some* measure of note here that this *could* change?
      * _ignopeverell:_ **We definitely remain committed to our plan to phase out AT31**. As @tromp mentioned, there is still time to reconsider the phase out after that. 
* _antiochp:_ We had stated that we reserved the right to modify future plans with sufficient warning, I think?
   * _lehnberg:_ Yes, that's right, as part of [our previous commitment](https://forum.grin.mw/t/cuckatoo31-im-mutability/2442) it reads:
      > The Grin developers currently have no intention of changing these rules in the foreseeable future, unless Cuckatoo is shown to be broken (e.g. by exhibiting a sublinear time-memory tradeoff), or unless the phasing out of smaller sizes should be delayed in order to ensure public availability of >= 1 GPS miners.
   * _tromp:_ Yes, and I would like to make "foreseeable future" a bit better defined here, by explicitly stating that to be `18 months`, ie that any change would be announced 18 months ahead of time. We can request feedback from ASIC mfgs about whether 18 months is a good enough timeline for them to be able to adapt to changes as is necessary.
      * _lehnberg:_ An `X` month commitment (bar any force majeure / pow is broken events) sounds like something very good to have. 
* _antiochp:_ And to be clear - theoretical AT33 miner would still run with a bonus vs AT32 in that scenario (and same for AT3x)?
   * _tromp:_ Yes, but that bonus is minimal and is already partly negated by need to process those extra siphash output bits.
* _ignopeverell:_ I don't think we can decide today, but let's have the few things we want to vote on written clearly (including the 18 months) with how much time we have before having to make a decision.

#### Decision: Next steps regarding phase out discussion
* We remain committed to the phase out of Cuckatoo31. 
* @tromp to write a forum post outlining a proposal to change our commitment from "foreseeable future" to the more explicit as "18 months into the future".
* There *may* be a change of the planned phase out of Cuckatoo32, but this is not decided on yet. As it would not begin to activate until Jan 15 2021 we have ample time to consider and discuss this further. 

### 6. Promotion of other projects

* _lehnberg:_ We are continuing to welcome more suggestions and ideas for how we could promote project, entities, companies, individuals, that are supportive of grin. Doing good stuff without necessarily contributing money. Please contribute and [join the discussion on the issue](https://github.com/mimblewimble/grin-pm/issues/52).

### 7. Other questions

* _garyyu:_ The voting for the Chinese name ends tomorrow! Please participate.

**Meeting adjourned.**
