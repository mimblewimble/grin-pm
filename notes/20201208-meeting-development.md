# Meeting Notes: Development, Dec 08 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- bladedoyle
- cekickafa
- defistaker
- jaspervdm
- joltz
- lehnberg
- phyro
- quentinlesceller
- tromp

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions
### 1. Retrospective
- _antiochp:_ Not much to update, 5.0.0-beta.2 has been out for a week and a bit. HF on testnet happening very shortly, all eyes are on that I think. Thanks to @bladedoyle we found an issue with full archive nodes during startup (issue has been there since 4.1.1) - fix is in [#3513](https://github.com/mimblewimble/grin/pull/3513). That will be included in the next beta release (assuming we have one before rc).

   There is a bump to the tokio/hyper version for stability also ready to go - so that will be included in next beta also.
   
   Other than that - I think beta.2 has been running smoothly - moment of truth in the next 60 mins or so.


### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/372) was reviewed and with "wallet command naming" and "api listening on 0.0.0.0" added as points.

### 3. Action point follow ups from previous meetings

#### 3.1 Slatepack comms

- _joltz:_ Nothing new there afaik. the one exchange looking for extra support has received it I think.
   - _antiochp:_ Awesome, do we know if that extra support has put them in a position to support slatepacks?
   - _jaspervdm:_ I think at least one exchange is still affected by https://github.com/mimblewimble/grin-wallet/issues/509
   - _joltz:_ Right, we did need to resolve that one.
   - _jaspervdm:_ I've been working on the fix again, we could release a 5.0.1 for it.
   - _antiochp:_ Yeah we need to decide if the fix is too invasive to risk pushing out as part of 5.0.0 (and if it can wait for 5.0.1). Or said another way - how confident are we that the fix won't risk introducing bigger problems.
   - _jaspervdm:_ I realized we can fix the bug without moving to reqwest, so i could split the PR up so the actual bugfix (using a global tokio runtime) is separate from moving from our custom hyper code to reqwest.
   - _antiochp:_ Ahh I saw your post on wallet-dev about that. Lets leave this as "in progress" for now and discuss outside meeting.
   - _jaspervdm:_ Yep

### 4. Re-org status
- _antiochp:_ Anything to update there?
   - _joltz:_ Don't think so- @mcmmike has been working to improve monitoring.
      - 🚀: _antiochp_

- _defistaker:_ I am working with @mcmmike on reorg status, iti is almost finished,  will test this week.
   - 👍: _lehnberg, joltz, defistaker, defistaker_
   - _antiochp:_ @defistaker 🚀

### 5. v5.0.0 status

- _antiochp:_ I see RC is scheduled for next week - so probably we can cut a beta.3 in the interim. Maybe today or tomorrow if everything is in place? (contingent on HF on testnet)
   - _jaspervdm:_ Yes sounds good
   - _quentinlesceller:_ Yep sounds good too

### 6. Wallet command naming

- _antiochp:_ Maybe we don't go too much into the weeds on this, given hf4 etc.? Do we have this tracked or documented somewhere?
- _tromp:_ There is only the [forum thread](https://forum.grin.mw/t/transaction-round-naming-challenge/7886/21).
   - _quentinlesceller:_ Completely missed that thread ^^.

- _antiochp:_ Ah ok - maybe we postpone discussing this until another time?
   - _tromp:_ Ok.

- _antiochp:_ We're unlikely to change naming prior to hf4.
   - _tromp:_ I thought this was the best time to establish consistent names.

- _lehnberg:_ Would have been great to have painted that shed in summer or so...:/
   - _antiochp:_ Plenty of time for shed painting in '21.
   - _lehnberg:_ Don't get me wrong, I'd love to improve naming as well. Just don't want to do it in the middle of a beta process and risking introducing regressions.

### 7. API listening on 0.0.0.0

- _antiochp:_ Are we of the opinion this should be tackled for hf4?
   - _quentinlesceller:_ I think so yes depending on the complexity.

- _quentinlesceller:_ Yep as mentioned above. @bladedoyle can you explain. Sorry I have to do an emergency fix on grinmint testnet before hf4 ^^.
   - _bladedoyle:_ Default behavior of a docker container is to create an attach to a virtual interface on docker bridge (subnet). Because a docker container can run only 1 process, by restricting listen address to localhost its impossible to connect 2 containers together on wallet port. On api for getting conbase (and other) from wallet.
   - _antiochp:_ > because a docker container can run only 1 process
   
   Is not necessarily true though (not saying its desireable or recommended).
   - _bladedoyle:_ That is true. You can hack in more processes but it does not work well. There is only one stdout. There is only 1 "init" process (12).

- _antiochp:_ That said - I don't see any reason we should not support listening on `0.0.0.0` via config (if you know what you are doing).
   - _bladedoyle:_ If you want to support containerized infra, we need to make that a config item. If you do not care aboutr containerized infra then no change is needed.

- _antiochp:_ Default to `127.0.0.1` but allow this to be overridden via config.
   - 👍: _joltz_

- _antiochp:_ And I don't think this is hugely complex - just needs to be tested thoroughly.
   - _bladedoyle:_ Thats how it was before, so no testing would be needed.

- _antiochp:_ Is the "coinbase api" the only instance where we need this?
   - _bladedoyle:_ No. I would think everything in that api sould remain available - except the http one.
   - _antiochp:_ Ok so basically as it was before. Is there an issue tracking this?
   - _bladedoyle:_ No point in creating an issue unless you agree its a problem.
   - _antiochp:_ No I think we are in agreement.

- _jaspervdm:_ Hm not sure about enabling all endpoints, it would mean http payouts are not really removed. Exchanges could still use http as the only method, since users will have an option to listen on 0.0.0.0 as before.
   - _bladedoyle:_ The issue I think is that the code relies on the http endopint for tor - shouldn't those be connected internally rather than through a network port?
   - _antiochp:_ Ah ok - so there is some overlap there in terms of 2 conflicting issues?
   - _bladedoyle:_ The api listener should be left alone, and the http endpoint removed from it.

- _antiochp:_ Can we open an issue for this so we can discuss there?

- _jaspervdm:_ That would mean introducing a new kind of foreign api. But yeah lets open an issue and discuss there.


### 8. Other questions

_None._

**Meeting adjourned.**