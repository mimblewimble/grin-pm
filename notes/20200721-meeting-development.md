# Meeting Notes: Development, Jul 21 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 100 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- d2r2
- energyburn
- joltz
- lehnberg
- mably
- paouky
- phyro
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ I've been a little bit out of it due to family issues which are curtailing a bit now, so I should be easing back into it now. Mostly been looking into small issues and fixes before the nextbigthing(tm), whatever that may be.

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/316) was accepted without modifications.

### 3. Action point follow ups from previous meetings

#### 3.1 [Release checklist](https://github.com/mimblewimble/grin-pm/pull/292)
- _quentinlesceller:_ Done I just need someone to review it now, but should be good to merge.
   - _yeastplume:_ I'll take an action to review then.

### 4. Mitigating re-org risks
- _lehnberg:_ So I added this to the agenda in lieu of [this article by beam](https://medium.com/beam-mw/beam-mitigating-reorgs-1ad001bb08b9).
- _antiochp:_ I suspect we could fill 60 mins just discussing this...
   - _lehnberg:_ Yeah, was thinking maybe we just did a bit of an effort to get everyone on the same page about whether there are any risks, and what possible options are. Rather than us going deep deep into arguments for this or against that.
      - 👍: _antiochp, quentinlesceller_
- _lehnberg:_ So what's the tl;dr? I have a hard time cutting through the marketing speak of that article.
   - _tromp:_ Beam repeatedly suffered 51% attacks which they confirmed as defrauding exchanges. Some of which ignored their recommendation to increase requires confirmations to 60. By now they're all using at least 70 or 80 for beam. Beyond their checkpoint depth of 60. They don't allow reorgs deeper than 60. Unless the tip is more than an hour old.
   - _lehnberg:_ This is something that was added to mitigate against double spend attacks, correct.
   - _tromp:_ Yes, this is an attempt to stop 51% attacks.

- _lehnberg:_ From conclusions section of the document:
   > we implemented a rolling checkpoint mechanism that prevents automatic reorg any deeper than 60 blocks.
   > * in addition to stealing funds from exchanges, attacker puts the network at risk
   > * some dependent transactions may not be recovered after the reorg, causing inconvenience to users
   > * risk of network split is imposed

- _phyro:_ One important thing to note (imo) is that the attack was of the 'worst' type:
   > we analyzed the reorged blocks and noticed that they were mostly empty, but some one of them contained a single transaction. This was consistent with how an attack might be played out.

   Which makes me wonder whether the transactions were replayed after of all tx graphs were stopped (something that could be compared/worse to coin maturity rule not existing).
- _tromp:_ They admit that their consensus rule for chain to follow (normally called longest chain rule) is unsound. Allowing for splits. Which can only be resolved manually.
- _quentinlesceller:_ No pow coin is immune to such account and afaik there is no quick fix apart increasing the conf time for exchanges.
- _tromp:_ I think that grin would rather suffer a 51% attack than adopt an unsound longest chain rule.
   - 👍: _antiochp, phyro, joltz, quentinlesceller, yeastplume, lehnberg_
- _antiochp:_ One thing we are not doing today is actively monitoring for this.
- _tromp:_ It really is up to exchanges to properly defend against them. Which they can. And which would take away the incentive for them in the first place. Exchanges can vary the #confirmations dynamically, *per-user*. Depending on how much that user is able to profit from the attack.
   - 👍: _paouky_
- _antiochp:_ Is it worth opening an issue or a forum thread and track thoughts/ideas on this there?
   - 👍: _phyro, lehnberg_

- _lehnberg:_ So there's a dilemma there right? 
   **either:** keep your longest chain rule intact, no checkpoints, makes it easier to 51% attacks, but encourage exchanges and vulnerable services to increase confirmations, and ride out the attacks as best you can
   
   **or:** introduce checkpoints of some sort, unsound longest chain rule, harder to 51% attack, but _much_ easier to force a network split, and introduce a centralization point where some group of people determine what is the "right" chain once a split occurs. 
   
   sounds about right?
   - 👍: _tromp_
   - _antiochp:_ @lehnberg yes I think so.
   - _quentinlesceller:_ Yep.
   - _lehnberg:_ And beam went with **or** here.
      - 👍: _antiochp_

- _lehnberg:_ Okay. Yeah we should probably document this somehow on the forum. @tromp would you like to do it? If not I can make an attempt.
   - _tromp:_ Can you make an attempt, and I'll review?
      - 👍: _lehnberg_

- _lehnberg:_ And maybe separate from that dilemma... 
   1/ How vulnerable is grin right now to the same type of attacks? I.e. How relevant is this to be concerned about for us; and
   2/ what can we do to _monitor_ for this, to determine whether it's happening, or someone is doing something... Fishy.
   - _quentinlesceller:_ Someone needs to do the nicehash calculation.
   - _antiochp:_ This is definitely something where community input and thoughts would be valuable - there may be strong opinions on this.
   - _tromp:_ Depends on how much grin is actively traded. Ie.how easy could attacker buy up $10k or $100k worth of grin to use in attack. Attack was easier on beam since they halved reward.
       - _lehnberg:_ Ah interesting, it's not only about the hashpower.
   - _joltz:_ I can speak To point 2: To monitor we would rely on our more devops/sre inclined members To help build a traditional c&c setup where we have geographically distributed nodes that have a communication layer to track these attacks as they propagate through the network.

- _yeastplume:_ Okay, so action taken. Shall we move on to 5.0.0 planning?
   - 👍: _quentinlesceller, phyro_

- _tromp:_ I thought there were websites dedicated to that. Can't remember where exactly though.
- _lehnberg:_ Wasn't there a site for that at some point? Do they have grin?
- _joltz:_ Right, we could have an algo to determine risk based on market conditions like mentioned above.
- _quentinlesceller:_ https://www.crypto51.app.
   - _lehnberg:_ That's the one. Maybe we could work with them to add grin on it. Or set up our own.
   - _quentinlesceller:_ https://github.com/tdickman/crypto51. Pr on this repo.
   - _tromp:_ At least my friend cuckoo is there.
   - _joltz:_ We can't trust it completely though as there are plenty of private pools of compute that can be purchased as well.
      - 👍: _quentinlesceller_
      - _lehnberg:_ True.
      - _quentinlesceller:_ Yep but that'd give a nice idea of the cost.

- _lehnberg:_ Okay so there's kind of three different work items available:
   1. forum post sharing of info (daniel/tromp).
   1. monitoring of p2p network for any attacks.
   1. calculation of attack cost or risk of attack etc. Anything else? We ought to be doing? Right this very moment?
   - _quentinlesceller:_ Sounds good to me.
   - 👍: _antiochp_

- _joltz:_ One option, probably controversial, would be to have a pool of money to purchase our own hashrate if needed in event of an attack. Just throwing it out there as a possibility, likely not practical considering our project structure.
   - _lehnberg:_ Well, we have the general fund? But is that really a good use of it? Heh.

- _tromp:_ Have access to archive node for post attack diagnosis. Part of /2 I guess.
   - 👍: _lehnberg_

- _phyro:_ It's impossible to stop 51% attacks, you can only recreate the attack to get your blocks back.
   - _antiochp:_ Worth discussing in forum.
      - 👍: _phyro_
- _lehnberg:_ Yup.
- _antiochp:_ Probably contentious. Would get us some pretty big pr if we blew the dev fund 51% attacking ourselves.
- _lehnberg:_ Okay, will track these three items (with sub-items) over at grin-pm and chase us during meetings etc until they are done.

- _paouky:_ I do not think it's worth discussing in forum.
- _quentinlesceller:_ Yeah I don't think we want to do that. Lol.
   - 😂: _phyro_
- _joltz:_ Haha yeah I'm not super serious about it but it is certainly an option (that I've used successfully in the past to defend a network).
   - _phyro:_ That's interesting. Please describe one the forum post the details of how this was done 🙏.
