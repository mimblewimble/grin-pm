# Meeting Notes: Development, Nov 10 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- deeev
- jaspervdm
- joltz
- lehnberg
- paouky
- phyro
- quentinlesceller
- tromp
- vegycslol

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _antiochp:_ Jasper and I continue to make progress on pibd prep work. I believe there is also a PR coming shortly related to "late locking" on wallet side of things. @tromp has prs up for fees RFC and daa rfc.
   - 🚀: _paouky, phyro_

### 2. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/363) was reviewed and accepted with a point added to discuss the recent re-org attack.

### 3. Action point follow ups from previous meetings

#### 3.1 Slatepack comms
- _lehnberg:_ I've been a blocker there, just been swamped with other stuff. Asked @joltz to give me a few days more to action the ones I'm meant to contact and then update our doc.
   - _paouky:_ What doc is that?
   - _joltz:_ Just a doc we have been using between ourselves to track who we have contacted etc. Based on the services doc you compiled.
      - 👍: _paouky_
   - _lehnberg:_ Yes, can share a list and status of the companies we've contacted once we've concluded, just don't want to blast people's names and personal contact details out in public. 

- _joltz:_ Have been continuing follow ups with points of contact at various exchanges. Receiving mostly canned responses but continuing to follow up until we hopefully get some actions.
   - 👍: _antiochp_

#### 3.2 QA team student follow up
- _antiochp:_ Funding request has been withdrawn due to time constraints.

