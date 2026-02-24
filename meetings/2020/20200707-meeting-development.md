# Meeting Notes: Development, Jul 07 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 1h 30 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- joltz
- kurt3
- lehnberg
- paouky
- phyro
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ We released 4.0.0 last friday, and it seems to be propagating itself into the field without too much issue. Other than that I think a few people are taking a well-deserved bit of rest, trying to remember where they left their kids etc. But 5.0.0 (and perhaps 4.1.0) planning is kicking off right about now, I expect we'll have plenty to say about upcoming work during this meeting.
   - _lehnberg:_ Great job all the devs for shipping last week!
      - 💯: _yeastplume_

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/310) was accepted without modifications.

### 3. Action point follow ups from previous meetings

#### 3.1 [Release checklist](https://github.com/mimblewimble/grin-pm/pull/292)
- _quentinlesceller:_ Can be considered done but I want to add the proper channel for announcements in there. Will do today.
   - _yeastplume:_ Great, yes will be handy to have our announcement channels in a handy list.

### 4. Status of [Grin v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)

- _lehnberg:_ What's outstanding at this point? Is the hard fork ETA Jul 19, still?
   - _quentinlesceller:_ **July 16** 2020, around 11 pm UTC.
      - 👍: _lehnberg_
   - _yeastplume:_ I don't think anything, and no major issues appear to have been uncovered thus far.

- _lehnberg:_ There's a grin-miner PR pending right?
   - _yeastplume:_ Ah, yes. That will give us a grin-miner 4.0.0.
   - _quentinlesceller:_ Yep.
   - _lehnberg:_ Which should arrive shortly prior to hard fork.
      - 👍: _yeastplume_

- _lehnberg:_ That's it?
   - _yeastplume:_ Think so. I think we can remove the 4.0.0 status item from the agenda, just add an action point for grin-miner 4.0.0 release.
   - _antiochp:_ Those changes are limited to grin-miner only? No changes in grin or grin-wallet, right?
   - _yeastplume:_ Yes, literally just the addition of a new plugin.
      - 👍: _antiochp_

- _lehnberg:_ What are the odds of there being an exchange still around supporting grin in 9 days?
   - _yeastplume:_ I remain hopeful.
   - _lehnberg:_ I'm saying this with a bit of a wink, but yeah there's some degree of seriousness as well. Is there anything we ought to do here to smoothen the transition?
   - _joltz:_ I think the changes we are making now will make it more likely for exchanges to be able to support grin in the long term.
      - 👍: _yeastplume_
      - _lehnberg:_ Yes, I hope so too.
   - _quentinlesceller:_ Doc.
      - 💯: _joltz, lehnberg_
   - _lehnberg:_ Friction with scheduled hard forks is unavoidable.
   - _antiochp:_ Agreed - might be a bit rocky for a bit, but hopefully easier for them to support more robustly in the future.
   - _lehnberg:_ Mining pools I would imagine are all aware, right?
   - _antiochp:_ Slatepack + "mostly lock free" should make things significantly easier (once this is all in place).
- _lehnberg:_ @quentinlesceller we did announce in the ecosystem chats and so on, correct?
    - _quentinlesceller:_ Yes I did.
       - 👍: _lehnberg_
- _lehnberg:_ Ok, I'm just worried for no good reason I guess. 😥
   - _joltz:_ It's good to be worried - lots can go wrong when changing parts once you are already flying. :)
   - _lehnberg:_ We're definitely better at getting our ducks in a row, earlier. Third time's the charm. :)
   - _lehnberg:_ Yet, I still can't wait until the last one is behind us.
      - 👍: _quentinlesceller_


### 5. [Replay attacks and possible mitigations](https://forum.grin.mw/t/replay-attacks-and-possible-mitigations/7415)

- _lehnberg:_ Is there anything new to add there? @yeastplume I imagine you've not had a chance to dig deep into this with all the 4.0.0 stuff going on.
- _yeastplume:_ Not really, but am at least familiar enough with the issue and the thread, which has been filled out quite a bit with discussion and opinions. Happy to discuss a bit now.
- _antiochp:_ My thoughts on that are here - https://forum.grin.mw/t/replay-attacks-and-possible-mitigations/7415/13

   Seems to boil down to - 
   1. try to prevent it at consensus level, or
   2. have nodes/wallets aware of the risk and mitigate locally.
   - _yeastplume:_ I'm a bit wary of adding more complexity to the wallet, but can also see the cost of enforcing at consensus level is significant for something that's so infrequent.
   - _phyro:_ May I add that preventing it at consensus level makes ideas like merging kernel points impossible, because you need to keep them around forever, so the very light "nimble" node becomes impossible (I think).
   - _lehnberg:_ _If_ we'd decide to go with 1), it would be prime candidate for 5.0.0. If 2), then it's something that can be iterated on irrespectively.
   - _yeastplume:_ Right, and the nice thing about 2) is that it can go in at any time.
   - _antiochp:_ We also have no scalable way of actually implementing (1) - its a non-starter. We'd need to track history globally for all time.
      - _lehnberg:_ Sounds very un-mimblewimbly.
      - _yeastplume:_ Right.
      - _antiochp:_ Which would appear incompatible with mw (at least in spirit).
      - _lehnberg:_ Well, that killed the vibe quickly. Haha.
      - _antiochp:_ ¯\_(ツ)_/¯

