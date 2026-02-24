# Meeting Notes: Governance, Sep 22 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 100 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dtavarez
- i1skn
- joltz
- lehnberg
- paouky
- phyro
- quentinlesceller
- timtimbo
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions
### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/345) was reviewed and accepted without any changes. 

### 2. Action point follow ups from previous meeting

#### 2.1 Funds paid to Paouky, dtavarez, i1skn
- _lehnberg:_ Funds have been paid to @dtavarez and @i1skn, and @paouky also received month 2 payment. Question on that: I haven't heard much from @i1skn and @dtavarez, I assume they are both busy building. Is there some update thread somewhere where we can follow along on their progress?
   - 👍: _quentinlesceller_
- _dtavarez:_ Grin++ backend is already running on Android.
   - 🚀: _lehnberg, phyro, joltz, quentinlesceller, vegycslol, i1skn, timtimbo_
   - 🤩: _anynomus_
- _dtavarez:_ From time to time I'm receiving a segmentation fault that I need to trace and fix 🤕
- _i1skn:_ Yeah, I actually been thinking on how to best communicate the progress recently and came up with the following: I will create a simple page with the roadmap and will be updating statuses of each epic. Also will be posting in the ironbelly telegram channel on what new is coming.
   - 👍: _vegycslol, phyro_
   - _lehnberg:_ Oh wow that's nice - a weekly post on the forum or so is probably more than enough though. No need to spend too much time on it, just to keep everybody in the loop on the progress you make.
- _i1skn:_ Regarding the actual progress, I'm finishing implementing slatepack into ironbelly, so users could just copy-paste the text instead of passing files back and forth. This is the first step into direction to tor implementation..
   - _dtavarez:_ I already have tor compiled for android arm if you need help.
- _dtavarez:_ For the end of this month I will release all the screens of the mobile app to receive some feedback from the community; I stopped coding for the last 3 days because I'm writing a RFC since I want to simplify the wallet restoring process, so I'm digging more and more into the grin-wallet codebase to see how things works.
   - 👍: _quentinlesceller_
- _lehnberg:_ Not meaning to be rude, but wasn't asking specifically for progress updates here in the governance meeting. But would be great if we could have it on a regular basis on the forum. → are you both okay with providing that?
- _dtavarez:_ Yes, I'm ok.
   - 🎉: _lehnberg_
- _i1skn:_ There were some hiccups with compiling croaring and some other libraries, which have been added to grin-wallet recently to ios and android, but so far only one problematic library is left, so I'm optimistic:).
- _lehnberg:_ Great looking forward to picking it up there. Sorry to interject just wanting to keep the meting on track.
   - 👍: _phyro, i1skn_
- _lehnberg:_ You okay with forum updates too, @i1skn?
   - 👍: _i1skn_
- _i1skn:_ Sure, I will be than just x-posting the link to the post into Ironbelly channel. :)
- _lehnberg:_ That's more than enough. :) Not everyone might know about the Ironbelly channel so it's free marketing for you.
   - 👍: _i1skn_

- _lehnberg:_ Since the forum is where your funding request came in, it  makes sense to update the same people that browse it. Great, thanks both!
   - 👍: _dtavarez_

#### 2.2 Spending logs updated
_Actioned._

#### 2.3 CoC merged
- _lehnberg:_ Following decision last week, it's now been updated and moved to the website: Https://grin.mw/policies/code_of_conduct.
   - 👍: _antiochp_

- _lehnberg:_ Questions about the work might be clarified by this post: https://forum.grin.mw/t/the-forum-has-an-updated-code-of-conduct/7843/14.

- _lehnberg:_ Meanwhile there are also a bunch of prs adding the coc reference to our repos, which are in need of merging:
https://github.com/mimblewimble/grin-wallet/pull/518
https://github.com/mimblewimble/grin-pm/pull/350
https://github.com/mimblewimble/grin-security/pull/12
https://github.com/mimblewimble/grin-miner/pull/254
https://github.com/mimblewimble/grin-rfcs/pull/66
https://github.com/mimblewimble/grin/pull/3447/
   Would be great if these could be reviewed, approved, and merged as soon as possible.
   - _antiochp:_ I can take a look over some of these later on.
      - 🙏: _lehnberg_
