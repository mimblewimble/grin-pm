# Meeting Notes: Governance, Jan 19 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 80 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- cekickafa
- dburkett
- deeev
- jaspervdm
- joltz
- lehnberg
- phyro
- quentinlesceller
- renzokuken
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/383) was reviewed and accepted with the point "Trustless aggregator" added after a comment on the agenda issue.

### 2. Action point follow ups from previous meetings
- _lehnberg:_ Don't think there are any follow ups worth bringing up, but I can mention here that I have pending action items to deliver the quarterly financial report and also update spending logs.

- _lehnberg:_ We also still need to get a blog post out announcing 5.x I think and the successful hard fork. @jaspervdm have had a chance to look at that?
   - _jaspervdm:_ Oh shit. Totally forgot. My bad, going to set myself a reminder and will do it first thing tomorrow.
   - 🔔: _lehnberg_


### 3. Priorities for 2021
- _lehnberg:_ Floor is open for ideas.

- _yeastplume:_ Either more governance or less governance, haven't quite decided. Actually, there's a 3rd option, same amount of governance.

- _tromp:_ I'd like to see more funding requests for completing well defined tasks rather than for salaries.
   - 👍: _lehnberg, cekickafa, phyro, quentinlesceller, dburkett_
   - _lehnberg:_ Maybe some kind of bounty program?

- _lehnberg:_ So my guess is that there's roughly 100 btc in the fund right now.
   - 👍: _quentinlesceller_
   - _yeastplume:_ This would be the elephant.
   - _lehnberg:_ Do we have any ideas for how to deploy a portion of this wisely this year? I'd be keen for a trail of bits audit at some point. It's been 2 years since our last audit, not sure when the timing would be right for the codebase. Maybe after pibd is fully out there?
   - _jaspervdm:_ Depends on which components we would like to be audited.
   - _yeastplume:_ I mean a lot of this depends on the development goals over the next year as well.

- _lehnberg:_ We're already funding GUI and wallet clients dev work today, both with ironbelly and grin++ → do we see that continuing? Expanding? Evolving?
   - _joltz:_ We were also talking about redoing secp lib which could use an audit after.
      - 👍: _lehnberg, phyro_

- _joltz:_ A challenge with bounties is that you have to have a lot of really well defined tasks/objectives to achieve payout.
   - 👍: _vegycslol_
   - _cekickafa:_ If paying is partial, it will not be a problem imo.

- _yeastplume:_ Let me crack it open a bit more, what about restructuring the fund to be able to hire people in a more traditional sense?
   - _lehnberg:_ What like a company?
   - _yeastplume:_ And provide the kind of security, incentive, etc that other projects get? Possibly.
   - _tromp:_ You want to be more like zcash than like monero?
   - _yeastplume:_ We're in a unique situation here, striving to be like zcash isn't where I'm going with this. I just think it might be time to have another think about the overall structure.
   - _jaspervdm:_ So maybe more like a foundation?
   - _yeastplume:_ I don't think sitting on the fund indefinitely while waiting for people to make funding requests is necessarily the best way to go here.
      - 👍: _cekickafa_
      - _lehnberg:_ Agree.
   - _tromp:_ I think it's not too bad a way either.

- _yeastplume:_ So I'm not fixed on the exact approach, I just think it's time to shake it up a bit and be having a wider conversation.
   - _jaspervdm:_ Yeah otoh spending for the sake of spending is also not great.

- _lehnberg:_ What about funding some smaller break away groups? Give some fixed amount to a wallet GUI group (for example) to spend as they please with a concrete objective.

- _phyro:_ Let's assume we have 1m. As fast as it grew, it can also fall down, so we perhaps we have less than we think.
   - _lehnberg:_ We should be conservative, but we spending wisely doesn't mean not spending at all.

- _lehnberg:_ We could put together some cryptography group that could work on exploring ideas in that field, hiring cryptographers, or giving security proof bounties, or crypto audits, or whatever.

- _yeastplume:_ Splitting up the fund could be an approach as well (provided we can find the proper recipients).
   - _lehnberg:_ You mean like breaking it up in equal chunks?

- _yeastplume:_ Just saying it could, I don't necessarily have the best approach.. 'n' chunks would mean having and trustworthy groups around with the right approach.
   - _lehnberg:_ Yeah thought about this as well. It could work, but as you say the challenge is finding those groups.

