# Meeting Notes: Governance, Feb 16 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- cekickafa
- dburkett
- derviche
- gringineer
- joltz
- lehnberg
- mcmmike
- phyro
- quentinlesceller
- smokeking80
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions
### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/394) was reviewed and accepted without any changes.

### 2. Action point follow ups from previous meetings

#### 2.1  Q4 financial report
- _lehnberg:_ I've not had a chance to look at financial reports yet, not forgotten just had a manic last few weeks. Will defo get this done properly.

#### 2.2 [Trustless aggregator on l1](https://forum.grin.mw/t/bounty-program-trustless-aggregator-on-layer-1)
- _lehnberg:_ No updates.

### 3. Funding requests / Governance Priorities for 2021
- _lehnberg:_ @yeastplume had an action from last meeting, which he presented [in this gist](https://gist.github.com/yeastplume/5d1913c7dc40c40f409ffcfe8fa9b094). Let's give a few mins for everyone to read that and in the meanwhile maybe people want to ask him questions here. I mostly agree with yeastplume's description of the status quo. He proposes two different routes in the doc:
   1. splitting a chunk of the general fund into a "community fund"
   2. splitting a chunk of the general fund into a "community fund" and a "grin++ fund".

   Do people have preferences here?.

- _yeastplume:_ If there is a group of people who want to go in a different direction with grin, I think they should be able to. I would like to see everything structured so that 'the core team has all the funds' isn't the main blocker.
   - 👍: _lehnberg_
- _antiochp:_ My understanding is this proposal aims to free people up to make progress without getting bogged down in sometimes endless discussions around control of funds/centralization - is that a fair summary?

- _lehnberg:_ My tl;dr of the yeastwall:

   1. Summary of current situation.
   2. Proposal how to move forward:
      * a) splitting a chunk of the general fund into a "community fund"
      * b) splitting a chunk of the general fund into a "community fund" and a "grin++ fund".
      * c) some other suggestion (please make one).

- _mcmmike:_ Just for my understanding, if we split the funds up, we silently agree that the council is "giving up" on managing the project? 

   I am in favor of giving smaller projects some help , but I fully agree with @yeastplume on `a project with a budget needs a management team enabled to make spending decisions.` which is in my opinion all it takes to turn the situation around.
   - _lehnberg:_ I'd phrase it more as: We agree that it's centralizing to have one single council decide how to spend all the funds, and we say we prefer that there are many smaller councils making spending decisions in their areas. "Many" being 1-2 more depending on the route. And of course these could then give some of their funds to another group, etc. So even if we do option 1 "community fund", this could decide to give part of its fund to some other group. We have no control once the funds are transferred, aside from social /reputation pressure.
   - _mcmmike:_ Ergo, the "management team" is then also needed if you want at least to keep up standards, etc. I could agree on this.

- _yeastplume:_ I'm not suggesting anyone fork, I am trying to envisage a way forward that allows for innovation, without having the core team and the funds be a blocker for that.

- _phyro:_ I agree with the document btw. Before splitting the funds, does this solve the underlying problem?
   - 👍: _vegycslol_

- _dburkett:_ Thanks for taking the time to write this @yeastplume. I think it definitely helps with the current situation. Right now there is simply too much power in the hands of the few. But I worry about the logistics. It would be tough to figure out who from the community would be in charge of the funds, same for grin++ if we do that split. I assume we'd need at least 3 people (for a 2 of 3), but would be better to have 5.
   - _quentinlesceller:_ I'm also worried about the logistics..
   - _lehnberg:_ Agree there should be transparency requirements that we all should try to get people to enforce.
   - _mcmmike:_ Agreeing on code of conduct, etc.
   - _quentinlesceller:_ I'd rather avoid someone disappearing with hundred of thousands of $ + bad press.
   - _lehnberg:_ Given how upset people seem to be about code of conducts, I'd prefer to let each do what they want, as long as money is accounted for in a transparent fashion and funds are kept in a multi-sig.
   - _yeastplume:_ Indeed, all those things would have to be worked out, but there would absolutely have to be multi-sigs involved, same as the current setup.

- _dburkett:_ I think we should discuss the merits of the idea though ignoring the exact logistics. And to me, the idea seems to help a lot. It allows for the grassroots experimentation that we're currently lacking.
- _lehnberg:_ Yeah, I think this is why I'd be more keen on only doing one split rather than two at this point, so that we can get good trustworthy people on that second multi-sig and not spread each division out "too thin" if that makes sense.
   - 👍: _vegycslol_
   - _dburkett:_ That was my thought too. But I do also worry about it making the current division more permanent. Having 2 of anything always makes for some tough decisions. I always wanted there to be 3 serious node implementations for grin. It helps a lot when resolving disputes.
   - _mcmmike:_ Like a `split brain` problem, haveing one referee.
      - 👍: _dburkett_

