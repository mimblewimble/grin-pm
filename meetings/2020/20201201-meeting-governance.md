# Meeting Notes: Governance, Dec 01 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 30 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- cekickafa
- defistaker
- jaspervdm
- johndavies24
- joltz
- lehnberg
- quentinlesceller

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/370) was reviewed and accepted without any modifications.

- _lehnberg:_ Shall we discuss 5.0.0 in #dev following the meeting?
   - 👍: _quentinlesceller, joltz, antiochp, jaspervdm_

### 2. Action point follow ups from previous meeting

#### 2.1 Slatepack status
- _lehnberg:_ Anything to add there?
- _joltz:_ Nothing from me.
- _lehnberg:_ I asked last week about helping an exchange with wallet issues they've been having. No takers in community so far, but please DM if you're up for helping them and I'll hook you up with an invite to their slack. They have slatepack (text) integrated but have their wallet disabled due to some issues.

- _cekickafa:_ What can be the resistance to adding slatepacks vs delisting a project like Grin? If Grin doesn't have good liquidity with exchanges, that's a problem for miners and users alike.
   - _lehnberg:_ As we're entering a bull market, I find it likely that exchanges will focus on their bread and butter, i.e. supporting high volume / low effort markets like those around ETH and BTC. Similarly, a lot of miners may also, at some point, decide their share of daily emission is not worth the hassle and switch to sth else. Maybe not as profitable, but still good enough, offering better ease of use, less negative price pressure, and more upside. It's in our (as in us all here) interest to make it as streamlined, smooth, and pleasant all around to interact with Grin, but ultimately, since we are not seeing a great deal of new users, the upside for any exchange or pool to bend over backwards to integrate a new system, is going to be low for the foreseeable future.
   - 👍: _cekickafa_

### 3. [Grin fund for mining idea](https://forum.grin.mw/t/grin-fund-for-mining-idea/7978/)
- _johndavies24:_ Gary is helping me get a quote with a good price. The idea isn't fully fleshed out yet anyway but seems like we need an idea of cost first and then other logistics can follow.
- _quentinlesceller:_ Can you clarify the idea? What is a decentralized mining network in your case?
- _antiochp:_ Putting my skeptical hat on - the only evidence we have for the existence of these "asics" is a photo of a metal box, right? Is this what the quote is for?
   - _johndavies24:_ Not fully clear yet, just didn't want to give any appearance that one individual was going to get decked out with a bunch of hardware. Gary has used one and had the mining rewards to show.

- _johndavies24:_ I initially asked for 3 big G1 and 10 mini, knowing that many in the community would want one or the other (i.e. not considering that request to be entirely purchased by funds, but just trying to get them to actually release some to the wild). Gary made the request more realistic as he is more familiar with this stuff than I am. It is possible that the mining idea is too early to merit much time here, but I am open to all ideas/suggestions/concerns/whatever so if you find it valuable we can continue.

- _lehnberg:_ Anything else to discuss on the mining idea at this point, or revisit again when there's something more full circled?
   - 👍: _johndavies24_

### 4. [RFCs](https://github.com/mimblewimble/grin-rfcs/pulls) update

#### 4.1 [deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)
- _lehnberg:_ Is that now ready? I see lot of approvals all around, but no merging.
   - _joltz:_ Yes 👍
   - _lehnberg:_ okay I will merge after this meeting
      - 👍: _joltz_

#### 4.2 [Parallel IBD p2p messages](https://github.com/mimblewimble/grin-rfcs/pull/68)
- _jaspervdm:_ It’s finished, waiting to see if more people want to review it. 
   - _joltz:_ I plan to give it a review this week as soon as I can
- _lehnberg:_ Is it in FCP?
   - _jaspervdm:_ No
   - _lehnberg:_ Shall it move into FCP? It's been "ready for review" for two weeks or so now. A deadline might help people get a bit more active.
      - 👍: _joltz_
      - _jaspervdm:_ Yeah

- _lehnberg:_ (also prob helps if you edit away "unfinished" as the first comment in the PR) :)
   - _jaspervdm:_ Oh yeah I will give it a proper description 

- _lehnberg:_ @joltz as shepherd will you move it into FCP after meeting?
   - _joltz:_ If I have permissions.
   - _lehnberg:_ All it takes is a comment on PR and a label, I can put the label on now.
      - 👍: _joltz_

### 5. Other questions
_None._

**Meeting adjourned.**