- _yeastplume:_ So we can try and hide as much of the detail as possible in the wallet restore function, then have some sort of alert at the end of the restore process if needed. Developers will need to pay attention to it and handle.

- _kurt3:_ @antiochp a message can be added to the signature to help verification, have you considered this approach? It augments the size of the kernel by 5%, or less.
   - _antiochp:_ Maybe I'm forgetting something - @kurt3 can you explain? I'm definitely not purposefully ignoring anything.
   - _kurt3:_ I posted the idea in my original post. On kernel uniqueness. And it was disccussed at least multiple times in #crypto.
   - _antiochp:_ Adding pos to the kernel msg? Or counter?
   - _phyro:_ I think one could add "max_height" validity block height to the kernel and sign it. If the replay attacker reused the kernel after that height, it would be invalid. I'm not sure I recall it correctly though, could you confirm kurt? It doesn't prevent the attack, it shrinks the window of opportunity.
   - _kurt3:_ Block - 1, block + 50 or something like that in the signature yes. It improves verification a lot. Thats the goal.
   - _antiochp:_ If its max_height then I think we're keen on keeping to bitcoin's "once a tx is valid it will not become invalid" (exception being a double spend) rule of thumb. And as @phyro says - it mitigates but does not prevent.
   - _phyro:_ Maybe in theory, it might prevent it completely if combined with nrd.
   - _kurt3:_ Combines with nrd I also provided an idea. After looking at antioch proposal. The scalability cost is minimal.
   - _antiochp:_ I do think we should handle this locally (on wallet restore and via wallet tx history) and not at the consensus level.
   - _kurt3:_ At restore good luck.
   - _antiochp:_ Can you explain? Wallets are _only_ ever concerned with local risk due to replay - there is no benefit to handling this at consensus level across all utxos.
   - _dburkett:_ I can. It's a ux nightmare. How do you indicate to the user that there's a possibility of transaction replay in a way they'll understand?
   - _antiochp:_ One option would be to automatically sweep in this scenario (has its own set of tradeoffs though).
   - _dburkett:_ A lot of complexity involved with that, but yeah that's an option. Still ends up with a confusing transaction history, but not as bad of a ux as just expecting users to understand.

- _dburkett:_ The only real tradeoff is, like antioch said, transactions eventually expire. The big issue with that is not actually the transaction pool (txs should expire after being in the pool for days). But with transaction building. There's now a time limit on when a transaction must be received and finalized.
- _joltz:_ Mitigating in the wallet with accompanying well-written and easily findable documentation for developers might end up with an overall reduced security risk compared to making consensus-level changes. The key is mitigating potential loss and what the cost for that is.
- _phyro:_ It adds a bit to the kernel size since you'd probably want to make that default, so around 5% kernel increase I believe. Also, additional consensus validation for ibd etc.
- _tromp:_ I'm in favor of keeping monotonicity; once valid, a tx should remain valid as long as its inputs remain unspent.
   - _dburkett:_ Why?
   - _tromp:_ Simplifies mempool management.
   - _dburkett:_ I know it sounds like a nice principle. But what is the practical reasoning? Mempool management is way simpler than wallet management. Like, 10x simpler. Fwiw, I don't have a strong opinion either way. But mw already creates enough difficult situations for the wallet developers. I'd hate to needlessly add complexity there.

- _lehnberg:_ I don't have a horse in this race, but the complexities around wallet state mgmt is only relevant during restore, correct?
   - _dburkett:_ No, not at all. The complexity is in the sweeping, and showing transaction history.
   - _lehnberg:_ ...applicable, when the wallet is being restored from seed, correct?
   - _dburkett:_ No. At any time.
   - _lehnberg:_ Okay, then I'm not following the discussion properly, and need to read up more about it.
