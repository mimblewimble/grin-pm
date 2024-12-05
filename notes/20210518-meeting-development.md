# Meeting Notes: Development, May 18 2021

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 45 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- joltz
- geneferneau
- phyro
- quentinlesceller
- vegycslol
-


_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_



## Agenda points & Actions
### 1. Retrospectiv
- _joltz:_ Action points have been followed up on from last time.


### 2. Agenda review
The [proposed agenda](agenda for dev meeting later today - https://github.com/mimblewimble/grin-pm/issues/419) was accepted without changes.

### 4. Atomic-Swaps bounty update with @geneferneau
- _geneferneau:_ I haven't tested the RPC/sync workflow, yet (still syncing testnet chain). There are tests for the command line / manual flow, though @deeev was kind enough to donate some testnet coins, so I should be able to do a testnet tx when the chain syncs. If people want to try out  the wallet commands, I can write up a basic tutorial but, my tree is based on a fork of `grin` that doesn't include fixpastfees (waiting to update after `grin-wallet` gets it so, I think I'll be spending the rest of this week testing + writing docs and RFC; I'll be making my atomic swap PR pretty soon. next for the RFC to communicate the design, then the PR for review
 - _joltz:_ Any known blocks to merge the PR? Just needs more review?
  - _tromp:_ need 2 more reviews ideally. can you review, @dburkett and @quentinlesceller ? (https://github.com/mimblewimble/grin-wallet/pull/602)
   - _quentinlesceller:_ yes absolutely can review that
   - _dburkett:_ It looked fairly straightforward, so I should be able to fit that in today; I will also try to get to gene's grin-wallet PR later today.

- _joltz:_ Thanks for the review Quentin and David 🙏 @geneferneau please continue to keep everyone updated, especially as things come up that may slow you down 👍

### 5. 5.1.0 release
- _joltz:_ On to 5.1.0 release, was pushed out after last meeting and seems to have gone fine. Anything worth mentioning there?
 - _bladedoyle:_ Im running 5.1.0 without issues.
- _phyro:_ (https://github.com/mimblewimble/grin/issues/3641) there seems to be an issue on some distros. It might have to do with deforking croaring
 - _joltz:_ hm yes that definitely needs to be tracked down and solved

- _bladedoyle:_ Did we build in the avx2 instruction?   Thats what was causing "illegal instruction" on old hardware (shitty vps).the commit claims to have been careful about avx2 ...  I'll download the official build and double check
 - _joltz:_ Thanks @bladedoyle please use the issue (https://github.com/mimblewimble/grin/issues/3641) to help track your progress (and anyone else who wants to take a look). I'll throw a few minutes at it as well.

### 6. Github triage updated
- _phyro:_ the status there is similar to the previous week. I'm hoping antiochp can hop over to the wallet side for some time. I know he wanted to tackle late locking so perhaps in the scope of that
 - _joltz:_ Thanks @phyro 🙏

### 7. ledger hardware bounty update with @mark_hollis (https://forum.grin.mw/t/grin-ledger-hardware-wallet-progress-thread-by-markhollis/8670/9)
- _mark_hollis:_ I'm now working on said items: initiation and sending. Vladislav from the Beam project is willing to share the Ledger code of Beam. I was looking at the rangeproof generation earlier this week. That is something I don't have an idea how to begin with at the moment. Beam uses an multi-party computation for this. I remember there were github issues at Grin about using bulletproof mpc. I don't have particular support needed for now. There are some things I need to research more before asking support.

- _joltz:_ Let's do our collective best to followup on the (https://github.com/mimblewimble/grin/issues/3641) issue and help with the bulletproof building in #dev this week


###Other Questions
_none_




**Meeting adjourned.**
