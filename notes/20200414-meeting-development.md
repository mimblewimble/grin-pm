# Meeting Notes: Development, Apr 14 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 100 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- gr_invest
- jaspervdm
- joltz
- kurt2
- lehnberg
- paouky
- phyro
- quentinlesceller
- tenthousandlakes
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ Hope everyone is enjoying looking at the sun from their closed windows. Quick reminisce, it's really been all about the rfcs for 4.0.0, which I think are all now a good way along. I'll likely be moving the compact slates out of [wip] soon enough, and n(e)rd kernels is a good way along. I think @joltz wanted another pass on the slate ser rfc, but has been working on that in tandem with some real live testing you can see in the wallet channel. @dburkett has also started another RFC on encrypted slates over http.
   - _antiochp:_ Yes n(e)rd kernels should be ready for formal review now.
   - _jaspervdm:_ Regarding the parallel IBD RFC: I am in doubt whether to limit the scope of the RFC to only the required p2p messages or if I should also describe how the node will use these messages to perform the IBD. I am leaning towards the former. We can reasonably implement these new p2p messages before the next hard fork. Then we can actually implement the fresh sync process after that and activate it whenever we want. There's a bunch of technical work to be done that I'm working on and a few open questions that I am in discussion with @antiochp with.
      - _antiochp:_ Yeah I owe you some answers to those (have not forgotten).
      - _jaspervdm:_ No worries, have plenty to do in the meanwhile.
- _yeastplume:_ That reminds me, do we have shepherds for all of these? I forget.
- _antiochp:_ Maybe the IBD RFC should focus on the p2p messages, but with a high level overview of what we intend to do with them. Would be a shame to miss something important.
   - _jaspervdm:_ Oh I was assuming we would specify the p2p messages completely. But yes there's a risk here that we miss a field or something and have to update them afterwards.
   - _dburkett:_ I'd rather see the actual messages, even if we have to make changes later.
   - _antiochp:_ Oh I mean in terms of having an approach - not so much missing fields etc.
   - _jaspervdm:_ Ok, lets continue this offline. Either way will make sure at least we have a wip up soon that is somewhat fleshed out. Kind of did a deep dive on the technicalities of creating the merkle proofs haha.
      - 🚀: _antiochp, quentinlesceller_

- _yeastplume:_ Actually, reminds me I had a question on nerd kernels just in respect to the wallet, should there be a separate issue to support them in the wallet, support for the new kernel type and new signature structure?
   - _antiochp:_ Hmm - yeah actually _using_ them is non-trivial.
   - _jaspervdm:_ I think regular send operations do not need to use them, so no for now.
   - _antiochp:_ And not really much use outside multiparty outputs.
   - _jaspervdm:_ Until we want to implement some form of payment channel.
   - _yeastplume:_ Yes, I thought so, but I was thinking a bare minimum... Recognizing them and supporting the new sig format. With a more fully-fleshed out api to come much later. I suppose this can all come after the hf anyhow.
   - _antiochp:_ No sig changes.
   - _tromp:_ Wallet should just skip all kernels it doesn't recognize. E.g. when recovering.
   - _antiochp:_ Oh I see what you mean, message being changed is specific to the kernel type.
   - _yeastplume:_ Additional sig format? Or did I read that wrong. There should probably be some bare minimum recognition of them in the wallet, I don't think we'd want a state where some wallets in the wild know about them and others don't.
   - _jaspervdm:_ Not sure I understand, any tx the wallet will construct will either have a plain kernel or a lock height kernel, it does not ever construct a nrd kernel.
   - _antiochp:_ Hmm - want to open an issue on grin-wallet to track this conversation.
   - _jaspervdm:_ Unless we explicitly want to add that feature.
   - _antiochp:_ We can comment there offline.
   - _jaspervdm:_ But not sure we want to.
   - _yeastplume:_ But some other wallet might.
   - _jaspervdm:_ Wallet could simply refuse to sign such a tx.
   - _yeastplume:_ Anyhow, yes we can take this offline.
   - _jaspervdm:_ Since it requires an additional fee. Yes agreed.

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/273) reviewed and accepted.

### 3. Action point follow ups from previous meetings

#### 3.1  Tracking issue for all-libs-in-one-builder
- _quentinlesceller:_ On my todo will do today.
   - _lehnberg:_ 🔔
   - _yeastplume:_ !
   - _quentinlesceller:_ 🔔  myself.
   
### 4. Planning, [v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)