- _paouky:_ I don't mind, but not sure what's there to approve?
   - _lehnberg:_ The pull request "yes, this is okay".Otherwise I'll get flamed somewhere for changing all the project's cocs singlehandedly.
   - _paouky:_ Seems odd but ok.
   - _antiochp:_ "two pairs of eyes".

#### 2.4 Igno removed as BDFL
_Actioned._

#### 2.5 hashmap removed as core team member
_Actioned._

### 3. @antiochp [Q4 request for funding](https://forum.grin.mw/t/request-for-funding-antioch-oct-dec-2020/7831)

- _lehnberg:_ We have @antiochp funding request: 
 `3 months, 3 x 10k eur, oct-dec, full time`.
   Questions?
- _antiochp:_ Aka "fund me to argue with people on the forum".
   - 🎉: _yeastplume_
- _lehnberg:_ Hey that's my job!
   - _quentinlesceller:_ Lol.
- _antiochp:_ I'm hoping to be able to dedicate some time to helping with pibd, but not realistically expecting to get to much else between now and end of the year - we are light on resources on node and I'm going to be working on whatever comes up.
- _lehnberg:_ That's fine by me. You are our node mvp and have been doing the lord's work here holding up the fort more or less solo for the past 12-18(?) months.
   - 💯: _yeastplume, joltz, phyro_
   - _paouky:_ Some on grin wallet as well ^.
- _lehnberg:_ I am personally strongly in favour of keeping you on full time for as long as you are motivated to do so.
   - 👍: _joltz, vegycslol, yeastplume, phyro_
   - _quentinlesceller:_ Yeah me too.
   - _paouky:_ Aye.
   - _yeastplume:_ Completely agreed.
- _paouky:_ Would we even have grin without antioch lol?
- _joltz:_ Would have to call it frown :)
- _tromp:_ Antioch consistently delivers major code improvements. Hugely in support.

#### Decision: Approve @antiochp funding request

- _lehnberg:_ Okay, any detractors?

   [...]

- _lehnberg:_ I take this as consensus to _approve_ the funding request.
   - 👍: _joltz, vegycslol, quentinlesceller, phyro_
- _lehnberg:_ Congrats @antiochp 🍾
   - 🎉: _phyro_
- _phyro:_ Let's just extend it to 6 months... Just in case to lock him in lol.
- _joltz:_ Glad to have you back for another round!
- _antiochp:_ Thanks all! 🙏

### 4. Documentation progress

- _paouky:_ I'd say we can transfer the paouky repos to docs.grin.mw already, at least open a pr for it.
- _quentinlesceller:_ Yes we just need to fix the RFC first.
- _paouky:_ Ye. While we're at it, can it be arranged that I have access to merge stuff over at mimblewimble/docs? To help keep it going in the future. (obv now it's open to everybody but that should change imo).
- _lehnberg:_ What is open to everybody? You mean the wiki?
   - _paouky:_ Ah yes the wiki.
- _quentinlesceller:_ I don't see any issue with that personally.
- _lehnberg:_ Yes, you've definitely earned it. So are we keeping the wiki?
   - _paouky:_ No.
      - 🎉: _quentinlesceller_
- _lehnberg:_ I've not been following the details.
- _lehnberg:_ Oki. Would you mind putting together a step proposal somewhere (forum?) with recommended actions and how we go on moving forward (inc. Adding you for commit rights) and then we execute against that? Or: If it's like three small things I guess we can just agree on it here.
- _quentinlesceller:_ Yes I think that'd just be easier to agree here.
   - 👍: _lehnberg_
- _lehnberg:_ Are we ready to do so now?
- _quentinlesceller:_ We can create a new grin-doc team in grin org.
   - 👍: _lehnberg, paouky_
