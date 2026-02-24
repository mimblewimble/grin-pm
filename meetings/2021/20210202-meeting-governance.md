# Meeting Notes: Governance, Feb 02 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- bladedoyle
- cekickafa
- dburkett
- deeev
- dtavarez
- gringineer
- jaspervdm
- joltz
- lehnberg
- mo5itoo
- paouky
- phyro
- quentinlesceller
- smokeking80
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/388) was reviewed and accepted without any changes.

### 2. Action point follow ups from previous meetings
#### 2.1  Q4 financial report
- _lehnberg:_ I've yet to do the q4 financial report, @quentinlesceller noticed some discrepancies in the q3 one that I suspect have to do with us not accounting for tx fees properly.
- _quentinlesceller:_ Yeah was checking that.
   - _lehnberg:_ Oh - did you come to any conclusion?
   - _quentinlesceller:_ No my plan was to check every fee and compute the total fees. Planning to do it.
- _lehnberg:_ Ah cool. I will try to do some stuff from my end as well and we can compare notes.
   - 👍: _quentinlesceller_

#### 2.2  Spending log update
- _lehnberg:_ Spending logs are now up to date.

#### 2.3 [Trustless aggregator on l1](https://forum.grin.mw/t/bounty-program-trustless-aggregator-on-layer-1)
- _lehnberg:_ @deeev any updates on this one?
   - _deeev:_ Hey, didn't had many time to focus on it, I will finish before the next governance meeting.

