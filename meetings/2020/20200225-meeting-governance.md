# Meeting Notes: Governance, Feb 25 2020

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [#general in the grincoin keybase team](https://keybase.io/team/grincoin). Meeting lasted ~ 70 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- bladedoyle
- dburkett
- jaspervdm
- joltz
- kurt2
- lancelot_n
- lehnberg
- quentinlesceller
- yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/254) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Grin.mw domain access: shards are distributed?

- _lehnberg:_ I now have access to grin.mw domain hosting proper! courtesy of @0xb100d . Now would be a good time to give access to more people, I think we said yeastplume and somebody else who I cannot remember. Not sure whether I can do that or not though, @0xb100d you hit me up if the ball is in my corner.
   - 🎉: _dburkett_

- _jaspervdm:_ Is it a username/password combo that is shared? Or something more sophisticated.
   - _lehnberg:_ I got a username/pass. Which now has 2fa on it. And that account has only grin.mw domain listed as an 'asset' or whatever it's called. And iirc @0xb100d was saying he would do the same, i.e. whatever he did to me, to others.
   - _jaspervdm:_ And the 2fa is accessible by multiple people?
      - _lehnberg:_ At this point, no
- _lehnberg:_ @0xb100d has their own account (I think). If it sounds confusing, it is. But yeah I will speak to him and see what the next steps are. He was adamant I turned on 2fa, which makes samir sharing the password a bit moot. I'll work it out.

- _lehnberg:_ I think we had said @yeastplume and @jaspervdm as additional access people right?
   - _jaspervdm:_ Not sure if I was appointed originally, but fine by me.

- _jaspervdm:_ If 2fa by email is possible we can put it on the council email address.
   - _yeastplume:_ Shamir the 2fa. Shamir all the way down.
   - _jaspervdm:_ Technically possible if its using google authenticator.
   - _lehnberg:_ Yeah. Okok let's work it out.


### 3. Proposal by @bladedoyle

- _lehnberg:_ Next we have a proposal by @bladedoyle: 
 
   > salary increase for grin developers. I suggest we increase the salary by 10% for dev team members who have not had any increase recently

   https://github.com/mimblewimble/grin-pm/issues/254#issuecomment-587158365.

- _yeastplume:_ I don't think that's quite how we operate. It's up to individuals to ask for what they want during their funding requests, and for each request to be considered on its own.
   - _antiochp:_ Just to add to that - they are not employees and this is not really a salary.
   - _yeastplume:_ Indeed, they aren't salaries either. I think most of our 'contracts' (probably the best term for it) have been at or around fair market rates... so long as they generally stay there I'm happy.

- _bladedoyle:_ My idea was to retain our devs by offering fair market compensation. I guess I only thought it half-through since its a by-request. Well, maybe just consider it "permission" to request fair compensation before accepting another offer.

- _dburkett:_ As of right now, there's only 1 person paid to develop.

- _lehnberg:_ As others mentioned I believe anyone has permission to request for anything
   - _bladedoyle:_ Thats why I put it in quotes

- _yeastplume:_ And they're actually a bargain for grin compared to most contracting setups.. Most places who contract employees need to provide a place for them to sit, equipment, and pay agency fees as a percentage on top of what the developer sees... But I think all around everything is quite fair.
   - _dburkett:_ There's a lot of perks to working open-source though. Its pay is less, but greater flexibility. it's a trade-off. But for sure, we need to pay yeast and others what they need to continue.
   - _yeastplume:_ Indeed, flexible and rewarding but no retirement plan, options paydays on the distant horizon or health plans either.. overall it balances
      - 👍: _dburkett_