- _lehnberg:_ But so... What's the whole plan.
- _paouky:_ Ye haha.
- _lehnberg:_ There's docs.grin.mw → points to where?
- _quentinlesceller:_ Create a new grin-doc repo.
   - _lehnberg:_ You mean `mimblewimble/grin-docs`?
- _lehnberg:_ There's rfcs, they are inside docs?
   - _quentinlesceller:_ Yes.
- _paouky:_ Why not use mimblewimble/docs? Why a new repo?
- _quentinlesceller:_ Then github host it. Point the dns on it (docs.grin.mw).
- _quentinlesceller:_ Yes and yes @paouky.
- _paouky:_ Oh ok.
- _lehnberg:_ What happens to `mimblewimble/grin/doc`?
- _paouky:_ Stays.
- _lehnberg:_ Why?
- _quentinlesceller:_ We keep it but remove the wiki?
   - _paouky:_ Imo, yes.
- _paouky:_ It has some technical stuff that might be useful and isn't included in the new docs (outdated or way too technical).
- _lehnberg:_ If it's redundant documentation, then why keep two sources of truth;

   if it's not redundant, then shouldn't all technical docs be in one place?
- _quentinlesceller:_ I'd remove grin/docs after. Or archive it somewhere.
- _lehnberg:_ We could keep /grin/doc and just have a `readme.md` that links to docs.grin.mw. Just like we do for code of conduct now: https://github.com/mimblewimble/grin-pm/blob/master/CODE_OF_CONDUCT.md
- _paouky:_ I mean... What's left in grin/doc is for the developers.
   - _lehnberg:_ So what's in docs.grin.mw is not for the developers?
- _paouky:_ If they don't think it's necessary then we can let go of it, not my decision.
- _antiochp:_ Yeah I think its reasonable to "archive" any remaining docs (by keeping them in grin/docs). And have a readme to explain what's going on.
   - 👍: _paouky_
- _paouky:_ @lehnberg take for ex. a grin/doc file which shows the binary seralization of rangeproofs. Can it be useful for devs? Maybe. Should it be in the docs? I doubt it.
   - _lehnberg:_ Shouldn't that be part of the technical docs?
   - _paouky:_ No it's really bad, just something someone put up together a few years ago for reference. A few docs are like that.
   - _lehnberg:_ Is it outdated?
   - _paouky:_ Might be (i do not know). Also not understandable imo.
   - _lehnberg:_ https://github.com/mimblewimble/grin/blob/master/doc/rangeproof_byte_format.md

   This one?
   - _paouky:_ Yes.
- _lehnberg:_ Okay guess I'm getting way too deep into the details for this meeting.
   - 👍: _quentinlesceller_
- _paouky:_ We should transfer any technical document every written by anyone.
- _paouky:_ Ye we'll discuss later.
- _lehnberg:_ No, but any irrelevant technical documents we shouldn't keep either.
- _paouky:_ Some are just *partly* irrelevant and may help future devs.
- _lehnberg:_ And if nobody in the active team can tell whether it's useful, it's probably not useful. Oki - so what are we agreeing on?
   1. Disable wiki.
   2. Repurpose mimblewimble/docs.
   3. Point docs.grin.mw to 2.
   4. Point rfcs in grin-rfc repo to show under docs.grin.mw?
- _paouky:_ Maybe take grin/doc, transfer everything to grin/doc/archives, then add grin/doc/readme.md that points to the docs.
- _quentinlesceller:_ No 4 is already doe.
- _lehnberg:_ 5. New github docs team which includes paouky and has commit rights to the docs repo?
   - _quentinlesceller:_ Yes this.
   - _lehnberg:_ Any objections?
- _quentinlesceller:_ Tbh don't want to be rude I think we are discussing details right now (should be discussed in #docs).
- _lehnberg:_ Yeah I agree. Nice work both! 

### 5. RFC & sub-teams update

- _lehnberg:_ In order of appearance: https://github.com/mimblewimble/grin-rfcs/pulls

#### 5.1 [Parallel IBD p2p messages](https://github.com/mimblewimble/grin-rfcs/pull/68)