### 3. Discussion about our view on Funding requests, following [this](https://forum.grin.mw/t/request-for-funding-jaspervdm-feb-apr-2021/8313/) thread.
- _lehnberg:_ I hope most have had a chance to review some of the discussion in that thread. Setting @jaspervdm's actual request aside for a sec, it felt to me like there's some disconnect about how we're doing funding requests, and how some think we should be doing funding requests. Reading between the lines there in those comments. In the past, typical requests have been in the style of "three months, 10,000 eur/month" and then there would be some list of work, payment up front in btc equivalent, and some weekly reporting. Is this something we think we should change from now on? If so why, what should we change it to, and how is this an improvement? Floor is open.
- _yeastplume:_ This probably should be a forum post, but given that we're talking about this today and there's no way this discussion can be neatly fit into and dealt with in an hour, I thought I'd put it here to get this conversation started. I've been away from Grin working another project for some months now, and while I've been keeping an eye on Grin, I think my having stepped away from it has given me a bit of space and clarity on the situation. I feel I can also speak a bit more freely now that I don't rely on Grin for basic sustenance.
 
   Jasper's post and responses were painful to see, and regardless of your opinion on that thread the fact that it even exists is a failure of the project structure itself. I have a few thoughts here which are badly organised, but I thought I might as well dump them.
   First, Grin is not an attractive project for talented developers to work on for many, many reasons. My own thoughts on why this is are:

   Privacy - How many people here want to make their salaries and arrangements with their employers public knowledge? Or want to have a host of not-necessarily qualified people weighing in on your worth every three months just to ensure continued sustenance for yourself and your family? How would you like to have to endure the general public's 'feelings' every time you wanted a raise or some other incentive? 

   Further, if I have a problem with an employer, or an employer has a problem with me, I expect the issues to be addressed confidentially in a private room by people familiar with my work and capable of evaluating it. I do not expect it to be aired in a public forum open for everyone and anyone to discuss regardless of technical capability. I am not comfortable weighing in publicly about someone's performance, nor do I want to be in a position where others feel they can do so about me.

   Protection - I know of many cases throughout this entire thing where people have categorically told me they could never work for Grin or contract for Grin because there's no entity or paper trail, which sends their accountants and/or tax offices into tizzies. In many cases, they're rightfully scared of reprisals from the tax man or whomever when bitcoin comes in to themselves or a business from an undisclosed entity. Even though there's a lot of grey area here, who's going to have your back if someone comes up? The council members? The community? Do I need to open a funding request for a legal defence? There is no legal structure and no guarantees, so you're basically on your own. That on its own is enough to keep most professionals far away.

   General Working Expectation - I'm not a politician, (and this is probably not surprising to most people,) but I personally have very little interest in endless arguing with people on the Internet. I have plenty of time for discussions with people with respectful attitudes and knowledge/experience to back up their opinions, but zero interest in pointless bickering with people who 'feel' a certain way about very technical issues with no particular technical arguments or experience to back up their positions. I would argue that most decent developers I've known have had similar outlooks and we want to develop and build things, not work in PR. All companies and organisations have layers of people between the engineers and the general public, and developers should not be expected to have to deal with public opinion on their work as part of their day-to-day activities. I feel that weekly updates on the forum as to accomplished development work were a good compromise here, but expecting continual direct engagement (particularly in the kind of atmosphere we have now) is an exhausting proposition to most introverts.
   
   Incentive - This is the real crux of the issue, and all of the inadequate structures outlined above come from a lack of any incentive for anyone. When Grin was a small project with a tiny bit of funding and a lot of excitement, we could paper over a lot of this and run Grin as an highly-idealistic project. Now that Grin is 'done', and the hype is gone there's none of that excitement to attract people or keep them motivated.

   We have members of the core team (myself included at several points) saying 'Grin is a long term project, Grin is patient, there's no need to rush anything') and while I agree with this to some extent, there is no getting around the fact that the project is in the ridiculous situation of sitting on a ridiculous amount of liability-free money and absolutely no way to spend it.

   All startups go through doldrums, and to get past them they use whatever financial resources they have to get past them. Those that can't die quickly, and management teams who try to stretch out funds indefinitely to maintain a 'lifestyle' for their directors are often replaced by their investors.

   Talented people are ambitious. Working for nothing but an ideal is fine for short periods for most people, but ideals don't pay bills or advance anyones careers. Grin can currently offer you short-term contracts with static, protection-free untraceable low-end-of-the-scale compensation. And that is provided you're ready and willing to endure all of the pain outlined above beforehand... (not to mention establish yourself in the community first and show a dedication to whatever ideals Grin espouses). No benefits, no equity, no particular rewards if you work as hard as you can making Grin the best it can be. There are thousands upon thousands of promising and interesting projects out there, many of which come with the expected host of incentives for those joining. Is this one so special that people should be expected to come work indefinitely for its ideals and nothing else? Personally, I'm not interested in working in a sinecure. If there are no particular prospects for Grin on the horizon, there is no shortage of other things I could be working on. To expect talented people to come and work indefinitely on a project they didn't start for the sake of ideals and no other compensation is naive.

   I don't have any clue what the way forward is, because this whole fund thing puts the project in a unique and largely unworkable situation. All I do know that getting Grin into a healthy state of development from where it is now is a massive, painful undertaking. Who's going to grab hold of it? Who's going to deal with the needs and wishes of the entire community to sort this out, to get things into some sort of structure that's acceptable to most? Further, why would they? What do they get out of it in the end? Satisfaction of a job well done? How do we reward them and still remain fair to all of the contributors and donators to date? What do we reward them with? Our ideals are admirable, but they've painted us into a corner from which I can see no real escape.

   So, I don't know what the answer here is, other than I don't believe the current setup works at all. It was fine for a small exciting project with limited funds, but sitting on funds indefinitely is irresponsible. But where's the motivation for anyone to grab the project and do what's necessary. It's an impossible catch-22 situation.

   So, I can only really think of 3 approaches, none of which are particularly good:
   1. Properly set Grin up as an organisation with legal status. Provide performance-based incentives against the future of Grin to whoever works on or is hired to work on Grin (With Grin's 'performance' being whatever that may defined as, I don't just mean whatever arbitrary price is assigned by the last 3-Grin trade on Tradeogre). Incentives need to be fairly spread between all major and minor contributors to date and towards future contributors (all based on future upside so nobody gets a particular payout now). This is a massive, messy undertaking, but it's expected whoever takes charge of this also has requisite compensation to look forward to if Grin has any long-term success.
   2. Split up the fund into smaller chunks, and have smaller, more manageable groups contributing to Grin how they see fit. Each group should have a multi-sig comprised of well-known and respected community members, and there should be some accountability that funds have been spent responsibly but teams should be able to spend funds/hire/fire/organise/compensate their teams as they see fit. The biggest problem here is that with the lack of any legal structure, there is no way to enforce accountability. (But it's not like there is at present other than the general trust of core multi-sig holders)
   3. Give donations back to the donators. If this can't be done, split it up among charities working towards issues relevant to the community.

- _dtavarez:_ I think we need people constantly working on the codebase, we have 108 issues on `grin` and `65 on `grun-wallet`, also a lot of stuff that requires time to finish. For me, a fixed monthly payment helps to this kind of maintenance work; even if we offer a bounty on something, we need someone to keep doing the maintenance job. In general, I agree on having the current model, in addition of supporting the bounties.
- _cekickafa:_ Is this like a zcash style suggestions? I did not really get it.
- _phyro:_ If I understood it correctly, it's about making the issues related to crypto payments etc. Disappear by going through something where a contractor doesn't need to deal with it himself.
- _cekickafa:_ It says set grin as an orgn legal status. I am agains all formal legal zcash ecc company types. Whats is next? Buying covid money from gvnmtes or opening a backdoor for legal comply?
- _quentinlesceller:_ Very well said above @yeastplume..
   - _lehnberg:_ +++ not sure I have much to add really, I'm exhausted already, and having spent time on the forum about this.
- _yeastplume:_ It is not intended to be a set of concrete suggestions, just general approaches. I'm also not particularly advocating any of them, except for perhaps rejecting the status quo option.
- _quentinlesceller:_ I personally think this fund is starting to be kind of of a burden. Sometimes I think about giving it all to a charity. But after that I remember that there might be ways to use it well.

- _lehnberg:_ Just for context, we're in the middle of a bull market right now. It's extremely difficult to find talented engineers that are well experienced. In ethereum land, they pay less competent people in the range of 30k usd/month + multi-year vesting packages in the millions of dollars to work.
   - 👍: _dtavarez_
   - _vegycslol:_ Pssst.
   - _dburkett:_ Well, it's been fun. See you guys 👋.
      - 😂: _smokeking80, phyro_
   - _antiochp:_ 🦄
- _antiochp:_ I'm not convinced the reason for a formal foundation type structure should necessarily be to "make it easier to get paid" but these are obviously somewhat related. 
- _quentinlesceller:_ Also, not sure if yeastplume said it this way, but most of us have been working on grin for 2+ years and there is some kind of fatigue (at least for me). Which is amplified with the current situation.
- _lehnberg:_ It's mindboggling to borderline _absurd_ to call a multi-year contributor a thief just because you think they've been underperforming recently. For me it's completely off-putting to even work on this project having to read crap like that. Like seriously wtf let's get our shit together people. Let's put on our big boy pants.
   - _vegycslol:_ There will always be such people in every community.
   - _phyro:_ I would agree with this.
- _cekickafa:_ Scammers also walking around forum. Thats just internet. Everybody knows jasper but you can check your work as devs.you know better.
- _dburkett:_ Ok, I just read through yeast's wall of text, and I think I agree with all of it.
- _lehnberg:_ Yeastplume is not working on the project. Antioch has now proposed some project based thing. Jasper has now revoked his funding request. @dtavarez is now on funding, working on grin++. Like what's our plan here? Big picture? To fight about the little money we have? Constantly?
   - _dtavarez:_ That's what we do most of the time: Fight:sweat_smile:
   - _cekickafa:_ It is not all about money,you can request 30k a month.just gri̇n hype is dying day by day.community is restless.and they have points.
   - _dburkett:_ I think It's fair and reasonable to expect more accountabilIty. It's extremely off-putting for those of us who've worked hard on grin for no pay to see others get full-time funding and just contribute the bare minimum during the funded period. 
   
   But it's also quIte frustrating to have to be scrutinized by the communIty for each funding request. I know I certainly wouldn't want to have to request money publicly, and from my experiences with trying to find cryptographers to work on grin, this seems to be the main reason nobody is interested in applying.

- _phyro:_ Some people are venting on the thread imo. I respect that people raised their concerns if they feel doing so. I'd prefer if things were discussed in private more because publicly discussing such things isn't a nice opening for any new developer.

- _quentinlesceller:_ Can we setup a bounty page on the website? That'd be a great use of the fund. But in parallel we need full time contributor too.
   - 👍: _dtavarez_

- _phyro:_ I personally wouldn't want to worry about what the community thinks when I'm developing:(

- _dtavarez:_ Maybe it is fair to say that most of us agree on having full time contributors and bounties?
   - 👍: _vegycslol, cekickafa, lehnberg, quentinlesceller_

- _quentinlesceller:_ Also, not related to funding request, but we can put bounty on issue (just like gitcoin).
 
- _yeastplume:_ I guess I can summarise with I think. 
   - a) we need a way to attract, protect and compensate full-time  contributors,
   - b) we need people empowered to do this, and not have every single spend subject to public discussion,
   - c) we need to this fairly for different approaches, projects that our out there, and just move forward without dragging up the past
   - d) we need to compensate whoever gets all of this in place (or just leave it to smaller teams to compensate as they wish. But then we need to ensure all of this is accountable and now I'm going to start going around in circles again and this is a mess.

- _yeastplume:_ Or give it all to bill and melinda gates and they can do some actual good with it.
   - 😂: _dtavarez_
   - _dburkett:_ Yes, we need better microchips.
- _lehnberg:_ David, They don't "get" full time funding, you know that right? They apply for it. If you want full time funding, you can apply too. We have funded @dtavarez, if you submit a reasonable funding request I'm sure it would be considered in good faith.
- _dburkett:_ Fixed.
- _lehnberg:_ Accountability, yes - but you didn't exactly suggest accountability. You asked jasper to withdraw his funding request. How's that helping? I agree that we could improve the way we keep full time contributors accountable. But let's do that in a way that doesn't deter people from even applying. I find it ironic, given that you're often the one who claims we're scaring all the developers away, that you literally turned off someone from applying for funding.
   - _dburkett:_ We saw 2 funding periods in a row where the results were disappointing. That was my approach to accountability after asking for better communication the 2nd funding period didn't help.
   - _lehnberg:_ I said what I had to say in the forum post really. I think it's valid feedback that we can improve our accountability and checks and balances. Let's come up ways to do that and demand from the applicant whatever we think is right here. But let's also not encourage people who work full time on grin today to stop, I think it's madness to do so at this point. We need more developers, not fewer.
      - 👍: _dtavarez_
- _phyro:_ I guess the question we might want to answer is how do we increase trust. Communication helps here for me. Did you guys ever have a video call or something in private.

- _lehnberg:_ We have no other better way to spend these funds really.

- _yeastplume:_ Backing up a bit though, we shouldn't even be at the point where people feel we have to discuss an individuals work out in the open, it's just not right or respectful to anyone.
   - 👍: _vegycslol, lehnberg, dtavarez_
   - _quentinlesceller:_ Yeah sorry I don't feel comfortable commenting in this discussion. I think both sides have valid points..
- _vegycslol:_ I think comments should be less passive-aggressive and more just ask for explanations etc without attacking someone.

- _lehnberg:_ I'd rather us funding 10 underperforming devs to work on grin this year than 0.
   - 😱: _smokeking80_

- _yeastplume:_ I'm saying this should be a job for a dev team, and the team itself can be accountable for its decisions and performance as a whole, not individuals answering directly to the general public.
   - _lehnberg:_ I like this. How can we get there?

- _antiochp:_ Quality over quantity though, I don't think building a poorly functioning team of devs is the solution here.
   - 👍: _smokeking80, cekickafa, quentinlesceller, vegycslol, lehnberg, gringineer_
   - _lehnberg:_ Agreed.

- _lehnberg:_ But with 0 full time devs I just don't see us moving anywhere this year. But perhaps we don't need to?

- _antiochp:_ To be clear my intent is to be close to full time - possibly not in the next couple of months, but temporarily so.
   - ❤️: _phyro, vegycslol, lehnberg, jaspervdm, jaspervdm_
- _cekickafa:_ Or raise the monthly pay then if  eth devs paid high.

- _lehnberg:_ To me, it sounds like there's a dev team, that could ask for a budget to hire devs for a period, say a year. And then that team can best figure out how to do so, who to hire, how to spend it. We could send funds to a multi-sig controlled by that team. And if they run out, they would have to ask for more funds and show how they spent the past funds, and why that was done well.
   - 👍: _cekickafa_
   - _antiochp:_ To be honest that kind of feels like adding another layer of complexity to something that is not quite working right. Its just "teams" applying for funding. Over devs applying for funding.
   - _lehnberg:_ Possibly... But a team can apply for a lump sum, say $300k for a year. And then how that's spent is up to them. No forum debates or anything.
   - _quentinlesceller:_ I'm not 100% sure this will fix the underlying issue.
      - _lehnberg:_ Neither am I.
   - _antiochp:_ To @yeastplume point about accountants etc. A team receiving $300k is a whole other can of worms I suspect.
      - 👍: _vegycslol_
   - _yeastplume:_ There's still a single core team making all the funding decisions in that case, and that team remains a target for everyone's ire. Rightly and wrongly.

- _dtavarez:_ We should manage the expectations properly, so we can keep people accountable... For instance: If I apply For funding and I say that I will do x, the community will expect x... But If I say x and delivery y and no x, I'm not honoring my funding request. If something change while I'm working on delivery x everything can be expressed with a proper communication. If something change while I'm working on delivery x everything can be expressed with a proper communication.
   - _lehnberg:_ So @dtavarez what you're saying is that you think it can be solved by better communication? And we can continue as is?
   - _dtavarez:_ Yes, I'm saying that it can be solved by better communication but also managing the expectations.

- _lehnberg:_ Can we codify this into something "solid" that we can apply to each funding request?
   - _dtavarez:_ I could, yes.
   - _vegycslol:_ I think we first need to somehow solve the public flaming somehow.
   - _phyro:_ You can only solve this by not having it public lol.
   - _dtavarez:_ I'm not here to judge anyone. I believe that it is fair to question people if they're not delivering.
      - 👍: _dburkett, smokeking80_
   - _vegycslol:_ I don't think anyone disagrees with that, it just needs to not be done publicly imo to not have a shit fiesta that will repel future devs.
   - _yeastplume:_ It is, but it's also not fair to anyone to have to do this in public to people who aren't and don't want to be politicians. If I enter into an employment agreement, I expect the relationship to be between me and my employer, not have everything open for public scrutiny.

- _lehnberg:_ Some type of rules, and criteria, how we describe work, how we do reporting, how often, what expectations there are for non-dev tasks like interacting on the forum etc? That could be helpful. Maybe @yeastplume as a long term contributor who's not seeking funding right now, you could input on that?
   - _dtavarez:_ I agree.
   - _lehnberg:_ And if something is done public, I think it needs to have a completely different tone.
   - 🔨: _vegycslol_

- _phyro:_ The issue here is an edge case and I think it comes from the fact that jasper is not active on any communication channels. Perhaps he has a good reason, I don't know, but it does make the situation worse because humans can't gain trust when there is no feedback loop.
- _yeastplume:_ A public corp will report something like spending on devs as a lump sum in their reports, not tell you about each and every developer. Yet they're still accountable.

- _dburkett:_ I don't think just having the funding requests follow a more rigid formula specifying exact deliverables is the right solution. Full-time contriButors should be able to switch gears as needed, and not be limited specifically by what's listed in their funding requests. But on the flip side, specifying deliverables does make it super easy to hold people accountable..
   - 👍: _antiochp, smokeking80, cekickafa, dtavarez, gringineer_
   - _jaspervdm:_ So sounds like we should split it up into general funded position(s) and bounties.
   - _yeastplume:_ Yes, having a more codified structure feels like doing the same thing harder.


- _tromp:_ @jaspervdm could you amend your funding request with a commitment to finish the pibd implementation, similar to what antioch did?
   - 👍: _dtavarez, phyro, smokeking80_
   - _jaspervdm:_ I have no funding request active right now. I will take it into consideration for a new request, if I will do one. But thats besides the point for right now.
   - _cekickafa:_ So if You do not consider? You will not contribute?

- _tromp:_ Is there a way to make the funding request posts more moderated, so we can avoid the nasty comments from ever appearing? And ensure respectful discussion?
   - 👍: _cekickafa, dtavarez_
   - _lehnberg:_ This would make people start screaming "censorshippppp" on the forum.
   - _vegycslol:_ Then there's a problem with what's a nasty comment etc.
   - _phyro:_ If anyone explain to me where the line is, I could help with moderation if this is what you're asking.
   - _tromp:_ We have moderators already (myself included).
   - _tromp:_ @lehnberg if it takes a little moderation (or censorship as you call it) to make ppl feel more confident to make funding requests, then I'm all for it.

- _bladedoyle:_ I see the resistance to Grins technical progress (re: Grin is minimalist art) a bigger problem than funding issues.
   - _joltz:_ One person's technical progress is another person's bloated attack surface.
   - _antiochp:_ @bladedoyle there's an assumption there that technical progress and "minimalist" are in contradiction.
   - _bladedoyle:_ Though, yes, we have problems getting non-controvercial work completed even with funding.
   - _antiochp:_ And maybe offtopic for now.
   - _dburkett:_ Ya, let's not get sidetracked.

- _lehnberg:_ So what should be done?
   - _dburkett:_ I think salaries are something that should be decided privately by a trusted board (like the council), not something argued in public. But I fear that the council will operate as an old boys club as it has previously (my opinion of course), and so won't hold each other accountable. I honestly don't know the best path forward.
   - _lehnberg:_ It feels frustrating to me that you de facto trigger this discussion (and the tone you do it in), without having a clear suggestion for what we should do to improve the status quo, or what we should do next. Can you empathise with that?
   - _dburkett:_ I tried to hold one specific dev accountable because it felt like he was taking advantage of the funds. I had no intentions of making it a large discussion about how funding requests work in general.
   -  _lehnberg:_ Okay, so in your mind, the funding requests work fine as it is?
   - _dburkett:_ No, I think they're awful. But I wasn't trying to redesign funding requests because I don't know what's the best way to do it.

- _dburkett:_ I think the current system has all of the problems @yeastplume mentioned, but I hadn't suggested a change because I'm not sure what to change it to.

  Previously, we mentioned the possibility of Not having councilmembers fund themselves past the final hardfork. If we went back to that idea, then the council privately handling the funds makes a lot of sense. No need for public funding requests. But If we did that, then we're likely to lose antioch & jasper, which would Not be a good thing. Maybe we just need a dIfferent collection of people to make up the council, and joining exempts you from the possibility of requesting funds or something?

- _cekickafa:_ Someone can moderate the request.and work as it is before. Like tromp did.

- _lehnberg:_ Okay so perhaps bringing this back to something more actionable:

   1. what's the advice we can give jasper for a future funding request (should he decide to make one)? 
   2. there's one funding request pending (antioch) - no vote today, but is there any feedback on that one?
   - _dtavarez:_ 1.- I think jasper could try to express better his progress and commit himself to something that he will actually deliver on the stipulated time. We all want to see the pidb work merged into master branch, but what if he tries to eat the elephant piece by piece, these piece could be reflected on the github repository as commits, issues, pr, etc.
   - _lehnberg:_ Re 2, @antiochp don't know if you're up for It, but I would much rather you applied for funding the way you'd done previously. It would be good to have at least one full time protocol dev available for emergencies and anything else that can pop up.
   - _antiochp:_ I'm not opposed to reworking the request if that would be preferable.
      - 👏: _lehnberg, smokeking80, phyro, dtavarez_
   - _dtavarez:_ I think your funding request was perfectly clear, I liked the structure a lot... But feel free to rethink it on a ways that fits best for you, that's my opinion.
   - _antiochp:_ I'm also open to switching gears as necessary even if the request remains as is. Let me think a bit more about it though.
      - 👍: _smokeking80, cekickafa_

- _lehnberg:_ To frame 1 in a different way: 

   I think it would be a net positive for grin if jasper could work on grin too. What do we need to do to make that happen?
   - 👍: _smokeking80_
   - _cekickafa:_ Tromp proposed the frame.jasper answered.
   - _dburkett:_ I think a per month funding request would be a great step imho.
   - _lehnberg:_ One new request per month you mean?
   - _dburkett:_ Yes, a more informal one. This keeps him accountable and also allows us to provide feedback sooner.
   - _lehnberg:_ @jaspervdm what do you think about that? It that something you'd be open to consider?
   - _jaspervdm:_ Im open to consider it, sure. Not committing to anything one way or the other right now though.
      - 👍: _antiochp, lehnberg, vegycslol, smokeking80, phyro_
   - _lehnberg:_ Okay great!

- _jaspervdm:_ But what would the community prefer. Tromps suggestion, or davids suggestion.
   - _lehnberg:_ Yes I suppose it cannot be both delivering pibd and do month-by-month.
   - _joltz:_ Month by month seems challenging for a full time person. What happens if their request that month is denied? How do they plan for that? Always have another job lined up?
   - _dburkett:_ It's not much different for 3 months honestly. I don't think the expectation would be that it's denied. The idea is that it would force conversations sooner.

- _deeev:_ I prefer a fixed amount to deliver pibd.
   - 👍: _cekickafa_

- _phyro:_ I'm indifferent about antiochp. I don't think having a full time dev means you _must_ tackle a pressing production issue. I believe if he was around and could look at it, it wouldn't matter if he was a full time or project-based. 🤷‍♂️

- _lehnberg:_ But yeah maybe some notice would be preferred. Hmm haha and it's hard to give notice month by month do, esp with two gov meetings per month.

- _dburkett:_ @lehnberg @jaspervdm are you guys familiar with how we handle funding & updates for ltc's mweb?
   - _lehnberg:_ I'm not.
   - _jaspervdm:_ No.
   - 💅: _antiochp, phyro_

- _dburkett:_ So, there's a donation fund set aside specifically for me to work on mweb, But we can ignore that part. Just assume it's a central fund.

   At the end of every month, I write a detailed progress report for that month, and the progress report is a requirement for me to get paid that month.

   It's a bit more formal version of the arbitrary progress updates funded devs share on the grin forum. But by making the progress report a requirement for getting paid, it ensures it's done on time.

   If there are concerns about progress, that gives us an opportunity to discuss what happened each month, instead of waiting for the 3, 6, 12, etc month funding period to end. It's not a drastic change from what we do today, but it's a way to make progress updates more formal and more visible, which should encourage sooner discussion.

  - 👍: _smokeking80, dtavarez, lehnberg, joltz, gringineer_
  
   - _lehnberg:_ Nice, this could work.
   - _antiochp:_ That actually makes a lot of sense - as a forcing function for having the conversation around progress. And I'm talking personally (having regularly been late with progress reports).
      - 👍: _vegycslol, cekickafa, lehnberg_
   - _jaspervdm:_ I see.

- _dburkett:_ In retrospect, I should've suggested this much sooner.
   - 🙃: _joltz_

- _yeastplume:_ As far as the larger overall structure, I'm happy to take and perhaps collate suggestions about how the entire community might find a way forward. I might be okay for doing that since I'm not making any funding requests but have a bit of first hand experience with it anyhow. I also feel like I've had time to take a step back and see all sides a bit more clearly.
   - 👍: _jaspervdm, dburkett, lehnberg, vegycslol, joltz, phyro_
   - _lehnberg:_ And yes, I think you, working with @dtavarez and @dburkett and anyone else who wants to help would be great to propose this.

- _lehnberg:_ @yeastplume you think we can have sth for next meeting?
   - _yeastplume:_ Sure, will aim to have something, but not promising anything complete. Progress hopefully. I'll think about it a bit more.. If anyone wants to pm me with suggestions and or general grievances or to chat about this, I'm happy to talk, I think I'm more impartial these days.
   - _dburkett:_ It's a relatively minor change to how we do funding requests, but I think it really can help with communication & accountability.

- _paouky:_ Fellas I've read almost all of the discussion above (beginning from the yeast wall of text) and I'd like to offer a suggestion to remedy how uncomfortable the funding requests are. A funding request is posted on the forum and then immediately locked, no comments there. Of course disucssion will remain public, but just on keybase. Then it doesn't become public humiliation in front of everybody, and only those who care enough about the project in discussion here will has a say, as it should be.
   - _lehnberg:_ Nice idea. Please discuss with yeastplume who's helping prepare a proposal and if you like to, participate in that process.

### 4. Exchange Representative / Exchange support doc
- _bladedoyle:_ What does writing an exchange give us that sample code wouldn't? Sample code seems preferable since it would be offered in many languages.
   - _vegycslol:_ Why would you write it in many languages? They need an idea of how it should look like, what the pitfalls are etc, not be write code for them.
- _tromp:_ An exchange can be interacted with to better appreciate how things work.
- _bladedoyle:_ Sample code is interactive. Each pool and exchange uses different languages.
   - 👍: _smokeking80_
   - _vegycslol:_ But they have many programmers, surely they can get the idea from the code of a language they don't know (unless it's haskell or similar then I get it).

- _tromp:_ Translating rust into c or go is easier than the other way around.
- _bladedoyle:_ @vegycslol   take the api encryption as an example, the code is different in each language bc there are different library implementations, etc. Even with a reference in rust and another in go it was hard to get working in python.
- _phyro:_ Making a small exchange example is a good way to encounter issues we don't know about.

- _mo5itoo:_ Yes, I've been in contact with some exchanges, and trying to reach out to them over telegram
for now as you know @lehnberg we setup a group on telegram with hotbit staff to better help them to update their wallet
i'am also in touch with gate io and kucoin.
   - 🚀: _lehnberg, cekickafa, vegycslol, smokeking80_

- _mo5itoo:_ Exchanges really need to more ressources, they don't seems to understand whats going on.
   - _cekickafa:_ U mean an exchange team?

- _joltz:_ @mo5ito daniel and I made a list of all exchanges with grin and reached out to them repeatedly for _months_ before hf to offer them the new documentation and direct support. Many said "we will work on it", some did not reply at all. But we reached out to all of them repeatedly for a long time..
   - _mo5itoo:_ What I did was to find the right contacts over telegram.

- _bladedoyle:_ Testing in general would be a better use of funds.
- _phyro:_ I wouldn't be surprised if we end up making a library for integration (grintegration? 👀 ).

- _vegycslol:_ I'm creating a simple exchange with how I feel the withdraw/deposit should work. I'll share the gui part (when it's done) before I start looking at the rust api. If nobody needs it that's fine.
   - _mo5itoo:_ Can you write an example in go? Hotbit exchange are asking for a go example script.

- _vegycslol:_ I'm doing it in django/vue, I'm not familiar with go, so thay was the fastest way for me.
- _mo5itoo:_ Is there anyone who could help writing something in go? Hotbit are asking for this.
   - _paouky:_ @quentinlesceller.
- _phyro:_ I'd actually encourage people from _not_ writing the code for exchanges. They have the money to do it themselves.
- _bladedoyle:_ We have examples in go.
   - _mo5itoo:_ Can you send me this?
   - _quentinlesceller:_ https://github.com/blockcypher/libgrin.
   - 👍: _tromp, bladedoyle, smokeking80_

- _vegycslol:_ I honestly don't think we should be writing an integration for any exchange.
   - ☝️: _phyro_

- _mo5itoo:_ We need that in order to help them... They don't seems really.. Good are what they are doing.

- _yeastplume:_ Exchanges have hundreds of coins to support, grin isn’t as special to them as we think it is.
   - 💯: _phyro, mo5itoo, smokeking80_
   - _cekickafa:_ Is that fix the problem.slatepacks here for months.
- _vegycslol:_ It feels so wrong to write the integration for an exchange. If they don't do that by themselves then I don't trust that they can keep my money safe.
   - ☝️: _phyro_
- _phyro:_ It's also not as easy to integrate or supported if they have custodians handle their wallets.

- _mo5itoo:_ We are not paying any listing fees, so better help them to get this sorted out.
   - 👍: _cekickafa_

- _phyro:_ We can guide them which is what testnet exchange could be for, but let's not code for them. We've got other things to fix first.

- _lehnberg:_ Any action or any specific takeaway from this topic?

- _mo5itoo:_ All right , what can I do for hotbit? Is there any person we can introduce to progress?

- _jaspervdm:_ I think it would be good if we try to community source some kind of guide that can help exchanges.
   - 👍: _gringineer_
   - _paouky:_ I think we can take tor off the current integration guide and then add some example api intergation?
   - _lehnberg:_ Bounty that up perhaps? $5k?

- _quentinlesceller:_ Hotbit can reach out to me if they want but I agree that a full guide would be great.
   - _mo5itoo:_ Ok great, send me your telegram username in pm.

- _vegycslol:_ I disagree, I think The short-term path forward is to not be added on any exchange, figure out how we want integration to work, implement it on testnet, refine it, Then communicate with exchages. The result of what we're doing now will be that early exchanges will require user to do process a to deposit/withdraw, newer integrations will follow process b.
   - 👀: _phyro_
   - _cekickafa:_ Wht short term you are talking about? Adoption is delayed already. Asics here.

- _joltz:_ We have the basic exchange integration guide. We can make that more robust by adding some more details about slatepack api calls etc.
   - 👍: _smokeking80, paouky_
   - _jaspervdm:_ Yeah, thats what I meant.
   - _paouky:_ Excatly. And remove the tor mentions to make it shorter And to the point.

- _tromp:_ My idea was for a minimal functionality toy exchange with heavily commented source code that deals with aspects that make grin unique.
   - 💯: _phyro, vegycslol, cekickafa_
   - _dburkett:_ I think an example exchange is more just for us to learn their pain points, rather than to actually assist them with integration.
- _phyro:_ This is the guide they need ☝️.
- _joltz:_ Will they really spend the time to reverse engineer another codebase though? I agree examples are helpful in general though.
- _vegycslol:_ Adoption is nowhere near imo, inflation rate gives us more time than we think.
- _phyro:_ I think it's both. They need to be careful what They do and when.
   - _dburkett:_ Sure, but like @joltz said, they're probably not going to put in the effort to look at another codebase.
- _tromp:_ You'd think someone would make a grin repo called gringo...
   - _dburkett:_ There was an in-progress implementation of grin called gringo.
   - _quentinlesceller:_ Yeah I initially wanted to called it gringo lol but already taken.
- _jaspervdm:_ https://github.com/dblokhin/gringo.
   - 👍: _tromp_
- _tromp:_ Maybe they can request funds to update gringo for v5.

### 5. RFC Update
_No updates._

### 6. Other questions
_None._

**Meeting adjourned.**