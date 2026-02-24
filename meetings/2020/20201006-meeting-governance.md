# Meeting Notes: Governance, Oct 06 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- i1skn
- jaspervdm
- joltz
- lehnberg
- mcmmike
- mickvd99
- paouky
- phyro
- quentinlesceller
- smokeking80
- tromp
- vegycslol

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/351) was reviewed and accepted with "Floonet mining" added to "Other questions" by @tromp. 

### 2. Action point follow ups from previous meeting

#### 2.1  @dtavarez, @i1skn weekly updates
- _lehnberg:_ We saw weekly updates from @i1skn: https://forum.grin.mw/t/ironbelly-progress-update-thread-sep-dec-2020/7865
   
   No update from @dtavarez from what I can find in the forum yet, so I guess partially actioned.
      - _i1skn:_ @lehnberg I've decided to do it bi-weekly though considering me working part-time, I hope this is fine with everyone.
         - 👍: _paouky, lehnberg, antiochp_
         - _lehnberg:_ That's fine by me at least!

#### 2.2  @antiochp paid?
- _lehnberg:_ Not yet actioned.
   - 💸: _phyro_
   - _antiochp:_ Yeah just noticed that.

#### 2.3  docs.grin.mw up?
- _lehnberg:_ Actioned: https://docs.grin.mw, congrats to @paouky and @quentinlesceller for a job well done. 💪
   - 😂: _mcmmike_
   - _paouky:_ 🎉
   - 🍺: _phyro, quentinlesceller_
   - _jaspervdm:_ Sweet.
   - _mcmmike:_ Good job there. :)

### 3. Request for funding: [QA team student, Oct-Nov](https://forum.grin.mw/t/request-for-funding-q-a-team-student-for-october-november-2020/7861)
- _lehnberg:_ Next up, request for funding. QA team student, oct-nov: https://forum.grin.mw/t/request-for-funding-qa-team-student-for-october-november-2020/. The request is for `1.920,00 euros (october + november 2020 starting from 03.10.2020`. Is @mickvd99 (warmbeer) here?
   - _mcmmike:_ No he is not, as he is at the university.
      - 👨‍🎓: _lehnberg_
   - _paouky:_ Too bad we could have adjusted the meeting, as this is the main subject today.
   - _lehnberg:_ Hmm, so... What should we do?
   - _mcmmike:_ Is this possible, for such a "request" to move the timetable around? If so I will ask him , as he will be working this friday and sunday.
   - _quentinlesceller:_ @mcmmike I don't know if you saw my forum post today (sorry I know a bit last minute).
   - _lehnberg:_ I'm not sure I understand @mcmmike. Are you suggesting we reconvene on friday or sunday to decide about this specific point? I don't mind doing that personally.
   - _mcmmike:_ I was just curiouse , if it where possible to move the grin-gov. Meeting to another day or even hour.

- _mickvd99:_ Hey there!
   - 👋: _lehnberg, paouky, quentinlesceller, antiochp_
   - _mcmmike:_  Ah cool. :)
   - _lehnberg:_ Thanks for making the time @mickvd99 hope you won't get in trouble in class:)
   - _mcmmike:_ @joltz please check https://forum.grin.mw/t/request-for-funding-qa-team-student-for-october-november-2020/7861/9? from @quentinlesceller.

- _lehnberg:_ So... Floor is open for questions / comments. Some work already started in #qa over the weekend. https://github.com/WarmBeer/GrinTesting
- _mcmmike:_ Perhaps @mickvd99 you can talk a little bit about what you have done and want to do?

- _joltz:_ I think @quentinlesceller has a valid concern wrt vagueness but the request does also include more deliverables than documentation. Including a testing procedure approach for functional testing. We don't really have a framework here for people to work on this stuff. I think part of this is about discovery to find the best strategy to approach testing. I'm not sure if others feel it is worth 2k to have this work done. I personally do because no one else is willing to do it but it would be nice to have something more tangible on the other side of this, even if it is just an architecture document for a holistic testing strategy.
  
   One question, do you think @mickvd99 will be around and available to help implement the deliverables at the end? My concern would be to end up with a testing plan but no one to implement it.
   
   - _mcmmike:_ In my opinion this is not so important as long as he finds problems, opens issues with sufficient details and you (dev)can solve these problems. I see it as described as a part to make sure your grin functions are working properly. I encountered some during my time working with grin components. Therefore it is needed to double check functions and make sure they are working. If not you will get some issues opened up by random users/developers but you frustrate a lot of people working on grin projects If they not working.
   - _joltz:_ My concern is that dev is spread so thin there won't be available resources to write the tests. Part of my hope with this was to have a framework to build the testing such that it would be easier for contributors like @mickvd99 to actually build out the tests themselves.
   - _mcmmike:_ We supposed do to functional test to start with, if we can automate them its good. (Perhaps @mickvd99 can elaborate a bit how he would approach it.)
   - _joltz:_ My understanding was that this effort was to enable automated testing, not just manually hit a few areas to find bugs (sorry if I misunderstood).

