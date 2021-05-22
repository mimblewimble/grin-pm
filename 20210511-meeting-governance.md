# Meeting Notes: Governance, May 11 2021

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- joltz
- defistaker
- antiochp
- geneferneau
- deev
- mark_hollis
- cekickafa
- phyro
- tromp
- quentinlesceller




_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_



## Agenda points & Actions
### 1. Agenda review
The [proposed agenda](agenda for dev meeting later today - https://github.com/mimblewimble/grin-pm/issues/420) was accepted without changes.


### 2. Action point followups from previous meetings
- [fixpastfees-Merged](https://github.com/mimblewimble/grin-rfcs/pull/77)
  - _joltz:_ Thanks for taking care of that @antiochp


### 3. Bounty statuses
- _joltz:_ Next to bounty statuses: it looks like @mark_hollis gave us a nice new [update](https://forum.grin.mw/t/grin-ledger-hardware-wallet-progress-thread-by-markhollis/8670/10) Anything to add there?
 -_mark_hollis:_ Not directly
  - _joltz:_ thanks for your continued efforts on the ledger integration work


### 4. RFC updates
- _joltz:_ There don't seem to be any fresh/active published RFC drafts currently but I think there are maybe a couple in the pipeline from a few people

### 5. Community funding status

- _joltz:_ Community input is still coming in for community candidates it looks like it will be up for just under two more weeks, please make sure you give your input in the thread if you have not yet had a chance
- [Call-For-Votes](https://forum.grin.mw/t/call-for-grin-community-candidates-for-additional-fund-granting-control/8521/4)

### 6. @geneferneau Atomic-Swap funding status [https://forum.grin.mw/t/grin-bitcoin-adaptor-signature-atomic-swap-update-thread/8689/9]

- _joltz:_ I think the agreement was to go on a month-to-month basis with funding. April was funded but is now over by almost two weeks. Now we need to decide if we want to move forward with these efforts and pay for work for May. The floor is open for questions/concerns etc regarding the work/progress/direction with @geneferneau's efforts. Feel free to add anything else you'd like as well @geneferneau
 - _dburkett:_ Do we have an estimated timeline for when atomic swaps will be ready?
  - _geneferneau:_ I have the RPC basically ready, just need to do a test on localnet, then full test on Grin and Bitcoin testnet
 - _dburkett:_ So by the end of the original 3 month period, it will be finished or close to finished?
  - _geneferneau:_ That sounds reasonable for the grin-wallet implementation. The transaction flow currently takes 4 communication rounds each for the refund and main transaction. It would be nice to reduce that to 3, probably impossible to reduce further: I also need to impl a bloom filter or other mechanism for ensuring no re-use of atomic nonces. Re-use would result in loss of funds for the party that re-uses
   - _dburkett:_ Sorry, I realized you said "RPC", not "RFC". Will there be an RFC for this?
    - _geneferneau:_ Definitely, I planned to spend the last week of this month (or after testnet TX done) to write the RFC

- _antiochp:_ Was April funded in advance or did we agree to fund post-April? I forget.
 - _joltz:_ I think we funded April in advance but will wait for @geneferneau to confirm
    - _geneferneau:_ no, I haven't received any funds
    - _joltz:_ yikes, so this decision is for funding April and May?
     - _dburkett:_ maybe we did agree to pay after the monthly update.
     - _quentinlesceller:_ Yeah the decision was to do post payment
  - _antiochp:_ yeah - we owe @geneferneau for April, then we decide on May @geneferneau sound about right?
   - _geneferneau:_ sounds right to me 👍

 - _joltz:_ Do we want to take the May decision today or are we wanting to stick with post payment?
  - _dburkett:_ I think post-payment makes sense still. It's my preferred approach, since it ensures we get solid updates for the final month.
  - _quentinlesceller:_ 👍 on may also same post payment

- _joltz:_ Ok, if we stick with post payment, let's stay on top of payments as best as we can so we don't have contributors in limbo waiting on governance meetings to align to release if we can (I'll try to stay on top of it better myself, clearly I was out of the loop on this one)

 So it sounds like we are 👍 on releasing April payment following this meeting and then we will review May payment at the end of May?

 Does all of the above sounds ok for you @geneferneau ?
  - _geneferneau:_ Absolutely, I really appreciate the support. ❤️

- _joltz:_ Ok, I think we can consider this carried

### 7. Council asset audit
- _tromp:_ fund candidate announcement: AlexGSG has finally replied in the voting thread. so all 5 candidates are now present there for you to Like

- _joltz:_ council asset audit. I think @quentinlesceller was working on a tracking document at some point? Do we have any blockers for getting that done? Do we need to make a new draft to share publicly somewhere?
 - _quentinlesceller:_ I have the tracking document which is not up to date. I could give it a few minutes today to update and release it. I'd need someone from the council to check it before
 - _joltz:_ That would be great, I'm happy to help review it as well. I don't think there is a super impending rush to publish though. Maybe council can review and update as needed over the next week or so and plan to publish by next governance meeting? It will be nice to have public though so we can keep it updated and track things like domain expiry etc

###Other Questions
_none_

**Meeting adjourned.**
