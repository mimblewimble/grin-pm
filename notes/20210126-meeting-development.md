# Meeting Notes: Development, Jan 26 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 110 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- cekickafa
- dburkett
- dtavarez
- grinlord
- jaspervdm
- joltz
- lehnberg
- mo5itoo
- phyro
- smokeking80
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _jaspervdm:_ So since last meeting we pushed a new wallet version that fixes a bug. Besides that I don't think there are any huge development changes in the last 2 weeks. Besides a few bug fixes. I myself have been knee-deep in pibd work.

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/386) was accepted without changes.

### 3. Action point follow ups from previous meetings
- _jaspervdm:_ In terms of action points from last meeting, I do not think there were any, correct?
- _lehnberg:_ Your blog post. 🔪
- _jaspervdm:_ Right, there's a pr open for it, that can be checked off if someone can have a look.
   - 👀: _lehnberg_

### 4. Hard fork update

- _jaspervdm:_ I think the final hard fork went quite smoothly, other than the fact that we released a new wallet version shortly before as mentioned. @tromp you were looking at the post-hf difficulty fluctuations earlier, does it behave as you expected?
   - _tromp:_ Yes, I manually checked a large range of diff updates. We still have a large variance in graphrate, causing the diff fluctuations.
   - _jaspervdm:_ I see.
   - _tromp:_ Looking forward to seeing smoother behavior with asics.
- _dtavarez:_ Grin++ was also updated supporting the hf.
   - 🎉: _vegycslol, phyro, yeastplume, vegycslol_

- _lehnberg:_ Any word on what the mining pools are doing? In terms of transaction processing? IIRC they had http calls set up between them and exchanges, one click move funds from pool to exchange. Is that still happening?
   - _jaspervdm:_ Would be good to look into.
   - _joltz:_ I'm not sure how they would still do that unless they set up a proxy server or something to handle it. Would be curious to see if any pools are still allow direct w/d to exchanges.
   - _jaspervdm:_ Sounds like no one here has been mining on a pool recently.
   - _mo5itoo:_ 2miners are correctly supporting slatepack I can confirm that.
- _yeastplume:_ There's a video on reddit about tradeogre supporting slatepack as expected as well, which was good to see.
- _jaspervdm:_ Awesome.

### 5. [Post 5.0.0 wish-list](https://github.com/mimblewimble/grin-pm/issues/385) prioritization

- _dtavarez:_ What if we split the list into github issues, write some acceptance criteria on each topic, what are we trying to solve and then we could prioritize maybe, but also anyone could pick a tackle an issue or put a bounty, or something.
   - _vegycslol:_ I agree, there needs to be proper specification, otherwise it's hard to judge if the result is what was expected.
- _lehnberg:_ I really liked the idea of a testnet exchange @tromp, that's some big brain thinking! 🧠
   - 💯: _cekickafa, dburkett_
- _phyro:_ I like that some aggregator ideas were shared on the forum. I'm confident that even a form of semi-trusted aggregator that was described by antiochp/tromp, if used by default, might provide relatively good privacy compared to most other projects.
- _dtavarez:_ Everything looks important to me 😅
   - 👍: _smokeking80_
- _mo5itoo:_ We can also group them by topic (privacy/usability/adoption etc) and add some acceptance criteria.
- _dtavarez:_ What if I put the list here and the "priority" comes with likes? Maybe.
- _jaspervdm:_ On first inspection I do not see any points I would immediately kick out. They are all good to have. Now whether we can actually get them done is of course a different point.
   - 👍: _dtavarez_
   - _dtavarez:_ That's also true, I guess many of them could be tackle in parallel, rigt?
- _yeastplume:_ Well, prioritising without respect to resourcing is the first step. I'm hoping to be able to pick up a thing or two.
   - 🚀: _phyro, vegycslol, joltz, dburkett, lehnberg_
- _dtavarez:_ How can we then prioritize the list?.
- _phyro:_ My personal opinion is that Nimble node, flyclient, anchor could be in the lower end of priority list. Nimble and flyclient because our chain is relatively small for now and anchors because it requires other stuff first.
   - 👍: _vegycslol_
- _vegycslol:_ "libsecp fork update" sounds to me like it has some crypto related fixes. If that's the case, I would put it at the top.
- _tromp:_ @phyro we can call that a pruning node.
   - _phyro:_ I agree, it's confusing people.
- _cekickafa:_ I would priotorize everything about adoption.lock free tx,multisig,hardware wallets.
- _jaspervdm:_ Well the current non-archival node already perform some pruning.
- _jaspervdm:_ But you could go all the way and for example delete all the rangeproofs after validating.
   - _vegycslol:_ This kind of node can't bootstrap, so until we have many bootstrapping nodes I wouldn't even implement auch node.
- _jaspervdm:_ So maybe we should first iterate on the list a bit, maybe more clearly define some of the points. And afterwards try to sort it.
   - _jaspervdm:_ So how about we do this in the issue itself? And revisit next dev meeting.
- _mo5itoo:_ Is it helping to decide? Https://www.strawpoll.me/42516695.
- _tromp:_ If we implement it, it would require changing config params to enable the pruning.
   - 👍: _phyro, vegycslol_
- _tromp:_ It would definitely not be default behaviour.
- _phyro:_ Also, I think only bootstrap is the problem, these light nodes could help with propagation at the head of the chain.
- _tromp:_ I added another item.
- _vegycslol:_ Yes, we can't decide priorities in one hour.
   - _dtavarez:_ Can we go back to this then: Splitting the list into github issues, with more context and specifications we could then prioritize (?).
- _tromp:_ Try avoid cOrrupting the chain db when killing server. Or allow fOr db repair.
Having to resync from scratch is very painful and bad fOr the netwOrk..
   - 👍: _joltz, dtavarez_
   - _vegycslol:_ That was painful for me (if that's what happened on windows when I clicked x).
   - _dburkett:_ I have some good ideas how to definitively solve these. If someone decides to work on this, please reach out to me.
- _phyro:_ Let's all put a bit of effort to be a bit active on the issue (to avoid coming in 2 weeks and having no progress).
- _phyro:_ I forgot to open an issue for the x on windows, will do this.
- _tromp:_ Also please summarize those ideas on the issue for this item.
   - 👍: _dburkett_

_Discussion ensued in the meeting, iterating and ultimately culminating in the following list._

- _lehnberg:_ 
    ```
    p1 - critical / must haves
    p2 - important
    p3 - fix if time

    p1
    pibd*
    multi-sig*
    wallet backend improvements (sql)
    libsecp fork update
    preventing chain corruption*
    safe cancel*

    p2
    tor support for nodes*
    light node*
    testnet exchange / making it easier for exchange integrations
    payjoins*
    binaries for older systems, older glibc or build on low ram machine < 300mb
    invoice payment proofs*
    hardware wallets*

    p3
    wallet view key*
    one-time use slatepack addresses for wallet*
    flyclient*
    atomic swaps*
    aggregators*
    block archive node support*
    improve compatibility with osx
    anchors*
    bulletproofs+*
    nrd activation*

    * requires RFC to be accepted
    ```
   - 👍: _jaspervdm, dtavarez, smokeking80, grinlord, yeastplume, joltz, dburkett, vegycslol_

- _jaspervdm:_ Will you update the issue with the list @lehnberg? Do we keep this issue open or do we want to post this list somewhere else.
   - _lehnberg:_ Happy to keep it open, unless there's a better idea? At some point we populate these all out as issues and track individually.
      - 👍: _dtavarez_
   - _jaspervdm:_ Ok.
   - _lehnberg:_ Updated.

### 6. Other questions

_None._

**Meeting adjourned.**