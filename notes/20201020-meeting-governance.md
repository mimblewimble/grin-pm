# Meeting Notes: Governance, Oct 20 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- algalon
- antiochp
- anynomous
- bladedoyle
- energyburn
- jaspervdm
- johndavies24
- kurt2
- lehnberg
- nation_state
- paouky
- phyro
- quentinlesceller
- timtimbo
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda: Governance, Oct 20 2020

## Agenda points & Actions
### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/355) was reviewed and accepted without any changes.

### 2. Action point follow ups from previous meeting

#### 2.1  dtavarez weekly updates
_Actioned._

- _lehnberg:_  @dtavarez made a really nice update on grin++ mobile the other week.

#### 2.2 QA Funding request clarified
- _lehnberg:_ @quentinlesceller you're working with mick in #qa as per the update in there just before the meeting, is that right?
   - _quentinlesceller:_ Yep still ongoing.

#### 2.3 @antiochp, @lehnberg paid
_Actioned._

#### 2.4 logs updated
_Actioned._

#### 2.5 @paouky exchanges contacted
- _lehnberg:_ @paouky how's that been going? @joltz told me he's in transit today, but he shared a draft statement re slatepack, have you both been speaking?
   - _paouky:_ Yeah it's pretty much him who did all the work, said he was gonna send the draft here this week and then we can begin reaching out. I did look at it, looks good.
   - _lehnberg:_ Okay cool, he asked me to help with exchange contact info, could you do a list of everyone that needs to be contacted, and then I can see if I can find contacts?
- _paouky:_ The list exsists: https://docs.grin.mw/wiki/services/list-of-services/. Updated and all.
- _lehnberg:_ Boom.

#### 2.6 Floonet renamed and up and running
_Actioned._

### 3. Jaspervdm [funding request: nov-jan 2020-21](https://forum.grin.mw/t/request-for-funding-jaspervdm-nov-jan-2020-21/7892)
- _lehnberg:_ `3 x eur 10,000 -- nov, dec, jan full time` Floor is open - @jaspervdm is here, anyone has relevant questions / comments?

- _bladedoyle:_ Is rewrite of sync code the top priority?

- _jaspervdm:_ My main focus will be to continue w/ the pibd implementation.
   - 👍: _anynomous_

- _anynomous:_ Well, I want to here with scold him officially and request to do a better job next time informing the community, Just a simple forum post will do. Apart from that I see no problem.
Just remember guys, communication does matter.
   - 👍: _lehnberg_
   - _lehnberg:_ I'm 100% in support of this funding request, but I think this is a fair comment. @jaspervdm: It's hard to predict the future, our circumstances change, and we've been living in quIte crazy times. Say that you'd need to take another leave of absence during the funding period, how would you handle this?.
   - _jaspervdm:_ Right, obviously I would hope it will never come to this again. But if a similar situation were to arise I would make sure to communicate it publicly, instead of through a proxy in the council. I could've been better here.
      - 👍: _johndavies24, bladedoyle, lehnberg_

