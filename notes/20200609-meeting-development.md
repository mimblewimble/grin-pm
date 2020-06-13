# Meeting Notes: Development, Jun 09 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 50 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- joltz
- lehnberg
- phyro
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda: Development, Jun 09 2020

https://github.com/mimblewimble/grin-pm/issues/299
### 1. A yeasty reminiscence
### 2. Agenda review
### 3. Action point follow ups from previous meetings
#### 3.1  [ ] Crates.io updated? @yeastplume 
#### 3.2  [ ] [Release checklist](https://github.com/mimblewimble/grin-pm/pull/292) finalized? @quentinlesceller
### 4. Status of [Grin v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)
### 5. Enforcing [kernel uniqueness](https://forum.grin.mw/t/enforcing-that-all-kernels-are-different-at-consensus-level/7368/14)?
### 6. v5.0.0 related
### 7. Other questions

:::: PREVIOUS MEETING HEADERS ::: 
## Agenda points & Actions
### 1. Retrospective
### 2. Agenda review
### 3. Action point follow ups from previous meetings
#### 3.1  Crates.io
#### 3.2 Release checklist
### 4. Status of [Grin v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)
### 5. Anything 5.0.0 related
### 6. Other questions
#### 6.1 Maximum inclusion height kernel

:::: NOTES ::: 
- _lehnberg:_ 👋
- _yeastplume:_ Anyone care for a devmoot?
   - 🙋‍♀️: _lehnberg_
- _joltz:_ 👋
- _lehnberg:_ *agenda:* https://github.com/mimblewimble/grin-pm/issues/299.
- _antiochp:_ 👋
- _yeastplume:_ Going to be a fairly quick reminisce today.. Remember the time we released 4.0.0-beta.1? Https://forum.grin.mw/t/grin-grin-wallet-4-0-0-beta-1-released/7406. So most work has been in service of that. Some fixes and changes are still going on, and I'd hope we'd be in a position for a beta 2 at the end of the week, hopefully getting the last of any changes in once we've ensured the floonet swapover behaves correctly.
- _yeastplume:_ So that being said, crates.io was updated by @quentinlesceller, who's now co-owner of the packages as well.
   - 👍: _quentinlesceller, lehnberg_
- _quentinlesceller:_ Hello.
- _quentinlesceller:_ Going to update the release checklist with that and address comments later today.
- _antiochp:_ When is floonet hf scheduled for?
- _lehnberg:_ June 20 iirc.
- _quentinlesceller:_ ```2020-06-19 18:49:36 +0000 utc```. Last time I checked.
   - 👍: _lehnberg, antiochp_
- _yeastplume:_ So gives us plenty of time for a beta 2.
   - 👍: _yeastplume_
- _lehnberg:_ I'm going to try to test beta1 this week and report findings, it's been quite busy for me here dealing with baby-thormund.
   - 👍: _yeastplume, quentinlesceller_
- _antiochp:_ I'm hoping to get https://github.com/mimblewimble/grin/pull/3302 in next day or so. Its a relatively big pr but should be fairly straightforward to test out as disabled on mainnet.
- _antiochp:_ If someone could help test out against mainnet and floonet prior to merging that would be 🙏.
   - _lehnberg:_ If you think there's sth I would be able to pull off with your guidance, I'm happy to try in the next few days?
   - _quentinlesceller:_ I will.
- _yeastplume:_ I'm mostly just this to reflect recent slatepack changes (encrypted sender) https://github.com/mimblewimble/grin-wallet/pull/428, then perhaps one or two small quality of life things that shouldn't affect transacting at all and that's it.
- _yeastplume:_ Do we need to go through the 4.0.0 list at this stage?
   - _lehnberg:_ Don't think so, I will try to keep it up to date - which pr captures `deprecate http listener for external addresses` @yeastplume?
