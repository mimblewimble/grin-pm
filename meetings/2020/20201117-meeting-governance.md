# Meeting Notes: Governance, Nov 17 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 20 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- cekickafa
- defistaker
- jaspervdm
- joltz
- lehnberg
- phyro
- quentinlesceller
- tromp
- vegycslol

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/366) was reviewed and accepted with the QA team follow up removed as it was no longer relevant.

- _lehnberg:_ Should we wrap up quickly and then take a quick look at 5.0.0 planning instead?
   - 👍: _antiochp, joltz, jaspervdm, defistaker, defistaker_

### 2. Action point follow ups from previous meeting

#### 2.1 Slatepack contact list actioned?
- _lehnberg:_ I've been able to reach out to the last ones I had outstanding, all aside from f2pool. If anyone has a contact, hit me up in the dms. Not been receiving much of a response from people, so I wouldn't expect much in terms of engineering effort being spent on this transition.
   - _joltz:_ Yes like pulling teeth to get more than a canned response in most cases. :/

- _lehnberg:_ More likely it seems like they'd either:
   * a) de-list us
   * b) find a workaround to continue using https. Since some wallets are likely to continue supporting https, I reckon it's going to be a bit of a mess.

   I don't really know if I have many thoughts to contribute on this matter. I understand the position both of exchanges and mining pools. And also those of wallets that don't want to stop supporting something their users are using. At the same time, I also see the need for us to push towards slatepack.
   - _joltz:_ It will take some time. I hope as we get new listings and new wallets they will be using slatepack primarily. It may just take a while for the existing services and wallets to transItion.
   - _phyro:_ I don't know what else could be done tbh. They had time to transition and it would be in the interest of everyone to switch.
   - _joltz:_ There is at least now a robust, privacy preserving and stable alternative to http(s) which was the primary goal I think.
   - _antiochp:_ 👍 and a clear direction to push people in.
      - 👍: _joltz, cekickafa_

### 3. RFC & sub-teams update

#### 3.1 [deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)
- _lehnberg:_ In terms of rfcs, it's the http(s) one that's pressing. Not seen or heard from yeast in quite a while now. What should we do here?
   - _joltz:_ Did the implementation of that get reassigned?
   - _lehnberg:_ Kinda flagged it last dev meeting to @jaspervdm that it might end up happening. But don't think we actually reassigned anything.
   - _jaspervdm:_ Not formally, but we can do that today if we want.
   - _joltz:_ Don't you have a pretty big load already @jaspervdm? Don't want to overload if it will get in the way of other work you are doing. Though I think the changes are fairly minimal.
   - _jaspervdm:_ Yes, I think its doable with the amount of changes required for this one.
      - 👍: _joltz, phyro_
   - _joltz:_ I'll be available to help in any capacity you need there, review etc. I could prob swing it but would take some time to catch up with current state of wallet impl.
   - _jaspervdm:_ Ill have a pr up by the end of the week.
      - 🚀: _joltz, antiochp, quentinlesceller, phyro_

#### 3.2 [Parallel IBD p2p messages](https://github.com/mimblewimble/grin-rfcs/pull/68)
- _jaspervdm:_ Pretty much done, mod changes that antioch suggested and a change in bitmap segment serialization we discussed in the dev channel last week. Would appreciate more eyes on the text.
   - _lehnberg:_ I'll take a look.
   - _jaspervdm:_ Ideally we start the fcp next week after the dev meeting, if you guys agree.
   - _joltz:_ 👍 will give it a review this week.
   - _tromp:_ I'll have a look at pibd RFC as well.
- _jaspervdm:_ Unfortunately it was not really possible to get this one finalized sooner, working on the actual impl gave us a lot of insights that changed technical details.
   - 👍: _joltz, antiochp, quentinlesceller_

### 4. Other questions
_None._

**Meeting adjourned.**