- _tromp:_ Also don't like mandatory tx expiry.
- _joltz:_ Couldn't it be configurable for the wallet? With the default option being the most restrictive for the user such that we prevent them from getting burned at a cost of making decisions for them. Then they can always configure manually if they don't want funds to auto sweep or whatever we decide is the safety net.
   - _dburkett:_ Still, that's adding complexity to the wallet.
   - _joltz:_ I agree but if complexity has to be added somewhere, why not the wallet instead of the chain? We already are stacked in that direction.
   - _dburkett:_ Because grin already is one of the hardest coins to develop a wallet for.
   - _joltz:_ I guess at some point the wallet becomes too complicated and useless for our simple chain taken too far.
- _antiochp:_ May also be important to take baby steps here as well - starting to highlight "at risk" outputs may be an initial step.
- _tromp:_ Complicating the consensus model should be last resort.
- _dburkett:_ Theoretically, yes. Practically, I don't know if I agree.
- _lehnberg:_ So @dburkett what do you suggest should be done here? For the sake of clarity, do you think the way to go is what @kurt3 was proposing above?
   - _dburkett:_ I don't know. More thought is needed. But blindly passing it off to the wallet because of simplicity principles will further discourage third party wallet devs to take a stab at grin. There are far fewer node implementations than wallet implementations.
   - _lehnberg:_ I'm not sure I agree with the assessment that it would be done blindly. But yeah perhaps the best way to ensure enough thought is given to this is to continue lighting up that forum thread.
      - 👍: _dburkett_
- _yeastplume:_ There are quite a few more action points to go, can we leave it there for now and continue discussion in the thread now that it's been re-energized?
   - 👍: _antiochp, phyro_
- _joltz:_ 👍 we have to find the right balance here.

### 6. [Coinbase outputs as transaction outputs](https://forum.grin.mw/t/coinbase-outputs-as-transaction-outputs/7441)

- _yeastplume:_ This is a bit related to 5.0.0 planning, and there was movement in the thread since last. It might make sense to see if there's agreement about approach here?
   - _antiochp:_ Its closely related to 5.0.0 planning, yes. I'm making the argument to not do this for 5.0.0 - https://forum.grin.mw/t/coinbase-outputs-as-transaction-outputs/7441/38.
      - 👍: _joltz, dburkett_
      - _yeastplume:_ And not make a potentially contentious change of something that's been working well enough on our last scheduled hardfork?
   - _antiochp:_ We can leave the enticing possibility of a contentious issue for a future unscheduled hardfork...
   - _lehnberg:_ It's great that you stuck your neck out in the thread with a clear opinion..
      - _yeastplume:_ He can expect punishment shortly.
      - _antiochp:_ Lol.

- _quentinlesceller:_ Agree with @antiochp here doesn't seems to be worth it.
- _lehnberg:_ It would be good to hear if there's any strong disagreement with that position at this point.

- _antiochp:_ Its definitely worthy of further discussion and is an interesting point (why follow bitcoin if there is no legit reason for it etc.). But flipside is - it's not without various risks and unknowns.
   - _lehnberg:_ Yes, I agree. For me it's a fear of us screwing something up badly and then needing to fix it in panic mode. Like I said somewhere, if we were in testnet, or heck if we had a couple of extra future forks even, I'd be keen on experimenting a bit more.
   - _antiochp:_ Adding this to the final hf4 would be a curious decision for something contentious like this.

- _tromp:_ Removing the coinbase feature from inputs should be less controversial though. We shouldn't have to specify whether an input is a coinbase or not.
   - _antiochp:_ Ah yes - that is worth considering @tromp. And is related to "duplicate outputs".
   - _dburkett:_ That doesn't really need a hardfork though. It's just a p2p message change.

- _quentinlesceller:_ What's the risks of removing the output maturity rule?
- _phyro:_ Bitcoin had a different tradeoff, much clearer in favor of maturity rule in their case. Risk is a reorg where coinbase outputs are building The transaction graph. The whole graph gets cut off.
- _tromp:_ The risk is a loss to buyer of fresh coinbase in case of deep reorgs.
- _joltz:_ I guess a miner could buy a bunch of asics with their coinbase and hope they ship before reorg hits merchant node.
   - _quentinlesceller:_ Are the maths any different that a double spend attack?
- _antiochp:_ And buyer of fresh coinbase (or descendent outputs) without knowing it is coinbase.
   - 👍: _phyro_