- _mickvd99:_ Ok, So mike had some valid concerns for a few grin node endpoints not working as expected. So he came up with the idea to form a qa team for grin to properly test grin's features. He asked me if I wanted to help (acknowledging that if we wanted to automated testing, I had to dive into rust first). Afaik mike had the idea to do both manual and automated testing for both the grin node api and wallet. Correct me if I'm wrong @mcmmike. :)
   - 👍: _joltz, mcmmike_

- _tromp:_ The 6 wallet uses cases on the warmbeer github don't seem very comprehensive. Shouldn't they exercise all the available wallet features? Like repost, export proof and verify proof?
   - _mickvd99:_ The feature list on the repo is not complete yet as I have stated in the progress report.

- _lehnberg:_ In the spirit of moving things forward, it seems like there's some discussion to be had about the actual deliverables. 
   
   I'm all for getting something like this rolling, but it's also important to make sure the scope of work is clearly defined, otherwise there's risk for misunderstandings / frustrations on all sides.

   How about we agree on the funding but with an action point for @joltz and @quentinlesceller to formalize the deliverables together with @mickvd99 and @mcmmike?
   - _quentinlesceller:_ Can we do it the other way around?
   - _phyro:_ Define first, agree later?
   - _lehnberg:_ I guess that makes sense. So @mickvd99 doesn't sign up for doing something undefined. But can we work this out in a way where it doesn't have to take another two weeks before we agree to the request? (Ideally this should have already been worked out ahead of the meeting.)
   - _quentinlesceller:_ We could definitely discuss that in #qa.
   - _lehnberg:_ Okay, so can we say that we try to work this out before the weekend, and then convene for an extra impromptu council meeting here in #general to decide?
   - _quentinlesceller:_ Or next tuesday? During dev meeting?
   - _lehnberg:_ Fine by me, others?
      - 👍: _joltz, antiochp, phyro_
      - _tromp:_ Ok.

- _lehnberg:_ Okay, so let's continue the discussion in #qa.
- _mcmmike:_ I only agree on it, if @mickvd99 is fine with it and has time next tuesday.
- _lehnberg:_ That would be same time next week @mickvd99.
- _mickvd99:_ Sure!
   - 👍: _lehnberg, mcmmike, quentinlesceller_


### 4. Request for funding: [@lehnberg, Oct-Dec](https://forum.grin.mw/t/request-for-funding-lehnberg-q4-oct-dec-2020/7866)
- _lehnberg:_ Next is my funding request: https://forum.grin.mw/t/request-for-funding-lehnberg-q4-oct-dec-2020/
q4 2020, oct-dec, same as before, `3 x gbp 2,500`. @antiochp can you take over the reins and the approval hammer? Or anyone else who's here for that matter.
- _antiochp:_ Questions? (I have no idea what I'm doing).
   - 😂: _paouky_

- _antiochp:_ Personally speaking - not sure where we'd be without @lehnberg keeping everything on track.
   - 👍: _mcmmike, smokeking80_
   - _joltz:_ Agreed, can't imagine where we'd be without @lehnberg keeping things glued together for us.
   - _jaspervdm:_ Definitely agree 👍

- _antiochp:_ Lets give it a few minutes for anyone to voice any opinions.
- _tromp:_ He's still doing as fine a job as ever.
- _quentinlesceller:_ Yep agree too. :)
- _phyro:_ It's a yes from me.

   _[...]_

- _antiochp:_ Anybody have any concerns or questions?
- _antiochp:_ Nothing?
- _paouky:_ Does lehnberg prefer yearn over us?!
    - _lehnberg:_ Any _relevant_ questions? (i bleed yellow).
- _vegycslol:_ Feels like we are on a talent show... Yes from me.

#### Decision: Approve @lehnberg funding request
- _antiochp:_ I think we are done.
- _antiochp:_ 🔨 approved.
   - 🚀: _jaspervdm, joltz, vegycslol, phyro_
- _lehnberg:_ Thank you all!
- _antiochp:_ Yay!
- _quentinlesceller:_ 🍾