- _paouky:_ I think it's fair to ask for a comment regarding some things raised in the forum thread. Preferably on the thread it self so people see it.
   - _lehnberg:_ @paouky you have to do better than that. It's a long forum thread with a lot of posts and "thoughts". So if you have something specific, concrete, you'd like to ask @jaspervdm, now's your time.
   - _paouky:_ I just find it a bit od to request openly funding and then not reply on your own thread to any of the questions asked (I get that some of the comments aren't worth an answer, but some are).
      - 👍: _anynomous, johndavies24, kurt2, timtimbo_
   - _paouky:_ But I do not have any specific question right now.

- _anynomous:_ I think one valid point raised was 'accountability'. We do not need much bureaucracy, but maybe it is good to have some sort formal way to say how people who get paid are held accountable. Could be very simple, e.g. biWeekly update and notice of leave or disruption if something major happens.

- _bladedoyle:_ Jasper had some personal issue. He dealt with it and come back to finish his work, right? So thats over.
We should focus on "is the work he proposes something we need".
   - _paouky:_ I agree, which is partially why I support, bet lets no forget this is an open source community project and funds.
- _anynomous:_ Good, just improve on the communication part. I think it is important for 'feeling' of the community that they are part of the process and as such as properly informed.
- _paouky:_ Can you just reply this on the thread @jaspervdm?
   - _anynomous:_ Yes, I think it would make a difference if you do. It shows you care and recognise you should do a better job at communicating next time. Case close as far as I am concerned.
   - _jaspervdm:_ Sure, I will.
   - _paouky:_ Thank you.

- _bladedoyle:_ Is initial sync a problem?  is it one of our top priorities?
   - _jaspervdm:_ Yes, our current implementation is bottlenecked by a single peer and has a single point of failure. I think parallel bootstrapping is one of the big missing features right now.
      - 👍: _antiochp, quentinlesceller, lehnberg_
   - _lehnberg:_ @bladedoyle fyi this is the scope of work for 5.0.0: https://github.com/mimblewimble/grin-pm/issues/287
   - _tromp:_ Yes, tying up one peer for gbs worth of data is a problem.
   - _anynomous:_ Happy we can get it implemented before the next hardfork.
       - _lehnberg:_ * the foundation for it, not the actual full feature.
       - _anynomous:_ Good enough, so we can play with it afterwards.
       - 👍: _lehnberg_
   - _bladedoyle:_ Ah, nice, so the work is already agreed on and requested. (though, p3 is the lowest priority...).
       - _lehnberg:_ ...for v5.0.0:) Not for the project in general:)
       - _bladedoyle:_ Ok. Thanks for info and details.
   - _jaspervdm:_ The reason for p3 is that its not crucial to introduce around a hf and its a quite complicated topic. We would not want to rush anything in.
       - 👍: _yeastplume_
   - _bladedoyle:_ Im satisfied.
      - 🍺: _paouky, anynomous_

- _lehnberg:_ Any more relevant thoughts or questions? Is there anyone who explicitly is _opposed_ to this funding request?
   - _algalon:_ I am.
   - _lehnberg:_ Hello @algalon - don't think I've seen you here before. Tell us, why are you opposed?
   - _paouky:_ Also whats your forum name.
   - _algalon:_ I have been around for a while. Never participated besides a donation and I rather wish to remain anonymous. I think this funding is creating a lot of unrest in the community which is not addressed properly. I have besides this nothing more to add..
   - _kurt2:_ I agree with this, and nothing more to add on my part, except for the fact that I am totally in favor to pursue the funding for jasper if we can see some communication/explanation from him first. Mostly agreeing with what paouky and anynomous have said as well. Given a lot of community members have raised questions on the thread that have remaoned unanswered by the "interested" party (jasper):)

- _anynomous:_ It would be good to indeed give a proper answer, and apologise for not taking the initiative to inform the community on the forum.
   - _lehnberg:_ Just to be clear: *he's already done this*: https://forum.grin.mw/t/request-for-funding-jaspervdm-march-may-2020/7074/10

- _jaspervdm:_ Personally I think @lehnberg did a good job responding to most points early on in the thread. But like I already mentioned, I will post about my communication in there.
   - _johndavies24:_ You think it's ok for someone else to take responsibility for you?

- _quentinlesceller:_ @jaspervdm is an extremely valuable person to have around turning him down would be a huge mistake. I agree with some of the remarks here but we are shooting ourself in the foot here. Maybe some clarifications on the post and let's move on.
   - ☝️: _johndavies24, phyro, phyro, lehnberg_

- _johndavies24:_ Agree, he should be funded for sure.
   - 👍: _anynomous_

- _tromp:_ I'm thrilled to see jasper back in action and fully support funding him, but have some reservations about paying him for 3 months at once.
   - _quentinlesceller:_ I think a month to month basis would be a good start to get some more trust from the community. What do you think @jaspervdm?
   - _jaspervdm:_ I am happy to split it up in monthly payments.
   - _quentinlesceller:_ Okay anyone against that? I think that'd be a good start.
   - _paouky:_ Sounds good.
      - 👍: _anynomous_

- _lehnberg:_ Any objections?

[...]

#### Decision: Approve @jaspervdm funding request
- _lehnberg:_ Okay, there were plenty of chances. Judging by the comments in thread I read it as general support *in favour* of funding request, with the modification that it will be paid out on a _monthly_ basis..