- _lehnberg:_ Planning issue: https://github.com/mimblewimble/grin-pm/issues/248. 
   
   Milestones
   node: https://github.com/mimblewimble/grin/milestone/17
   wallet: https://github.com/mimblewimble/grin-wallet/milestone/8.

   Would be great if we could go through the planning issue and update each state as required. 
   
   Tromp had his pow tweak ready in his head, and is on track as far as I recall.

   Compact slates now have RFC https://github.com/mimblewimble/grin-rfcs/pull/49. @yeastplume, you feel that's pretty much done, but that we'll leave trip2 slate for future releases?

   - _yeastplume:_ Yes, would be good if someone could take a look through https://github.com/mimblewimble/grin-wallet/pull/366 before I merge it.
   - _lehnberg:_ Any chance we could get trip2 too?
   - _yeastplume:_ Can't do trip 2 without reworking the actual transaction object, which is another major task. Trip 2 is basically a node item to reduce the size of the transaction serialization, can be done in between hf versions even.
   - _jaspervdm:_ Started looking at that pr @yeastplume but its quite a big one so give me a little longer. But merging of the pr should be dependent on the acceptance of RFC, no?
   - _yeastplume:_ Sure, thanks for looking at it. I think given the amount of other work that needs to built on it and the fact that nobody has shouted too hard about the RFC, we can merge it then fix/change according to changes in the RFC as and when the occur. Particularly given I don't think the tx structure has any notion of versioning.
   - _lehnberg:_ It's getting a 🛠symbol update at least. (in progress).
   - _yeastplume:_ They won't be released in a proper tag without an RFC anyhow.

- _lehnberg:_ Okay so I take trip 2 is not given. And we move to parallel IBD, which we talked about in the retrospective. 

   Deprecate node api v1, @quentinlesceller?
   - _quentinlesceller:_ No progress.
      - 👍: _lehnberg_

- _lehnberg:_ Nerd should maybe get a 🛠 too now? Spec is presumed to be relatively stable no?
   - 👍: _antiochp_

- _lehnberg:_ Slate serialization now has rfc, https://github.com/mimblewimble/grin-rfcs/pull/48. But still in spec mode.
   - _joltz:_ Yea a lot will change there as I've been learning more about our current state. Trying to work more from where we are today vs what we want in a vacuum. Have been spending time with armoring which is closely related and will hopefully help inform our serialization decisions.
      - 👍: _tenthousandlakes_

- _lehnberg:_ Armored slates, @j01tz, @yeastplume.
- _lehnberg:_ Still in progress. (speccing).
   - 👍: _yeastplume_
   - _joltz:_ https://github.com/j01tz/slatepack if anyone hasn't seen yet and wants to experiment with armoring slates.
      - 🚀: _lehnberg, antiochp_

- _lehnberg:_ Announce deprecation for running http listener for external addresses - I think we're not quite there yet.
   - _yeastplume:_ Definitely not quite there yet.

- _lehnberg:_ And that's it.
   - 👍: _yeastplume_

- _lehnberg:_ Feels like we're in pretty decent shape. Lots of progress these past few weeks.
   - _yeastplume:_ Yes, feels like good progress, well done all.

- _lehnberg:_ Would we want to try to have most things into 🛠-state by may 01?. Or maybe apr 28 (next dev meeting). Gives us about 5 weeks or so before betas. For implementation work.
   - _yeastplume:_ Sounds reasonable on my side anyhow.

### 5. Becoming more soft-fork ready

- _yeastplume:_ Okay, what's our position on soft forks? If soft-fork friendly, what (if any) changes would be required? And also [unknown kernels](https://gist.github.com/antiochp/8fcdf7c0ee10dc004ebe03ece37d8091), which we touched on earlier.
- _tromp:_ One problem is we have little idea what sort of extra features we'd try to soft-fork in.
- _antiochp:_ Seems like by definition we won't know until we need to try.
- _tromp:_ We've talked about new kernels, but there's a good chance we'll never need more than the 4 types envisioned so far.
   - _lehnberg:_ I've no reason to believe that we've exhausted all conceivable kernel types in the universe.

- _lehnberg:_ What are the arguments _against_ being soft-fork friendly?

