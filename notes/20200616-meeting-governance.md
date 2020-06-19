# Meeting Notes: Governance, Jun 16 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 50 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- bladedoyle
- dburkett
- joltz
- kurt2
- lehnberg
- quentinlesceller
- tromp

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

- _lehnberg:_ @yeastplume are we meant to discuss your funding request this gov meeting or the next one?
- _quentinlesceller:_ Looks like @yeastplume is not here?
- _lehnberg:_ Yeah I think he's on vacation. Which answers my question. :)
- _joltz:_ He deserves it if so. Has he even taken any time off since launch? :o
- _lehnberg:_ Good question!
- _joltz:_ Get that man a vacation!
- _lehnberg:_ Ok so we do the yeast funding next governance meeting (and my own; I will submit a request today or tomo).

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/302) was reviewed and accepted.

### 2. Action point follow ups from previous meeting

_None._

### 3. RFC & sub-teams update

- _lehnberg:_ https://github.com/mimblewimble/grin-rfcs/pulls. In order of appearance.

#### 3.1 [Slatepack](https://github.com/mimblewimble/grin-rfcs/pull/55)

- _quentinlesceller:_ The slatepack RFC it's ready for FCP. I just wanted to answer you @lehnberg before. But today fcp. 🏁
   - _lehnberg:_ Yeah, did anyone read my shower thought? https://github.com/mimblewimble/grin-rfcs/pull/55#issuecomment-643730362. Anyone love the idea of calling it something different than address? I don't feel strongly about it, I won't get into fight mode if we end up calling it grin address, slatepack address, or whatever.
   - _joltz:_ I owe you a response @lehnberg in the RFC comments. The point you raised is tough, I'm not sure I have the right answer. I'm not sure what else to call it that would bring even less confusion.
      - _lehnberg:_ Yeah and so maybe that's the bottom line in the end.
   - _quentinlesceller:_ Personally I think address is quite clear.
   - _lehnberg:_ But, this kind of hits it on the head I think:
      
       > it's more than an address, and Sometimes it's not even used as an address at all, and even when it is used as an address, it's different than any address in other blockchain projects. So really, why is it called an address?

   - _quentinlesceller:_ Calling something else would create more confusion.
   - _antiochp:_ Suspect it ends up being called an address by users regardless.
   - _quentinlesceller:_ Address in ethereum are not the same as address in bitcoin too we could say the same.
   - _tromp:_ It's a wallet address isn't it?
   - _joltz:_ An address can be used to demark a destination- whether by where to find it or by what process to use to be read by it.
   - _lehnberg:_ The "do no harm", or "do as little harm as possible", or "don't think you're so damn clever that you can come up with a good name" principle. All good with `address` then. 👍 Just wanted to float my shower thought!
- _lehnberg:_ One more pressing question is if we ought to call it `grin address` etc? Right now I think the wallet refers to it as `slatepack address`.
   - _joltz:_ I think slatepack address is the most accurate. Whether it is the most intuitive is a different question.
   - _lehnberg:_ Agree, question is if anyone outside us will ever understand/know wtf `slatepack` is.
- _tromp:_ It can be a wallet address known as a "grin address". Wait, is it specific to one tx?
- _joltz:_ Right, for the average end user, 'grin address' might just make the most sense for them.
- _bladedoyle:_ I like “wallet address”. Slatepack is an implementation detail.
- _joltz:_ 'wallet address' is sensible too.
- _lehnberg:_ Yep.
- _bladedoyle:_ “grin wallet address” if we like lots of words.
- _lehnberg:_ Address, grin address, wallet address, will likely all be used interchangeably and is probably fine. Which then... Also _kinda_ begs the question about this:
   ```
   beginslatepack. 4h1qx1whe668tfw yc2gfl8ppd8ksgv
   pcxqhyrkhbykhzg gn75o7uwot3dkib r2tj1ffgn2forly
   gwmtgsneoxf7n4d uvwuyzsamphff1u ahraywvhf7jqvkx
   wnjac7qmvm9jvcm njlew4k5bu7jy6s eb. Endslatepack.
   ```
- _kurt2:_ Grinddress.
- _lehnberg:_ Are we okay with the `beginslatepack.` etc?.
- _kurt2:_ It is not pretty though:\.
- _tromp:_ You want to make it begingrin?!
   - 👍: _kurt2_
   - _kurt2:_ I like the sound of it.
- _lehnberg:_ (sorry @joltz for completely bikeshedding the crap out of this RFC ambush style! )
- _joltz:_ Ha it's ok, much easier to make these changes now!
- _lehnberg:_ Yea, it's what I'm thinking as well.
- _antiochp:_ That's not the address though right? That's the initial slatepack in the tx?
- _lehnberg:_ That's the blob that gets spat out if Tor is not working.
- _joltz:_ What was pasted would be a 'slatepack message' per the rfc.
- _bladedoyle:_ Slatepack encoded grin wallet address.
- _lehnberg:_ There's a looooot of slatepack all over the place in grin-wallet code right now I think.
- _antiochp:_ I think that's fine personally, its slatepack encoded (which is impl detail).
   - _lehnberg:_ So yeah, no strong objections to us going down this route then?