- _lehnberg:_ By @jaspervdm. It's draft mode. `mostly technical details while the reference implementation of these objects happens in parallel.`. I suggest we discuss in rfc.
- _quentinlesceller:_ Do we need shepherds for the rfcs?
   - _lehnberg:_ Yes.
- _antiochp:_ Not sure if @jaspervdm is around but he's iterating on it right now.
- _lehnberg:_ I propose joltz on this one as he's already the shepherd for ibd.
   - 👍: _joltz_
- _joltz:_ Sounds good 👍
   - 👍: _quentinlesceller_

#### 5.2 [simplify-governance](https://github.com/mimblewimble/grin-rfcs/pull/67)

- _lehnberg:_ by @paouky and @lehnberg.
   ```
   ### summary

   this governance iteration replaces the previous process that was set out in rfc#0002 with a simplified and better defined version. Specifically it:

   * defines its remit to be around the repos, projects, and communities that are centered around the /mimblewimble github organization;
   * reverts the core team to the original technocratic council structure, whose sole responsibility is managing the general fund; and
   * explicitly enables individual contributors and teams to self-organize for other aspects of decision making.
   ```
   - _antiochp:_ :popcornparrot:.

- _lehnberg:_ Needs some references at the end of the doc, otherwise it's good to go from our point of view. Are there any questions? Thoughts?
  
   (it was @antiochp who started it all last meeting when he didn't even know there was a thing called the core team smh).
   - _antiochp:_ And @lehnberg who was not aware of a core dev team. (although to be fair they not actually be one).

- _quentinlesceller:_ Need to go over the details but I don't think this is going to make any difference in practice wishing I'm wrong though.
- _paouky:_ The main advantages is whenever someone mentions the core teams we can answer "there is no core team", and governance page of grin.mw would be removed (i assume). It's mainly about the perception. Decision making is already open as is.
- _lehnberg:_ It's about perception but also more than that. Currently what is being governed is undefined; this RFC clarifies it. Council manages funds. Security team manages security. Etc.... It all feels a bIt... Simpler.
- _paouky:_ Ye I am just trying to simplify the simplify-governance.
- _antiochp:_ I actually agree with @paouky there - "there is no core team" is now a valid reply to various trolling on the forum etc. Not sure how well received it will be though.
- _quentinlesceller:_ Yes my fear is that we are doing because of few individuals. Next step is commit access. Whoever control the commit access control grin.
   - _lehnberg:_ Yes, and by this RFC these people self-organize.
- _antiochp:_ I agree this was prompted by actions of a few individuals - but I also think this is a good improvement, regardless.
- _lehnberg:_ And I was part of introducing rfc002. When I did so I took it from Rust. Rust has different considerations than us, and for example as a project does not run a decentralized p2p network with potentially many different implementations.
- _phyro:_ "the holders of the keys" still stands though 🍿
- _paouky:_ I don't think so @quentinlesceller. I can say for myself that I always thought having an official core teem is very redundant. Regardless of forum comments.
- _quentinlesceller:_ One of goal of the core team was to hide the identity of the key holders.
   - _lehnberg:_ No, That's not right. That was part of the role of the council, and can still be.
- _paouky:_ It kind of appeared from nowhere when I was not paying attention at the time.
- _lehnberg:_ And the answer to "hey these key holders are doing it wrong" becomes a straight forward: Fork the project, or build your own implementation.
   - 👍: _paouky, antiochp, phyro_
- _lehnberg:_ Or are you talking about general fund or commit rights?
- _quentinlesceller:_ Oh I see sorry I missed the part about the council still existing.
- _lehnberg:_ From one day to another, very little would probably change practically.
- _lehnberg:_ But over time, it does change a lot.
   - 👍: _paouky_
- _quentinlesceller:_ But by all mean if this brings us more peace of mind I'm all for it.
- _lehnberg:_ And "the council" would not make decisions about the project, so becoming picked into it becomes a moot point. You'd probably rather get engaged in the node team if you cared about consensus rules or about mw/grin.
- _lehnberg:_ We overdid it. I overdid it. I feel I proposed to have added way too much governance stuff on a project that had been thriving without it. And it created a lot of needless friction as a result I think, and a lot of "us" vs "them" that really shouldn't have been there.
- _quentinlesceller:_ Okay 👍 for me then.
- _antiochp:_ We give it a go and see what happens 👍
   - 👍: _quentinlesceller_
- _lehnberg:_ Who wants to shepherd this and decide on stuff like fcp and so on?
- _quentinlesceller:_ I can.
   - 👍: _lehnberg_
- _paouky:_ What's fcp?
- _lehnberg:_ Final comment period. Refer to rfc0001.
- _quentinlesceller:_ https://github.com/lehnberg/grin-rfcs/blob/master/text/0001-rfc-process.md. Ah yeah the link on the frontpage goes on your fork @lehnberg lol.
- _lehnberg:_ Yikes haha.
- _quentinlesceller:_ Nope my bad I think.
- _lehnberg:_ Oh okay. Great. Everyone who has thoughts, please write on the pull request. Would be good to have as many eyes on it as possible as it's kind of a big change, even if it's simplifying. 

#### 5.3 [Reformat all accepted rfcs and template to fit mkdocs toc](https://github.com/mimblewimble/grin-rfcs/pull/65)

- _lehnberg:_ We need this, for the new docs?
- _paouky:_ Yes.
- _lehnberg:_ Ok will merge.
- _paouky:_ Thanks.

#### 5.4 [Split one-sided transactions in pure mw](https://github.com/mimblewimble/grin-rfcs/pull/64)

- _lehnberg:_ @tromp, it's been up for 14 days, good to close now?
   - _tromp:_ Fine with me.

#### 5.5 [fix-fees](https://github.com/mimblewimble/grin-rfcs/pull/63)
- _lehnberg:_ Looks like a lot of activity. How does that look? Anyone wants to be a shepherd?
- _tromp:_ Looking good. Aren't I the shepherd? Is shepherd responsible for coding?
- _joltz:_ 
    > the shepherd ensures the RFC progresses through the process and that a decision is reached, but they themselves do not make this decision.
- _lehnberg:_ Shepherd should not be the RFC author 0:)
- _joltz:_ Usually not the author of the proposal.
- _lehnberg:_ @antiochp you up for the task?
- _antiochp:_ Yeah sure - I can take this one.
   - 👍: _lehnberg, tromp_