- _paouky:_ Thank you @algalon for voicing your opinion.
   - _lehnberg:_ Yes thanks @algalon for coming here and sharing your thoughts. Would also be interesting in hearing how the unrest should be addressed better (perhaps in a separate discussion after the meeting if you'd stick around).
   - _algalon:_ My pleasure. I don't have to, I have faith that you will do what is the best.
      - 🙏: _lehnberg_

- _lehnberg:_ Congrats @jaspervdm 🍾.
   - 👍: _bladedoyle, tromp, yeastplume_

- _jaspervdm:_ Thank you!
   - 🚀: _quentinlesceller, antiochp, yeastplume_

### 4. RFC & sub-teams update
- _lehnberg:_ Next, https://github.com/mimblewimble/grin-rfcs/pulls.

- _lehnberg:_ First of all, am I okay to merge https://github.com/mimblewimble/grin-rfcs/pull/73?
   - 👍: _antiochp_
   - _lehnberg:_ @antiochp had ideas about additional states, which I'm in favour of adding, once we have them.
   - _quentinlesceller:_ Yep for me that's fine and we can iterate after that.
   - _jaspervdm:_ Yes.

- _quentinlesceller:_ Should find a way to display it on the doc website. https://docs.grin.mw/grin-rfcs/text/0015-slatepack/. That shouldn't be hard.
   - _lehnberg:_ Yup. Maybe add a "status:" in the header there or sth. But yeah that's for later. 

#### 4.1 [fix-fees](https://github.com/mimblewimble/grin-rfcs/pull/63)
- _lehnberg:_ FCP ending *today*. (fix-fees).
   - _lehnberg:_ This is basically 'ship it' now, yes?
      - 👍: _anynomous_
- _antiochp:_ I believe so, yes.
- _tromp:_ Just started in implementation.
   - 🚀: _lehnberg, anynomous, phyro, quentinlesceller, jaspervdm_
- _lehnberg:_ Okay then.

#### 4.2 [fix DAA](https://github.com/mimblewimble/grin-rfcs/pull/61)
- _lehnberg:_ Next we have `fix-daa`, also in fcp.
- _tromp:_ Mostly finished implementation. :-)
- _lehnberg:_ Also expiring today! What are we with the flyclient stuff there - is that going to be affecting it?
- _tromp:_ Only remaining part is config support for ftl.
- _tromp:_ New daa is slightly more compatible with flyclient than old.
- _antiochp:_ @tromp you saw my comment re config?
- _tromp:_ But need to have correspondence with authors about some paper details. I saw several comments; no sure what yours was about.
- _lehnberg:_ Okay - does that mean that merging the RFC should be blocked until this is settled, @tromp?
- _tromp:_ I'm happy to leave flyclient out of scope of my rfc.
- _lehnberg:_ Okay so we're all good on merging this one as well, as is? (fcp expires today).
   - 👍: _antiochp_
- _jaspervdm:_ Imo yes.
- _lehnberg:_ Okay, any detractors should make their way to the pr and shout asap if they want to have a chance at influencing it. 

- _tromp:_ I thought of one item to add to daa rfc. Which is theta secondary_scale becomes obsolete in header.
   - _lehnberg:_ Feel free to do so, and we can extend the fcp period another 2 weeks.

#### 4.3 [deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)
- _lehnberg:_ Deprecate HTTPS. Fcp ends october 28. I reviewed last week, see comment here: Https://github.com/mimblewimble/grin-rfcs/pull/54#pullrequestreview-508656194. Question about the extent we go in disabling http(s) transactions and wording there. Would be good to get others thoughts on it, I assume @yeastplume is busy elsewhere.
   - _yeastplume:_ No problem, I will review before fcp.
      - 👍: _lehnberg_
- _bladedoyle:_ If http is disabled I think we should bundle (or add explicite package dependency to the) tor executable.  I do not think it will be user friendly to need to install tor manually.
   - 👍: _anynomous_
- _lehnberg:_ No need to rush the merging if we can improve further (i think). Tor is not required for slatepack though, @bladedoyle.
- _lehnberg:_ But it's worth while to consider, maybe discuss in #dev?
- _anynomous:_ I agree there, it is a bit to much hassle with the grin wallet at the moment.
- _bladedoyle:_ Ok.


#### 4.4 [pibd p2p](https://github.com/mimblewimble/grin-rfcs/pull/68)
- _lehnberg:_ @jaspervdm how's that looking, when do you reckon it will be in shape for fcp?
- _jaspervdm:_ It can be reviewed in its current state, but I have to add some more text near the end. Will get to that asap. Also note that there is a second related RFC on its way, describing the actual new sync process in the node. But I'm currently undecided on a few points there so that is not up yet.
   - 👍: _lehnberg_
