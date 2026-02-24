# Meeting Notes: Development, Apr 28 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- hashmap
- jaspervdm
- joltz
- lehnberg
- mably
- quentinlesceller
- tenthousandlakes
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ There has been much work going on with respect to nerd kernels and slate compaction, much RFC work still ongoing on slate serialization/armoring, and for added bonuses, plenty of work by @hashmap refining and optimizing rust code all over the place. So any illusion of things being quiet are mostly down to the amount of work going on.
   - 👍: _lehnberg_

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/281) was accepted, with the striking of the 5.0.0 placeholder, and point 6: packaging & releasing from the agenda. PayJoin was raised as an Other Question.

### 3. Action point follow ups from previous meetings

#### 3.1 Soft-fork discussion to be initiated in a permanent place
- _antiochp:_ Did I drop the ball on that? I don't remember.
- _yeastplume:_ Heh, me neither.
- _antiochp:_ I posted some stuff on a gist but I don't think it went further than that.
- _yeastplume:_ Okay, is there an issue created?
- _lehnberg:_ For soft fork no. Let me dig into the old meeting notes... Yeah, arguably I dropped the ball on that one. I can create a grin-pm issue, or alternatively a forum post, not sure which one is better? Or should it be a node issue?
   - _yeastplume:_ Node issue would be more visible.
      - 👍: _antiochp_
   - _lehnberg:_ Yep agreed and purpose: "To document technical pros/cons somewhere."
      - 👍: _antiochp_

#### 3.2 v5.0.0 tracking issue