- _antiochp:_ No its a serious option to at least consider.
- _paouky:_ I see it as extra noise, there are enough serious things to discuss, I seriously doubt this suggestion would gather up any support.
- _phyro:_ I think we should probably move on since it's less than 30min and we haven't touched 5.0 topics.
   - 👍: _antiochp_

### 5. v5.0.0 planning: High level discussion of various Consensus changes
- _lehnberg:_ How are we doing all these 5.0.0 planning items @yeastplume? Are we doing like 5 mins cap on each topic and you push forward?
- _yeastplume:_ Well, I think we're not going to discuss each one in detail. Yeah, each topic gets 5 grin blocks.
   - 🤑: _lehnberg_
- _tromp:_ Ah, 5 grinutes:)


#### 5.1  Soft fork proponent arguments published?
- _lehnberg:_ @dburkett? I've not seen them so I guess still pending.
- 
#### 5.2  one-sided transactions (1TX)
- _yeastplume:_ Anyone want to give the tldr and where we are?
- _lehnberg:_ @johndavies24 is here? He wanted it on agenda. Afaik there's been no changes since last it was discussed: https://forum.grin.mw/t/status-of-litecoin-improvement-proposal-lip-0004-for-one-sided-transactions/7259. Link to the lip: https://github.com/litecoin-project/lips/pull/13
   - _quentinlesceller:_ Ah thanks. Rendered https://github.com/davidburkett/lips/blob/master/lip-0004.mediawiki.
   - _lehnberg:_ Last comment apr 14:
      > this also requires signatures on each transaction input to prove the secret key is known (ie not a rogue key). I will update the proposal shortly to include this new information. Is that required change trivial?
     
     Can we ignore this and take it as an easy fix, or does it change the proposal significantly?
       - _tromp:_ Somewhere in between.
