# Meeting Notes: Development, Oct 27 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 45 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- jaspervdm
- joltz
- lehnberg
- phyro
- quentinlesceller
- timtimbo
- tromp
- vegycslol

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _antiochp:_ @jaspervdm has been looking at "late locking" in wallet tx building, while @tromp has been at work implementing both the fee RFC and the DAA RFC. @jaspervdm and myself have also been discussing PIBD nuances.

   There's a PR up on our secp256k1 repo regarding endianness - https://github.com/mimblewimble/secp256k1-zkp/pull/55 (specifically on a IBM mainframe?)
   
   Also a PR up on the rust-secp repo regarding the fuzzer - https://github.com/mimblewimble/rust-secp256k1-zkp/pull/74
   - _timtimbo:_ Where can we follow the PIBD discussions?
   - _antiochp:_ Best place is probably the PR: https://github.com/mimblewimble/grin/pull/3453

### 2. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/358) was accepted without changes.

### 3. Action point follow ups from previous meetings

#### 3.1 [Mitigating re-org risks actions](https://github.com/mimblewimble/grin-pm/issues/327) web hooks post
_Actioned._

#### 3.2 5.0.0 planning and comms
_Actioned._

#### 3.3 Slatepack comms
- _joltz:_ My schedule has finally calmed down a bit so I'll have time to reach out this week. I think we have messaging down, just need to sync with @lehnberg to confirm points of contact. Hopefully we have made contact with all major stakeholders by next meeting.
   - _anctiochp:_ Sounds good, do we have a rough idea how many points of contact are involved?
   - _joltz:_ Should just be one per major exchange. As far as what determines whether an exchange is major or not is not well-defined. My plan is to hit the notable ones first and just work our way through the services listed in our documentation so that everyone at least receives some communications, regardless of their size.

   https://github.com/mimblewimble/docs/wiki/Community-projects#support-deposit-withdraw-and-trading is the list for reference
   - 👍: _antiochp, vegycslol_

#### 3.4 QA team student follow up
- _quentinlesceller:_ No update from the student so nothing to report.
   - _antiochp:_ Hopefully we hear something from them.
      - 👍: _phyro_
      - _quentinlesceller:_ Indeed.

### 4. v5.0.0 planning:
- _antiochp:_ Planning issue is here: https://github.com/mimblewimble/grin-pm/issues/287

   Should we go over the list of items in "finalized scope"? I think status has changed on some of these. 1,2,3 are all in progress right now. 4 and 6 also.
   - _jaspervdm:_ Yes i believe all except 5 are 🛠️.

- _antiochp:_ Next step for 5 is comms to stakeholders?
   - _joltz:_ I think comms can go in parallel to the implementation.
   - _lehnberg:_ Yes makes sense. Yeah, 5 is not blocked, just needs to begin.

- _antiochp:_ Project board is here - https://github.com/orgs/mimblewimble/projects/1. I dragged some cards to "in progress". @tromp - fees and DAA are both in progress right?
   - _tromp:_ Both mostly done. See my PRs. Also the HF4 PR. Been busy coding past 2 weeks. 
      - 🚀: _joltz, antiochp, lehnberg, jaspervdm, phyro, vegycslol, quentinlesceller_
   - _antiochp:_ @tromp is singlehandedly doing HF4 right now
      - 😂: _phyro, quentinlesceller_
      - 💪: _lehnberg, joltz, jaspervdm_

- _anctiochp:_ Anybody have anything else for 5.0.0 before we do other questions?
   - _lehnberg:_ Feels we’re in okay shape no?
   - _antiochp:_ I think so yeah
   - _jaspervdm:_ Yep I think everything's on schedule.

- _lehnberg:_ What are the big risks here? @yeastplume flagged he’s a bit swamped.
   - _antiochp:_ Yeah a lot of wallet knowledge is in @yeastplume head.
   - _lehnberg:_ Might be good to check in with him and see how he’s doing and if/how we can offload/facilitate. I believe @jaspervdm is already doing some of that.
      - 👍: _antiochp_
      - _jaspervdm:_ Yup
   - _tromp:_ I still need to see steady progress on testnet to pick a safe height for testnet hard fork.
   - _lehnberg:_ Ok and what’s blocking us there is having a GPU pointed to it?
   - _tromp:_ Yep
   - _lehnberg:_ Anyone around that wants to help with that? Now’s your chance to contribute to the last scheduled hard fork. :)
   - _joltz:_ Unfortunately i don't have access to any of my GPUs while traveling :(
   - _jaspervdm:_ I only have a 1070 and could only run it for a part of the day sadly
   - _joltz:_ Would be happy to help subsidize someone to run if electricity cost etc is an issue.
   - _jaspervdm:_ Is @yeastplume still running his rig?
   - _antiochp:_ I think its decommissioned or out of action right now. (aka in pieces)
   - _quentinlesceller:_ We still can do an aws thing but that'd be expensive.
   - _antiochp:_ Is anybody able to or willing to run a cloud instance somewhere? vast.ai or so?
   - _quentinlesceller:_ I can.
   - _joltz:_ Rough idea of weekly/monthly cost?
   - _quentinlesceller:_ 100$/month, minimum with aws based on my last calculation.
   - _joltz:_ I can send some btc if you want to get one running.
   - _quentinlesceller:_ I'd be willing to do it if I get reimbursed by the council btw. I still need to compare between AWS and GCloud.
   - _tromp:_ I can ask Lolliedieb if he has spare cards to run. And we could pay him for that.
   - _antiochp:_ I don't think there would be any issue reimbursing for a few months of costs.
   - _jaspervdm:_ Does nicehash have a minimum? Could point it to a testnet pool.
      - _quentinlesceller:_ I'm unsure if I'll still maintain Testnet Grinmint after HF4.
      - _jaspervdm:_ Ok thats fine, but if we can use it until the HF. Just to have stable blocks and test the fork.
      - _quentinlesceller:_ Yep nicehash is possible. I'm not very familiar with Nicehash bidding process. If everyone agree I can set up an instance today (GCloud or AWS)
         - 👍: _antiochp, joltz, lehnberg, jaspervdm, phyro_

- _quentinlesceller:_ @tromp how many GB of memory do I need for C32?
   - _tromp:_ Anywhere from 8 to 11GB.
      - 👍: _quentinlesceller_
- _antiochp:_ Have you looked at hostkey? They do gpus.
   - _lehnberg:_ I’m using scaleway and they tend to be really cheap: https://www.hostkey.com/gpu-servers
   - _quentinlesceller:_ Okay I'll compare different solutions and get back to you later today
   - _tromp:_ Ok, I'll let you know if i hear from Lolliedieb

### 5. Other questions

_None._

**Meeting adjourned.**