- _lehnberg:_ @yeastplume there's the [funding guidelines rfc](https://github.com/mimblewimble/grin-rfcs/pull/41). Perhaps we should ensure that it's explicit that anyone can ask for any amount? (Don't remember what the exact wording is right now.) And that 'any amount' includes 'fair compensation'?
   - _yeastplume:_ Sure, I think perhaps opinions here are best directed at the funding guidelines rfc.
   - _antiochp:_ You can "ask" for any amount
   - _jaspervdm:_ Was thinking we put the funding rfc in fcp, but maybe we hold off for a bit longer so we can iterate a bit on that part.
   - _lehnberg:_ Yes
   - _yeastplume:_ Yeah, there's no rush on it, would rather get it right. I still need to go back and consider all the comments on it, so fine to keep it as wip for now.

- _jaspervdm:_ But yes, devs have the right to ask for a raise in their next request for funding. of course a good motivated one is more likely to be approved
- _lehnberg:_ Blade: you happy to review and add comments to the rfc as you think is required?
- _bladedoyle:_ Yes
   - 🚀: _lehnberg_
- _bladedoyle:_ Although I think the requested funding amounts per month are reasonable it's worth keeping in mind that "blockchain dev" skills is all the rage right now and in a "real job" there may be stock options, medial care, quarterly bonuses, etc. What grin does not need right now is to lose our devs to a headhunter.
   - 👍: _yeastplume_
   - _lehnberg:_ That's a fair point

### 4. Funding request by @jaspervdm

- _lehnberg:_ https://forum.grin.mw/t/request-for-funding-jaspervdm-march-may-2020/7074

   March, april, may, EUR 10k/month

- _jaspervdm:_ Yes, as posted on the forum, I'd like to be given the opportunity to work on grin in a full time capacity for a period of 3 months. The post has a list of things I want to work on, although it is not fully set in stone. Happy to answer relevant questions, if any.

- _yeastplume:_ Based on the quality of jasper's work and dedication to the project, I personally have no problem seeing this as fund money well spent.
   - 👍: _antiochp, joltz, lehnberg, quentinlesceller_
   - _quentinlesceller:_ Yep agree with @yeastplume 

- _lehnberg:_ Any concerns, objections, stipulations, questions?

- _yeastplume:_ And very glad to have someone else along, I think there are definite benefits to having more than one developer dedicating themselves full time, makes for more synergy
   - 👍: _joltz, kurt2, quentinlesceller_

- _bladedoyle:_ I would like to see "stability" and "bug fixes" added to the list of responsibilities attached to the funding. Im not sure its my place to try to add that....but I feel we need it desperately.
   - 👍: _kurt2_
   - _jaspervdm:_ I would consider those points fall under "improvements to both node and wallet". but yes I agree, bug fixes are important . Will add it to the list

- _dburkett:_ I personally would've rather seen the priorities list contain more crypto-work and less dev-work, considering your math background. But I think there's still time to influence your agenda after this is approved.
   - _yeastplume:_ Yeah, the agenda's not set in stone.. He's definitely a useful one to have around for the crypto stuff.

#### Decision: Approve @jaspervdm funding request

- _lehnberg:_ Okay, good suggestions, no objections, I sense there's an approval?
- _lehnberg:_ 🍾
   - 🎉: _joltz, yeastplume, yeastplume, antiochp, kurt2, dburkett, quentinlesceller, lancelot_n_

- _jaspervdm:_ Thanks everyone
- _joltz:_ Well earned, really glad to have you full time 👍
   - 👍: _bladedoyle_

### 5. How are repos added to the Mimblewimble org?

- _lehnberg:_ https://github.com/mimblewimble/grin-pm/issues/253, came up by @kargakis raising a question in the funding rfc thread.
   - _yeastplume:_ Good question. People offer it up?
   - _lehnberg:_ Yeah dunno. has anyone asked? 
   - _yeastplume:_ I don't think so. I've just assumed 'this code belongs to mw now'. Other people have code that belongs to their own repos. If they want to offer it up, we can consider, I guess.

- _jaspervdm:_ Its a good question, we could have a list of criteria: Relevant to grin, unique (so no 10 implementations of the same thing), etc., but in the end it has to be handled on a case by case basis.

- _lehnberg:_ The blank repos are easy: somebody asks or suggests something, and there's a core decision on creating one, which usually goes something like "does anyone object if we create a /security repo"? Existing repos... well actually come to think of it now, we do have an example: https://github.com/mimblewimble/keybase-chat-widget

   What happened here was that @nijynot first had that under his own account and I thought it would be suitable under mimblewimble as it directly related to /site, asked him if he'd consider putting it there, he agreed, and then I checked with core that nobody was against it, and we then put it there. None of this is documented as a formal process anywhere, but it might make sense for it to be.
   
   The counter-argument to that is that I don't expect we'll see that many requests per year, maybe one or two if even? So is it worth putting in the time to document it, instead of just ad-hocing it?
   
   - _jaspervdm:_ Not sure if its worth spending a lot of effort on. could not we just put a few lines somewhere, stating that if anyone proposes a merge of a repo into the mw org, it will be discussed in a governance meeting. Like you said, its probably a rare occurence.

- _yeastplume:_ Sure.. that's separate from the discussion of whether we think funding it further is appropriate. That can even go as an addendum to the fund rfc.
   - _lehnberg:_ I don't think funding a project has anything to do with this. Or it shouldn't, at least.
   - _yeastplume:_ Indirectly, it's how the question arose.
   - _lehnberg:_ Yeah, but say that wallet713 wanted to ask for funding from the general fund (it doesn't, but as an example). Why would it matter whether it was under /mimblewimble or not?
   - _yeastplume:_ We only fund dev work on projects that belong to the mw org, so how does a project become a project that belongs to the mw org.
   - _lehnberg:_ Do we? I need to read through that rfc again!
   - _yeastplume:_ Let me read the wording in the rfc again
   - _antiochp:_ Still only tangentially related - there may be cases where a project wants to join mw org without receiving funding
   - _lehnberg:_
      > there is scope for interpretation as to what this actually means, but the following presents (non-exhaustive) guidelines as to the types of activities that would be considered appropriate to finance from the fund.
      >
      >* activities related to the continuing development needs of the grin code-base and related projects under the github [mimblewimble](github.com/mimblewimble) organization. this can include:
   - _yeastplume:_ Okay, sorry it doesn't say that's all we fund, it's just a strong case for what's appropriate to be funded by the grin fund.
   - _lehnberg:_ Yeah, it's confusing, as it can easily be interpreted as such. Which I don't think should be the case.
   - _antiochp:_ It would probably be unusual to fund something outside mw org.
   - _lehnberg:_ It's unusual we fund much at all beyond core grin related work right now. But not sure this will always be the case, or whether we need it to be that explicit. It's not like we're inundated with funding requests. But yeah that's probably more suited as a discussion on the rfc itself hehe.
   - _yeastplume:_ Yeah, we're headed into that territory
 
- _lehnberg:_ Going back to @jaspervdm's suggestion, how about I put something describing the process on a page in the wiki? Send a request, motivate it, if support, there's a core decision and you're added
   - _jaspervdm:_ Sure
   - _yeastplume:_ Sounds good

### 6. RFC & Teams update

#### 6.1 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)
- _lehnberg:_ We've talked extensively about this already today, still in draft, looks like we all should review and discuss greater on the PR. 

#### 6.2 [Create a moderation team](https://github.com/mimblewimble/grin-rfcs/pull/42)

- _lehnberg:_ Not much activity since first draft, @joltz as shepherd has kindly provided a checklist of changes worth doing, I'll be getting to that. Meanwhile would be good if any prospective moderators got in on the discussion on the PR.

#### 6.3 [Create a QA team](https://github.com/mimblewimble/grin-rfcs/pull/45)

- _lehnberg:_ Some good discussion on there and we should probably take some time to think it through and what we want to achieve by the rfc and the team itself immediately after bootstrapping it.

#### 6.4 [Grin 2020 roadmap](https://github.com/mimblewimble/grin-rfcs/pull/38)

- _lehnberg:_ `fcp` status is over as of today, not been much activity on it. @yeastplume as shepherd you feel it's ready for merge?
   - _yeastplume:_ @dburkett had a point there that some outstanding issues questions should be addressed
   - _lehnberg:_ Oh
   - _yeastplume:_ Personally I think it's fine as is, everyone's had a chance to have a say and it's meant to be .. indicative as opposed to hard promises.
   - _lehnberg:_ Specifically:
   ```
   - what about more detailed planning for node and wallet teams?
   - what is the implementation strategy? how do we go about achieving what's on the roadmap?
   - how do we ensure that the contents in this rfc is well anchored with the contributors expected to make the actual heavy lifting?
   - what happens when there are conflicting directions/ contributions?
   ```
   with emphasis on the 2nd question. So my personal opinion on this is that given the low engagement level on the roadmap rfc itself, I wouldn't be comfortable establishing some hard processes that are meant to be followed.

- _dburkett:_ I'm not even convinced this needs to be an RFC, tbh. RFC suggests some clear action to be taken. The action isn't clear from this.
   - _lehnberg:_ Yep, it's a fair point
   - _yeastplume:_ Yes, I do too.

- _yeastplume:_ Perhaps this is a forum post
   - _dburkett:_ I would be ok with that. Forum post, or grin.mw.

- _lehnberg:_ I think the logic was something like: "okay, what should we aim to focus on for next year? let's work together in a formal process to put a list together that we think sounds about right."
   - _dburkett:_ I think the community engages better in informal processes
   - _lehnberg:_ The added friction can be both good and bad in terms of engagement. You might get less engagement, but also more thought put into what less engagement you get.
   - _dburkett:_ Fair point, but posting it on github limits contributors.
   - _yeastplume:_ It's a balance between two sides of formality, I can take the point that in this instance, we probably want to head down a less formal route. The important thing is there's a place for people to chime in about where they think grin should go.

- _lehnberg:_ As this is a first attempt and we don't have much beyond a wish list of items, I'm happy to turn it into a forum post. And maybe for 2021 and onwards we can look to establish a "roadmap process" that could be RFCed.
   - _yeastplume:_ I think that makes sense, unless anyone feels strongly otherwise.
      - 👍: _dburkett, kurt2, jaspervdm, lehnberg_

#### 6.5 [Security team RFC](https://github.com/mimblewimble/grin-rfcs/pull/39)

- _lehnberg:_ FCP ends today. @joltz and I have iterated on it over the past week, so it changed a bit. I wouldn't say _materially_, but it's... tighter and better. We removed the requirement for a core team member to be on the team for instance.
   - _lehnberg:_ Are we ready to merge this and bootstrap the team with the existing security contacts?
      - 👍: _antiochp_
   - _jaspervdm:_ No objection from me
   - _yeastplume:_ All good, thanks for the work on this

- _lehnberg:_ Credit to @joltz for initiating the work and doing all the heavy lifting and seeking feedback from the wider security research community
   - 🚀: _jaspervdm_
   - _joltz:_ It is one of the first steps in a long path to improving security for grin
   - _lehnberg:_ Indeed, and a promising one. Seeing as there are no objections here nor on pr, I'll go ahead and merge it.

#### 6.6 Other RFCs

- _lehnberg:_ Multiple named wallets and relative kernels are in `draft` and don't think in need of any update today.


### 7. Other questions

None.

**Meeting adjourned.**