[Actioned.](https://github.com/mimblewimble/grin-pm/issues/287)

#### 3.3 Wallet Nerd kernel issue

[Actioned.](https://github.com/mimblewimble/grin-wallet/issues/393)

### 4. Planning, [v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)
- _lehnberg:_ **Cuckarooz** is now [in progress](https://forum.grin.mw/t/introducing-the-final-tweak-cuckarooz/7283/).

- _lehnberg:_ Compact slates, how does that look?
- _yeastplume:_ Compact slates should be done in a couple of days, it's mostly ensuring all the changes can talk to v3 wallets now + a massive review.
- _lehnberg:_ Nice. A lot of progress on that over the last two weeks. Really good stuff.

- _jaspervdm:_ Parallel IBD: [RFC](https://github.com/mimblewimble/grin-rfcs/pull/52) is in spec and impl phase. Got some valuable feedback from antioch, still a few open points to be decided on. Confident we can get the p2p messages in for v4 release.
   - 👍: _lehnberg, antiochp, mably_

- _lehnberg:_ **deprecate node api v1**, @quentinlesceller?
   - _quentinlesceller:_ Done here https://github.com/mimblewimble/grin/pull/3310.
   - _lehnberg:_ 🚀. When will that be merged?
   - _quentinlesceller:_ Need a quick review but hopefully very soon:)
      - 👍: _lehnberg_

- _lehnberg:_ **relative kernel locks**, @antiochp: https://github.com/mimblewimble/grin-rfcs/pull/19, https://github.com/mimblewimble/grin/issues/3288
   - _antiochp:_ In progress - @tromp has basically locked down the proposed payment channel approach. And we're pretty confident the NRD kernel will suffice for this as-is. RFC is close to done.
   - _lehnberg:_ Sounds good 👍

- _lehnberg:_ **slate serialisation**, @j01tz, @yeastplume: https://github.com/mimblewimble/grin-wallet/issues/374, https://github.com/mimblewimble/grin-rfcs/pull/48
   - _joltz:_ Seem to be still finalizing the scope of slate-serialization as we carve out all of the layers for slates here. Some good discussion is in the armored-slates RFC if anyone is interested. I'm trying to look at this through the lens of a future "minimum viable transaction" so we can hopefully converge on a simple and sane enough stack of choices in the available layers. Feels like we are a lot closer to this than four or even two weeks ago 👍
   - _yeastplume:_ Still a bit of work there I think to decide the result, but I think we're converging on a strategy for slatepack?
      - 👍: _joltz_
   - _lehnberg:_ So it seems, very nice. So there's some questions about "what goes on which layer" right?
   - _yeastplume:_ Yes, but I think we're close. Basically, a thin json wrapper around the slate that will specify encryption, return address etc that can be serialized to binary just like the slate, then armored.
   - _lehnberg:_ Cool. As much future proofing As possible, and we're looking at some really nice improvements over what once was `file`. 

- _lehnberg:_ **Armored slates**, @joltz, @yeastplume: https://github.com/mimblewimble/grin-wallet/issues/375, https://github.com/mimblewimble/grin-rfcs/pull/53
   - _lehnberg:_ So yeah I guess that was covered in the above. Unless there's some armor-specific stuff worthy of being called out right now?
   - _yeastplume:_ I think the armoring is in good shape, it should really just be transforming a payload into a sane looking format. So the real work is still in the slate-serialization, slatepack portion.
      - 👍: _joltz, lehnberg_

- _lehnberg:_ And then finally **announce deprecation for running http listener for external addresses?**, @yeastplume: https://github.com/mimblewimble/grin-wallet/issues/66 (blocked). Do we think that's still an option for 4.0.0? Fwiw the [tx-building method comparison](https://github.com/mimblewimble/grin-pm/issues/283) has been tweaked.
   - _yeastplume:_ Deprecation of http listener still blocked, I'd think, pending further results.
   - _lehnberg:_ Even announcing a target for removal in 5.0.0?
   - _yeastplume:_ I can't answer that.
   - _lehnberg:_ Does anyone have an opinion?
   - _yeastplume:_ Whatever it is will be a soft removal anyhow, of course all the http infrastructure needs to be in place for tor, so it'll be if-ed out basically.

  - _lehnberg:_ Since we're talking about http (and not https), if it was up to me, I'd say let's just announce that deprecation for 5.0.0 as part of this 4.0.0 release no matter what. Even if no improvements or no alternatives are made, we could still make it work with the alternatives we got today.
     - _dburkett:_ If we're deprecating http, https should go too.
     - _joltz:_ If it were up to me I'd say deprecate both http/https for 5.0 but I realize that would cause quite a bit of friction.
     - _tenthousandlakes:_ Why not keep http and encrypt slates.
        - _lehnberg:_ High level proposal here: Https://github.com/mimblewimble/grin-rfcs/pull/50.
        - _joltz:_ Because that might be giving users enough rope to hang themselves with from a privacy/security perspective.

  - _lehnberg:_ With tor + armored slates / qr codes, is that good enough for our needs? What would it take for us to get enough understanding about that (one way or the other) in time for 4.0.0? I get we may not feel ready to take this decision on the spot, but if we don't know what we need to make that decision, we'll never be able to say yes/no to this.
  - _tromp:_ We need to endoflife http support, and 5.0.0 appears to be the last feasible time for it.
     - _lehnberg:_ I agree. What do you feel about https though? Granted, https is used in tor as well, so it would be more like "restricting https use to.onion addresses".
     - _yeastplume:_ https isn't necessary over Tor.
     - _tromp:_ https will be a last resort for exchanges that don't want to embrace the alternatives.
        - _lehnberg:_ But why should we cater to those.
     - _dburkett:_ https is unusable for most people. I'm not setting up a domain just to receive.
     - _joltz:_ Not to mention violates privacy by default.
     - _tromp:_ I'm fine with deprecating https as well.

  - _yeastplume:_ We're not really deprecating https because we don't really explicitly support it.
     - _lehnberg:_ So what would we actually be doing, just so we're all on the same page, I'm quite confused right now.
  - _hashmap:_ What about web stores? Chances you get tor on your hosting are very slim.
     - _lehnberg:_ As in, a web shop send invoice to user, user responds (outbound https) and web shop finalizes. No need for user to run https listener.
     - _yeastplume:_ Web stores are a good point.
     - _joltz:_ Web stores would need to accept armored slates if they can't do Tor. Otherwise they are requiring the ip address of everyone sending payment without extra configuration. (Yes, they already have ip by you visiting store but that is easier to obfuscate in a configuration than a complex grin wallet scenario.)
     - _hashmap:_ I mean https is the easiest way to receive if you already have a public ip and a public business, do we plan to keep this use case?
     - _dburkett:_ I'm with joltz on this. We really do need to put our foot down and stop supporting non-private methods. Removing http(s) could result in us losing some exchanges, but that's ok. Our goal isn't to support the price. We should stick with tor and armored slates. Anyone who can't support tor, will just have to use armored slates.

  - _lehnberg:_ The main weaknesses with armored slates right now, [as per comparison issue](https://github.com/mimblewimble/grin-pm/issues/283):
     * lack of payment proof support
     * lack of "automation" (it's a very manual process), so lack of complex routing and slate building
     * complicated "fire-forget set-up" (like setting up an always receiving donation address) it's doable, but not as easy as a url

       - _dburkett:_ I personally would like to see payment proofs added to armored slates, because I think that's a necessity for baseline transactions.
       - _joltz:_ Per current discussion in RFC they should be able to be extended to support payment proofs without too much trouble and is already in the works 👍

  - _lehnberg:_ Okay so we're saying, if you're a business, and don't want to use Tor, you will serve an armored slate, and then accept an armored slate response from the user that they will paste into a text field on your payment page. If you want an easy always on donation address or whatnot, use a Tor hidden service. If you're behind a great firewall or Tor is censored in a way that is not possible to get around, you use armored slates. If tor is down, you use armored slates.
     - _dburkett:_ Yes, sounds right.
     - _lehnberg:_ If you're on mobile and your wallet cannot connect to the Tor network, you use armored slates. If you want to do some complex atomic swap or mu-sig transaction, you use Tor.
     - _dburkett:_ Unknown on that one. Not sure if anyone has thought through those scenarios really.
     - _joltz:_ It would be nice to support as many transactions as possible via armor.
     - _lehnberg:_ I'm thinking a t-of-n armored slate transaction building process must be a nightmare.
     - _yeastplume:_ Indeed, mobile phone support is very pants.
     - _jaspervdm:_ Yeah swaps without Tor is a pain. Copying over many files. Same with musig really but most of that is probably internal to one side.

  -  _lehnberg:_ And when the wider ecosystem and future users come to us and say "What are you guys nuts? Why can't we do this over https?" Then we say "grin is trying to be privacy preserving by default". Or something like that?
     - 👍: _joltz_
     - _yeastplume:_ Like, the simplest shop front thing I would think of is, show QR code on shop site, then scan with phone, verify, and send right back to shop's listening infrastructure.
     - _lehnberg:_ Listening infrastructure... That is over vanilla https?
     - _joltz:_ Tor >:)
        - _lehnberg:_ Yeah just want to get that clarified.
     - _yeastplume:_ Not if they run tor.
     - _lehnberg:_ Cause what we're saying is that yes, that's how you'd do it, but you'd have to be listening on tor.
     - _hashmap:_ Which covers 1% of web shops.
     - _lehnberg:_ But do we think the other 99% of web shops are about to start accepting grin any time soon? Why would they?
     - _lehnberg:_ In my mind, only shops that put emphasis on privacy preservation would be motivated enough right now. Maybe I'm wrong about that though. But otherwise they might as well accept bitcoin?
     - _hashmap:_ It's not mutually exclusive.
     - _lehnberg:_ True, but if a customer can pay in btc, why pay in grin?

  - _joltz:_ The other factor is that even if they already are comfortable with https, their devops engineers might not be comfortable opening a public listener like that.
  - _tromp:_ What is the preferred mode of communication with bisq?
  - _lehnberg:_ Maybe we're shooting ourselves in the foot by limiting us to Tor only rather than Tor + https, maybe the potential audience becomes very very small. But I suppose we could always open up in the future?
     - _joltz:_ Devils advocate: We shoot ourselves in the foot by forcing users to use a non-private method when transacting at most services. Offering https essentially does this. Most services will lazily only accept that and no other methods.
        - _lehnberg:_ Yeah, and we're not really much of anything. Not very privacy preserving, not very user friendly. If we could nail being like really good to use over Tor, then that's something at least.

  - _lehnberg:_ Sorry @yeastplume I derailed here a bit.
     - _yeastplume:_ No worries, it needed derailing.
     - _lehnberg:_ How can we make our mind up about this?
     - _yeastplume:_ A deadline, I guess.
     - _joltz:_ It may be tough to have much "certainty" here in time for 4.0.0. It might just take using armored slates for a while before there is enough confidence there. Another option is to define priorities and try to make a decision based on the outcomes for those priorities.
     - _lehnberg:_ I would like to see some kind of full circled rationale one way or the other, and then people can say whether they like/agree with that rationale or not. We started a bit above, but maybe something a bit more formal. And precise.
     - _joltz:_ We could just say: "it is unacceptable for grin to have default transaction methods that are not private by default" or something.
     - _lehnberg:_ Yeah that's one possible rationale.

  - _lehnberg:_ Okay so come 5.0.0, what exactly is it we would be deprecating? `deprecation for running http listener for external addresses?` this is what's in the planning ticket. Is that it? @yeastplume said we can't deprecate https because we don't support it, I'm not entirely sure I follow what that means. So like, by deprecating the http listener for external addresses (aside from Tor), that would block https as well?
     - _dburkett:_ We only support listening via http in the code. Https is added on top through magic proxy stuff I think.
     - _joltz:_ `deprecate clearnet wallet interactions`.
     - _yeastplume:_ We can deprecate sending via http(s). And block listening from anywhere from localhost by default.
        - 👍: _dburkett_
     - _lehnberg:_ So what is the block from announcing, in 4.0.0, that starting from 5.0.0, we'll be doing this. If there's outrage, we could always change our minds before 5.0.0.
     - _dburkett:_ Just need to pull the trigger.
     - _lehnberg:_ How about we give two weeks for anyone to make an argument against doing this? We announce it on forums, newsletter, blast it out as much as we can, and then aim to decide next dev meeting? Or alternatively, we follow the RFC process. Which is more or less that, but with a bit longer lead times and more formalized.
     - _dburkett:_ I don't think any exchanges or pools actually follow our updates that closely though. The devs (who are here now) are probably the only ones who would disagree, so now's their chance.
     - _lehnberg:_ Not sure we need to steamroll through a decision, it can take a bit of time. But would be good to figure out a process for the decision.
     - _tenthousandlakes:_ @lehnberg we need an asynchronous place for discussion.
     - _dburkett:_ I mean, this has been the plan for 6 months or more now though. And we dragged our feet before.
        - _lehnberg:_ So what's wrong with giving everyone a formal heads up and another two weeks? Not sure anyone knew we'd make that decision today, makes sense to give people a chance to participate.

  - _tromp:_ Like I said, I'm all for deprecating http, no matter how much objection from exchanges/pools. Happy to decide right this meeting.  I'll leave https deprecation up to others.
     - _quentinlesceller:_ Yeah I agree that http should certainly be deprecated.
     - _yeastplume:_ We can't deprecate http without deprecating https. We don't do explicit https, we have an http listener and leave it up to the wallet runner to put https infrastructure on top of it.
     - _tenthousandlakes:_ The problem with 'getting rid' of http is that devs can't actually control where users paste their text, just what method they want to support.
        - _lehnberg:_ Does this mean that even if we decide to remove support for https, it's not like we can forbid it in any case? I.e. Someone would still be able to set some way up to receive over https in any case.
        - _dburkett:_ Correct. Grin++ doesn't actually implement support for receiving via http now. But most Users receive via http now as a stopgap, by using the Grinplusplus.com relay I set up. Users can always set up relays and proxies like that to communicate hoWever they want. We're just talking about removing the public http listener from the wallet.
        - _hashmap:_ No, we do have https support directly in the wallet.
           - _yeastplume:_ We can call an http url, we can't listen on an https endpoint, that might be were confusion is coming from.
           - _hashmap:_ No, we can, you don't need any extra software for that: https://github.com/mimblewimble/grin-wallet/blob/master/doc/tls-setup.md.
           - _yeastplume:_ I believe that's only applicable to the owner api, but I need to check. Actually, never mind, okay.
        - _tenthousandlakes:_ If we allow text based armored slates how wouldn't that be the case.
        - _lehnberg:_ Sure - you can always receive the armored slate over https.
        - _tenthousandlakes:_ That's my point, the communication layer is completely separate. We should secure slates with encryption and payment proofs and support communication methods that are secure and private with the understand that murphy's law applies to how users with attempt to trade slates.

  - _yeastplume:_ Okay, we're starting to go over time here. I don't think taking an action to take the decision 2 weeks from now will materially affect anything. Can we put up an issue somewhere (or forum post) to discuss over the next 2 weeks? And take a decision to take the decision in 2 weeks?
     - _tenthousandlakes:_ That's clearly needed.
     - _lehnberg:_ Sure 👍 maybe those most interested @joltz @hashmap @dburkett (and anyone else for that matter) want to work together this week to draft something?
        - 👍: _dburkett_
     - _joltz:_ Sure 👍


### 5. Other questions

#### 5.1 PayJoin

- _lehnberg:_ Where in all our priorities over the next year, would the [payjoin discussion that was triggered by @antiochp's post](https://forum.grin.mw/t/payjoin-p2ep-in-grin/7265) be? I know it's not for scope in 4.0.0. I suspect it's not consensus breaking. Is it something we can try to target for some point?
   - _dburkett:_ It's not consensus breaking. It can be gracefully supported at anytime over tor via a version bump.
   - _yeastplume:_ Yes, I like the payjoin concept, but it can be targeted for 4.1.0 or sth.

- _joltz:_ I plan to spend time with payjoin once we have a "minimum viable transaction".

- _antiochp:_ Would it need additional changes to support at slate level?
   - _dburkett:_ It could still be done with a version bump, but backward-compatibility is a bit trickier with armored slates and stuff since you can't just ask the receiver what version they're on.
   - _joltz:_ Haven't worked through completely all the steps yet but I think it might involve a few changes that could be supported with version. If we force all armored slates to be slatepacked slates (as mention in the armor rfc) we have a version field we can use there as well I think.
   - _dburkett:_ Having a version field might not be enough though. If you send a v4 slate, but they only support v3. It's not always possible for the receiver to read it. The intention is to have most of our slate upgrades be backward compatible though, and I don't see any obvious reason we couldn't do the same with payjoin (though can't say for sure yet).

- _yeastplume:_ Okay, anyhow we'll target that post 4.0.
   - _lehnberg:_ Thanks, that was it for my question!

**Meeting adjourned.**