- _yeastplume:_ Is there much more that can be done to make us 'soft fork friendlier' (admitting that's a nebulous term) other than basically having 'reserved for future use' kernel types?
- _antiochp:_ Potentially something at the header level?
- _tromp:_ Reserved for future use p2p messages?!

- _jaspervdm:_ What about outputs, would there be a reasonable way to soft fork a more efficient rangeproof in (provided one will be invented, of course).
   - 👍: _lehnberg_
   - _paouky:_ @jaspervdm as far as I understand, no,.
- _yeastplume:_ For anything at the header level, that just means 'reserved for future use' fields?
- _dburkett:_ At the header level it'd be nice to include a new field large enough for a hash. Or at least a way to add stuff to the coinbase kernel. If we can add arbitrary data to a coinbase kernel, the header can stay the same.

- _tromp:_ I hate bitcoin for stuffing header fields, like height, into coinbase.
   - _dburkett:_ Then we'll need a field in the header:)
   - _antiochp:_ I actually like the "stuff it in the coinbase" idea.
   - _dburkett:_ I have no strong opinion. They're both hacks, but necessary hacks imho.
   - _antiochp:_ But that's one of the the inherent downside of softforks - stuff gets subverted in all kinds of weird ways, just to get them to work.

- _jaspervdm:_ Does allowing for new kernel types leave us open to on-chain spam?
   - _dburkett:_ Yes.
   - _yeastplume:_ That's the argument against any arbitrary data.
   - _tromp:_  good point, @jaspervdm.
   - _antiochp:_ Yeah good point.
   - _dburkett:_ There's no way around it though. Either you support soft-forks, and therefore support arbitrary data in kernels.
   - _antiochp:_ There might be, we should not just state it as an absolute right now.
      - 👍: _lehnberg_
   - _dburkett:_ At minimum, we'll have to support 32 bytes of "spam" in a kernel. So instead of using a length field, we just make them all the same: `type fee hash_of_spam signature`. Do we consider 32 bytes per kernel as too much spam? What's the concern around this?
   - _jaspervdm:_ You could keep spam to a minimum by having some kind of miner signaling built in (i.e. miners do not accept unknown kernels or built blocks on top of them) but that opens a whole other can of worms.
   - _dburkett:_ Sure, miner signaling can be used to indicate which version we're on.

- _tromp:_ I'd say the number of additional kernels we're expected to introduce to satisfy unforeseen needs should be a pretty small number. For which a hardfork may be the best solution.
   - _dburkett:_ My opinion is hardforks = centralization, and therefore I'm opposed when it's avoidable.
   - _tromp:_ My opinion is that grin should maintain simplicity, and softforks can introduce a lot of complexity compared to clean hardforks.
   - _paouky:_ Considering that there's almost no point for grin and its simplicity if enough trust and centralization concerns arise, I'm for david's approach.

- _antiochp:_ Sounds like this is worthy of a larger discussion somewhere more permanent.

- _lehnberg:_ Agreed. So the general argument(s) _against_ supporting soft-forks raised so far have to do with complexity / spam-risk / inelegance. Arguments _for_ have to do with decentralization / ease of adding upgrades  / flexibility. The arguments _against_ may or may not be compelling, depending on the actual proposed approach for soft forks. So it seems the devil is in the details of any soft-fork proposal.
   - _dburkett:_ Seems about right, but there's no malleability in our headers or kernels currently, so any approach would necessarily introduce more spam-worthy fields.

- _yeastplume:_ Really good to have this discussion to start getting the considerations on the table, but yes, definitely seems this needs larger discussion towards a more fully-formed proposal (if any). Indeed. So what's the best approach for proceeding here? It would seem to be an obvious issue for our last hf.
- _antiochp:_ Sounds like we need to document technical pros/cons somewhere.
   - 👍: _joltz, lehnberg_

- _yeastplume:_ Maybe we should have a preliminary 5.0.0 planning issue as well for stuff like this, then link to an issue.
- _lehnberg:_ Sure, I can throw one up. There's also https://forum.grin.mw/t/wishlist-for-v5-0-0-the-last-of-the-scheduled-hard-forks/7238. Which is a rough early start for that.
   - _yeastplume:_ Sure, sounds like a good start there. Obviously it can remain fluid for now, but for ones like this we can link to more specific issues.
      - 👍: _lehnberg_

### 6. Network upgrades after 5.0.0

- _yeastplume:_ Okay, so observing the time, I feel we've touched a bit on this topic already, and the answer to this is contingent on how much soft-forking we want to do.
   - _lehnberg:_ Can we try to talk a little bit about it at least? Maybe cap at 5-10 mins?
   - _yeastplume:_ Sure. Continuing the conversation from last week for 10 mins, I guess.

- _lehnberg:_ There are a list of considered proposals here https://forum.grin.mw/t/network-upgrades-hard-forks-on-grin-v5-0-0-and-beyond/7231. So if we went with "doing nothing" and also being "soft fork unfriendly", how exactly would we upgrade?
   - _yeastplume:_ With hard forks that users would either choose to get on board with or not. Grin classic, grin cash, onetruegrin, etc.
   - _antiochp:_ Agree to hardfork is/when necessary with agreement from the community.
      - 👍: _paouky, quentinlesceller_

- _lehnberg:_ If we're soft fork unfriendly (i.e. What ever the `current state` is), would it be strictly impossible to soft fork?
   - _antiochp:_ No necessarily - bitcoin was not explicitly designed to be softfork friendly and stuff got hacked in regardless. But there is less room for this in grin.
   - _yeastplume:_ Hard to tell without knowing specifics about what the soft fork means to achieve.
   - _quentinlesceller:_ It's going to be hard to be soft fork unfriendly. But yeah I don't think we want that too.
   - _yeastplume:_ But bitcoin has a lot more fat in which to put unforeseen things.
   - _antiochp:_ Yes - script and unused opcodes leaves room to be "clever".
   - _lehnberg:_ I guess less decentralized than some pre-programmed block heights in advance.
   - _dburkett:_ The only malleability we have is in bulletproofs, meaning any soft-fork would have to use something like the publicly-rewindable bp approach suggested in my non-interactive txs proposals.
   - _antiochp:_ Yeah there is almost zero wiggle room in grin to do anything clever. (and that is arguably a desirable feature).
   - _jaspervdm:_ Which speaks to it simplicity.
   - _dburkett:_ You guys all say simplicity, I say inflexibility:)
   - _yeastplume:_ Indeed, but I've always wondered if it's too clever for its own good, making it too difficult to add new features without groundbreaking new insights.