#### 3.3 NiceHash testnet mining
- _antiochp:_ I think we are mining on testnet right?
- _quentinlesceller:_ Unsure if someone is mining right now. At least not on testnet grinmint.
- _jaspervdm:_ I havent seen a block in like 5d.
- _quentinlesceller:_ Okay so the cheapest solutions was to use a vps (the provider you mentionned @antiochp  can't recall here).
- _jaspervdm:_ I recall @tromp wanting to ask lolliedieb if he had spare gpu power.
- _tromp:_ I was mining on a friend's machine for almost a week, but stopped after noise complaints:( Lolliedieb doesn't have a gpu to spare.
- _quentinlesceller:_ Hostkey that's the cheapest right now.
- _jaspervdm:_ Ok so lets pull the trigger on the hostkey one?
- _tromp:_ Alternatively, we take johndavies up on his offer and let the chain progress at a slower pace.
- _quentinlesceller:_ Tromp which one is the smallest machine we can get. https://www.hostkey.com/gpu-servers#/.
- _tromp:_ I'd go for a 2080ti but don't see it listed. They mention them on top though?!
- _paouky:_ We can probably find someone with a 2080ti and pay him a rate that is above normal market rewards for mining with this gpu?
- _quentinlesceller:_ I do think we need to invest a bit in order to have a stable testnet running. No 2080ti what about 2x1080ti or 1 x 3080 or 1 x 3090?
- _tromp:_ Are we ok with testnet progressing with avg blocktime > 60s ? e.g. 80s?
- _jaspervdm:_ Yes I think so. I don't think there is an advantage in getting 2x 1080ti compared to a single 1080ti. What matters is we have a stable flow of blocks.
- _tromp:_ In that case a single 1080Ti would be ok.
- _antiochp:_ Yeah as long as they are coming in regularly
- _quentinlesceller:_ Yes that'd be 96€ per month right now, seems fair.
- _antiochp:_ Lets just do that at 96€ for now? We can always revisit this.
   - 👍: _phyro, lehnberg, joltz, jaspervdm_
   - _quentinlesceller:_ Yep agree too.
- _lehnberg:_ Defo worth it at least until HF4.
- _quentinlesceller:_ I'm CAD/USD based so I'd appreciate if someone else can manage the invoicing. I can manage the setup if needed.
- _antiochp:_ I feel like mainnet dev is likely to slow down somewhat after HF4 and testnet will become more important.
   - _lehnberg:_ You're probably right, I'm just saying "it's a no brainer to commit until January, let's evaluate after that if we want to extend"
      - 👍: _jaspervdm, antiochp_
- _quentinlesceller:_ We can have 12% off if we 1 year or 6% off for 6 months?
   - _antiochp:_ Maybe just monthly to start?
      - 👍: _tromp, vegycslol, lehnberg, quentinlesceller_
- _antiochp:_ Is anybody able to do EUR based invoices?
   - _jaspervdm:_ Yeah I could rent the server if you want, if someone else can take care of the actual admin i.e. setting up the miner.
   - _quentinlesceller:_ Yep can do.
   - _antiochp:_ Awesome - @quentinlesceller and @jaspervdm you can take this from here?
   - _jaspervdm:_ yes
   - _quentinlesceller:_ Yep
- _jaspervdm:_ Update on the hostkey server, only after you confirm the order they state the the 96EUR is without VAT. so total cost will actually be 116.16EUR.
   - 👍: _lehnberg, antiochp, joltz, phyro_

### 4. Re-org attack
- _joltz:_ Thanks to @quentinlesceller for catching it early on his saturday night, otherwise response time would have been slower.
   - 👍: _lehnberg, antiochp, deeev_
- _antiochp:_ Onto the reorg that we experienced over the weekend, writeup [here](https://forum.grin.mw/t/grin-51-attack-technical-report-published/7946/). Thanks to @deeev, @paouky, and @mcmmike for putting this together.
- _joltz:_ I'm blocking off a little time this week- my hope is to come up with a simple algo based on nicehash data, pool data and node data to provide a 1-5 health score for the network. This can then be called from grin.mw to provide a color code score for network health with associated recommendations based on the current level.
   - 🚀: _antiochp, phyro, quentinlesceller, lehnberg, paouky, bladedoyle_
   - _lehnberg:_ Would be awesome.
   - _jaspervdm:_ That would be great. Of course NH isn't the only possible source of attacks as there are large GPU farms out there (that can be rented at a premium) but it's the only publicly available information.
   - _mcmmike:_ Please also consider looking at https://github.com/bladedoyle/grin_nicehash_defender. I am testing it at the moment and if we would decentralize it with a central amount of funds to scare attackers, it would be great.
      - 👍: _joltz, deeev_
- _deeev:_ Should we increase overall the transaction cache timer limit in case of new large reorg on all node? I've personally updated my own one to 1440.
   - _tromp:_ Ideally, exchanges would have dynamic confirmation times depending on amounts deposited. But if they insist on static numbers, then I'd strongly recommend using at least 1440 blocks (1 day).
   - _quentinlesceller:_ Seems unlikely to happen though.
   - _antiochp:_ @deeev you are talking about the "reorg cache" that we use to re-add txs to the local pool?
   - _deeev:_ Yes, in the reorg some txs were not broadcast again because of the 30 min limit I guess.
   - _antiochp:_ Yeah we'd need to look and see if that would actually re-broadcast or not (I suspect it only affects the local pool). I don't recall.
   - _jaspervdm:_ So it would be good for pools to increase that value on their stratum nodes.
   - _antiochp:_ We also need to be careful as that is in memory and 1440 blocks worth of txs could (potentially) be a large # bytes. Can somebody open an issue on github for this (if not already on there)? So we can track discussion of this.
   - _deeev:_ [Will do](https://github.com/mimblewimble/grin/issues/3489)
      - 👍: _antiochp_
- _antiochp:_ The grinnode alerting worked but highlighted some "gaps" in our internal logging (which the alerting is driven off).
   - _tromp:_ Did I understand correctly that many nodes went into sync mode to do the reorg?
   - _antiochp:_ Yes - the "fork" was withheld so nodes only saw it once it was 5 blocks beyond current chain head.
   - _antiochp:_ Which triggers sync mode to catch up.
   - _tromp:_ But that's not sync from scratch is it?
   - _antiochp:_ No we have a "catch up sync".
   - _lehnberg:_ Is that a good thing?
   - _antiochp_: Not sure if "good" but I think it's the only way to handle this.
      - 👍: _lehnberg_ 
   - _antiochp:_ if your local node suddenly sees a competing chain that is multiple blocks ahead it needs to request multiple blocks (and my never have seen them via broadcast or relay). "Catch up sync" is basically the same impl of the first stage (request multiple headers) and final stage of full sync which is "full blocks to catch up to latest header".
- _lehnberg:_ Btw, do we still have no idea whether the attack was successful?
   - _joltz:_ There were some successful double spends but I don't know for sure whether any entity lost funds as a result.
   - _deeev:_ I guess the 2nd reorg was a fail, but it seems to have been successful for other as big dump happened at the same time they reached ~10 confirmation.
   - _jaspervdm:_ Exchanges are only requiring 10 confirmations? Seems awfully low.
   - _deeev:_ Some as Kucoin do afaik.
   - _joltz:_ Yes, 10 confs in grin is risky for any exchange.
- _lehnberg:_ Just feels like it was a test this weekend and that they will be coming back for more.
   - _phyro:_ Yes, we should expect more. I agree with @deeev, we need to expect these re-orgs to be longer. The current ones were around 30-40min, if they go over 1h then at least a window of 30min won't get rebroadcasted which opens up the users from txs in that window for a double-spend.

- _tromp:_ Can we recommend confs >= 1440 to exchanges?
   - 👍: _phyro, deeev_
   - _deeev:_ Would be great to know the targeted exchange.
   - _joltz:_ We can recommend 1440 to be safe but it may be a hard pill to swallow for exchanges and users.
   - _phyro:_ Better safe than sorry.
   - _tromp:_ Lack of slatepack support is a harder pill to swallow. :(
      - _joltz:_ It doesn't help that we don't have full buy in from other ecosystem wallets that will continue to support deprecated methods.
      - _lehnberg:_ Let's not confuse topics, slatepack has little to do with the re-org.
   - _jaspervdm:_ I'd rather leave that up to the exchanges themselves. I'm sure they have their own risk assessment. If we don't make any recommendations we can't be blamed for it either.
   - _antiochp:_ Kind of agree with @jaspervdm, it's up to exchanges to decide their internal rules for this.
   - _tromp:_ We are implicitly recommending 10 because of the wallet default.
   - _lehnberg:_ Yeah, I believe our current recommendation is in the software, and it's 10 confs. :/
   - _jaspervdm:_ How so? We don't provide any software that keeps user balances and allows trades with them after 10 confs. We have 10 confs by default on re-spending of received funds on the wallet but thats a different topic imo.
      - _tromp:_ Doesn't seem all that different to me.
      - _antiochp:_ I guess `grin-wallet info` displays "confirmed" funds which defaults to 10 confs.
      - _jaspervdm:_ Presumably the double spends involved withdrawing some other crypto.
   - _phyro:_ How about a statement that they should consider increasing the confirmation times to make them less likely a target of a 51?
   - _paouky:_ It definitely makes sense to chage the default to 30, even without considering the recent reorgs, 10 is super low to begin with.
   - _antiochp:_ 10 is bitcoins 6 rounded arbitrarily up to 10.
   - _paouky:_ We can choose 60 confs to be on the same side of bitcoin.
   - _tromp:_ For grin-wallet to receive, say, 100k Grin, it would indeed be wise to require more confs on the inputs.
      - 👍: _phyro_
   - _antiochp:_ Yes agreed - 10 was simply to minimize the chance of the wallet getting messed up due to "natural" 1-depth reorg. But not sure that can be automated reliably.
   - _joltz:_ The problem with basing it on # of grin is that there is no way to know the actual value of the grin. 10k could be <$1 in theory.
   - _jaspervdm:_ Currently there are no restrictions on the receiver side on the age of the inputs, it all happens on the sender side.
   - _antiochp:_ No we use # confs when displaying balance with wallet info.
   - _phyro:_ Number of grins = number of seconds for confirmation, with a minimum of 30 min or so lol.

- _paouky:_ Can we agree as a first step to at least increase the default confs for grin-wallet balance?
   - _antiochp:_ I'm not convinced we want to - having 30 makes wallet cli confusing (funds take ages to arrive). An exchange accepting funds is an entirely different use case to somebody trying grin for the first time. And the wallet defaults were biased toward new user trying it out "wait 10 mins for funds to confirm" for example (where 10 mins was roughly equivalent to a single bitcoin block).
   - _joltz:_ My main concern with increasing this number now is that services will blindly use it again without understanding the implications.
   - _jaspervdm:_ We could have different defaults for the cli and the api. But yeah, regardless of what we put the default api value at, I don't think exchanges should be using it blindly. So we might as well leave it at 10.
   - _antiochp:_ Maybe the api should require an explicit value in there, but hard to do this now.
   - _jaspervdm:_ Yeah would require us to introduce a new api version (technically changing default value does too).
   - _joltz:_ I'm not sure it makes sense to force all uses and tx's to require 30 min. It would be up to each use case to increase this based on their risk model. Otherwise it is a potential reduction in overall usability imo.
   - _antiochp:_ Yes wallet is already too complex for new users.

- _antiochp:_ Ok I'm not sure how we resolve the "default confs" debate given we only have the reference wallet impl shared by cli and api.
   - _deeev:_ Maybe adding a new category?
   - _mcmmike:_ Make it optional in the grin-wallet.toml file to increase the block-waiting-time.
   - _phyro:_ Conf times are a per-transaction thing really. If I make a tx with a person I trust, I don't need many confs. 
   - _jaspervdm:_ Currently the min number of confirmations on inputs is already a cli argument and api configuration field. I think its fine as-is.
      - 👍: _quentinlesceller, antiochp_
   - _joltz:_ Or even simplify it as risk/confidence with low (10 confs), medium (60 confs), high (1440 confs)
      - _phyro:_ Add paranoid (1440 * 7).
   - _vegycslol:_ I don't think changing default confirmations will change anything. Exchanges are an exception, we need it to be nice for majority of users. I doubt exchanges are that stupid to not understand the consequences of having a fixed low confirmations, they just don't want to do it because they would lose users imo.
   - _lehnberg:_ Happy to leave as is.
   - _joltz:_ It might be more appropriately managed at a higher level- in exchange software or wallet gui wrapper.
      - 👍: _antiochp_
   - _tromp:_ What I would like is a configurable option to use max(10,v/30) age for output status confirmed, as suggested in https://forum.grin.mw/t/improvement-proposal-dynamic-tx-confirmation-times/7945/3

### 5. v5.0.0 status
- _lehnberg:_ https://github.com/mimblewimble/grin-pm/issues/287
   
   https://github.com/orgs/mimblewimble/projects/1

- _antiochp:_ Lots of in progress items.
- _lehnberg:_ Yes, anything that's inaccurate and needs an update?
- _jaspervdm:_ So two weeks until targeted beta release date.
jaspervdm
   - _lehnberg:_ Does it still feel realistic?
   - _jaspervdm:_ From my side, I think yes.
   - _lehnberg:_ If you had to take the lead on @yeastplume's items, would you manage?
   - _jaspervdm:_ For #4 yes, #5 I'd have to look at it. If its merely removing some code to support http that should be doable as well.
   - _lehnberg:_ Okay, just thinking, as we've not heard from yeast in a while now.
- _tromp:_ My HF4 and fixdaa PRs are ready for review. Fixfees still has failing `test_transaction_json_ser_deser` due to  string vs number encoding, which jasper is helping me with.
   - _jaspervdm:_ Oh right, I will fix that asap. We do have to discuss increasing slate version for your changes though. That would mean supporting old slate (pre-HF) and new slate at the same time.
   - _tromp:_ If we use same u64 encoding for FeeFields, then there's no real difference with new slates.
   - _jaspervdm:_ But there is a semantic difference. If an upgraded wallet communicates with an non-upgraded wallet they disagree on the actual fee.
   - _tromp:_ They can only disagree if wallet uses a positive shift. Which the wallet can't do yet.
   - _antiochp:_ 0 shift is effectively backward compatible right?
      - _tromp:_ Yes
      - _jaspervdm:_ Ok
      - _tromp:_ All existing fees are implicitly `0 fee_shift`.
      - _antiochp:_ And we're not necessarily looking to expose this in the wallet yet, just internal impls.
      - _tromp:_ It could be many years before wallets have need to support positive fee shift. When blocks fill up.
      - _antiochp:_ So can we get away with no slate version change for now?
      - _tromp:_ Yes
         - 👍: _antiochp_
         - _jaspervdm:_ Ok good
      - _tromp:_ Just need to force the same u64 encoding for `FeeFields` as we had for plain fee.
         - 👍: _antiochp_
      - _jaspervdm:_ Yep will get on that.
      - _antiochp:_ @tromp you are blocked on those other PRs waiting for review?
         - _tromp:_ Yes, awaiting review now. Need to properly assign reviewers on PRs.
         - _antiochp:_ Ok I'll aim to take a look over the next couple of days.
- _jaspervdm:_ For the PIBD there are 4-5 PRs that are all nearing completion and hopefully we can move to merge the first ones of them soon.
   - _antiochp:_ Yes PIBD work is getting close to integrating a few separate PRs.

- _tromp:_ Can we come back to the slate version issue?
there is one actual change. In some cases, the field name is changed from "fee" to "feef".
   - _jaspervdm:_ Oh right. What if we stick to the "fee" name? We don't have a need to support fee and feef simultaneously right?
   - _tromp:_ No. Let's first get all tests passing with current feef, and then I'll change it back to fee, and make tests pass again.
   - _antiochp:_ Shall we wrap the dev meeting up and continue with that? Anybody have anything else? otherwise I think we're done?
      - 👍: _quentinlesceller, jaspervdm_
   - _jaspervdm:_ Sounds good. In conclusion I think there are no major roadblocks for any of the points on the list to get the beta out in 2 weeks.
      - 👍: _antiochp_

### 6. Other questions
_None._

**Meeting adjourned.**

