# Meeting Notes: Development, Sep 29 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- jaspervdm
- joltz
- kurt2
- lehnberg
- mcmmike
- paouky
- phyro
- quentinlesceller
- smokeking80
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ So, a special Yeasty Reminisce for now... as of around now I'm no longer drawing funds for full-time development. I've asked Antioch to take over these meetings since he's continuing in his full-time vein. I'm not going anywhere or disappearing, I still have things on the horizon and will continue to contribute, just switching lanes into hobbyist development for now like many others on the project.
I'll post a bit more about that in the forum update posts, but for now I'll hand over to Antioch.

- _mcmmike:_ Thank you @yeastplume  for your contribution and the work you have done full-time working on GRIN !!!
- _joltz:_ Yes, I'm grateful and humbled by your years of service and looking forward to having you around in a more hobbyist capacity. 😁
- _antiochp:_ thanks @yeastplume!
(not that you are going anywhere) Big shoes to fill - will try my best!
- _yeastplume:_ Thank you everyone, it's been great so far and will continue to be. :D
   - 👍: _mcmmike, vegycslol, phyro, quentinlesceller, jaspervdm, joltz, tromp, lehnberg_
- _phyro:_  I refuse to accept this reality
   - 😂: _mcmmike_
- _quentinlesceller:_ don't go yeast :p
   👍: _yeastplume_
- _yeastplume:_ I'll be here just like you are.
- _paouky:_ It's for the best, I think. Happy to hear it and looking forward to having you here in a more freetime-voluntary-based-capacity. Working 2.5 years full time on grin is no joke.
- _vegycslol:_ Dev resources decreased by 50% 😱
   - _lehnberg:_ Buy the dip.
   - _tromp:_ I'd buy but can't find anyone to sell to me. :(
       😂: _mcmmike, phyro, vegycslol, lehnberg_
   - _yeastplume:_ Everyone obviously believes in Grin so much that they sit on their hoards.
   - _tromp:_ Almost wish we could spend the fund on creating our own exchange. :)
   - _antiochp:_ Only if its defi.
- _vegycslol:_ Thanks for everything you have done and everything you will do in the future yeast. :>
- _yeastplume:_ Anyhow.. thanks everyone for your kind words and.. well.. let's continue the meeting where I'll continue to be.


### 2. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/348) with "QA Update" added to other questions.

### 3. Action point follow ups from previous meetings

#### 3.1  [Mitigating re-org risks actions](https://github.com/mimblewimble/grin-pm/issues/327)
- _mcmmike:_ https://forum.grin.mw/t/set-up-monitoring-of-our-p2p-network-in-order-to-detect-any-attacks/7869
   In short its working, but we have not yet implemented into an API to query
   - 👏: _phyro_
   - _antiochp:_ Sounds like we are making solid progress with api to come. 👍
   - _lehnberg:_ Very cool
   - _quentinlesceller:_ Very nice @mcmmike.
- _jaspervdm:_ Is there a reason for using logs over webhooks? Uou could keep track of the new blocks that get pushed to you w/ the webhook, and detect reorgs that way. I will post in the forum and we can discuss there.
   - 👍: _antiochp, phyro, vegycslol, smokeking80_
- _mcmmike:_ Sure, as I did ask John to send me patterns to look for he send me a logfile which we then started parsing and looking for these patterns. 
   
   Would each node see the reorg > 1 or only a couple of nodes? Because we did see not all nodes have the same log entries in regards to the REORGs.

   As we are running multiple Grin-Nodes, we could discuss this on the forum, what is the most efficient way to detect them.
   - _jaspervdm:_ It can happen that short reorgs only occur on a subset of the nodes.
   - _phyro:_ I think logs are a great start because they don't change any state. If we do it from the node itself it's also possible to do things like monitoring with statsd+grafana that sends the length of a reorg as a metric and setup alert thresholds on the grafana itself.
   - _mcmmike:_ @phyro sure, ELK stack later but we need to get solid data first. Please let me know in the forum thread if there is any further requirements we should look at or implement. 
   - _antiochp:_ Let's continue discussion in the forum.