- _antiochp:_ My understanding is this got surfaced again because there was a perception of rules around (community) consensus not being applied equally to different proposals. These would be non-trivial consensus changes.
- _quentinlesceller:_ Can somebody summarize the pros and cons of such approach?
- _lehnberg:_ I can do pros as best as I can:
   - no need for transaction building, i.e. no need for slatepacks, tor communication, text copy/paste etc;
   - sending and receiving gets reduced state, sender can create and complete the transaction and fire it off in one go, there's fewer things that can go wrong, less things that can lead to a tx stuck in limbo;
   - receiving is possible whilst completely offline with private key, so easier for things like cold storage etc. (Even if completely cold storage receive is possible in grin today as well, but with a lot more hoops.)
      - _tromp:_ No need for transaction building *for simple payments*. Still need them for multisig/atomic swap/payjoin/payment channel/etc.
         - _lehnberg:_ Correct.

- _tromp:_ It makes grin appear more like non-mw coins.
   - _antiochp:_ Yes - one question is should grin be more like other non-mw coins or should grin "embrace" its differences (one being interactivity).
- _quentinlesceller:_ Wait but the proposal also requires an interaction between sender and receiver?

- _phyro:_ Pros:
   - familiarity
   - survives the receiver's connection issues
   - receiver can take a nap and receive money
   cons:
   - dusting attacks
   - complexity
   - can't verify the chain fully if I remember correctly (because rangeproofs get pruned and they define the additional utxo structure).
   That's at least my current view. I probably forgot some pros and cons.
- _lehnberg:_ Was cut through possible all the same?
- _quentinlesceller:_ Wait but this part:
   > the first problem is the sender still has to communicate their public key and the value to the receiver, so we need to somehow commit to that data as part of the output without affecting privacy.

   Isn't solved? Or am I missing something.
   - _lehnberg:_ It's the same as in bitcoin I think quentin. Public key → your sending address. It's like the slatepack address.
   - _quentinlesceller:_ Thanks @lehnberg I'm too deep in mw now lol.