### 5. RFC & sub-teams update
- _lehnberg:_ RFCs and sub teams: https://github.com/mimblewimble/grin-rfcs/pulls. I won't go through all of these in the meeting in the sake of time efficiency. Instead will call out relevant rfcs and if you feel sth is missed / urgent, please shout.

- _tromp:_ I've been thinking about writing yet another rfc.
   - _paouky:_ I was just thinking about the sheer amount of rfcs lol.
   - _lehnberg:_ Go for it.
- _tromp:_ For new payment proofs.
   - 👍: _phyro, vegycslol, lehnberg, antiochp_

#### 5.1 [fix-fees](https://github.com/mimblewimble/grin-rfcs/pull/63)
- _lehnberg:_ This is in FCP and is meant to be accepted on Oct 8.
- _tromp:_ As I posted [on the forum](https://forum.grin.mw/t/possible-consensus-change-in-fee-proposal/7851/7), I made one final change.
- _lehnberg:_ Do we need to restart the fcp period? Is it a material change that we need to give stakeholders a chance to thoroughly review?
   - _tromp:_ I re-requested reviews on the rfc.
   - _lehnberg:_ 
      > the proposal has been rewritten to not only adopt the consensus change, but also to replace the fee factor by a fee shift.

      I take that as a yes. So let's re-set the fcp clock then and notify everyone?
   - _tromp:_ Yes, let's restart the fcp.
   - _antiochp:_ I was going to say no, but maybe we should as oct 8 is only a couple of days away.
   - _lehnberg:_ Assuming it won't make us miss 5.0.0, I would do it.
   - _vegycslol:_ Better safe than sorry.
   - _lehnberg:_ Alternatively we can extend with only one week perhaps?
   - _jaspervdm:_ Why not 2? So it lines up roughly with next governance meeting.
   - _lehnberg:_ If there's concern about not making the dev deadline.
   - _antiochp:_ Yeah may as well do full 2 weeks - there's no rush I don't think.
   - _lehnberg:_ To actually implement. Oki 👍

- _antiochp:_ Implementation could happen in parallel (if we were to do it now).
   - _tromp:_ Implementation will be quite straightforward though.
   - _antiochp:_ We have a volunteer!
      - 😂: _joltz_
   - _tromp:_ Yes, even I can handle that one:)

- _antiochp:_ Should I comment on the RFC to reset the dates?
   - 👍: _paouky, lehnberg_

#### 5.2 [fix DAA](https://github.com/mimblewimble/grin-rfcs/pull/61)
- _joltz:_ @tromp do you feel like daa is ready for FCP? Or is there more discussion to be had?
- _tromp:_ I believe so, yes.
- _lehnberg:_ Oki @joltz you know what to do.
   - 👍: _joltz_

#### 5.3 [simplify-governance](https://github.com/mimblewimble/grin-rfcs/pull/67)
- _lehnberg:_ FCP ends on oct 13 with disposition to merge. Seems there are no objections so far. By tuesday next week, the core team will cease to exist unless someone steps in to save it.

#### 5.4 [deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/60)
- _lehnberg:_ How's this looking, shepherd @paouky? When can it go into FCP?
   - _paouky:_ Now? Unless I am missing something. It sits idly for months. Or perhaps we should contact exchanges first. And then enter into fcp.
   - _lehnberg:_ Oki, how about you pick it up with the author joltz, see what (if any) delta is there before it would be ready to be merged, and then once ready announce fcp here and in the pr?

- _joltz:_ I don't see why we can't do fcp now. I think we plan to start reaching out in a week or two anyway. I can take another pass to make sure nothing is missing.

- _i1skn:_ Regarding https - afaik most of the exchanges only support this one method right?
   - _paouky:_ A few also support slate files, but yes.

- _phyro:_ Ohhh, we have hall of fame candidates. :o

- _i1skn:_ I know only tradeogre, which support files. But the main point, that do not even support grin addresses.
   - _paouky:_ True, we're jumping into the water with his (which I prefer).

- _phyro:_ Nvm I thought we were talking slatepack strings:( the wish was stronger than my reading skill.

- _lehnberg:_ Bittrex supposedly accepts slatepack today, not via tor. Have not verified this myself, if someone has an account, please check for us. :)
   - 👍: _smokeking80, i1skn_

- _i1skn:_ Might be a good idea for the next meeting - set up a list of exchanges, when we can state what they support and start communication with them. Wdyt?
   - 👍: _joltz, antiochp, lehnberg, vegycslol, phyro_

- _i1skn:_ Cause as a wallet dev it's hard for me to deprecate something which is used in 90% of the cases...
   - _paouky:_ Well, problem is that if we leave it in existence, no exchange will bother to do the work and switch.