- _yeastplume:_ If there are separate grin and grin++ councils, I'd suggest forming the initial community division with nominees from both teams. But that's only if we all want to go that route, of course. (and having that community team create a common forum area).
- _lehnberg:_ While it would be great to have three nodes, splitting the fund into mw/grin, grin++, and community will not achieve this I think.
   - _dburkett:_ Right, I agree. I was just bringing up another situation where having 2 is problematic. I'm not expecting a 3rd implementation anytime soon.
- _tromp:_ I think it's a good idea to transfer some financial resources and opportunities &responsibilities to the wider community.
- _lehnberg:_ Might as well split it into two and post a bounty for a serious third node implementation from the general fund.
- _mcmmike:_ What is referred as a "node" here?.
   - _lehnberg:_ Whatever is in `/grin`?
- _phyro:_ The issue is imo continuous maintenance of the node.
- _lehnberg:_ Written from ground up (not a fork)?
- _antiochp:_ A 3rd node impl feels off topic right now?
- _dburkett:_ Yes, off topic. It was just an example I used 👍.
   - 👍: _antiochp_
- _tromp:_ I'd love to see a haskell impl eventually. But in the next few years is not realistic:(
   - 😂: _mcmmike_

- _lehnberg:_ So general sentiment seems positive? Any reasons not to pursue further?
- _vegycslol:_ I'm unsure who would be funding generally nice to have things in this case.
- _yeastplume:_ That can be worked out, but there would be more than one set of people to ask.
- _lehnberg:_ Exactly. Nothing prevents someone from asking multiple groups.
- _dburkett:_ The zcash foundation and zcash company relationship comes to mind.
   - _cekickafa:_ Zcash foundation pays in zcash.i do not see similarities in this way.
   - _antiochp:_ Yes I think there are a lot of parallels to the zcash structure.
   - _quentinlesceller:_ Indeed.

- _vegycslol:_ I think the holders of funds who end up paying "for general good" won't be happy that tne other holders didn't want to pay. Unless they agree that each pays 50%, which would be cool.
- _phyro:_ These are the details that we probably don't want to be solving at the start @vegycslol.
- _antiochp:_ That's entirely orthogonal to the current discussion.

- _yeastplume:_ Each council/set of fundholders will have their own remits for types of funding requests they'll look it, it's all up to them (which is why it would help to have a 'community' one).
   - 👍: _cekickafa_

- _antiochp:_ I think one aim here (at least my personal understanding) is this frees up "core" to focus on dev tasks on the rust impl. And defers community focused things to a separate council.
   - _yeastplume:_ Indeed, yes. I'm trying to be as impartial as possible, but as part of core I'd want to see core enabled to work/spend/organise as we see fit.
- _vegycslol:_ Don't get me wrong, I think having 2 separate funds is the correct way forward, I'm just thinking out loud.
- _antiochp:_ People in "core" (myself included) are finding it hard to keep involved across a wide spread currently.
- _phyro:_ I think some kind of split might be a good idea. We're not seeing many requests right now anyway.

- _lehnberg:_ Okay - what would be the next steps here? Maybe create a dedicated channel in keybase where we continuously discuss this?
- _antiochp:_ @lehnberg - yeah a dedicated channel might be good so we can explore options without the conversation getting lost.
- _lehnberg:_ Until there's some proposal (probably doesn't need to be an rfc? Or does it?) that can be approved by the council?
   - _tromp:_ I'd prefer if rfcs deal with technical rather than financial matters.
      - 👍: _lehnberg, dburkett, antiochp, quentinlesceller, cekickafa, yeastplume, tromp_
- _lehnberg:_ Cool! So I'll create a channel, I'll share info about that and the gist on the forum, and then we can take it from there and check in again on status in two weeks.

### 4. [Antiochp funding request](https://forum.grin.mw/t/request-for-funding-antioch-feb-mar-2021/8334)
- _lehnberg:_ 
   ```
   late locking pre-generation of transactions: 5k eur
   late locking coin control: 5k eur
   full archival node support: 10k eur
   ```
   - 🚀: _phyro_