- _jaspervdm:_ Have to discuss some things with antioch before I do that.
- _lehnberg:_ Oki sounds good.

- _jaspervdm:_ (I tried finding out if beam or tari has implemented a similar fast sync mechanism, but couldn't find docs so far).
   - _tromp:_ Yes, beam has one.



### 5. Other questions

#### 5.1 Proof of work
- _bladedoyle:_ Its not on the agenda but I would like to request that @tromp consider resetting the c29/c32 ratio pending 2 asic available to the public.
   - _kurt2:_ Haha. It is alSo nice to keep the "premises" as often as possible. So I would have a mItigate opinion on this, although It is true the arising of asics seems to come later than expected before launch.
- _tromp:_ It's not up to me. Besides, no pow change can take effect until 18 months  later.
   - 👎: _bladedoyle_
- _bladedoyle:_ It is up to you.
   - 😭: _antiochp_
- _bladedoyle:_ Lol, we can make any change we agree on when we want to.
   - 👎: _antiochp, tromp, phyro_
- _bladedoyle:_ Hm, no traction even to discuss.   I'll add it to the next meeting agenda.
   - _lehnberg:_ @bladedoyle how about you add your proposal to next meeting instead so people get a chance to review and digest it? Maybe start with a forum post?

- _bladedoyle:_ Why does nobody care that a single entity in china controls grins blockchain?
   - _kurt2:_ I care, but have no solution for that personnally.
   - _lehnberg:_ I'd have as much concern (if not more) if there was a single entity in the us controlling grin fwiw.
- _anynomous:_ "why does nobody care that a single entity in china controls grins blockchain?"
not a single entity, just many entities within one country.
- _bladedoyle:_ There is one asic being sold privately.
- _bladedoyle:_ Thats why I propose keeping c29 until there are at least 2 asic being sold to the public.
- _jaspervdm:_ We cannot do that without breaking the previous commitment.

- _bladedoyle:_ The asic manufacturesrs already broke it.
   - 👍: _energyburn_

- _bladedoyle:_ Who did you make that commitment to? You want to protect the single asic mfgr over all the early grin supporters?
- _tromp:_ https://forum.grin.mw/t/cuckatoo31-im-mutability.
- _bladedoyle:_ There is some forum post.  so?  that is more important than chain security?
   - _tromp:_ Yes, you got it.

- _antiochp:_ Can we park the asic conversation for now?
- _bladedoyle:_ I made a forum post.  yes, I'll add to next agenda.  y'all can reject it in 2 weeks:)
   - 👍: _anynomous_
   - _lehnberg:_ Great, thank you! 👍

- _bladedoyle:_ Ok, dumping my grin bags today.
   - _lehnberg:_ Mind your toes.
- _tromp:_ Grin is not worth a dime if we make sudden arbitrary pow changes.
   - 💯: _phyro_
- _bladedoyle:_ Its barely worth a dime now.
- _lehnberg:_ Guys please stop with the pow discussion now.
- _bladedoyle:_ After a few 51% it will be pennies.
- _lehnberg:_ Move it to #mining we're in a governance meeting.
- _antiochp:_ Who is _not_ on the forum?
- _bladedoyle:_ The discussioon is about tromp governing the pow rules.
   - 🚀: _kurt2_


- _phyro:_ As soon as we start "controlling" the pow, it becomes useless.
   - 😭: _antiochp_

#### 5.2 Core team, Governance, accountability of those getting funded

- _johndavies24:_ We can cover this another time, But the entire council needs to be more cognizant of the optics of voting on each other's funding, the silence from the majority of the council most of the time and the repeatedly admitted private conversations you guys have that are public in nature. All of the above creates horrible optics and while I have no doubt efforts have been made to move some of those conversations public, and maybe efforts on the other issues. But the appearance from my perspective does not match the stated fairness and transparency in the project.
   - ☝️: _timtimbo, kurt2, anynomous_

- _energyburn:_ I know I missed my chance, But I'd like to chime in on the subject of @jaspervdm's funding request. He's a good dev that I would like to see continue work, But I don't think "the issue" of him ignoring the community's inquiries on the forum is resolved. I also no stranger to how life can change our plans. But its not ok to ignore the community (at least not now that you're back), when you are accountable to that community and accepting that community's money.