- _vegycslol:_ I like the idea of having bounties, but we would need to have them very well defined. It would be awful to pay for a solution which is technically a solution but only because the specification was poor.
   - _deeev:_ Pros with bounties is that it could waste dev time if they are working separably to claim the same bounties.

- _yeastplume:_ It is challenging to spend the money as is. Many developers won't go near it because grin can't provide any accountant-friendly paper trails. Plus, putting your self forward for funding opens you up to all sorts of public scrutiny from everyone and anyone, and it's not always pleasant.
   - 🙈: _phyro_

- _yeastplume:_ I can definitely see how it would drive people away, not everyone is comfortable opening themselves up And letting everything about their work life be known. And staying anonymous is hard work.
- _cekickafa:_ If they are not like, in the spirit of current devs, it is useless to hire them. A little devotion is necessary for grin.

- _phyro:_ I think lately we've been nicer towards the devs if that's what you also had in mind:)

- _yeastplume:_ Again, I don't have answers here, but I don't think the staus quo here is necessarily the only option on the table.
   - _lehnberg:_ Yes, that's a nice way to put it. And maybe let's keep this an open point to mull about for the coming weeks and months. And see what ideas and proposals surface up about how best to do this.
   - 👍: _deeev, yeastplume, phyro, jaspervdm, joltz, vegycslol_
- _yeastplume:_ Yep, sounds good.

- _lehnberg:_ @dburkett wrote in #fundraising the other day:

   > the amount of money in the hands of just a few people is already a serious threat to the decentralization of the protocol. I recommend we close this channel and honestly believe we should just stop accepting more donations altogether. Thoughts?

   To me, this sounds like a negative EV outcome, i.e. Refusing all donations just because we're worried about centralization. There must be positive EV outcomes for the project, where we still can receive donations (even though they are fewer and more far between these days), without it becoming a point of "too much" centralization. Just as an example, it would be fairly straight forward to pledge that all incoming donations would go to some other cause than the general fund. A "bug bounty fund", or some other idea.
   - _cekickafa:_ Audit fund.
   - _yeastplume:_ So we can split off a chunk for those who desperately want to go and implement one-sided transactions.
      - 👍: _cekickafa_
   - _lehnberg:_ This way grin can still get donations, but council doesn't need to decide on how those are spent.
      - 👍: _cekickafa_

- _phyro:_ The current situation is a result of a recent bitcoin pump. Let's not take the money for granted, it went 4x in rather short term. We don't know where it will go, but it's safest to assume a bad scenario where it dumps.
   - _yeastplume:_ Good point to keep in mind as well.
   - _cekickafa:_ Waiting for how long? Then donations given when btc was low price, for holding it?

- _joltz:_ I don't understand how <100btc poses a "serious threat to the decentralization of the protocol".
   - _tromp:_ Me neither.
   - _dburkett:_ Let's face it, there's not a good way to make money developing for grin. So one group gets to pick and choose which projects succeed and which ones don't, unless you have people working for free. But the more people see others getting paid full salaries for dev, the less attractive it is to volunteer.

- _cekickafa:_ Be conservative. That's the point.

- _yeastplume:_ I could see splitting the fund up into groups with specific purposes and giving them all autonomy. There would have to be some sort of transparency pact so all groups remain accountable for how their funds are spent (how we do this I don't know), but each group can make their own spending decisions without necessarily making every single spend a public argument.
   - 👍: _cekickafa, dburkett_
   - _cekickafa:_ I propose splitting the fund of %25 worth=equal to original donated worth. Below 1 million at first try. For groups.
   - _vegycslol:_ The last thing we want is different groups spending money on non-compatible solutions. I think the most skilled people should be the ones making decisions and that's it.

- _yeastplume:_ So yeah, not married to any of this by the way, it just reflects the way I've been thinking and hopefully some other ideas will come out of the woodwork.
   - _dburkett:_ Yea, part of the difficulty of finding a cryptographer to work on grin has been the requirement to publicly request funds. A lot of people don't like doing that for understandable reasons.

- _yeastplume:_ The dialogue is open anyhow, perhaps we can put this down as an emerging topic and move on to the next meeting points.
   - 👍: _vegycslol, cekickafa, dburkett, jaspervdm, lehnberg_

### 4. GPU server for testnet mining costs
- _jaspervdm:_ Right, just wanted to pose the question whether or not we want to continue renting the gpu server we currently have? If so, for how long? The 3rd month expires on the 10th of february.
- _cekickafa:_ Better continue.
- _yeastplume:_ I think it's good spend. The poor yeastmonster has been stripped and harvested, a victim of spousal hatred.
   - 😂: _joltz_
- _joltz:_ I would be surprised if @tromp receives the asic by then. Would expect after chinese new year but who knows.
- _lehnberg:_ Continue until asic comes? So month by month perhaps? Or is it always on a 3 month basis? If so extend a full 3 months.
   - _jaspervdm:_ Its on a monthly basis.
   - _lehnberg:_ Ah cool.

- _jaspervdm:_ So revist in a month?
   - 👍: _lehnberg_
- _lehnberg:_ Cancel once tromp receives asic?
- _tromp:_ And gets it running :)
- _lehnberg:_ Do we need testnet right now though? What happens if we shut it off completely.
- _tromp:_ And finds the noise tolerable :)
   - 🙂: _joltz_
