# Meeting Notes: Development, Apr 06 2021

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 30 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- geneferneau
- trevyn
- joltz
- tromp
- defistaker
- quentinlesceller
- deeev



_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_



## Agenda points & Actions
### 1. Retrospective
- _antiochp:_ effort has been focused on work post emergency HF
and in parallel the secp256k1-zkp rebase

### 2. Agenda review
The [proposed agenda](agenda for dev meeting later today - https://github.com/mimblewimble/grin-pm/issues/416) was accepted without changes.

### 3. Action point follow ups from previous meetings
- Triage / GitHub cleaning is is ongoing with @ phyro.
 - _phyro:_ I would like to add that we need more people looking at the grin-wallet. Right now we ping quentin for most things, but it's quite a lot and things. We may be moving a bit slow on that repo imo

- "fixpastfees" RFC -> FCP
 - _joltz:_ fee_shift RFC should be out of FCP today and ready to accept (with a minor review last minute by me) (https://github.com/mimblewimble/grin-rfcs/pull/77)

- _antiochp:_ @quentinlesceller; how's the libsecp work looking?
 - _quentinlesceller:_ going well. Still need to figure out one test. I think i'll do another branch closer to upstream based on the reviews I got so far.
No ETA but the biggest part is done.

- _antiochp:_ I still want to get https://github.com/mimblewimble/grin/pull/3618 in for 5.1.0 but other than that i don't think there is anything blocking it right now so I think we can probably aim for later this week to at least cut an initial build for 5.1.0
(if anybody wants to test/review said PR then please)

### 4. 5.1.0 release  
- _antiochp:_ Are there any other PRs outstanding for 5.1.0?
 - _quentinlesceller_ The wallet side there is (https://github.com/mimblewimble/grin-wallet/pull/593) - Which need more testing. I can do some extensive tests during the week.
  - _antiochp:_ I owe you a review on that one.

### 5 Bounty Updates
- _quentinlesceller:_ next week bounty updates will be provided.

### 6. Other questions
_None._


 

**Meeting adjourned.**