- _paouky:_ How deep of a reorg do you think is possible? These risks seem a bit far fetched to be meaningful.
- _tromp:_ Let's say a few dozen blocks.
- _joltz:_ Would have to think about it more. Intuitively it sounds cheaper but might be wrong.
- _quentinlesceller:_ Like what are the difference in odds (if any) between double spending a coinbase and a regular output.
- _paouky:_ These risk even if they play off, are not detrimental. I think they are bearable. But I'm not sure how much privacy benefIt do we actually get from this change. It boils down to whether it's worth the small risk. I'm not sure myself, that is. I'm sure a few of you understand it really well.
- _lehnberg:_ I think we're quite confident that it's not adding much in terms of privacy, other than cosmetic obfuscation. We have to assume anyone serious about deanonymizing grin transactions is monitoring the mempool, or am I wrong about that?
   - _joltz:_ That is a fair assumption.
   - _antiochp:_ I think that's fair.
- _lehnberg:_ And we can also say that this change would not add any mempool obfuscation, correct?
- _joltz:_ No one is going to squint and only look at the chain data only.
   - _lehnberg:_ I'm sure some will, but these are the same people that will not be able to tell _less_ from having one extra Indistinguishable output in the mix. i.e. the people that only look at the chain in order to deanonymize is hardly the people we are designing for in this case. _I think._.
- _tromp:_ I think this is a case of: If we could've changed this before launch, there is a strong argument to be made. But given that we launched with maturity, we should perhaps stick with it for now.
   - 👍: _antiochp, quentinlesceller_
   - _lehnberg:_ Yeah I think that's where I'm at mentally. And I'm kind of sad to say so.
- _phyro:_ Mempool might be temporary. Theoretically people could be using whatever crypto outside the chain which could improve the p2p sniffing.
- _joltz:_ It does make it a little more expensive maybe.
- _phyro:_ That is just my guess though, not saying it will happen.
- _lehnberg:_ If seems like a lost opportunity to be even simpler and more elegant.
- _tromp:_ The coinbase kernel will always be part of our consensus model now.
- _paouky:_ There's no community consensus on block maturity, most do not even know it exists. So I disagree on that one one @tromp @lehnberg.
- _antiochp:_ I would like to be convinced that there would be no subtle but significant change to the incentives introduced by removing the maturity rule.
- _lehnberg:_ @paouky let's flip it instead. Why do you think this is important?
- _tromp:_ In blockchain, you don't change consensus model unless there is broad community consensus for a change.
   - _paouky:_ Ok fair enough.
- _paouky:_ As I mentioned, I do not understand the full privacy implications like some of you. But I think the proposal should be judged as if we're before launch. Making a change in maturity is a technical consensus change, But not a mental one, if you know what I mean.
- _paouky:_ You know better.
- _lehnberg:_ If we get it wrong, it's going to be hard to fix given that this is our last hard fork.
- _tromp:_ Although that is more relevant after the first 2 years of grin.
- _yeastplume:_ Okay, so sounds like this is punted for now, with more discussion to be had regarding inputs. 

### 7. v5.0.0 planning
- _lehnberg:_ Planning issue: https://github.com/mimblewimble/grin-pm/issues/287 I suppose I ought to get everything into a nice list for next meeting. And we can try to take stuff out from it.
   So, we've talked about replay attacks, that's a contender.
   We've talked about coinbase rewards, that's a contender (although leaning towards punting). Since last dev meeting, newcomers to join the list are:
   * "max block weight". https://github.com/mimblewimble/grin/issues/3368.
   * Fees https://github.com/mimblewimble/grin/issues/3369. Yeast wrote 
   * consolidation of wallet commands / api functions (e.g no need for separate 'receive', 'finalize' etc commands) doesn't have to be 5.0.0, but a 4.1.0 should contain the 'final' version of all wallet commands so everyone has time to adjust before 5.0.0
   * method of slatepack address cycling
   * more optimised sql backend option for scalability needs (does not need any particular hf or major/minor release)
   * (nebulous thought) any changes/standards that might be desirable for an offline transaction relaying solution? Highly dependent on what direction we decide to take with this.
- _lehnberg:_ @yeastplume want to expand on your nebulous thought there? What were you thinking?
   - _yeastplume:_ No, too nebulous to form into words at the moment.
- _lehnberg:_ I also wanted to propose we throw in: Bulletproof iteration. Both bulletproof+ (which could reduce future chain size by 15% moving forward). But also, there may be some optimization in verification, if I'm not mistaken. Think it's in some tari post somewhere. There's a rust imp of bp+ done already at https://github.com/kzen-networks/bulletproofs.
   - _quentinlesceller:_ Updating our forks of libsecp256k1 would optimize a lot of things.