I appreciate that h will work on his communication in the future 👍, But its a pretty big slap in the face for many participants in that thread (and the many non-vocal observers), to see a complete disregard for community opinion about use of community funds.

Its an even bigger slap in the face to see the core team agree to just reinstate his funding without first addressing accountability. Saying "i'll be better about it next time" does not answer any of the questions asked in the forum thread. From an optics perspective, this looks like cronyism within the core team, with a disregard to the community's concerns.
   - 👍: _kurt2_

- _lehnberg:_ I'd like to spend some time unpacking what's being raised here, and discuss what we can do about it to improve.
- _anynomous:_ A, yes, that part. He has a point. No hurry, just food for thoughts.

- _lehnberg:_ > the entire council needs to be more cognizant of the optics of voting on each other's funding
   Ues, I agree, it's a problem. 
   
   What should we do about it? Right now, we have very few active long term contributors that are making meaningful contributions.
   - _kurt2:_ It is not easy to solve. One indirect solution would be to me to have funded people at minimal involved with the communities, with the discussions, with the noobs, with being pro-active on some aspects. All what we need at the end of the day, is a more united community where everybody can feel that paid people (in particular) are not just here to get their paycheck or because they love to code at home, but also to show some passion for the coins, for the debates (which did not lack this year).

- _antiochp:_ Can we define "council" to start with?
- _tromp:_ Only some of council is funded.
- _anynomous:_ Yes, it is important that people who do not get funding, are part of the decision making process on the funding of those who do get funded.
- _lehnberg:_ Council are the group responsible for the `t-of-n mult-sig` in my opinion.
- _antiochp:_ And that's their sole role here, right? "council" does not get funded.
   - _lehnberg:_ Yes, I _think_ so at least. Maybe others have other thoughts?
- _antiochp:_ Council members (wearing council "hat") don't get funded. _individuals_ get funded.
- _lehnberg:_ Correct, you don't get paid for holding the multi-sig.

- _bladedoyle:_ We should just burn the funds and get back to focus on tech.