- _lehnberg:_ Yeastplume would chop my head off if I now instigated a change. There are slatepack directories, slatepacks, help doc, `.slatepack` files, who knows what else.
- _quentinlesceller:_ Nope.
- _lehnberg:_ I think slatepack is fine. 👍
- _quentinlesceller:_ Maybe call the file.tx maybe that's all I'd say.
   - 👍: _bladedoyle_
   - _lehnberg:_ Yep, might be worth discussing with yeast.
- _joltz:_ If old file method is deprecated then it would make sense, otherwise it helps distinguish.
   - 👍: _lehnberg_
- _lehnberg:_ Ah I see it's in the RFC as well...
- _joltz:_ All .slatepack files should expect a slatepack message in contents etc.
- _lehnberg:_ One month left to hard fork, ~ 2 weeks maybe really last time to make any major changes to this stuff.
- _quentinlesceller:_ I don't think it matter that much and can be changed any time though.
- _lehnberg:_ All interested and opinionated please think this stuff through, it's going to be a major balls ache to change later. So will be unlikely to change.
- _lehnberg:_ Play with the wallet betas.
- _quentinlesceller:_ Btw grin-wallet beta.3 is out https://github.com/mimblewimble/grin-wallet/releases/tag/v4.0.0-beta.3
- _lehnberg:_ And rally for a change like immediately if something looks wrong.
   - 👍: _antiochp, quentinlesceller_
- _lehnberg:_ So @quentinlesceller you'll fcp that RFC then?
- _quentinlesceller:_ It is already:)
- _lehnberg:_ Sweet!
- _joltz:_ 🚀
- _dburkett:_ Begrin. Sorry, late to the party, but I think I'm hilarious so I had to share.
   - 😂: _antiochp, quentinlesceller, joltz, lehnberg_
- _lehnberg:_ And grend?
- _antiochp:_ Begone.
- _dburkett:_ Lol!
- _lehnberg:_ Tbh begrin is kind of good. 😎


#### 3.2 [Deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)

- _lehnberg:_ This is on break.

#### 3.3 [Parallel IBD](https://github.com/mimblewimble/grin-rfcs/pull/52)
- _lehnberg:_ This is also on break, awaiting Jasper's return. I touched base with him today btw, all good. :) No update re timelines etc, but positive.
   - _joltz:_ Good to hear, really looking forward to having him back when he is ready 👍
      - 👍: _lehnberg_

#### 3.4 [qa team](https://github.com/mimblewimble/grin-rfcs/pull/45)
- _lehnberg:_ We keep saying we're closing it, yet there it is.
- _joltz:_ Qa team would be so nice to have now with the beta testing:(
- _lehnberg:_ Yep haha tell me about it. 🥵
- _joltz:_ One-man qa team. :p
- _bladedoyle:_ Qa team gets salary? else we will never get one.
   - _lehnberg:_ Depends on how we end up doing qa and who's meant to do it. For example the qa team could set in place a policy where every dev is responsible to test their own code. (not saying that's a great approach, just saying it's not a given that qa team is the ones running all the tests).
   - _antiochp:_ That should go without saying qa or not though... Qa should definitely _not_ be the ones running all the tests.
   - _lehnberg:_ I'm in agreement.

- _lehnberg:_ Maybe leave it open and give me until next gov meeting to see if I can make any progress?
- _joltz:_ Sure, I'll make myself available as well to assist if helpful. It would be a great way for folks with qa experience to get some blockchain experience.
- _lehnberg:_ Those interested, join me in the rfc, we have a couple of open questions there to try to wrestle with.
- _joltz:_ "what is the meaning of quality?"

#### 3.5 Sub-teams & others
- _lehnberg:_ @joltz #wg_moderation seems kind of dead.
- _joltz:_ Yes, thought we killed it for now?
- _lehnberg:_ Oh? Should I close that channel?
- _joltz:_ RFC is closed. We can keep it open as a filter for more related discussions if We think it would be helpful.
- _lehnberg:_ Okay so moderation wise... We'll continue as is for now? I think we're in a good place in terms of moderation requirements right now, but that might not last indefinitely.
- _joltz:_ There are definitely some improvements that could be made but I don't think there is the energy/motivation behind it quite yet.
- _lehnberg:_ Yep.
- _quentinlesceller:_ Agreed.

### 4. Other questions

#### 4.1 Post 4.0.0 priorities

- _lehnberg:_ Given that 4.0.0 _seems_ to stabilize now. Where are we going next? Are we looking towards 4.1? Or should we target 5.0.0 stuff.
- _joltz:_ Probably both right?
- _quentinlesceller:_ I'd say so though I'm having a hard time anticipating anything past hf3 for now.
- _lehnberg:_ We have to move _forward_! Only one fork left.
- _joltz:_ Just some things rolling around my mind - Tor support for nodes, payjoin support.
- _lehnberg:_ Paralell ibd.
- _lehnberg:_ Okay but so dev meeting in a week, we okay with  starting to throw things against the board for future stuff then?
   - 👍: _dburkett, quentinlesceller, joltz, antiochp_

**Meeting adjourned.**