- _antiochp:_ Simply just testing that branch runs against floonet and mainnet.
- _lehnberg:_ Oh. Sync from scratch?
- _antiochp:_ I just want to ensure the various codepaths have been tested and that my local env is not weird in any way. Yeah sync from scratch is valuable testing.
- _phyro:_ Probably also creating nrds?
- _antiochp:_ No because we stil pre hf.
   - 👍: _phyro_
- _yeastplume:_ Ooh, btw that reminds me, if you're testing the wallet pre-fork on floonet use the --v4 flag to force input and output of v4 slates, otherwise you'll just get a v3 slate saved to file.
- _yeastplume:_ With the v4 flag, you'll get the proper output to console to cut paste as well as a file.
- _lehnberg:_ How about @antiochp and @yeastplume we produce test checklists?.
- _yeastplume:_ That was slipped into https://github.com/mimblewimble/grin-wallet/pull/423.
   - _lehnberg:_ Ah cool I'll add to the list.
- _lehnberg:_ I think you started one in the forum post yeast, that was really helpful. But maybe even we do like actual commands, and be a bit detailed about it.
- _lehnberg:_ 1. Sync a node, let it run for x hours. 2. Sync a node on branch `x` let it run for y hours.
- _lehnberg:_ Etc.
   - 👍: _antiochp, phyro_
- _yeastplume:_ Yea, I just added the point about the `--v4` flag to the testing notes there.
- _antiochp:_ Do we have a 4.0.0 branch or are we doing this off master for now?
- _yeastplume:_ If only there was a qa theam.
- _yeastplume:_ 4.0.0 is building from master atm.
   - 👍: _antiochp_
- _yeastplume:_ I'll put an issue with a more specific checklist for the wallet.
- _lehnberg:_ Yeah, an issue might be nice, and then people can comment with their outcomes, hopefully only sweet green check marks.
- _antiochp:_ If someone could test that branch out today I can get it merged it sooner rather than later and it would make further testing easier to coordinate
checklist being - 
"full sync then let it run for a bit", 
"restart and let it run for a bit". On both mainnet and floonet.
   - _quentinlesceller:_ You mean this pr https://github.com/mimblewimble/grin/pull/3302?
- _antiochp:_ Multiple branches makes it harder to know who's testing what.
- _joltz:_ 👍
- _quentinlesceller:_ 👍
- _lehnberg:_ `kernel_pos` branch.
   - 👍: _antiochp_
