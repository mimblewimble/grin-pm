# Meeting Notes: Development, Nov 24 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- cekickafa
- jaspervdm
- joltz
- lehnberg
- phyro
- quentinlesceller
- tromp
- yeastplume
- vegycslol

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _antiochp:_ Been doing a lot of merging and integration of PRs. Still a few to review and merge, but I think everything is looking good.

### 2. Agenda review

The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/368) was reviewed and "accelerating development" was added as was requested in an agenda comment.

### 3. Action point follow ups from previous meetings

#### 3.1 Slatepack comms
- _joltz_:_ We have reached out to all known points of contact for services. The ball is in their court at this point. It is always good to remind and encourage in further interactions as possible.
   - 💪: _antiochp, phyro, cekickafa, dtavarez_ 
- _lehnberg:_ I am in progress of confirming, but an exchange might be in need of some assistance with debugging and integration help. If people are interested, they can ping me. I can share more info once the exchange confirms they are okay with that
   - 👍: _antiochp, joltz, cekickafa, dtavarez_ 
- _cekickafa:_ Users should put pressure to exchanges as well. They should be demanding slatepacks.
   - 👍: _antiochp_ 
   - _antiochp:_ Yes that's a good point - it's kind of up to everyone involved to be pushing this and nudging them in the right direction. Nobody needs to wait for Grin to be doing this through "official" channels.
      - 💯: _cekickafa_

#### 3.2 Testnet mining
- _antiochp:_ Looks like its producing blocks on a regular basis right now. Not sure how many gpus are running against testnet but it's running.
- _tromp:_ With `TESTNET_FOURTH_HARD_FORK: u64 = 642_240`, we are expected 14.2 days from testnet HF4 , which lands right on dec 8.
   - 🚀: _antiochp, phyro, jaspervdm, joltz, cekickafa, lehnberg_ 

#### 3.3 Reorg status
- _antiochp:_ Any updates or anything to report here?
   - _lehnberg:_ There's grindefender.online.
   - We still have the banner up on the website that should be changed
   - _joltz:_ We still have the banner up on the website that should be changed
   - _lehnberg:_ Good shout let's get that done by the end of this meeting.
- _joltz:_ If anyone missed it, joltz.keybase.pub/api/grin shares current network health status including reorg info. values are generated from https://github.com/j01tz/grin-health
   - 👏: _phyro_ 
- _antiochp:_ Nice use of a keybase url for the api there!
   - _joltz:_ Thanks, I'll eventually move it to something more generic and not my personal account. But I think @mcmmike is planning to add the score API into his infrastructure so will have something a little better hopefully.
- _antiochp:_ Good stuff, sounds like things are progressing there.
   - _joltz:_ Ideally we have something dynamic with website where warning banner appears when score <=2 or something but can do it manually for now.

### 4. v5.0.0 status
- _lehnberg:_ https://github.com/mimblewimble/grin-pm/issues/287
   
   https://github.com/orgs/mimblewimble/projects/1

- _antiochp:_ [Fix DAA](https://github.com/mimblewimble/grin/pull/3477) @tromp, I think people owe you some reviews?
   - _tromp:_ Yep, I updated fixfees PRs yesterday to be able to handle huge fees before HF4.
   - _antiochp:_ Want to fix conflicts in DAA one? There's been a lot of merges past few days.
   - _tromp:_ Didn't notice conflicts yet. But will have a look after meeting.

- _antiochp:_ [Fix Fees](https://github.com/mimblewimble/grin/pull/3481) - I need to take another look and review - anyone else feel free also, the more eyes the better.
   - 👀: _jaspervdm_
   - _tromp:_ Am also writing some separate huge_fees test files in the style of nrd_kernels_{dis,en}abled.rs. But that's just icing on the cake. fixfees is ready for review.

- _antiochp:_ [Header version](https://github.com/mimblewimble/grin/issues/3472) is good to go I think - 
late locking is done and merged. ✅
   - grinparrot: _phyro, cekickafa, quentinlesceller_

- _antiochp:_ [Deprecate https](https://github.com/mimblewimble/grin-wallet/issues/523), where are we with that one?
   - _jaspervdm:_ Ready for review: https://github.com/mimblewimble/grin-wallet/pull/532
   - _joltz:_ RFC ready to merge. will give the PR a review today 👍
   - 🚀: _antiochp_

- _antiochp:_ Oh probably worth kicking off tests again on any PR with tests failing - we had some issues with windows builds on CI.
   - _jaspervdm:_ Yeah we also need to update CI on grin-wallet, will do after meeting.
   - _antiochp:_ CI fix [here](https://github.com/mimblewimble/grin/pull/3498) for reference.
 
- _antiochp:_ PIBD - couple of PR merged, 1 to go I think?
   - _jaspervdm:_ Yes one that needs to be reviewed. Plus I think we should turn the PIBD p2p flag on by default as well in a separate PR.
   - _antiochp:_ Yes - I can grab the flag one @jaspervdm.
      - 👍: _jaspervdm_
   - _joltz:_ Will review that as well. I just saw a bunch of email from github from reviews you requested in my spam. :(
   - _antiochp:_ Ok I'll merge the v5 header PR after this meeting and I'll update the tracking issue for that and I'll grab the p2p msg flag PR (small change to enable by default) and hopefully we get "fees" and "DAA" PRs reviewed today and merged soon.
   - _jaspervdm:_ Yes all sounds good

- _antiochp:_ Are we supposed to be cutting a beta today? Or later this week?
   - _jaspervdm:_ I would prefer to delay, it was planned for today.
   - _antiochp:_ Yeah today is a bit of a stretch.
   - _lehnberg:_ So what should the aim be? fix-fees and daa merged before beta?
   - _antiochp:_ I think so yeah.
   - _lehnberg:_ Thursday realistic? With deadline to merge tomorrow?
   - _antiochp:_ I'd be good with aiming for Thursday.
   - _lehnberg:_ So that thursday is spent on beta-cutting?
   - _tromp:_ Ok with me.
   - _jaspervdm:_ Yup.
   - _lehnberg:_ Oki so tomorrow everything should be merged.
   - _antiochp:_ Ideally yes. Keep reminding people here or in node or wallet dev if anybody still needs things to be reviewed or re-reviewed (just so we don't miss a review for any reason). Anything else 5.0.0 related?
   - _jaspervdm:_ Think that's it.

### 5. Accelerating development

- _antiochp:_ Ok "accelerating development" via "Non ego utilized work acceleration for development". Is newjack777 around? @jankie1800? I think the concern could probably be summarized as "we need more devs", which is fair.
   - _lehnberg:_ "we need more devs and we should make it more straight forward to onboard devs as paid devs".
   
   Maybe we could set up one-off grants? give out to people who contribute?

- _antiochp:_ I would push back on "The funds were not earmarked for just X programmers to pull from". This was never the intention and as far as I'm aware, not the current situation. _Anybody_ is free to put a proposal together.
   - 👍: _cekickafa_
   - _phyro:_ Agree. I'm also not sure what is meant with necessary to fight stagnation. From what I understand, Grin wouldn't be a protocol that changes often.
   - _tromp:_ The wallet will need to keep changing, the consensus core not so much.
   - _antiochp:_ All that said - these are definitely concerns we can continue (and will continue) to discuss. Not sure if anything specific is actionable right now.
   - _phyro:_ Would be great if newjack777 was around to explain in more details, but if the summary is really "we need more devs" then yes, definitely.

### 6. Other questions
_None._

**Meeting adjourned.**