#### 5.6 [fix DAA](https://github.com/mimblewimble/grin-rfcs/pull/61)
- _lehnberg:_ How's that looking?
   I see zawy12 reviewed, very nice!
- _tromp:_ Seems choice of wtema as new simpler daa is non-controversial. But reduction of future time limit may be.
   - _lehnberg:_ How do you see us getting clarity on that?
- _antiochp:_ Ok so still some active discussion?
- _tromp:_ As long as there remains solid doubt that 1 min is feasible, I guess we leave it at current 12 min. Ftl is how far we allow blocks to have timestamps in future, relative to local clock.
- _joltz:_ Zawi proposed an interesting possible solution to the ntp concerns  that might be worth more consideration
   >to reduce fears of a problem, if ntp or peer time is not currently the default, then maybe nodes could be polled for their current time to see how many are actually off.
- _tromp:_ We don't (or delay) relay of blocks exceeding the limit. So it's not consensus rule.
- _antiochp:_ @tromp want to summarize current thoughts as a comment on the rfc?
- _tromp:_ Ok, will do.
- _lehnberg:_ Who wants to be shepherd?
- _joltz:_ I can. Unless someone who doesn't have an opinion wants to.
   - 👍: _antiochp_

#### 5.7 [Wallet rules for replay protection](https://github.com/mimblewimble/grin-rfcs/pull/60)
- _lehnberg:_ At 114 comments it's broken the engagement record by far.... 🔥 

    Not been keeping up, what's happening there?