- _antiochp:_ I just need a second person testing it before I merge (to avoid breaking master).
- _quentinlesceller:_ Okay I'll take a look today.
- _joltz:_ I'll do that test today as well antioch if no one else testing.
- _quentinlesceller:_ Can't say I'll be able to review 2k loc though 😂.
- _antiochp:_ Yeah this "review" is going to happen as we go along. (most of that is test coverage actually).
- _lehnberg:_ Damn, that's messing with antioch's stats right there.
- _yeastplume:_ Okay, so think we have all that in had. Enforcing kernel uniquenessquestionmark?
- _antiochp:_ Yeah there have been a couple of conversations around that - I believe our current thinking is we solve this at the wallet level and not the protocol layer. This is to do with "replayable" txs.
- _lehnberg:_ Do we have an idea of what a full circled solution would look like yet? I believe there are still open questions around restoring right?
- _antiochp:_ The gap is a wallet cannot robustly identify "replayable" txs on restore - so @tromp suggests a wallet proactively self-spends old outputs.
- _lehnberg:_ (btw some discussion about it in #crypto just scroll up a few lines, anyone who's curious).
- _antiochp:_ Or at least flagging them and suggesting the user does this.
   - 👍: _lehnberg_
- _lehnberg:_ Yeah, could be "first in line" for spending.
- _antiochp:_ Tl;dr it does _not_ need to be solved at the protocol layer (kernel uniqueness).
- _phyro:_ This means a restore would flag all the utxos it finds.
- _lehnberg:_ True....
- _antiochp:_ Any utxo older than the 1 week horizon would be (potentially) susceptible to replay.
- _yeastplume:_ I'm not 100% up to speed with the entire conversation, so need to think about it more. I'm not sure I'm a fan of forcing or requesting the user to spend at any point for safety reasons, it seems clumsy.
- _antiochp:_ We also need to think through payment proofs in this context as well. I think.
- _tromp:_ Should I make a post about the issue?
   - 👍: _phyro, quentinlesceller_
- _antiochp:_ What does a "restore" actually mean if you have no payment proofs for any of the payment sreceived.
   - 👍: _yeastplume_
   - _yeastplume:_ Well, it means your wallet has control of those outputs.
- _yeastplume:_ Yes, it might help to have a brief synopsis of all current thinking and proposed solutions.
- _joltz:_ Agree, it would be nice to have one thread to discuss/review this in. I'm also not crazy about having wallets do spends to prevent this but want to spend some time with it.
- _antiochp:_ Except potentially not, for a short period of time.
- _phyro:_ The wallet solution could also be temporary as consensus rule can be added later if really needed.
- _joltz:_ Just want to avoid cases of fund loss where we point to an obscure line in documentation somewhere saying they should have enabled a wallet feature or something to prevent it.
- _lehnberg:_ Yes, would be good to understand alternatives, and what costs / trade-offs they come with.
- _antiochp:_ I suspect there is no consensus rule that would be compatible with mw though - its not feasible to index all historic kernels.
- _phyro:_ So making the wallet handle this seems ok and its better than rushing with new consensus constraints.
- _lehnberg:_ Getting those outlined in the thread*, that would be helpful for sure

* https://forum.grin.mw/t/enforcing-that-all-kernels-are-different-at-consensus-level/7368/.
- _antiochp:_ And 99.9% of the time replay is not going to be an issue.
- _tromp:_ I think I'll start a new thread called "mitigating replay attacks".
   - 👍: _antiochp, phyro, quentinlesceller, lehnberg, joltz, yeastplume_
- _tromp:_ That will of course reference the existing thread.
- _lehnberg:_ Sounds great.
- _yeastplume:_ Great, that would help a lot.
- _lehnberg:_ Anything we're missing with 4.0.0? Quentin's been great putting up the banner on the website and alerting pools and miners. And exchanges.
- _lehnberg:_ There's a beta2 in the oven from what I gather.
- _tromp:_ A new grin-miner may not be ready until the last moment.
   - _quentinlesceller:_ Do you need help for that?
- _lehnberg:_ Define last moment?
- _tromp:_ No, I'm good.
- _quentinlesceller:_ 👍
- _tromp:_ Hoping it will be done in last week before hf.
   - 👍: _lehnberg, quentinlesceller_
- _yeastplume:_ Mmm probably need to understAnd the a bit more, but on restore, the only outputs you see are ones from which you can unwind the bullet proof.. And as part of that you need to xor part of the recovered data with a value derived from your wallet master key.. How could a replayer recreate that?
- _antiochp:_ If I send you funds from output a to output be (your output).
- _antiochp:_ And a is ever recreated then that tx can be replayed.
- _tromp:_ It can be replayed before you restore your wallet.
- _antiochp:_ So alice can send my a a 2nd time and trick me into thinking I received funds, when it can be sent to you via replay.
- _tromp:_ So when you restore, you find be in utxo, but you alread spent be -> c earlier.
- _yeastplume:_ Ah okay, got it.
- _tromp:_ I mean that's one of the problematic cases. There's others.
- _phyro:_ Yes. If you get to a point in the transaction graph that already happened you can theoretically replay the subgraph that happened afterwards If you know the right values.
- _antiochp:_ Restore is related because a full restore leaves your wallet blind to this.
   - 👍: _yeastplume, phyro_
- _antiochp:_ But its not caused by the restore.
- _yeastplume:_ Okay, will be really good to have all of this summarized. Moving on a bit then, anything v5.0.0 related?
- _yeastplume:_ (i guess the previous conversation counts). Or any other questions or concerns?
- _yeastplume:_ Then that would be meeting adjorned, thanks all!
- _joltz:_ Thanks 👋
- _lehnberg:_ Thanks 👋

**Meeting adjourned.**