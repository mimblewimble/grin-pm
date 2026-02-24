# Meeting Notes: Development, Jun 23 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 70 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- joltz
- lehnberg
- quentinlesceller
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ So quick retrospective of the last two weeks, we've released a few betas now and have been testing and ironing out a few issues. Overall I think things are mostly working as intended, with the odd hiccup here and there.

### 2. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/304) was accepted without modifications.

### 3. Action point follow ups from previous meetings

#### 3.1 [Release checklist](https://github.com/mimblewimble/grin-pm/pull/292)

- _quentinlesceller:_ Done very simply. Followed lehnberg advices and rename to release_process.md. Which contains the different steps to follow for every new release. We might want to have a followup issue for every new release or maybe We can manage without it (as we did for now).
- _yeastplume:_ Nice 👍 Is it finalized, seems there's still a bit of back-and-forth? I'll have a detailed look as well.
- _quentinlesceller:_ It's a start:) thanks:)

### 4. Status of [Grin v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)

- _yeastplume:_ Remind me what the RC date is?
   - _quentinlesceller:_ 16-06? https://forum.grin.mw/t/grin-v4-0-0-network-upgrade-hard-fork-3-july-2020/7001.
   - _yeastplume:_ Well, that just flew by, didn't it?
   - _quentinlesceller:_ We are a bit late but however we found a pretty annoying issue during floonet hardfork that was just fixed. We = @antiochp:)
   - _antiochp:_ Yeah - I think we plugged the last hole there in terms of a smooth transition during hf3.
   - _yeastplume:_ Should we aim for rc at the end of this week?
      - 👍: _antiochp_

- _lehnberg:_ My beta2 nodes have been running w/o hiccups. Only got some `fraudheight` banreasons in the logs tab.

- _yeastplume:_ And I note we don't have a date in there for the actual 4.0.0 release.
   - _quentinlesceller:_ I'd say yes wdyt @antiochp.
   - _antiochp:_ Yeah lets do it.
   - _antiochp:_ I don't anticipate anything else getting merged to node between now and then - unless we uncover another fix.
   - _yeastplume:_ Okay. There's a small api change I want to get in tomorrow on the wallet, and I'll do up proper release notes.

### 5. [Replay attacks and possible mitigations](https://forum.grin.mw/t/replay-attacks-and-possible-mitigations/7415)

- _yeastplume:_ So we have a thread with plenty of lively discussions, but no definite decisions one way or another. Is this something we want to discuss right now or wait until 4.0.0 is a bit more out of the way.
- _antiochp:_ I think we can hold off until after 4.0.0?
- _yeastplume:_ Yeah, I think so, we can leave the thread going anyhow until then.
   - 👍: _antiochp_
- _antiochp:_ Its not an ideal situation, but its known and we need to think it though before getting ahead of ourselves with a fix.
- _yeastplume:_ Agreed, we can defintely target 5.0.0 as the deadline. 

### 6. [Coinbase outputs as transaction outputs](https://forum.grin.mw/t/coinbase-outputs-as-transaction-outputs/7441)

- _yeastplume:_ Similar conclusion on this point?
- _antiochp:_ Yeah we need to discuss that one some more.
- _yeastplume:_ There's an evolving thread, need to digest it myself before having an opinion.
- _antiochp:_ (those are both additional ongoing tx related discussions that I forgot to list in my forum post)

### 7. High level v5.0.0 planning

- _lehnberg:_ There's a nascent attempt at a planning issue here: https://github.com/mimblewimble/grin-pm/issues/287. So far proposals in there are `slatepack: Support for multi-party txs` and `tor Support for nodes`.
- _lehnberg:_ There's the wishlist thread on the forum: https://forum.grin.mw/t/wishlist-for-v5-0-0-the-last-of-the-scheduled-hard-forks/7238/23.
   - 👍: _quentinlesceller_
- _yeastplume:_ I'm sure we all have plenty to add to that list, just haven't got around to putting them down.
   - _lehnberg:_ Yes, so might be good to start sketching some stuff out now, and try to get a grip on what our must-haves are. While still acknowledging that it's super early in the process.
   - _yeastplume:_ Yep, +1, will start getting those down once our rc is out, it's super early in the process but it's also time to start focusing on it, once everyone's had a chance to recover from 4.0.0.