- _phyro:_ So some people have shared an opinion and concerns about it, mostly related to privacy. Some of them are probably valid concerns. I've not been able to bypass these. There's a comment from david that if you know an anchor and another output, there exists a path between them and that you can find the chain of all of the txs between them.
- _tromp:_ There are generally many paths.
- _phyro:_ Another one from @vegycslol that if you see an output that doesn't share the subgraph of an anchor, then it doesn't belong to the same owner with high probability (which I assume is true).
- _tromp:_ Payjoins help create more paths in the graph between any two txs a certain time apart.
- _phyro:_ Yeah, but it might be possible to actually bruteforce if you keep logging the txs and if the person is not doing many txs. The distance might be very important here.
- _tromp:_ Compared to having all payjoins (expect for wallet's first receive), adding an anchor to that first receive is a small privacy loss.
- _phyro:_ Me and vegycslol will try to analyze it a bit today. We'll see what We can figure out.
- _lehnberg:_ Okay, so sounds like there's still stuff to work out there. Who wants to be shepherd here?
- _tromp:_ While having payjoins in itself looks like a small to moderate benefit.
   - _phyro:_ Not sure what you mean with this.
- _paouky:_ Good luck to the shepherd on that one...
- _paouky:_ Haha.
- _tromp:_ Payjoins help obfuscate the tx graph.
- _antiochp:_ This RFC may need to stay open for as long it takes.
   - 👍: _phyro_
- _lehnberg:_ I'll take it on I guess. Don't have a horse in this race. Is that okay with you all?
   - 👍: _phyro, paouky_
- _tromp:_ Sure.
- _phyro:_ Thank you 🙏

#### 5.8  wip: Creating 'eliminating finalize' RFC wallet dev
- _lehnberg:_ By @dburkett. Is that still going? Or wasn't it proven insecure?
- _phyro:_ I don't think david is on this channel.
- _paouky:_ Proven insecure, we can close.
- _lehnberg:_ I'll ask on the rfc.
- _paouky:_ There's a forum thread on a different alternative approach.

#### 5.9 [deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/60)

- _phyro:_ Kurt reworked it a bit I believe, but don't know the state of this or whether it should be assumed the same rfc.
   - _paouky:_ No it's completely different.
- _lehnberg:_ We probably want to move on deprecating https RFC now, right?.
- _joltz:_ I think final hf is the timeline on that.
   - _lehnberg:_ Yeah, so would be good to have it accepted asap?
- _lehnberg:_ Two weeks final comment period, us dropping the ball a few times etc.
- _joltz:_ Sure, would also be nice to have done when we are approaching exchanges/services to encourage timely slatepack integration.
- _lehnberg:_ Who wants to be a shepherd and show some progress for next week?
- _lehnberg:_ Paouky you're typing I see you.
   - 👀: _phyro_
   - _paouky:_ 🙈
- _paouky:_ I was gonna propose myself but I've no idea what to do lol.
   - 👍: _joltz_
- _lehnberg:_ Ask @joltz he's an experienced shepherd.
- _joltz:_ I'll walk you through it, will be a good first one to do.
- _paouky:_ Oki.

#### 5.10 Other RFCs 
- _lehnberg:_ We have 
   
   [wip] parallel ibd node dev
   #52 opened on 21 apr by jaspervdm

    qa team core
    #45 opened on 19 feb by j01tz.

- _lehnberg:_ Think we just leave these as is for now.

### 6. Other questions
- _phyro:_ I have a question about shepherds. It says in 0001 that It must be someone from the 'team'. What is this team?
   - _lehnberg:_ The team that it relates to... But yeah I think that's very fluid. At the time of writing we thought we'd have way more engagement and organization in the wallet and node teams and so on.
   It's basically to prevent drive by shepherds coming in and interfering with the team's work I think.
      - 👍: _phyro_

- _lehnberg:_ Like, if I'm now biased on the replay RFC and try to force it through, I could land a big pile of work on yeastplume's wallet team, potentially without them (he?) having much of a say. Or something like that.
   - _phyro:_ I see, thanks 👍

**Meeting adjourned.**