- _antiochp:_ No changes to the request - sticking with deliverable based approach (at least for now).
- _mcmmike:_ I am all in favor or `late lock` improvments.
- _vegycslol:_ Is late-locking also for rsr?
- _tromp:_ Late locking is for payjoin rsr.

- _lehnberg:_ Personally, I'd rather have you on 10k eur/month (full time) with a detailed status report delivered weekly. Is that even an option? :)
   - _quentinlesceller:_ Same.

- _dburkett:_ I think antioch's been doing a good job on the work so far. I've been watching the progress on full archival node support, and it seems like he's identified and fixed a bunch of latent problems that would've been problematic if we turned on full archive node support.
- _yeastplume:_ Yes, I wouldn't see a reason to break funding down in this case with antioch on staff.
- _dburkett:_ I also prefer him on full-time, but he probably prefers project based, and I understand why. It's nice to focus heads-down.
- _quentinlesceller:_ Or maybe that'll motivate you to work more ahah.

- _antiochp:_ I'm happy to do weekly update and simple funding if people prefer.
   - 👍: _cekickafa, dburkett_
- _dburkett:_ But we don't have anyone funded to pick up random prs and tasks without a paid dev of some sort.
- _quentinlesceller:_ As you see fit @antiochp.
   - 👆: _phyro_

- _antiochp:_ Ok how about this - I'm going to stay focused on the tasks listed above regardless, but do funding as we always have. And that frees me up to grab stuff of high priority if needed.
   - 👍: _joltz, dburkett, vegycslol, quentinlesceller, phyro, derviche, yeastplume_

- _mcmmike:_ Not sure if I am alone with this, but I am favoring the project based approach. 
each pr , as @dburkett mentioned could also be assigned a value , etc.
- _dburkett:_ I don't think I mentioned assigning a value to a pr:) That could get out of hand.
- _antiochp:_ Kind of feels somewhat arbitrary either way.
- _dburkett:_ But it's just nice to have someone to pick up tasks, and it seems like antioch is ok with doing that.
- _vegycslol:_ Price per pr would bring more problems than it would solve imo. It takes a lot of time to assign $ per each pr and then people would still complain when they would be comparing the prs.
- _mcmmike:_ Sorry my mistake, but what I wanted to say is to incentivize it somehow , if we do not have full-time people working on it..

- _antiochp:_ 10k eur/month (backdated to start of feb) and I pick up stuff if needed.
   - 🚀: _phyro, dburkett, yeastplume, lehnberg, derviche_

- _dburkett:_ I vote yes.
- _antiochp:_ Final offer.
- _vegycslol:_ It's a yes from me.
- _quentinlesceller:_ Absolutely yes.
- _lehnberg:_ Yes.
- _joltz:_ Grateful to have you around full time @antiochp thanks for sticking with us:)
- _mcmmike:_ Yes.
- _smokeking80:_ Yes.
- _phyro:_ I'll think about it:troll:. Jk, yes.
- _yeastplume:_ Personally, I'd like to see him prove himself a bit more.
   - 😂: _dburkett, joltz, vegycslol, gringineer, phyro, lehnberg_
- _lehnberg:_ @antiochp make sure you write nice updates or you'll get cancelled by the pitchforks!
- _tromp:_ I remain in full support of antioch as he stays productive and attentive as ever. I'm also fine with him delaying specific tasks until a later period if more urgent matters demand his attention.
- _lehnberg:_ At least 1500 words.
- _antiochp:_ I am aiming to actually write updated this time.
- _lehnberg:_ That's what you all say.
   - 😂: _quentinlesceller_

#### Decision: Approve @antiochp funding request

- _lehnberg:_ Okay so approved. Right?
   - 👍: _smokeking80, vegycslol_
- _tromp:_ Right!
- _lehnberg:_ Feb-mar-april, correct?
- _lehnberg:_ (request is for feb-mar right now).
- _dburkett:_ I thought it was feb-mar. I think he does quarterly.
- _antiochp:_ It was just until end of q1.
- _lehnberg:_ Oh I see.
- _antiochp:_ And I'll sync back up to quarterly at that point - if that works?
- _lehnberg:_ Sure.
- _cekickafa:_ I vote no.if I have.if its decentralized community.
   - _lehnberg:_ Noted.
- _lehnberg:_ Feb - mar, 10k eur / month.  20k eur in total.
- _antiochp:_ Thanks all.
   - 👋: _smokeking80, cekickafa_

### 5. RFC Update
_None._

### 6. Other questions
_None._

**Meeting adjourned.**