#### 5.3  duplicate outputs (DO)
- _quentinlesceller:_ https://github.com/mimblewimble/grin/issues/3271.
- _lehnberg:_ So my understanding of duplicate outputs situation:
   - was proposed by antioch and tromp.
   - no longer something they are actively pursuing.
   - is there anyone who now is actively arguing for having duplicate outputs?
   - _quentinlesceller:_ @kurt2/3 for sure.


- _tromp:_ It seemed like a good idea for simplifying payment channels. But also opens a can of worms, so I still had reservations.
- _antiochp:_ Among other things - just makes intuitive sense to allow two outputs to be the same (in some situations at least).
- _quentinlesceller:_ Imo it's still unclear.

- _phyro:_ Duplicate outputs might (not 100% sure) solve the play attacks.
   - _lehnberg:_ Which (if I'm not mistaken) are also solved by disabling invoice support and ensuring that a sender never keeps a cancelled/unanswered transaction in limbo indefinitely, correct?
   - _tromp:_ Play attacks are best solved by making tx cancellation work properly.
   - _quentinlesceller:_ I think that wouldn't be sufficient since the sender has to monitor the network?
   - _tromp:_ No, doesn't have to.
   - _phyro:_ Yes, when you sign an output, you need to take care and reuse it the next time if it 'failed'.
   - _tromp:_ There should be 2 cancel options:
      1. allow alternative spending of its input (i.e. Do not keep input locked), understanding that tx might still be confirmed.
      1. invalidate tx by immediate double-spend of input.
   - _quentinlesceller:_ Afaiu it the play attack requires that the sender act immediatly which might not work 100% of the time?
   - _phyro:_ He needs to react before he signs a payment again.
   - _tromp:_ Option 1) should probably expire after a certain time. A simpleminded wallet would not even offer option 1.


- _tromp:_ And now with replay protection it looks like a bad idea.
   - _quentinlesceller:_ You mean payjoin right?
   - _tromp:_ Yes, with payjoin for replay protection.

- _antiochp:_ Yes the rules around spending an output become a lot murkier and harder to reason about when duplicates can exists (both in utxo and txpool). Uniqueness of utxo is one of those limitations added early that actually make a lot of sense if you are willing to live with it and work around it.

- _lehnberg:_ Seems at least like this is not a slam dunk yes at this stage.
- _lehnberg:_ It would be good if we continue building out the github issue with pros/cons/considerations. Maybe @kurt3 @kurt2 can put in some arguments there as well.
- _antiochp:_ Yes we would need a strong compelling reason to change behavior (to allow do).
   - 👍: _yeastplume, lehnberg_

#### 5.4  NRD activation (NRD)
- _lehnberg:_ So for the uninitiated, nrd kernels are activated on grin's testnet, source code is in grin 4.0.0 mainnet (?) but is not activated on mainnet yet. The argument for it's inclusion in the first place is that it's needed for payment channels and some complex use cases like swap alternatives.
- _tromp:_ If not activated at hf4, then we very likely need an unplanned hf for later activation. So hf4 activation could be an attempt to minimize need for unplanned hf.
- _antiochp:_ That said there is no _strong_ reason why we need it activated in hf4 - we have it on testnet to play with. And legit concerns that it would be too rushed if not needed immediately.
   - 👍: _paouky_
- _tromp:_ If we're happy with future unplanned hfs, then not much need to activate at hf4. Which also allows more time to review.
- _yeastplume:_ That's another large discussion we need to have, but probably not in this meeting.
- _tromp:_ Would be nice to have some cryptographer's blessing.
- _antiochp:_ So maybe we get to full working poc of payment channels on testnet and then consider what to do with a hf on mainnet. Which takes pressure off getting it wrong on mainnet.
- _antiochp:_ But that assumes we _can_ get community support around a future hf.
- _tromp:_ I think there is broad community consensus for need to add payment channel support *eventually*.
   - 👍: _antiochp, phyro_
