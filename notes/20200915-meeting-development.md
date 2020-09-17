# Meeting Notes: Development, Sep 15 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 40 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- jaspervdm
- joltz
- lehnberg
- mcmmike
- phyro
- quentinlesceller
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ Past couple of weeks have been fairly quiet on the development front, though plenty of activities on rfcs and other ideas, so we can get right into them.

### 2. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/343) was accepted, with "v4.1.0 release" added to the agenda on @antiochp's request.

### 3. Action point follow ups from previous meetings

#### 3.1  [Mitigating re-org risks actions](https://github.com/mimblewimble/grin-pm/issues/327)
- _joltz:_ Have been working with @mcmmike on some detection solutions. He has a great infrastructure already deployed for monitoring and so we are working to parse the logs to give useful feedback on "risk due to reorg" from the network. We still don't have a specific algo defined yet for no. of reorgs, depth, and time. If anyone has interest there please reach out to myself or Mike or feel free to comment here.
   - 👍: _lehnberg, yeastplume, quentinlesceller, phyro_

- _lehnberg:_ No update on formula from my end. Anyone who wants, feel free to take this point over from me.
   - _joltz:_ I'll roll it into work with Mike. We'll propose something and then if people don't think it is as accurate as we'd like it to be, we can tweak it 👍
      - 👍: _lehnberg_

- _mcmmike:_ My idea was:

   > 1. Lot of reorgs within $period_time
   > 2. If depth > 4 == might be done on purpose

   I am not sure at which `depth` it might be done on purpose.

- _joltz:_ That is a good place to start. I'm wondering if we can come up with a depth for "definitely done on purpose or a major outage of a major miner". I think I'd want to know at 5 depth, again at 10 depth and by beaten over the head with it at 25.
   - 👍: _mcmmike_
   - _mcmmike:_ Ok we can start with these numbers, once we see an event like this we can all discuss if the numbers need to be adjusted. But atm we are not seeing more then "1" on all our oldest archive nodes.

- _joltz:_ We should also check number of confirmations required by major ecosystem services like exchanges. If they require 10, we want to know before then.

- _antiochp:_ Yeah I don't think we have seen a reorg beyond depth 1 or maybe 2 since early days of 1.0.

- _joltz:_ Then ideally this can be fed to a network health indicator widget that could be embedded in a website or something. Can color code network health based on this (and extend to other variables as we go to get a more complete picture).
   - _mcmmike:_ Right now we have some api calls checking our systems and displaying it here https://grinnode.live/global-health-check.
- _vegycslol:_ I think 3 is already highly unlikely to be random. How long it takes for a new block to be propagated to every node?
   - _joltz:_ Agreed based on antioch's comment. Maybe we want first indicator at 3 instead of 5.
   - _mcmmike:_ Perhaps we can come up with a widget or some api calls an exchange could query (with full documentatio).
      - 👍: _joltz_
- _mcmmike:_ I can share it internally it's a private github repo, we did not want to make it public atm as the code is more or less quick and dirty and we are not good programmers. :) And credits are due to warmbeer (on discord) he wrote most of it.
- _joltz:_ Sounds good. Let's find a time this week or next to collaborate some more. If anyone here is interested ping me or mike and we can start a group chat or something 👍
- _mcmmike:_ Sure. Afk now (reading backlog and messages later).
- _yeastplume:_ Okay thanks @mcmmike.
   - 👍: _mcmmike_

### 4. v5.0.0 planning
- _yeastplume:_ So, we have diff adjustment, the fee rfc, and PIBD assignment. Jasper is working on PIBD now, what's the state of the other two?
   - _quentinlesceller:_ @tromp?
   - _antiochp:_ Have not seen @tromp around today.
   - _yeastplume:_ Ahh, I think he mentioned having something else on. Okay, well on daa I think there is still discussion going on around ntp and timestamps.
   - _yeastplume:_ And fees are looking like there's some agreement, will let tromp catch us up when he's around again.

### 5. Slatepack adoption status / docs
- _joltz:_ @paouky has been doing great work getting documentation up to speed with others in #docs. I think we wanted a 60-90 day window with exchanges to notify them of the required update, so that would likely be some time next month?
   - 👍: _yeastplume_
- _joltz:_ In that window we'd likely want to provide some extra support to the integrators as they go to help make sure we don't have major service downtimes after the last hf.
- _yeastplume:_ Yes, definitely. And I look forward to a period of stability in that regard.
- _joltz:_ Likewise. Do we know if any exchanges have already integrated slatepack or just the wallets so far? Would have been nice to get early exchange feedback but we'll survive.
- _yeastplume:_ I don't know myself, would be good if anyone has more information on that. But yes, we'll survive.

### 6. Unscheduled hard fork process alignment?
- _joltz:_ It would be nice to attempt to have some more formal rails in place to at least guide the conversations and consensus building but with so much up in the air around current governance structure, it is even more challenging to reason about today.
- _yeastplume:_ Yeah, completely agreed. Will leave it there then for now.

### 7. Other questions

#### 7.1 v4.1.0 release
- _antiochp:_ Oh I guess I wanted to propose cutting 4.1.0 for node this week and forgot to add it to the agenda.
- _yeastplume:_ Heh, sure, let's discuss that. We haven't really been doing any particular 4.1 planning with the focus on 5.
- _antiochp:_ Yeah this would just be an interim release as we bumped the p2p protocol version recently. To support "commit only" inputs.
- _yeastplume:_ When were you thinking of releasing it?
- _antiochp:_ I think it is good to go now, at least to tag it and have a limited release of it this week. Then announce later this week or early next week.
- _yeastplume:_ Sure, I think that's fine unless anyone sees any reason not to.
   - 👍: _joltz_
- _antiochp:_ Ok I can aim to do that later today unless there are any objections.
   - 👍: _joltz, jaspervdm, jaspervdm, yeastplume, yeastplume, lehnberg_

**Meeting adjourned.**