- _joltz:_ We still need it, never know who is testing what.
- _phyro:_ I think having it running is nice if some community member wants to test sending/receiving or whatever.
- _lehnberg:_ Fair, so then keep it on until further notice I say.
   - 👍: _jaspervdm_
- _phyro:_ Having a public faucet for such things would also be cool.
   - 👍: _cekickafa_
- _jaspervdm:_ Yeah, could look into a testnet faucet. Shouldn't be that hard to set up.
   - _quentinlesceller:_ 'curl -d '{"address": "slatepackaddress"}' http://faucet.testnet.grin.lesceller.com'.

- _lehnberg:_ Okay so do we approve gpu for one month or until asic arrives?
   - 👍: _joltz, tromp, cekickafa, vegycslol_

- _jaspervdm:_ Lol. Anyway so I will keep paying for the server and asking for reimbursements until we decide otherwise.

- _joltz:_ I'm 👍 to fund until asic arrives and @tromp confirms he can run it while still being able to tolerate his space with heat/noise.
   - 👍: _phyro, jaspervdm, lehnberg, deeev, cekickafa, quentinlesceller, tromp, vegycslol_

### 5. [Trustless aggregator on l1](https://forum.grin.mw/t/bounty-program-trustless-aggregator-on-layer-1)

- _lehnberg:_ @deeev:

   > it's probably too premature to approach this subject in this governance meeting as not a lot of time elapsed for discussion, but I still propose it. Yes, it's probably a bit premature, but from my side, as a general feedback point, I'd be very much open for a bounty on this, given it be well defined.

   It's a nice idea, I encourage you to work with others to see if you can define the brief to the point it feels firm enough to allocate a bounty to it. People who have shown interest in this include @antiochp @tromp @dburkett @phyro among others. So they might be able to help with wording.

   - _cekickafa:_ Good idea👍

- _vegycslol:_ Antiochp proposed a different proposal which seems more user friendly.
   - _phyro:_ This is a bounty, so there is no approach defined for this one. It's an open problem.
- _deeev:_ Great to see positive feedback on it.
- _tromp:_ This looks more like an mpc engineering challenge.
   - _dburkett:_ Not necessarily. Something like zerolink isn't mpc.

- _tromp:_ For a few hundred thousand dollars, would we expect a running demo?
   - 😱: _vegycslol_
   - _dburkett:_ The challenge is designing something that can handle dos attempts.
   - _tromp:_ Defining "handle" is tricky.
   - _dburkett:_ Yea, definitely part of the challenge of defining this, I agree.
- _tromp:_ In my mpc proposal, you could start a filtering mpc whenever any server reaches its memory capacity. But then the question is how much computing resources will be expended to deal with a certain amount of attacker bandwidth.
   - 🤔: _phyro_

- _tromp:_ Ok, so this topic need further forum discussion to set more concrete goals.
   - 👍: _lehnberg, joltz, vegycslol_

- _deeev:_ What about the amount allocated to this bounty?
   - _tromp:_ We can't decide until we have the concrete goals?!
   - _lehnberg:_ Depends on the deliverable really.
   - _joltz:_ That may depend on the requirements we land on.
   - _dburkett:_ Depends on the final wording.
   - _cekickafa:_ Or depends on btc price.

- _deeev:_ Too much, not enough? Keep in mind goal are not well defined.
   - _vegycslol:_ Goal should be well defined, path to it is a mystery.
- _phyro:_ Yeah, I think the budget comes after we know what we want.
- _tromp:_ Also would need to discuss whether we expect most wallets to support the service.

### 6. [RFC update](https://github.com/mimblewimble/grin-rfcs/pull/)
_None._

### 7. Other questions
_None._

**Meeting adjourned.**