- _lehnberg:_ So we'd have a group of "important ecosystem participants". Exchanges, mining pools, etc. And then co-ordinate hard forks with them? If so, is not that also centralized?
   - _paouky:_ Less so, to be fair. A pre-Approved schedule feels like centralization with no alternative. 
if a need for a hardfork arises, the community then as a real choice there and then whether to fork or not.
   - _antiochp:_ Yeah agreed - requiring consensus outside of a fixed schedule is not necessarily centralized.
   
- _tromp:_ How about just waiting beyond hf4 to see what consensus breaking change we'd want to make and then use that to see what soft-fork support would be needed to elegantly support it, and put that support in along with the hardfork.
   - _lehnberg:_ You lost me tromp :) If we wait beyond hf4 - there are no more hfs after that.
   - _tromp:_ No more planned ones. I'm arguing for allowing unplanned one.
   - _lehnberg:_ And so we would go no planned hf, no soft-fork friendly changes, and then what do we do exactly?
   - _dburkett:_ How would you soft-fork relative kernels? No need to wait, we can talk about that now.
   - _tromp:_ @dburkett by allowing new types that look like heightlocked ones, with additional constraints.
   - _dburkett:_ Ok, so should we allow all kernels that look like heightlocked ones?
   - _tromp:_ No, just saying that it would have sufficed for relative ones. But we knew from launch we'd need them. So they were never going to be softforked in.
   - _antiochp:_ Height locked kernels have a u64 in there so we can always get creative with special height values etc. 0, 1, 2 etc.
   - _dburkett:_ But that's not anymore than we can with kernel features. Just a few more bytes to do so. We still can't commit to data. Anything that can't commit to some extra arbitrary-length data isn't flexible enough to support meaningful softforks.
   - _paouky:_ May I ask why is that?
      - _tromp:_ Because there is some value in the chain not being the equivalent of a graffiti wall.
      - _paouky:_ That I understand, was asking why do you even need arbitrary length data for.
   - _tromp:_ We need to be convinced that the need for that outweigh the spamability before we allow that.
      - _lehnberg:_ Gotcha.
   - _antiochp:_ Maybe that's the key point - do we want to allow arbitrary data or not.
   - _dburkett:_ That's fine. I was just trying to show that waiting until after hf4 solves nothing.
   - _antiochp:_ I think the point about post hf4 was that we could hardfork in softfork support at any time in the future, if deemed necessary.
   - _lehnberg:_ Ah, thanks I think I get it now.
   - _dburkett:_ But that's just passing the buck. It's something that We need to decide eventually, and it seems best to decide before the last scheduled hardfork. We don't want to get in a situation where it's too late, and the protocol is either prematurely ossified, or unnecessarily centralized.
   - _jaspervdm:_ It's an interesting idea, not entirely sure whether I agree with it or not.

- _antiochp:_ I just want to make clear that deciding to not commit to a hf schedule is still making a decision.

_(discussion continued after the meeting for some time)_

### 7. /packaging
- _lehnberg:_ Just wanted to understand what the state is for the /packaging stuff we have today. `brew` iirc updates automatically from github. `snap` iirc does not - is anyone actually updating that? → if not, should we stop with snap?
   - _quentinlesceller:_ Yes, I am :)
   - _lehnberg:_ Ahhh okay cool cool! 👍

### 8. Other questions
None.

**Meeting adjourned.**