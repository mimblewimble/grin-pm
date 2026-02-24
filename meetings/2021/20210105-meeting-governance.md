# Meeting Notes: Governance, Jan 05 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 10 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- energyburn
- jaspervdm
- joltz
- lehnberg
- mcmmike
- paouky
- phyro
- renzokuken
- vegycslol
- tromp

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/378) was reviewed, with "ASIC ordering" and "Antioch January plans" added.

### 2. Action point follow ups from previous meeting
#### 2.1  Slatepack status
- _lehnberg:_ No real update there I think. Poloniex turned off Grin yesterday I believe. Bittrex announced they will be dropping privacy coins over xmas period, right?

   In other words, we really have an opportunity to find a better longer term fit for Grin as a trading partner in and out of BTC.
   
   Once we have the hard fork behind us. 
   
   Fwiw we haven't actually gotten much of an ACK from mining pools beyond grinmint. So I wonder what will happen post fork here.

   - _jaspervdm:_ Yeah we would have to wait and see.


### 3. Antioch January plans
- _antiochp:_ I'm taking a bit of time off in Jan, but will be around for release etc. Not planning on actively doing any dev work in the month.
   - 👍: _joltz_
   - _joltz:_ Glad you are getting some time off, looking forward to having you back after a nice break.
   - 👆: _phyro, vegycslol_
   - 💯: _lehnberg_
   - _jaspervdm:_ agreed!

- _antiochp:_ Jan is shaping up to be a little crazy with school situation etc. and I do need a bit of time away from grin...
   - _joltz:_ Otherwise you'll go grinsane.
- _phyro:_ Glad you're sharing this with everyone 👍
   - _lehnberg:_ Yes, +1. Enjoy the time off, it's prob a very wise move!

### 4. v5.0.0 status
- _antiochp:_ Node is tagged and 5.0.0 built (not announced yet). I think we need to publish crates before we can do the wallet build?
- _jaspervdm:_ Yeah we should.
- _antiochp:_ And kick off doc build or whatever happens there. 
- _jaspervdm:_ That way we can depend on the tag instead of a branch. Oh actually we never do that.
- _antiochp:_ I think @quentinlesceller has experience doing this? I'm not actually familiar with the process...
- _jaspervdm:_ We keep relying on the git, just on the tag. so crates push not needed for dependency, but its still required for docs.
- _antiochp:_ So I think we should be able to release everything today, binaries, docs etc. It's all ready to go
If somebody could take lead on that - then 👍
- _jaspervdm:_ I don't have any experience w/ pushing to crates.io etc.

- _lehnberg:_ How confident do we feel about quality @mcmmike you around? how did the winter testing challenge go?
- _mcmmike:_ Yes I am, we have not found any serious issues, but the ones we did find we opened up issues for.
   - 👍: _antiochp, cekickafa_
   - 👏: _phyro, joltz, vegycslol, lehnberg_
- _jaspervdm:_ Awesome! going to have a look at those.

- _lehnberg:_ Nothing that's blocking a 5.0.0 release?
- _mcmmike:_ Main problem, was wallets loosing connections to nodes, but we can not fully reproduce this.
- _antiochp:_ What version(s) were majority of testing done on?
   - _renzokuken:_ Beta.3, once available testers switched to rc.1.
   - _antiochp:_ Reason I'm asking is rc.1 and rc.2 did fix some async stuff around tokio etc. either way - we are unlikely to fix anything now prior to 5.0.0 release. But plenty of opportunity for 5.0.1.
      - _renzokuken:_ I think that might have been it, I just tried rc.1 on my environment with default wallet and it synced, I will ask @mo5itoo if he still has environment that reproduces the problem and we will both check rc.2
   - _lehnberg:_ Gotcha, that sounds good. Okay so what's left here?

      - release official 5.0.0 binaries
      - add banner message on website

    anything else?