### 4. v4.1.0 status
- _antiochp:_ We have some organic growth of number of nodes running 4.1.0. I'm seeing roughly 30-40% of nodes but that's not official numbers. Everything looks good - we identified one issue with full archival nodes unable to migrate (due to volume of full blocks). There's a PR for a fix - but not a huge number of users shouting for this, so no rush.
- _mcmmike:_ We havent experienced any problems all our nodes (except testing/dev) are running stable on 4.1.0.
   - 🚀: _antiochp, jaspervdm, vegycslol, phyro, lehnberg_

### 5. v5.0.0 planning

- _antiochp:_ @tromp anything to add for zawy12 feedback?
   - _tromp:_ The discussion left some worries about FTL at only 1 minute. So I settled on a compromise of 5 mins, arguing the a local clock off by more than 5 mins is still quite noticeable.
      - 👍: _antiochp, joltz_
   - _tromp:_ NTP is much less likely to drift off that much. 5 min is also a lot more natural ie. less arbitrary, than 12 mins. There have been no other concerns raised in the RFC. For half-life I plan to go with 4 hours, i.e. 240 blocks. Which may be compared with the 288 blocks that BCH chose (2 days for them). We can expect arrival of ASIC graphpower next year.
      - 🤞: _antiochp, phyro, vegycslol_
  - _tromp:_ Which should help stabilize our graphrate
and reduce the need to adapt difficulty very fast. Of course with our 1 min block time we still adapt way faster than BCH and WAY WAY faster than bitcoin.

- _antiochp:_ Awesome - so sounds like we are close to that RFC being accepted? And committing to new DAA impl for 5.0.0?
Do we have a rough idea of how big an effort this will be to implement?
   - _tromp:_ I have yet to start on implementation, but should be doable in 1 month. With a little bit of your help:)
   - _antiochp:_ 🙉
      - 😂: _vegycslol, phyro, lehnberg_
   - _antiochp:_ If it gets rid of the need to go lookup 60 previous blocks then I'm willing to help out.
   - _tromp:_ Yes, it gets rid of that.
   - _jaspervdm:_ Nice
   - _tromp:_ That's one of motivations.
   - _antiochp:_ We spend a lot of time doing that, deserialization wise.
   - _tromp:_ Since we won't need it for primary secondary balancing anymore. So we definitely want to get rid of need to look back at old timestamps.

- _antiochp:_ ok - Fee RFC (aka softforks)
   - _tromp:_ Also not much concerns raised. Planning to go for a 40-bit mask for fee, freeing up 24 bits of which we use 8 bits for fee factor. Like DAA, this also gives us some code simplification in that we no longer need a 2nd (arbitrary) set of weights. And make our minimum fee requirement purely linear.
   - _antiochp:_ Yeah the fee factor makes a lot of sense to me. And the simpler linear fee calcs.
   - _jaspervdm:_ It definitely sounds good, im still catching up on that stuff.
   - _tromp:_ If we think 8 bits is still too generous, we could limit it to only 4 bits. and then we always have option of expanding 4 to 8 later. Which is then a soft-fork at p2p level.
   - _antiochp:_ Shall we leave it there and continue discussion on the RFC (in the interest of time)? I'm interested in knowing people's views on using this for possible softforks in the future.
   - 👍: _mcmmike_
   - _tromp:_ Yes, I invite all to read the (pretty short) RFC and provide feedback if possible.
   - _paouky:_ Imo there's no harm in having these free bits for future softforking capabilities, it is nothing binding

- _antiochp:_ PIBD status @jaspervdm?
   - _jaspervdm:_ RFC+impl of p2p messages is well under way. I've been spending some time thinking through what changes we need to make on the sync process, will start the rfc on it soon. The implementation of it will start once the rfc is sufficiently fleshed out and discussed, in the meanwhile I have a bunch of prep PRs in the pipeline.
   - _antiochp:_ Yeah 👍 on prep PRs and overall improvements. There's a lot of code in there around sync and MMR management that has "evolved" over time.
   - _jaspervdm:_ Yep hopefully we can clean up some things at the same time.

- _antiochp:_ While we're on RFCs - replay protection. I suspect this is still under active enough discussion that it may fall outside of 5.0.0 but anything to add on this now?