- _lehnberg:_ Take parallel ibd for example. Afaik it's not consensus breaking, but it's thought to be "nice" to roll it out clean. Original idea was to get something out in 4.0.0 and then see it in production and fix the final stuff for 5.0.0.
   - 👍: _antiochp_
   - _dburkett:_ I don't think stuff like this is too difficult to roll out without a hardfork.
- _lehnberg:_ Jasper, who was point, is still out of pocket and we're not sure when exactly he's coming back. So might make sense to do Some mitigation there. Or, maybe we say "you know what, we don't need this for 5.0.0 at all"? And just do it as part of 5.x?
   - _dburkett:_ We have protocol versioning and feature flags to manage that stuff.
   - _lehnberg:_ Yeah so it would be good to get us all aligned on how we want to go about stuff like this, well in advance before actual work on 5.0.0 kicks off. So we're sure we're working on what's most important for this year.
      - 👍: _dburkett, yeastplume_
  
- _lehnberg:_ With that in mind, I think @antiochp's wish to go and explore wallet for a while now makes more and more sense to me. Even if it's not directly consensus breaking, he might uncover some stuff that will need consensus changes. But there might be similar areas in node land as well?
   - 👍: _yeastplume_
   - _yeastplume:_ I do as well.

- _dburkett:_ Personally, I think we need to decide if we're going to add softfork support. If we are, that's top priority before the next hf. Additionally, we should determine if we're going to allow duplicate outputs, and prioritize that.
Beyond those 2, which must be figured out before the last hardfork, then wallet approach seems reasonable.
   - 👍: _yeastplume_

- _antiochp:_ Yeah duplicate outputs needs some discussion/decision early on  after hf3. And does overlap with "coinbase outputs as transaction outputs" so we need to consider that also.
   - 👍: _dburkett_

- _lehnberg:_ Re softfork: Is there any way around an approach where we end up supporting arbitrary data to chain? And if  there is no way around it, how do we feel about that trade-off?
   - _dburkett:_ The best we can probably do is limit the amount of arbitrary data to 32 bytes, but that still causes other messiness. 32 bytes per kernel, that is.
- _lehnberg:_ If we cannot soft fork, that means we have to hard fork for such changes. Naively, could that "motivate" us to ensure we manage to hard fork? Or does it just mean We can never hard fork, i.e. We cannot soft fork either, and we're stuck with what we got. If we had an easy way to soft fork, I would imagine hard forks would hardly ever happen.
   - _dburkett:_ It's a risk.
   - _antiochp:_ Yes I think there is argument to be made that if we can only hf then we (as a community) may be more likely to make it actually happen if required.

- _dburkett:_ I suspect that if we don't include code for an additional, planned hardfork as part of the next hf, and we also don't include softfork support, then there will probably always be a grin (grin classic maybe) that follows the v5 consensus rules. But that assumes there's someone to actually lead that effort. With the currently low dev interest, maybe it wouldn't be a problem after all. But 5-10 years from now, who knows.

- _lehnberg:_ Yeah and that's _another_ question to iron out once and for all as part of hf planning: Are we adding more planned hard forks or not? The current position I am estimating to be little support for additional scheduled hard forks. When we discussed it before, major arguments was "slippery slope, add one, you enable indefinite more to come" and "grin's baselayer should be immutable by default".
   - _yeastplume:_ I think the ecosystem is rightfully becoming weary of hardforks and large changes.
   - _quentinlesceller:_ What's the risk of adding another scheduled hard fork in a 1 year and half?
      - _lehnberg:_ That we'll keep doing it. Each time saying "last one, promise!".
      - _quentinlesceller:_ Mmm I see.
   - _yeastplume:_ And I would love the project to move into a mode where the base layer is established, the transaction flow is established and we can move on to refining without having to be almost solely focused on what has to go into the next hard fork.
      - 👍: _quentinlesceller_
   - _quentinlesceller:_ I'm not a big fan of soft fork and I think emergency hard fork are doable.