- _tromp:_ So relative kernels is not controversial in itself, only its timing and security are.

- _lehnberg:_ Generally I do think that we should take advantage of the opportunity we have with the hard fork. And if we need to get wiser on security before that, then we need to take active measures. It's not good enough to complain that "not enough people have seen it" and then leave it like that.
   - _antiochp:_ Issue there is the real security audit value would be in payment channel impl itself, not so much nrd kernels (only a small part of it).
   - _quentinlesceller:_ Or if we could get an audit between now and hf4.
   - _joltz:_ The risk of rushing is that if things go wrong it could require an emergency security hf as opposed to a slow rollout feature hf.
   - _lehnberg:_ I don't think talking about it for 1 year constitutes rushing it. It's not a feature that we've tried to sneak in here. And we have another six months now to improve our confidence, so let's use it.
      - 👍: _phyro_
      - _joltz:_ Well we don't have the implementation details solidified for payment channels (afaik) so we don't really know for sure it has been reviewed in the right context.
      - _quentinlesceller:_ Yeah I'd tend to agree with @lehnberg we have some time.

#### 5.5  expiring kernels (EK)
- _lehnberg:_ So optional expiring kernels was sth @dburkett wrote he wanted. Over the weekend. Is there a forum post or something that outlines why this is great? I know the kurts wrote some.
   - _yeastplume:_ Could definitely use a tldr.
- _quentinlesceller:_ Is it the same as what @kurt3 proposed https://docs.google.com/document/d/1bbxhgfd3byp_gfvnterq4bmfxjtv5pjtjwi13cjszt8/edit#?
- _antiochp:_ https://forum.grin.mw/t/efficient-solution-to-verify-kernel-uniqueness-better-absolute-timelocks/7526/60.
- _antiochp:_ This was an alternative approach to mitigating "replay attack".
   - _phyro:_ Yes. I think his solution also enabled a different way of achieving relative locks.
   - _quentinlesceller:_ Yeah this in combination with DO "can" mitigate replay attack (don't take my word on it haven't thoroughly reviewed).
      - 👍: _phyro_
- _lehnberg:_ Does anyone know if this is the same feature that david was supporting?

- _tromp:_ I think tx monotonicity should not be sacrificed so lightly. And we have non consensus breaking ways to mitigate replay attacks.

- _antiochp:_ Tl;dr we can prevent tx replay by making kernels unique - this is expensive globally but we can do it within a limited window.
   - _lehnberg:_ I know this was the kurts position. But it's not clear to me that this was David's motivation, he was talking about _optional_ expiry, which I don't know how it prevents replays. What were @dburkett's arguments _for_ this?
   - _antiochp:_ My understanding of the argument _for_ this was fixing replay attack at consensus level is better than adding wallet impl complexity.
   - _tromp:_ David considers tx expiry a simple solution, and wallet rules a privacy disaster.
   - _antiochp:_ It would be optional but everyone wanting to secure txs against replay would use it.
      - _phyro:_ Are you talking about kurt's idea here?
      - _antiochp:_ Kernel expiration in the context of kurt's idea yes. It's not clear this is something we want to do.
   - _lehnberg:_ I see. But... Once they are in there on consensus. What's the argument for not turning them on? Like, having some txs monotone, and others not. The argument for an end user, I mean.
       - _tromp:_ No, monotonicity is only useful if it holds for all tx.

- _lehnberg:_ So, if we're not ready to turn on nrd kernels because "not enough people have reviewed it and considered security", how is this different? What do we know about the implications of having expiring kernels, is that something that is obviously secure?
- _tromp:_ I don't think tx expiry poses particular cryptographic security risks. Except for the spamming issues.
- _lehnberg:_ Sure, but p2p layer / mempool security. Spamming issues: An attacker can flood the network with transactions that are about to expire. And pay no fees in penalty. As they will never be included in the blocks.
   - _tromp:_ Yes, that requires workarounds.