- _mcmmike:_ I have a question under which RFC is the getting rid of transaction lock explained? As I had a discussion with @tromp about this the other day? We want to test first real cold/hot wallet setup which could be used for e.g. Exchanges...

- _tromp:_ There's 2 remaining issues I'm pondering that has no RFC, only my forum post explaining the change, which is more sort of a wallet implementation choice.

- _antiochp:_ @yeastplume is also making progress on "late locking" which is related right?
   - _yeastplume:_ Yes, that's right, I have a large-ish PR incoming in the coming days.
   - _tromp:_ Yes, late locking == mostly lock-free
   - _antiochp:_ Sorry yes - "mostly lock free" is better terminology.
   - _mcmmike:_ does "mostly" mean we need to generate outputs prior to spending it?
   - _paouky:_ "Mostly" because the outputs are still locked between post and until chain confirmation.

- _phyro:_ Replay protection RFC is still active, yes. I've only added a basic description about the play attack detection. Other than that, it's been just discussions around how to simplify things. Perhaps @tromp can expand on the issues he has in mind.

- _tromp:_ So apart from the payjoins, there is an occasional need to acquire more protected outputs
when you have none, this also involves anchor creation
the question is whether to do these in separate tx, or combined with whatever tx the user requests. In latter case, there will be higher fees required. I wondered if it would be fairer to have each party pay their own fees. So sender doesn't mind if receiver creates extra outputs. I know this is a departure from standard practice. But then so are interactive txs.
   - _vegycslol:_ When you're receiving first money on grin, you can't pay for your part of the fees.
   - _tromp:_ With payjoins you get the option of each side covering their own fees.
   - _phyro:_ @vegycslol you can receive less amount
      - 👍: _vegycslol_
   - _antiochp_ @phyro that's really the sender paying the fee though.
   
      > With payjoins you get the option of each side covering their own fees.
   
      That's maybe a reasonable default for payjoins if both parties are explicitly opting into a payjoin.
   - _tromp:_  No, both parties agree on amount to send. and then on top each side pays for fees of their in and outputs. Which for receiver can be taken out of received amount. When you have this, it becomes natural to do the acquiring of more protected outputs in combination with ordinary tx. Rather than separate. Which is a more natural flow for user.
   - _phyro:_ So the alternative would be the receiver adding outputs and a kernel?
   - _tromp:_ Pppl will need to get used to new reality that receiving 10 grin can mean that they end up with 9.9984 grin or whatever.
      - 👍: _vegycslol_
      - _kurt2:_ Very poor ux I think.
      - _mcmmike:_ But make it optional
   - _antiochp:_ A lot of that is UX related.
   - _tromp:_ So, unless there are strong objections, I think we may add each-pays-their-own fees to the RFC.
   - _phyro:_ If we want to keep the outputs side flexible for both parties, then it seems fair that each party pays for their own fees.
   - _antiochp:_ You're not paying to receive funds, but paying for flexibility of using a payjoin.
- _antiochp:_ We should add it to the RFC for discussion, there's a lot of moving parts in it.
   - 👍: _phyro_

### 6. Slatepack adoption status / docs
- _joltz:_ In the next two weeks or so we want to start reaching out to exchanges, which gives them 3 months notice to make the necessary changes. As far as what to prepare on our end besides adequate documentation and making ourselves available to support inquiries, I'm not sure what else we can do. So I guess action point for me for two weeks from now: contact exchanges/services to provide formal deprecation notice and associated documentation + communications channel for related questions.
   - _paouky:_ What kind of comm channel would that be btw?
        - _joltz:_ Keybase #support or an ecosystem chat somewhere.
   - _joltz:_ Might be helpful to also publicly track who has upgraded for a little shaming incentive.
      😂: _phyro_
   - _antiochp:_ That's worth considering 👍
   - _mcmmike:_ Well, if they approve of it, but I think giving them the right tools, API documentation, etc is more helpful and the possibility for hot/cold wallet-setup, etc. This might be key and should not be taken to easy, informing the Exchanges. Please take your time and prepare ahead.
      - 👍: _joltz_
   - _joltz:_ We want to eliminate as many excuses for not upgrading as possible.
   - _mcmmike:_ Therefore we need to provide reasons and tecnical solutions on the same page.
   - _joltz:_ The slatepack documentation should be sufficient for them to upgrade. It's hard to incentivize if they aren't making $ on trading fees though. So outside of public pressure I'm not sure what other incentives will work unless someone wants to do the integrations for them.
 