- _tromp:_ We should be happy to take that size reduction. Given that ibd and block size are dominated by rangeproofs. Even if there were a small verification time penalty. But I don't know if we want to wait until our preferred library supports it.
   - 👍: _yeastplume_
- _lehnberg:_ Someone like jasper would be great for this type of work. Hopefully we'll see him back in time to be able to take it on.
- _quentinlesceller:_ No hf needed though.
- _lehnberg:_ Oh, bp is not consensus?
- _tromp:_ The format is.
- _lehnberg:_ Dang I never learn...
   - 😂: _paouky_
- _tromp:_ The verification optimizations are not.
   - _lehnberg:_ Ok, then that's great!
- _quentinlesceller:_ Stuff like that https://github.com/mimblewimble/rust-secp256k1-zkp/pull/71.
   - _lehnberg:_ Is _not_? Or _is_?
   - _quentinlesceller:_ Not consensus breaking. Afaik. It's just optimization and safety stuff.
   - _paouky:_ Secp256k1, what qeunting and tromp and talking about, is not about bp+ @lehnberg.
- _tromp:_ Consensus-breaking: What's in the proof. Not breaking: How you verify it.
- _paouky:_ I see your confusion.
- _quentinlesceller:_ I don't want to derail the 5.0.0 stuff since we can do it any time. But better do it soon :)

- _tromp:_ We should not implement the space savings until the improvements are blessed by the cryptographers community. In case there's some bug lurking in the proofs.
   - 👍: _joltz, antiochp_
   - _lehnberg:_ Okay, so that's an argument _against_ trying to fit bp+ into 5.0.0, correct?
   - _tromp:_ Correct.
   - _lehnberg:_ 👍
   - _tromp:_ It's a bit young to mandate inclusion in 5.0.0.
   - _antiochp:_ Not just an argument against, but likely a blocker.
   - _tromp:_ No big deal if we get the space savings a year or 2 later.

- _lehnberg:_ Understood. So aside from those points and features mentioned above, are there more worth mentioning today? Anything we're missing?
   - _joltz:_ The sooner we get payjoin in the better for privacy imo. Not consensus breaking though.
   - _dburkett:_ I don't believe we get many privacy benefits from payjoin..
   - _joltz:_ It breaks directionality.
   - _dburkett:_ It's mostly valuable for obscuring amounts.
   - _joltz:_ Which is a major heuristic for analysis.
   - _dburkett:_ But it leaks inputs to potential senders.
   - _joltz:_ Not when implemented correctly.
      - _dburkett:_ How would you avoid that?.
   - _dburkett:_ There's privacy tradeoffs. The sender needs to know all inputs being spent.
   - _joltz:_ Ah I see, yes it does leak the one input. I thought you were talking about utxo harvesting.
      - 👍: _dburkett_
   - _joltz:_ That is not a bad tradeoff to leak one input between parties that mutually agree to break the entire graph of directionality for the network imo.
   - _lehnberg:_ I don't see how it can be a detriment, if it's opt-in / consensual.
   - _dburkett:_ Yea, but how do you mutually agree? Will it be a user decision? Or Will wallet decide at random?.
   - _joltz:_ Both wallets would have to have --payjoin flag or whatever. However they want to configure.
   - _tromp:_ Wallet decides by setting.
   - _joltz:_ You only need a few parties using payjoin to get the privacy benefits for the whole network.
   - _dburkett:_ Then it's not mutual. The receiver has to expose to every possible sender.
   - _joltz:_ Payjoin isn't for privacy of alice and bob it is for privacy of the whole network. Which include alice and bob.
   - _dburkett:_ Well, technically mutual, but you can't just approve for a trusted sender..

- _yeastplume:_ We're way over time and I need to run, so going to allow @lehnberg to wrap up the 5.0.0 planning issue, or call an end to the 'official' meeting. Thanks everyone!
   - _joltz:_ Thanks @yeastplume 👋
   - 👋: _antiochp_

- _joltz:_ @dburkett it is nice if like a merchant runs payjoin on their server and customers can choose to use it or not.
   - _dburkett:_ True.

- _lehnberg:_ As part of the agenda point, we also had: "soft fork proponent arguments published?"
  
   @dburkett I know you've a lot on your plate these days, but are you planning on making that soft fork argument post on the forum? Should we keep it as an open question on the planning list?
   - _dburkett:_ Yea, I've been meaning to do that.. Keeping it as an open question would be nice.
   - _lehnberg:_ Cool, then let's do that.
      - 👌: _dburkett_

### 8. Other questions
_None._

**Meeting adjourned.**