- _antiochp:_ So yeah we would default to immutable with a requirement to do an unplanned, unscheduled hf _if required_ (where presumably the bar is set pretty high for this).
- _joltz:_ It is impossible to prevent possibility of a hardfork. They will always be possible if there is a good enough argument made to community, miners etc.
- _lehnberg:_ I guess. Yeah I mean one argument which I think would be valid for more hf is if for some reason discover we need more time for something very specific. Example: We discover during q3 slatepack is a disaster, utter failure, We pivot to some dht style message store on the nodes  → We need to make more consensus changes and we don't have time to do it.
   - _quentinlesceller:_ That'd likely not require a consensus change though? 
   - _lehnberg:_ Maybe not! Seems like very few things do. Does it btw also make sense then to audit our consensus code at some specific date, giving us enough time to fix any issues uncovered? Or would a security audit be likely to uncover things that can be fixed without breaking consensus here?
   - _joltz:_ I would be surprised if one turned up anything that required a changing for the consensus _rules_ but there could always be changes required to the implementation code, but this would not require consensus-breaking changes necessarily.
      - 👍: _lehnberg, antiochp, quentinlesceller_
   - _lehnberg:_ Okay, good one less thing to worry about.
   - _joltz:_ Don't take that as a guarantee though!:)
   - _antiochp:_ Yeah its possible to discover we have de-facto consensus rules that differ from what we thought was going in (due to a bug).
      - 👍: _joltz_
   - _joltz:_ I just mean the likelihood of something being turned up in an audit that we can afford, not the possibility of something existing at all.

- _lehnberg:_ Okay so still not seeing anyone making a compelling case for adding more scheduled hard forks beyond v5.0.0 (hf4). Of course, a situation might present itself that mandates this for whatever reason, but it doesn't look like there is one now.
   - _yeastplume:_ Don't need to take a decision just yet, but it feels like most are leaning toward immutability.

- _lehnberg:_ Is tor support on grin nodes consensus breaking? Not really right?
   - _joltz:_ Nope.
      - 👍: _lehnberg_

- _lehnberg:_ What about dandelion changes?
   - _joltz:_ No, shouldn't be. Unless we make major changes with some kernel tricks or something.

- _dburkett:_ I think the softfork decision needs to be made first. If we decide to not support soft forks, I might lean toward adding a hardfork. Immutability works for bitcoin because it's flexible. Mimblewimble, and grin in particular, are not flexible at all.
   - _lehnberg:_ What kind of hardfork? Just one, scheduled at some point? What's the motivation?
   - _joltz:_ I don't necessarily think immutability and a possible future hardfork to add a new feature are mutually exclusive.
   - _dburkett:_ Yea, scheduled in the future to avoid contentious hardforks that could occur due to some new feature we decide we want to add (like bulletproofs+ or something). Anyhow, not a strong opinion. Just the way I would lean.

- _lehnberg:_ As long as we have scheduled hard forks, we're still not really in proper "production mode", I've come to realize. Exchanges and wallets will have issues supporting us, and there's a lot of friction (and distraction) at the lead up to those hfs. So if we add more, we should be aware of that at least, basically considering us still to be in "dev". And experimental.
   - _dburkett:_ Then eth isn't in production mode:) But yea, 6 month hardforks are horribly distracting.
   - _lehnberg:_ "immature" perhaps?
   - _antiochp:_ Yeah those are good points - these 4x 6 month hfs gave us opportunities to improve, but moving beyond them is good.

- _lehnberg:_ Okay so mindful of yeast kicking us out soon. There isn't really that many big ticket items we can identify at this point? What's the verdict on parallel ibd at this point? We think we can do it later? Would be really nice to get rid of those zip files...
   - _dburkett:_ It's absolutely doable at a later date. It's certainly a nice-to-have feature, but no need to coincide with a hf.

- _lehnberg:_ Hmm. Yeah so then @antiochp looking into multi-party transactions become... Even more relevant?.
   - _dburkett:_ Well, still have to focus on the duplicate outputs & coinbase outputs stuff first, imho. Those are still high priority. But beyond that, multi-party seems relevant. I suspect it's not going to require consensus changes though.

- _yeastplume:_ Let's all aim to get our wish list down before the next dev meeting, then we can start the process of sifting through them?
   - _lehnberg:_ Sure. Feel free to add ideas here and we can go through in next dev meeting https://github.com/mimblewimble/grin-pm/issues/287

- _lehnberg:_ Coinbase outputs are consensus breaking?
- _dburkett:_ Yes. Coinbase outputs and duplicate outputs are both consensus breaking.
   - 🎉: _lehnberg_
   - 👍: _antiochp, joltz, lehnberg_

- _lehnberg:_ Soft fork proponents will need to build a case for it and why it makes sense and how the trade-off with allowing arbitrary on chain data is acceptable.
- _antiochp:_ Proponents of coinbase outputs as transaction outputs also need to convince everyone that immediately spendable coinbase is safe to do.
   - _lehnberg:_ Yes good point.

### 8. Other questions
_None._

**Meeting adjourned.**