- _lehnberg:_ Does nrd kernels pose cryptographic security risks? Which tx expiry proponents unjustly trivialize, I think.
   - _antiochp:_ Potentially but maybe unlikely given their simplicity. Their _use_ in payment channels is far more likely to have risks. Nrd is just a simple building block.
   - _lehnberg:_ Understood.
- _tromp:_ Yes, we're not 100% sure they're cryptographically secure for their intended use as I outlined in mailing list. Just pretty sure:(
   - _lehnberg:_ Can we bounty that up somehow?
   - _tromp:_ Yes, we could.
   - _lehnberg:_ A proof or something or is that not at all feasible?
   - _tromp:_ Could offer 1btc for attack on nrd based elder channel design.
   - _lehnberg:_ Maybe just attack on anything nrd related?
   - _antiochp:_ We'd need to devote resources to fleshing out the design.
      - 👍: _joltz_
- _antiochp:_ Main idea of activating them was to allow experimentation.
- _phyro:_ What happens if 2nd nrd is blocked by an output?
   - _tromp:_ Nrd can be used to always have 2-of-2 outputs.
      - 👍: _phyro_

#### 5.6  [coinbase outputs as transaction outputs](https://forum.grin.mw/t/coinbase-outputs-as-transaction-outputs/7441) (CO)
- _antiochp:_ CO would be a nice simplification - but invasive in terms of consensus changes. And changes incentives around coinbase rewards in potentially subtle ways.
- _tromp:_ CO probably not worth it given the time and effort invested in current coinbase rules.
- _quentinlesceller:_ Which seems to work on ethereum though?
   - _antiochp:_ "seems to work on eth" is arguably not high enough bar for making a change like this.
      - 😂: _phyro_
   - _quentinlesceller:_ Yeah.
- _phyro:_ Coinbase outputs is why I asked whether the txs on beam were eventually replayed. Since the attacker didn't bother including them in their blocks.
- _antiochp:_ It would be really unfortunate to remove the maturity rule in hf4 to then discover a reason why we regret doing this.
   - 👍: _quentinlesceller, phyro, phyro, yeastplume_
- _quentinlesceller:_ Looks like a very low priority now.
- _tromp:_ I think we would need conviction that CO is huge privacy improvement to justify scrapping current proven coinbase rules.
   - 👍: _antiochp, phyro, quentinlesceller_
   - _yeastplume:_ Agreed there.

#### 5.7  bulletproofs+ (BP+)
- _yeastplume:_ Does someone have a link to the info/impl? Or rather, is there an impl or is this currently theory?
- _tromp:_ Monero has plans to implement them.
   - _tromp:_ https://suyash67.github.io/homepage/project/2020/07/03/bulletproofs_plus_part1.html.
   - _quentinlesceller:_ https://suyash67.github.io/homepage/project/2020/07/03/bulletproofs_plus_part2.html.
   - _lehnberg:_ Scroll down to grin section in part2.

- _joltz:_ It seems like a decent opportunity for inclusion in a future unplanned hf but personally I don't feel comfortable with the level of review it has to include it in a hf <6 months from now.
   - 💯: _phyro_
   - _yeastplume:_ Yes, this.

- _lehnberg:_ I'm in a telegram group with the bp+ authors together with kurt2 / kurt3 who are quite confident in the security of it. They were happy to answer any questions we had about it, they are in south korea time zone so couldn't make the meeting.
   - _yeastplume:_ How much review has it had though?
   - _joltz:_ The problem is I don't even trust myself to review it thoroughly enough to say "this is good enough for grin".
   - _lehnberg:_ Seems j bootle also vouched (somewhat) for bp+.
   - _tromp:_ So this is similar to nrd. Needed *eventually*.

- _antiochp:_ Might be good to get benedikt bünz view on these?
   - 👍: _joltz, quentinlesceller_
- _lehnberg:_ We could prob also ask Dan Boneh about them.
- _yeastplume:_ There are very few people who understand bulletproofs fully, I'd be relying on a named cryptographer or two to review it.
- _tromp:_ But could wait for others to thoroughly review it.
- _lehnberg:_ I don't have a direct line to benedikt, do either of you?
   - _joltz:_ I might but probably not more useful than a cold email from any of us.

- _tromp:_ It saves 96 bytes per rangeproof. But we're not sure if we can stuff the same amount of rewindable data in there.
   - _lehnberg:_ Can you formulate this as a question for the bp+ authors? Later, with me, and then I can ask them and maybe they can look into that.
   - _yeastplume:_ Yeah, that's kind of crucial or wallet restore falls apart.
   - _tromp:_ I wanted to leave that for jasper to figure out.
   - _lehnberg:_ Not sure when he's ready to come back.
   - _tromp:_ I'm not familiar with the bp rewinding.
   - _lehnberg:_ Ok.
   - _yeastplume:_ I'm familiar enough with it.
   - _lehnberg:_ Great - let's work on it offline.
   - _yeastplume:_ Okay. So, that would be the list.

- _yeastplume:_ Good discussion on all of these, I definitely have a better sense for the general feelings on each one. 

### 6. Other questions
- _lehnberg:_ For the record, I want to add that it's frankly disappointing to have the people who complain the most about our governance and development process missing in meetings where we are trying in good faith to consider and evaluate various proposals that are important to them.
   
   It seems like it's easier to be flippant and complaining about how pointless it is to engage, than it is to actually engage when given the chance to. I don't really see how things could possibly improve in the areas they complain about without them getting involved.
   - 👍: _antiochp, tromp_
   - 💯: _joltz_
   - _antiochp:_ I would be inclined to agree. These were on the agenda, some of them proposed by people on the agenda itself.
- _lehnberg:_ Can't make it? Wrong time zone? Just say so and we can try to move these meetings. Ignoring them and showing up for drive by comments later does not cut it in my opinion, sorry.

- _paouky:_ I generally agree, but to be fair there's not much discussion going on in meetings. Time is very limited.
   - _lehnberg:_ That's fair @paouky but you have a chance to voice dissent / argue counter argue / agree on an action point or two to take the matter forward.
   - _antiochp:_ This is the bi-weekly touchpoint where we can make solid (hopefully binding) decisions, particularly when there are concerns around community consensus.
   - _phyro:_ It is, but people could continue or just explain their views to have a starting point:)