- _paouky:_ List of exchanges is here https://docs.grin.mw/wiki/services/list-of-services/ which have a grin trading pair, not sure how we would figure out tho what methods all of these support exactly and if they currently work.
   - _quentinlesceller:_ Test it?
   - _paouky:_ Create a verified account in which one?
   - _quentinlesceller:_ Or contact them.

- _i1skn:_ Well, I though of asking people about that:) I've started a little poll in ironbelly chat and can prepare some initial list with the results.
   - _paouky:_ Sure, we can do that.

- _i1skn:_ I think before contacting them, we want to figure out where we are standing regarding what are supported and not supported on each one of them.
- _paouky:_ Also why do we need to know which methods they currently support? We already know none (maybe bittrex only?) support slatepack, isn't that enough?
- _i1skn:_ So, I guess we want to improve this number if we can, so users are not left out without any way of depositing/withdrawing.
- _paouky:_ Of course, just trying to figure out what our action point are. @lehnberg @joltz can you help?
- _vegycslol:_ I think we should just write a documentation on how exchanges should integrate grin (best practices etc). I don't see why it matters what they currently support or not, we tell them how it's done and how to get help when they have problems.
   - 👍: _paouky, phyro, i1skn_
- _smokeking80:_ Wallet maintenance on bittrex.

- _lehnberg:_ Here’s how I see it: We’ll deprecate https no matter what. That RFC should move forward independently of what happens to exchanges unless there’s a compelling rationale for it not to. In parallel, we should canvass existing grin exchanges and approach them and communicate the upcoming changes and what to do to add support for functionality. It’s unclear whether they will make necessary changes or not. But nothing will happen if we wait for exchanges. There is inertia for change. Happy to consider other suggestions of course.
- _paouky:_ Agreed. Hence by next meeting, imo, we should have the RFC in FCP and all exchanges contacted. I guess you can put that action point on me unless somebody else wants to talk with the exchanges.
   - 👍: _lehnberg, i1skn, vegycslol_
   - _i1skn:_ Sounds good to me.
   - _lehnberg:_ Work with @joltz, I'm also happy to intro you to those I have contacts.
   - _paouky:_ 👍

### 6. Other questions

#### 6.1 Floonet mining 
- _tromp:_ i1skn noticed lack of progress of floonet chain. And wondered if he could cpu mine. Unfortunately, cpu mining c32 is rather hard. So ideally we should have a dedicated gpu to ensure floonet progress. Perhaps even spend funding. If @yeastplume is here, I'd ask him if he can use yeastmonster for that.

- _lehnberg:_ Could we modify floo to allow for cpu mining? Or would that be stupid,.
   - _tromp:_ We can , but that'd be a hardfork. Dedicating a gpu is simpler. :)
   - _quentinlesceller:_ I could dedicate a gpu from aws to mine it. I'd need to do the calculation for the price.
       - 💸: _lehnberg_
   - _lehnberg:_ Let’s see what the cheapest could be and whether that’s acceptable. Feels a bit irresponsible. But defo worth considering!
   - _tromp:_ Isn't letting floonet get stuck irresponsible?

- _jaspervdm:_ We could consider HFing in a cheaper pow in the final hf.
   - 👍: _paouky_

- _i1skn:_ I've spinned an instance with mining using cpu and now we have on average every 700seconds a new block, but that's not ideal. Also, https://floonet.grinscan.net/ is not working - I’m curious what can we do to bring it back to life?

- _jaspervdm:_ To revive floonet.grinscan I would need a db with the missing blocks.
   - _quentinlesceller:_ Might have it need to check.
   - _antiochp:_ @jaspervdm is it a big change to allow "missing blocks" in grinscan and just default to showing kernels or something?
   - _jaspervdm:_ @antiochp have to check as I havent really touched that code in a long time but my feeling says it will not be very easy. Ok thanks @quentinlesceller.

- _tromp:_ I could write a slean cpu miner for c32 that can run in under a minute, but would probably require 2-4 threads.

- _lehnberg:_ Okay some ideas and things to consider - let’s check progress in next week’s dev meeting?

- _tromp:_ Btw, do we need RFC to rename floonet to testnet?
   - _lehnberg:_ Did we do it already? Think I saw it somewhere.
   - _jaspervdm:_ There is a pr on grin.
      - 👍: _antiochp_
   - _antiochp:_ Not sure if an RFC is required for this? It does not affect mainnet or consensus in any way.
   - _tromp:_ Ok, let's make sure that pr gets in by hf4.
      - 👍: _antiochp_
   - _quentinlesceller:_ Im on it.

**Meeting adjourned.**