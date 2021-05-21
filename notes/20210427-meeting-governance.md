# Meeting Notes: Governance, Apr 27 2021

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 30 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- geneferneau
- trevyn
- joltz
- tromp
- phyro
- quentinlesceller
- mcmmike
- mark_hollis
- vegycslol
- hendi 
- goyle
- cekickafa
- defistaker
- renzokuken


_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_



## Agenda points & Actions
### 1. Retrospective
- _joltz:_ Action points have been followed up on from last time.

### 2. Agenda review
The [proposed agenda](agenda for dev meeting later today - https://github.com/mimblewimble/grin-pm/issues/418) was accepted without changes.

### 4. Bounty Update
 - _mark_hollis:_ I've looked how Monero and BeamMW approached certain technical issues, like opening an existing wallet, which data the wallet needs for signing during different transaction types etc. I did mostly some research the last weeks. No blockers at the moment.
(https://forum.grin.mw/t/grin-ledger-hardware-wallet-progress-thread-by-markhollis/8670/5)

### 5. RFC Update
- _joltz:_ Fix past fees RFC (https://github.com/mimblewimble/grin-rfcs/pull/77) should be ready to be merged and accepted as an RFC. Does anyone here with commit access mind wrapping up last steps there?
 - _antiochp:_ I can take a look at getting this merged.

### 6. Community Council Candidates - Voting Done on Forum 
(https://forum.grin.mw/t/call-for-grin-community-candidates-for-additional-fund-granting-control/8521/4 )

- _joltz:_ The community is voting on each candidate by liking their forum post. If you are a candidate and have not made a post, please do so now
There is no anonymous voting, otherwise the process would not be sound.

### 7. Request for funding @davidtavarez: one-time use slatepack addresses RFC + grin++ impl
(https://forum.grin.mw/t/withdrewed-request-for-funding-davidtavarez-one-time-use-slatepack-addresses-for-wallet-rfc-and-grin-implementation/8707/19)

- _quentinlescellar:_ Are you going to PR it into grin-wallet?
 - _dtavarez:_ I could, extend the scope sure; problem is that I'm not a skillful Rust developer so I can't estimate.

- _joltz:_ I have somewhat mixed feelings. First of all @dtavarez crushes it and I want to do everyting I can to encourage the great work to continue. However, it seems like the rust impl only gets an RFC for this, which to me is not worth 10k eur. What would you need to extend scope to support grin-wallet? Otherwise it seems like maybe it is a better fit for the community fund?
 - _dtavarez:_ I totally get it. Yes, I could extend the scope, but it will be hard for me to estimate time.

- _phyro:_ I was under the impression this proposal is a bit like the previous proposals which were grin++ related, but with the RFC added to this one
which is why the work is on the grin++ side. But yeah, the grin-wallet would need this RFC implemented as well at some point
 - _joltz:_ Which is why I think since there is no rust work it is a better fit for community fund. But we do not yet have that set up and I don't want logistics to get in the way of @dtavarez's work to continue

- _joltz:_ I am open to supporting the proposal with an inclusion of a "best effort" attempt to implement in grin-wallet. I don't expect magic to happen but maybe your energy could help support the implementation on rust side if you include it as part of your goals
And I'll work with you on the RFC if you want.

- _quentinlesceller:_ I think grin-wallet should stay as close as possible to all the RFCs. So I'd say integration in grin-wallet is a must for this.

- _phyro:_ Perhaps we can even split this into two parts? RFC + Implementation after the RFC, maybe even someone else volunteers for funding to bring it to grin-wallet?

- _joltz:_ @dtavarez do you want to move forward to get a decision on your proposal as is today or do you prefer to take some time to reflect, adjust it a bit and propose again?

- _dtavarez:_ I can use this RFC to start contributing to the grin-wallet repo, for me it is a good opportunity. I would like to take some time to reflect, adjust it a bit and propose again.

###Other Questions
_none_






**Meeting adjourned.**