- _yeastplume:_ This was just an overview session, I think that future meetings discussing these issues and 5.0 planning will be a bit more focused.

- _lehnberg:_ We have countless half baked forum threads that end up in screaming fights and repetitive arguments, not enough technical proposals and rfcs.
   - _yeastplume:_ I agree with this. We spent a lot of time putting the RFC process in place to allow anyone to propose changes in a comprehensive, reviewable, discussable manner.

- _lehnberg:_ "because it's pointless".
   - _tromp:_ Something about self-fulfilling prophecies....

- _paouky:_ You all have good points as well.

- _antiochp:_ We are in an interesting position where there are maybe 0 consensus related changes that are definite inclusions for hf4.
- _phyro:_ Just put something there so we can call it a hf.
   - 🍺: _paouky_
- _antiochp:_ Well pow changes. Header version gets bumped. And we are done.

- _phyro:_ I think there was some good progress e.g. Kurt made a pdf for his think.
- _yeastplume:_ Official meeting is adjourned. Feel free to rant everyone.
- _joltz:_ Thanks for keeping us on track @yeastplume 👋
- _antiochp:_ Thanks! 👋
- _lehnberg:_ Thanks @yeastplume excellent stewardship.
- _antiochp:_ 👍 on grinutes.
   - _lehnberg:_ Yeah let's keep that format for future meetings!
- _quentinlesceller:_ Thanks @yeastplume and everyone who participated.

**Meeting adjourned.**