- _antiochp:_ Yeah I think so - I need to get in touch with @quentinlesceller to discuss the docs issue (I still don't fully understand this). But its all basically in "release the binaries" + docs
- _jaspervdm:_ What's the issue exactly? I think pushing to crates.io updates docs.rs right?
- _antiochp:_ Yes I think it's just a case of releasing new 5.0.0 to crates.io. We just don't do this for beta or rc releases, so there are no 5.0.0 docs available. And I think only @quentinlesceller and @yeastplume have access to crates.- _mcmmike:_ It was hard to create test-cases for the API due to lack of documentation. We really need to improve on this.
- _jaspervdm:_ The api for 5.0 is compatible with 4.0, but yes we could have released the docs for a beta. To make it explicit.
- _antiochp:_ With hindsight - we probably want docs for all releases, beta or otherwise
   - 👍: _mcmmike, phyro_
   - _lehnberg:_ yes
- _antiochp:_ It should just be part of the automated release process, but we can discuss this later. For now we just want to do 5.0.0 and publish updated docs asap (later today).
- _phyro:_ Release and later automate so we don't have such situations :)
- _jaspervdm:_ Yup sounds good, I'll open an issue to remind us.
   - 👍: _antiochp_
- _antiochp:_ In terms of comms - website banner, forum post etc. are we tracking that anywhere?
   - _lehnberg:_ We have the forum announcement post tracking it. Once 5.0.0 is released, we'll write a blog post and add the banner.
- _antiochp:_ I will ping @quentinlesceller and see if we can get 5.0.0 fully released by end of day.

### 5. [RFC update](https://github.com/mimblewimble/grin-rfcs/pull/)

- _lehnberg:_ Nothing worth bringing up at this point here, RFC0020 was merged (PIBD messages), so we're good.

### 6. [ASIC ordering from Grin General fund](https://forum.grin.mw/t/grin-fund-for-mining-idea/7978/)

- _lehnberg:_ 
   > I helped John Davies to connect with Jenny from iPollo to handle this, and I asked them to reserve the requested 3 G1 + 10 Mini for this proposal. The dead line is Jan. 6.
   > 
   > My 2 cents for this:
   > 
   > The quotation for these is 50.2k$, after 5% discount (if with Grin payment) it will be 47.69k$, after 20% donation it will be 38.152k$. It's quite a valuable offer, considering the miner price already goes up to 20k$/G1 and 20% (or more) rising on Mini.
   > 
   > About who should hold these miners for community, I would propose @quentinlesceller (if he agree that, since he's the main contributor of grinmint pool, also one of the main grin developers.), or any other suitable candidates. Or if 3 G1 is hard to assign, you can keep one at least (easy for test and development), and it should be easy to make an auction in forum to sell out other miners from the original cost, and then supply to the Grin dev fund.
   > 
   > The maintainers of these community miners can freely charge some electric fee plus a 10% management fee. And fund the remaining mined GRIN coins into a dedicated GRIN account of community.
   >
   > Anyway, please feel free to make your decision on this, I completely support any decision made in the meeting (I probably cannot join it b/c the timezone.)
- _joltz:_ Personally, as grateful as I am to the ASIC mfg for their work and offer, I think it is a logistics and accountability challenge. Many things can go wrong. What if one of the miners dies? Or if they don't show up? Where will they be run? G1 will likely require a commercial space to be rented to handle power, noise, cooling? That will require an entity to sign a one-year lease most likely. 

   I don't want to speak for others but personally I wouldn't want that responsibility even if all fees were covered just because so many things can go wrong. I think the ASICS will have great success with the community but I'm not sure it is responsible to spend funds in this way due to the potential problems mentioned. 

   Wouldn't resources be better spent on long-term development to improve stability, privacy, usability etc instead of a depreciating asset that is a logistics nightmare to manage that otherwise already has high demand from the community? It doesn't seem sustainable to spend the fund trying to chase short-term network security by buying and trying to manage ASICs.
   - 💯: _paouky, energyburn_

- _lehnberg:_ So total cost $50.2k US? We don't have that much in Grin so can't get that 5% discount, but there's a 20% discount we can get? i.e. $40.16k? Right now there's what, ~$3m in the general fund?
- _antiochp:_ From my perspective there is real interest on the forum post with individual community members looking to purchase and run ASICs. I think we should support this, but not use the general fund for this.
- _lehnberg:_ I agree with what @joltz is saying above, but also see value in the community mining grin, dog fooding our own network basically.
- _jaspervdm:_ Do we have enough trustworthy people that have indicated that they want to run a miner that would be paid by the fund? If no one is willing to operate them there's no point in discussing.
   - _lehnberg:_ It might not be possible to sign off on it, but definitely see a point in discussing it. Perhaps it could act as advertisement for people in the community to consider this.
- _lehnberg:_ Could the general fund VC fund a mining company?
- _joltz:_ I like the idea in theory but in practice the logistics concern me. Not about the money amount, more about the headache.
- _phyro:_ I'm leaning towards each buying their own if they want. This is how the incentives in mining work. We could maybe secure the short term a bit, but I don't think the community fund can steer the long term convergence of the owners.
   💯: _energyburn_
   - _lehnberg:_ Could we offer some kind of incentive here? Liquidity mining grin mining? 🤑 We'll buy your freshly mined grin tokens at a better price than spot.
- _mcmmike:_ I am not sure, if you would run a mining operation you need some kind of a legal entity to do so. This would be possible but it would require a substantial cut in the winnings for the general funds. e.g. one of our company co-location 42" rack costs aound $600 per DC + additional electricity etc. Having individual asic miners should be a better options.
- _antiochp:_ We would probably want to be careful around issues of centralization etc. here.
   - 👍: _energyburn_

- _mcmmike:_ Mining power distribution and mining pools are two different things to consider in terms of centralization.

- _paouky:_ There's no point in buying grins from fund, I dont see why we would do that. The entire point of this proposal is that more graphpower and generated grins and kept in the hands of the community (or fund). Which I don't think is a cause worthy enough to pursue with our development funds.
- _lehnberg:_ Could we offer a kick back to G1 miner buyers that use the network? Show us proof of purchase and track record of helping secure the network, and you get something.

- _tromp:_ We can ask ipollo to subtract the cost of one G1-mini + shipping from the donation they plan to make, and substitute 1 miner that we can run on testnet. i can look try to host it myself, if no other trusted community member volunteers.
   - _lehnberg:_ Nice idea. 
- _paouky:_ You won't fund anything by buying asics, you'll probably lose value. All in all i very much appreciate the thought behind this proposal, but for me this is a no go.
- _antiochp:_ I do think there is enough private interest on that forum post from across the wider community. Without the general fund needing to be involved.
- _jaspervdm:_ We could consider buying a mini for testnet mining using the funds regardless of what we do with the current proposal.
   - 👍: _paouky, lehnberg_
   - _joltz:_ Getting a mini for testing is different than getting the large commercial ones. I'm 👍 for testing mini
   - _phyro:_ I'd rather see funds spent on other things - onboarding new people, tutorials, simple sites explaining grin or even prototypes of how to securely integrate with Grin for payment processor apps (btcpay or similar). I support the testnet idea.
      - 👍: _energyburn_
- _tromp:_ Asking iPOLLO to to send us a miner is less risky then sending them BTC from the fund first.
- _joltz:_ I'm not opposed to paying for a mini instead of asking one for free. It shows good faith, even though we don't seem to be able to accommodate the offer of the commercial miners.
- _cekickafa:_ I am in favor of buying g1 and mini for testing and being trust for asic manufacturer.

### 7. Other questions

_None._

**Meeting adjourned.**