- _kurt2:_ I would disagree with any shaming incentive. For exchange owners and employees all what grin did up to now is pressure from high support. We are not in the position to shame anybody. We are in the position to be pro-active, helpful, and kind to exchanges.
   - 👍: _paouky_
   - _paouky:_  Public shaming would do more to annoy them than further any integrations. Grin community is so small anyway.
   - _antiochp:_ I'd see it less as public shaming and more around allowing users (and miners) to see who was supporting slatepacks.
   - _paouky:_ Yeah I don't mind having a simple list of exchanges who implemented slatepacks and those who didn't.
   - _joltz:_ Cool, then we can just hope they do it, otherwise Grin won't be available for deposit/withdrawal.
   - _paouky:_ How do you want to shame them? forum posts? thats not shaming, it would be ranting to ourselves.
   - _joltz:_ Keeping track of who has upgraded and who is preventing their users from accessing Grin after the HF should be sufficient.
      - 👍: _mcmmike, paouky_
   - _joltz_ I don't think we should actually shame beyond just making the information available, which should be enough on its own in that area.
      - 👍: _vegycslol_
   - _phyro:_ Yeah, I don't see that as shaming. If exchange A lists 20 new coins, then the other will need to do that as well to "stay competitive".
      - 👍: _vegycslol, antiochp, joltz_

- _paouky:_ Maybe I'll do a forum post a few weeks after v5 which lists all the exchanges that allow you to withdraw and deposit grins, and those who don't. Seems enough.
   - _antiochp:_ Hopefully they are doing this before v5.
   - _paouky:_ Ah yeah, so right at v5 not weeks after.
   - _joltz:_ Yes, the goal is to do this before v5 so we don't get in a position where no exchanges have added slatepack, while slatepack is required to transact.
   - _antiochp:_ They could technically support this _today_.
   - _joltz:_ Exactly, we want to be putting pressure well before the deadline. I think 3 months is a good time to start, this way no one can act surpriseddline. I think 3 months is a good time to start, this way no one can act surprised.
   - _antiochp:_ May not reflect great on us though if we start with a list of 0 exchanges supporting slatepacks. So maybe we only publish a list of exchange support once we have some support.
   - _mcmmike:_ Without having them informed about slatepacks, no.
   - _phyro:_ It could be a checkbox for an exchange to be the first to support slatepacks 🤷‍♂️
   - _joltz:_ The slatepack standard and deprecation of http(s) has been known and discussed for months now. The information is available, it is just a matter of them dedicating staff to do the work.
      - 👍: _phyro_
   - _phyro:_ Though we might be too small at the moment for this to be the reality.
      - 👍: _mcmmike_
   - _joltz:_ We can provide resources and hand-holding to make it as frictionless as possible, but we can't do the work for them- decisions need to be made to allocate resources to make the changes in time for the HF.
      - 💯: _phyro_
   - _antiochp:_ Worst case scenario - no exchange moves to support this - what happens then?
   - _mcmmike:_ OTC
   - _joltz:_ A smaller exchange may add it to start collecting the business left behind by others.
      - 👍: _antiochp_
   - _paouky:_ I highly doubt that will happen. It's pretty lucrative to be the only exchange allowing for grin deposts/withdrawals, even if the market is small. So I expect one to take the lead sooner rather than later.
   - _vegycslol:_ We implement adaptor sig atomic swap and wait for some dex to support it.
   - _mcmmike:_ They are good with math, and if they are first to have it implemented the whole community moves to this exchange at least creates an account and possible does some business with them.
   - _joltz_ Ultimately the change should make it easier for exchanges ot do business and make money, so I think incentives are aligned here.
   - _phyro:_ If we give out a good documentation that is easy to follow and perhaps even hints at the most basic simple UX to handle this, then I think we did enough.

### 7. Other questions

#### 7.1 QA Update
- _mcmmike:_ @joltz and I will start working with the student on the QA Team (#qa channel on keybase) starting Sunday. This is regardless of the funding, we will manage until then.

**Meeting adjourned.**