- _anynomous:_ Well, I guess they should represent the community as well. Damn, I want one of those awesome hats.
   - _lehnberg:_ @anynomous as we defined it in the simplify-governance rfc, (and as it's always been defined for that matter), the council is _self-organizing_.
      - 👍: _anynomous_

- _tromp:_ Council just carries out decisions taken in these community meetings.
   - _timtimbo:_ Funding decisions are made by the council. The community has a voice, but not a vote.
- _antiochp:_ I'm a little frustrated that @johndavies24 is complaining but then is not involved in trying to improve the situation.
   - _johndavies24:_ I've made so many suggestions to improve The situation. One of the first ones was to stop giving nyms powers that put grin resources at risk. The list goes on and on, you guys have fought or ignored the vast majority of suggestions. It is a joke to pretending that right now, in 15 minutes, is when we will solve this and the fact that I have obligations to my job is a problem.
   - _lehnberg:_ No @johndavies24 we're probably not going to solve it. But I do want to have a chance to unpack all the stuff you sling around in so many places, and see what's there to be done about it. And I'd appreciate if you could engage in earnest about it, so we can see if we can get something actionable out of it. And move on.

- _energyburn:_ @lehnberg I think @jaspervdm should make an honest attempt to read through the questions and criticisms on the forum and respond to them. I know not every question is still relevant, but please distill the important ones and allow the community a chance to reach resolution.
   - _lehnberg:_ He's already agreed to write a response.
   - _jaspervdm:_ Yes, I will go through the thread and respond where I think it is necessary.
      - 👍: _energyburn_
   - _energyburn:_ Thanks. That would be good to see. Sorry if I missed where you said that already earlier.

- _lehnberg:_ Okay so coming back to this, the only concrete suggestion so far has been from @kurt2 that council members should try to be on the forum a bit more often than what they are today. I presume he's not talking about me there.
- _anynomous:_ So, who are the current council members?
- _timtimbo:_ Then it does matter that council members fund themselves. They are the only ones that vote.

- _lehnberg:_ I don't agree with this, I think it's hard enough as it is to work full time as a developer in this environment where the actual technical conversations are few and far between. I'd much rather have those who are paid full time to write code actually focus on *writing code* instead of debating people on the forum.
   - _kurt2:_ I am not asking for 1 hours a day. But 0 hours a months is bad imo..

- _lehnberg:_ You can't force people to engage wIth others, and certainly not in this project. It's not a requirement..
- _kurt2:_ Yes , it is true, I can't require anything. But I maintain my point.
- _bladedoyle:_ Wow.

- _kurt2:_ Have you seem how the blockstream guys interact in all tech decisions etc? It is just an example, but you can see them on many platform. It is important to show care about important technical decision as it allows a more united community where you can feel the most knowledgeable people also voice their opinion with their arguments. It is a virtuous circle. Of course a right balance of time need to be performed to be able to code consistently too.


- _timtimbo:_ Council members shouldn't apply for funding.. That's a simple suggestion.
   - 👍: _energyburn_
   - _lehnberg:_ Indeed!
   - _kurt2:_ This an interesting food for thought, although a bit hard to implement maybe.
   - _antiochp:_ That was my point from earlier - _individuals_ apply for funding.
      - _johndavies24:_ Or you'd be replaced on the council and retain funding.
   - _lehnberg:_ In that case, we wouldn't have myself, @antiochp, or @jaspervdm being able to spend close to the time we're doing right now on the project.
       - _timtimbo:_ Or, you guys would have to leave the council.
       - _lehnberg:_ Indeed. But that wouldn't solve the problem, would it?
- _antiochp:_ (but there will always be overlap with people wearing many hats).

- _anynomous:_ I think it will spark a lively discussion on the forum. I at least expect 80 post.
   - 😂: _kurt2_

- _jaspervdm:_ That would reduce the number of key holders though.
- _energyburn:_ It does seem obvious to separate those who "do the paying" from those who "get paid". I'd love to see a plan around that simple principal.
   - _lehnberg:_ I would like to see that too, but it's not obvious how to go about it.

- _timtimbo:_ Are there no possible replacements?
   - _lehnberg:_ Do you have suggestions?
   - _timtimbo:_ I don't care to suggest anyone in particular, but I find it unlikely there are no other trusted people here.

- _kurt2:_ But you could imagine no more than 30% of council should be paid members, or something like that. As a consequence some council may resign, while being funded at least.

- _anynomous:_ That is not a problem, but as @johndavies24 rightfully pointed out it matters a lot in appearance as well as in practice if those who do not get paid have a say in funding. Does not need to be key holders, just people who have an 'official vote' in the decision making process and who represent the community.

- _lehnberg:_ But isn't that what all of you have here, by participating in today's meeting?
   - _anynomous:_ Yes, I just think it needs a bit more formalizing.
   - _lehnberg:_ How can it be formalized? In the end, there are some people controlling the keys to a multi-sig. No matter the rules we establish, they have the final say. Have we ever funded someone directly against people's will?

- _anynomous:_ I mean, I know that, but does anyone else on the forum know that that is how it works. So it is an appearance problem.
- _kurt2:_ Sure, but we can also trust those people to execute funding decisions.
   - _lehnberg:_ How's that any different from what happens today?
- _anynomous:_ Not sure, but I do think the problem has to be with visibility of the process of how people are held accountable. I do not have problem with the current system, but id does not look good from the outside.
- _kurt2:_ The decisions making process, or the group of decision makers may change. While keeping the same people with the multi-sig keys.
- _lehnberg:_ The group of decision makers are all those that show up at the governance meetings.
- _kurt2:_ If we trust them to execute.
- _lehnberg:_ It's not like everybody gets a vote, it's not a democracy.
- _jaspervdm:_ If we trust them to execute, it does not matter if the people being funded are key holders.
   - _timtimbo:_ Money corrupts.
- _kurt2:_ Yes, but there is a huge arrays of possibility in the "non democratic" world.
   - _lehnberg:_ If you have concrete suggestions, bring them forward, doesn't have to be now.

- _kurt2:_ Its not like all black or white.
- _anynomous:_ I think representatives is the middle way.
- _kurt2:_ Right.
- _lehnberg:_ I hope you understand that we are generally sceptical about it, as we've not come up with a better solution ourselves. That doesn't mean it doesn't exist.
- _kurt2:_ It's does not appear simple indeed.
- _lehnberg:_ Continuing a bit, cause there's more I'd like us to talk about.
- _energyburn:_ A simple step might just be to exclude share holders from voting on funding requests. If you're on the payroll, you don't get a vote about payroll decisions.
- _timtimbo:_ If council members agree to not be funded themselves, that helps with community trust.
- _lehnberg:_ > the silence from the majority of the council most of the time and the repeatedly admitted private conversations you guys have that are public in nature. All of the above creates horrible optics and while I have no doubt efforts have been made to move some of those conversations public, and maybe efforts on the other issues.

   @johndavies24 I think you've heard me discuss this with @davidburkett in telegram. Council does have a private group, that's correct. It's not very active these days. But the problem is not that, the problem is that *there's no way to prove that*, it becomes like a conspiracy theory. We can't prove that we're not talking in secret groups conspiring against you all. Even if we show you one chat log, what's not to say there are others, or that it's redacted?
   - _johndavies24:_ The optics you guys have created, and even moreso how you've responded to complaints, makes it very hard for me to subscribe to the idea that you guys don't use this chat for all kinds of things that undermine trust and the facade you put forward about fairness and transparency.

- _lehnberg:_ So while I understand the logic of you bringing it up, it's very tiring because there's not much I can say to you about it. Other than that we try to take as much conversation in public as possible, and when we err and write in the wrong group, people usually point it out.
   - _johndavies24:_ Just pertaining to jasper's progress reports and funding request brought up at least 3 private conversations that should have been public. Stop pretending it's a tiring conspiracy theory.

- _lehnberg:_ When I discussed with @dburkett, one suggestion was that we write an RFC to outline what _ought_ to be discussed in public versus private. Nothing came out of that, but perhaps others would like to take that action on?.
   - _antiochp:_ Surely its just "default to public" where possible?

- _energyburn:_ There are plenty of trusted unpaid members to cast votes on finding decisions.
- _antiochp:_ To be clear, its not a vote.
- _energyburn:_ Im suggesting it should be.
   - _kurt2:_ Maybe someone will come up with a zkp for that ^.

- _antiochp:_ We also cannot prevent private communication between arbitrary people. Face to face or otherwise.
   - _johndavies24:_ It's an ethical problem. We can't prevent it but We can expect the alternative. I have to disclose my work related conversations to my employer. Before you say it's not work and there's no employer just stop and realize the example is valid.
- _phyro:_ I'm not even sure why people are bothered with private talks, I do it all the time. If they have concerns they can raise them on the meetings, it's public.
- _johndavies24:_ My original suggestion of not letting nyms control vital assets also requested any declaration of conflicts of interest. You guys were up in arms about this but I still would love to know if any of you have any conflicts of interest. COI doesn't have to be a bad thing. For example, quentin works for a private company that uses proprietary software to operate grin pools. This is a conflict of interest, despite that quentin has never done anything suspect. Sometimes coi just exist, even without realized concerns, but everyone should be aware of them.
   - _lehnberg:_ There are no nyms controlling vital Assets any more @johndavies24 so perhaps we can let this one go? The reason this was the case in the first place was because the founder had some control. As founders tend to do. It's unlikely we'll ever get to such a situation again.

- _lehnberg:_ Yes, but maybe "where possible" could be defined somehow so we're all on the same page.
- _lehnberg:_ >  I still would love to know if any of you have any conflicts of interest.

   afaik none of us do, but it sounds like you have something in mind? Or would you just like a statement from each member of the council on the forum? Or what?.
   - _johndavies24:_ This is quite standard. Every time I publish or do anything I have to make a statement.
- _lehnberg:_ @johndavies24 please, can you give me an example of a _meaningful_ conflict of interest right now that you fear some of us might be having? And how this has had an impact on grin? It's an open source project, without revenue model, reliant on donations, with zero promises made to people and have zero liabilities.
- _antiochp:_ I'm unconvinced that "private communication" is somehow an ethical problem.
   - 👆: _phyro_

- _lehnberg:_ And then the final part of your comment:
   > but the appearance from my perspective does not match the stated fairness and transparency in the project

   I'm perplexed by this, I see it coming up so many times. I think there's some wires crossed between what's fair, what's transparent, and what the expectations are here for some really.

- _lehnberg:_ We're allowed to speak in private @johndavies24.
   - _johndavies24:_ Psst, buddy, you're about to get kicked off the council for taking 30k and disappearing... If you want to keep milking the fund I suggest you come back and claim your funds.
   - _johndavies24:_ Of course it is. If you guys pre determine the votes on funding or rfcs and want us to believe we have a say, that's an ethical problem. Window dressing a fair and transparent community is an ethical problem.
- _nation_state:_ Doesn't @tromp take money from the one asic vendor?
   - 😂: _lehnberg, timtimbo, quentinlesceller_
   - _lehnberg:_ @tromp are you being paid by grin's asic manufacturer?
   - _tromp:_ No, I haven't received any money from any ASIC manufacturer. Not a penny.
   - _antiochp:_ If he is why aren't we in on it?
      - 🤑: _lehnberg_

- _lehnberg:_ Will you lead this effort? Can you help formulate a template that we can ask each council member to use when they post? Can you please give us a conflict of interest template we can use and then I can try to get other council members and myself to use it and post on the forum.
- _johndavies24:_ Speak in private all you want, but speak in private and public things and it's hard to trust you.
- _phyro:_ That's interesting, I've heard from some other people of grin devs being paid by asic vendors from some other source. I don't believe it, but it seems to be a thing that has been spread around perhaps prior to me joining the community?
- _lehnberg:_ @johndavies24 how about you start milking the fund so we get more of it goes to honest people like yourself? What do you want to contribute and doing? Pay is measured in commits, not in words typed.
   - 😂: _phyro_
- _kurt2:_ I have literally zero problem for trusting that none of the council member take any money with conflict of interest with grin or under the table.
- _lehnberg:_ Thing is, we can't prove we have not pre-determined the votes so how can we possibly defend against this claim? I meant the conflict of interest statement.

- _antiochp:_ I don't understand how stating "i have no conflict of interest" will in any way assuage your concerns that we are talking in private behind your back @johndavies24.
   - _johndavies24:_ Well if your statement didn't address the first out of band funding you received, that would be concerning. Maybe it's not relevant now but it was when I first brought up conflict of interest.
- _johndavies24:_ Here's a fact, Your optics are horrible and a large enough size of the community echoes these sentiments. You can fire back at me all day long, but it is Your behavior that has facilitated this problem.
   - _lehnberg:_ Be that as it may, horrible optics or not, what should we be doing to improve the situation john?

- _lehnberg:_ Trying to summarize, what are the action points we've been able to identify here?
   1. Come up with a better way to manage Council funds. Action: Write a proposal on the forum. [anyone]
   2. Conflict of interest statement.
      * Action: One template to be prepared [?]
      * Action: Council members to post on forum [Council].

   Anything more to be added to this list?.

- _lehnberg:_ Fwiw, compared to other projects in this space, I think our optics are pretty damn good looking.
- _johndavies24:_ The question is always "please state any and all potential conflicts of interest you might have" and it's up to you and your ethics to fill it in truthfully and completely.
   - _lehnberg:_ Should be quite easy for you to prepare a template then? Maybe you can add some instructions for how we should fill it out?

- _phyro:_ Meh, this is a recurring few people complaining about "but you do x in private" which is pointless because people should be allowed to have a conversation (just like some of the "complainers" have private conversations) and on top of that, it's impossible to prove you did not have it unless you share your keybase account away.
- _lehnberg:_ Maybe also add your own conflict of interest statement about grin while you're at it.
   - _johndavies24:_ Clearly coi are only for those getting funding, with voting rights or commit access.

- _phyro:_ There is no solution to this problem, people will be able to talk in private no matter how much others complain, the only thing that can be done is to talk publicly about some things and reason why they should be public.
- _antiochp:_ We should expand it to everyone who has an interest in the project.
- _johndavies24:_ There is no conflict with no power.

- _lehnberg:_ I'll wait for your guide and template @johndavies24!
   - 👍: _phyro_
- _phyro:_ This ☝️ describe the problem, describe the solution.

- _kurt2:_ Reserve some allocation of fund for mercenary short term/middle projects (technical). It has some nice side effects when done appropriately.
   - _lehnberg:_ Consider it reserved, all we need are the proposals and proposers.

- _johndavies24:_ If you really want me to post a single question on the forum I'll do it, but it's not being 6 your optics to pretend that's reasonable and like you guys have no idea how to do a coi statement.

**Meeting adjourned.**