# Meeting Notes: Governance, Mar 24 2020

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [#general in the grincoin keybase team](https://keybase.io/team/grincoin). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- carlpoppa
- jaspervdm
- joltz
- lehnberg
- phyro
- quentinlesceller
- seddd
- tenthousandlakes
- tromp
- yeastplume


_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/265) accepted, with the addition of two last minute additions: Proof of work, and Funding (general fund related general topic).

### 2. Action point follow ups from previous meetings

None

### 3. Funding request by @lehnberg

- _lehnberg:_ https://forum.grin.mw/t/request-for-funding-lehnberg-apr-jun-2020/7130

   @yeastplume would you like to run the show?
   I'm happy to take relevant questions.

- _yeastplume:_ Sure, so this point is another funding request for daniel, part time for the next 3 months. I personally think he's doing a great (and often thankless job), so I'm definitely in favor of continuing the arrangement 
- _joltz:_ Agreed, the roles @lehnberg fills for grin are critical and we are lucky to have him here every day 👍
   - 👍: _yeastplume, carlpoppa, seddd, quentinlesceller, tenthousandlakes_
- _jaspervdm:_ Yep definitely glad to have someone around that does the work he does, 👍
- _quentinlesceller:_ Yep glad to have him, so 👍 on my side :)
- _tromp:_ +1 daniel is very engaged with the project
  
#### Decision: Approve @lehnberg funding request

- _yeastplume:_ So, I think we'll leave a couple of minutes for anyone else to pipe up, and if not, I think we can consider this approved.

   [...]

   And I think we can consider this approved! thanks for your continued service @lehnberg !
   - 🚀: _yeastplume, carlpoppa, seddd, quentinlesceller, tenthousandlakes, tromp, jaspervdm, joltz_
- _lehnberg:_ Thank you all!

### 4. Funding

#### 4.1 General fund

- _lehnberg:_ Context is the crypto roller coaster of the last few weeks. We’ve been discussing in core what, if anything, to do about it, without coming up with some good action
But thought to discuss openly as well in case someone else had some good idea. Or see whether there’s general agreement that there’s not much more we can do other than carry on.
   - _joltz:_ With regard to price volatility in the general fund? What exactly is the issue?
   - _lehnberg:_ Yes, and how this affects runway. Not convinced there is an issue, but thought it would be good to at least acknowledge it. If BTC wouldn’t have recovered as fast as it did, we could have been in deep(er) shit.
   - _joltz:_ Yea as long as people take payment in a local currency vs set amount of btc it will always be a challenge.

- _jaspervdm:_ Would love to have a hedge against large price drops, but don't think it's practically doable.
   - _yeastplume:_ Basically this, every time we've thought about it, the conclusion is we can't do much about it without a legal entity.
   - _quentinlesceller:_ Personally I think we should not do anything in that regard. Things will stabilize eventually.
   - _joltz:_ Yeah, BTC might be about as "stable" as we get for this case.
   - _lehnberg:_ Yeah I’m okay with that too. And we’ll have to be okay with the fact that we may run out of money sooner, or later, than we might think. And of course there’s nothing preventing us from trying to raise more funding.
- _joltz:_ Alternative would be for fund asks to be paid in flat btc amounts but that pushes the problem from the project to the contributor. It is definitely a challenge.
   - _lehnberg:_ Yeah I don’t think this is feasible if rents and food are still paid for with fiat.


- _seddd:_ Could value the work-hours in smth stable like price of gold, then payouts could be valuated and paid in GRIN at time of payment. https://www.goldscape.net/gold-blog/gold-backed-cryptocurrency/
   - _lehnberg:_ Price of gold fluctuates against fiat as well.
   - _seddd:_ Price of gold most stable over human history, Fiat fluctuates against it.

- _lehnberg:_ Is there any actionable suggestion we should consider here?
   - _yeastplume:_ Not at present. I guess we're all at the mercy of cryptocurrency sentiment at the best of times anyhow
      - 👍: _carlpoppa, tenthousandlakes, joltz, seddd, lehnberg_

#### 4.2 Discourse

- _quentinlesceller:_ Yes so current situation is that BlockCypher paid a year of hosting. So the CC used was the one from BlockCypher. However we temporarily lost access to the admin of the Discourse and agreed to let BlockCypher CC and reimburse them in Bitcoin. I believe we can change the CC and reimburse them for what they paid which is 3240 USD.
Do we have the receipts?
   - _lehnberg:_ I’m sure I can find the receipts on the account. @quentinlesceller until which month was BC supposed to pay, do you know?
   - _quentinlesceller:_ I'm going to ask them. We can probably find the first mention of it somewhere too.
   - _lehnberg:_ Yep. Think it was some agreement Catheryne did directly with Igno IIRC but might be wrong.
   
   So: 
   1. reimburse BC for out of pocket amounts
   2. Change credit card from BC to somebody else?
   - _quentinlesceller:_ Yes. I have a USD CC if that helps.
   - _lehnberg:_ You’d be up for it? Essentially dollar cost averaging BTC each month? :) If you’re okay with that, then let’s do it.
      - 👍: _yeastplume_
   - _quentinlesceller:_ Yep I'm okay with it
      - 🚀: _lehnberg, tenthousandlakes, carlpoppa_

### 5. Proof of work

- _lehnberg:_ @bladedoyle made the following proposal yesterday. It's not an rfc, but I think worth to discuss for the record:

   > Grin didnt get public ASICS in the first year as expected.  In order to avoid the possibility of a major portion of grin mining quickly and unexpectedly becoming controlled by a single entity with a "secret asic" perhaps we should keep C29 around.  We could reset the AR/AF Ratio to 50%/50% and continue to hard fork new AR algorithms until a public asic is available, at which time the AR/AF ratio could begin moving again from 50/50 to 0/100%.

   As far as I understand, the proposal is to keep c29 around, and fix the asic resistant / asic friendly ratio to 50-50% until there's a public asic. And then after that the clock would start running again towards migrating away from ar. And the motivation for this is to prevent a secret asic mining on the network.

- _tromp:_ There's no "keeping" c29 since it's long gone by 18 months from now, and we're committed to make no changes affecting af pow till then. So that would be reintroducing c29 it around 1 year after it's gone.

- _seddd:_ Are there tweaks that can be made to c29 for a new ar pow?

- _jaspervdm:_ Keep in mind the 18 month commitment we have.
   - _lehnberg:_ Yes, for newcomers: https://forum.grin.mw/t/cuckatoo31-im-mutability/2442

- _tromp:_ Why do they think there's any reasonable chance of "secret" asics? What's the evidence of such a thing? Should we compromise our natural trajectory for some irrational fear?
   - 👍: _quentinlesceller_

- _lehnberg:_ As far as I'm aware, there's been rumours of secret asics spreading in some channels, but never even the slightest hint of that in the hash rates. If I'm wrong, somebody should point that out.

- _tromp:_ Grin is as asic friendly as can be for memory hard pow. The only examples of asics for such pow have been for coins that claimed resistance instead. And asics for those were not secret. So it seems ludicrous to base our planning on the least likely scenario.

- _jaspervdm:_ Reintroducing c29 would disincentivize asic companies to create an asic, secret or not.

- _joltz:_ Not to mention potential loss of trust

- _lehnberg:_ Just some nostalgia / yee old grin history. The motivation for why the dual proof of works was introduced, was because we had heard rumors of 2-3 "secret projects" for cuckoocycle asics that would be turned on at genesis. There was reason to believe this were to be true given the interest shown for grin at the time by various groups of companies and investors. So the idea was to bootstrap the asic friendly proof of work, and give everybody time to consider mfg over time. In hindsight (which is always 20:20), I think it's safe to say that we achieved the goal of not letting any secret asic coming from left field and sweeping up all the hashrate on day one. What I also think happened, was that gpu hashrate was dominated by large gpu mining farms, that were not particularly decentralized.

   What am I trying to say with this rant? well, for me personally, I learned the lesson that I'm not as clever as I think I am at times, and interventionist policies tend to have a lot of unexpected and unintended consequences. 
   
   So I'd be very reluctant to "tinker" without a really thought through motivation and detailed proposal to realize that. 

   And am instead happy to keep the current course.

- _tromp:_ The dual pow was to *guarantee* profitable gpu mining in first 2 years.
   - _lehnberg:_ While gpu mining might have been profitable, I naively believed that the ar proof of work would have led to better decentralization of the network.
- _seddd:_ Am new here, so all said w humility. would having the split ar/af going forward destroy coin trajectory that badly?
   - _tromp:_ Because an immutable pow is not meaningfully asic resistant. And we' don't want to keep tweaking past this year

- _joltz:_ There is also the risk of relying on @tromp indefinitely to tweak ar. There is no guarantee that he will be around.
   - _tromp:_ I will not be doing any tweaking past this summer. There is only so much *interesting* tweaking one can do. And so far I've been able to do just that.

- _seddd:_ Am happy to work on a proposal. Unless it's truly pointless, and community is happy going full af.
   - _lehnberg:_ @seddd go for it, but I don't know if it will be worth your while. depends on the proposal and the motivation I guess.

   When you feel it's mature enough, I'm sure people would be happy to offer feedback. A good way to put all of that in one place is to open a pull request against the `/grin-rfcs/` repo. And keep in mind that we have this 18 month commitment, that I consider to be rock solid.

   - _tromp:_ An rfc can serve as a record of the proposal and discussion of its pros and cons
       - 👍: _seddd_
   - _seddd:_ Will do, at this point just half-baked ideas. will refine them, and post something worth the time to read it.
   - _tromp:_ But obviously you can color me quite sceptic about its acceptance.
   - _seddd:_ If nothing else it will be an interesting thought experiment
      - 👍: _lehnberg_

### 6. RFC & Sub teams update

- _lehnberg:_ Let's do rfcs first, in order of appearance: https://github.com/mimblewimble/grin-rfcs/pulls

- _seddd:_ Are we discussing here, or should all discussion be on github?
   - _lehnberg:_ Good question. I think anything full circled belongs best on the pr itself as it documents it better. Here is mainly updates, a bit of meta-related talks, and questions.
      - 👌: _seddd_
   - _lehnberg:_ Not even sure this is productive, going through the rfcs here, but it feels like a good marketing opportunity for people to get involved, so will continue doing it until someone says it's stupid. 😛 

#### 6.1 [hybrid-tx-building](https://github.com/mimblewimble/grin-rfcs/pull/46)

- _lehnberg:_ Still in draft mode. @grincoin.teams.wallet_dev is a good place to discuss. Or in the pr itself, @joltz is researching armored slates. 
   
   We're wondering whether the proposed qr code / blob approach is the right form factor for grin transacting between users and services.
   
   Who would like to be shepherd for this one?
   
#### 6.2 [qa team](https://github.com/mimblewimble/grin-rfcs/pull/45)
- _lehnberg:_ Not seen any activity since last.There are some important questions in the pr discussion that I think blocks progress. I've not spent any time on it myself been busy with other stuff.


#### 6.3 [moderation team](https://github.com/mimblewimble/grin-rfcs/pull/42)

- _joltz:_ There was a good amount of discussion going on re: moderation team in general chat yesterday. I'm not privy to all of the dynamics at play, so I may not be the best person to advocate here. It seems there are strong feelings about whether or not it is even worth time to pursue considering some of the dynamics pointed out. I personally think it is an opportunity for the community to decentralize more how the tone is set for community interactions, but understand that this is a complex dynamic.
Maybe we can do some consensus building around the viability and utility of a moderation team in context of existing dynamics with parties that have expressed opinions?
   - _lehnberg:_ Sure - did you have sth in particular in mind?
   - _joltz:_ A focused discussion (outside of this meeting) with those that have strong opinions?. It seems most of the strong opinions think the team is a waste of time, though I do want the nonvocal majority of members to have an input.
   - _yeastplume:_ I've definitely had strong opinions when we've been in the middle of a situation where moderation action is clearly required but there's nobody neutral to apply it. 
   So you don't really have strong opinions about it until you do (and you will) and then it's too late.
      - 👍: _lehnberg_

- _seddd:_ Imho mod teams are a last resort when things get unmanageably toxic. Have things gotten that out of control here?
   - _yeastplume:_ There have been times, yes. Fortunately not many, but enough to trigger this conversation.
   - _seddd:_ For sure, I'm one w/o strong opinion, so I'll sit the rest of this out.

- _carlpoppa:_ Having been involved in this particular area before and having worked with @joltz before, having moderators are an opportunity to build confidence and community. They become advocates for the project, which is invaluable. Without community building, awareness, moderation, you can see (as with most projects) you become stuck in a rut during hard times like we are in now.
   - 👍: _lehnberg, yeastplume_
- _lehnberg:_ I think toxicity is unfortunately inevitable in online communities. It’s just a matter of degree. We do have a code of conduct, and it ought to be enforced if it’s meant to mean anything.


   And different people have a different interpretation of toxic. So some might feel there’s no toxicity, others might feel it’s outright hostile at times.
   - _yeastplume:_ Naah. When I think it's toxic it's objectively so.
   - _lehnberg:_ Can we clone you and create a moderation team out of the clones? I hear you produce spawns. What about clones?
      - 😂: _joltz, seddd_
   - _yeastplume:_ Unfortunately I'd be as careful with moderating as I've been with producing spawns, so I'm probably not a good candidate.
- _joltz:_ Ok so it sounds like there are strong opinions on both sides. Maybe a next step is someone with a strong opinion in favor of the proposal to take a pass to help push it further along. This gets it in a state to better receive feedback and continue to build consensus.

- _carlpoppa:_ Maybe moderators isn’t the right term. more like community managers? I mean they can tie into a number of things between reviewing github requests to being active in chat to driving more creative pushes like memes on 4chan.
   - 👍: _lehnberg, seddd_
- _joltz:_ Hopefully a few folks that have voiced up here can take a pass at the rfc. in addition it might be good for a "moderator/community mgr" meeting to get people that have a stake in the same chat to discuss. It might be the best chance in case we don't get the rfc activity we need to drive it.
- _seddd:_ Have a kneejerk reaction against setting up hierarchies, but done right a moderator/manager role could be positive.
   - _joltz:_ I think others may have a similar reaction @seddd maybe you can advocate for this and help expand the rfc itself so we can have more actionable discussions?
   - _seddd:_ I try to stay away from mod stuff. more of a let it all fly, block em if you hate em type.
- _carlpoppa:_ Just need a sorting hat process to decide who goes where, then it’ll be fair and balanced.
- _joltz:_ Likewise @carlpoppa you had some interesting ideas, I encourage you to share in the rfc as well to help drive discussion. Ok that's probably enough time on moderation team, I encourage everyone that has an opinion here to echo that in the rfc. In the mean time maybe @lehnberg can help me set up a meeting with interested parties after folks have had time to add their input to the rfc?
   - 🤙: _carlpoppa, seddd_
- _lehnberg:_ Yes

#### 6.4 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)

- _lehnberg:_ @jaspervdm anything blocking that from final comment period?
   - _jaspervdm:_ Not as far as I know, we can go into fcp now
      - 👍: _lehnberg_

#### 6.5 [Relative kernels](https://github.com/mimblewimble/grin-rfcs/pull/19)

- _lehnberg:_ We discussed in detail last meeting, not sure there's anything to add:
https://github.com/mimblewimble/grin-pm/blob/master/notes/20200310-meeting-governance.md#41-relative-kernels. And I don't think there's been progress on multiple named wallets

- _tromp:_ Andrew poelstra had this to say on #bitcoin-wizards: 
   > Innnteresting
   > andytoshi
   > this sounds reasonable, but reusing kernels makes me wince at the complexity of security-modeling these transactions

   - _lehnberg:_ :/

   - _tromp:_ In response to mailing list message on nrd kernels. Looks like we're converging on something that's ready for implementation.

- _tromp:_ Kudos to antioch for coming up with the nrd idea
   - 👍: _lehnberg, phyro, seddd_

#### 6.6 Teams

- _lehnberg:_ On teams and other ideas, I saw a forum thread (
https://forum.grin.mw/t/lets-talk-about-the-elephant-in-the-room/7169/12
   where someone suggested:
   
   > finally, the right way of doing things in my opinion would be to start an ecosystem fund, actively managed and start giving grants to developers building stuff on top of grin (and not just building grin itself). besides, we should start a kind of ambassador program, or something similar, to encourage the current grin community to start creating content and promote the project elsewhere. 


   I just wanted to point out that suggestions and ideas like these are welcomed. There's a dormant @grincoin.teams.community. If people have ideas for a fund or ambassador program, put it in an RFC, write a budget and a funding request, and let's discuss in detail. Your chances for funding being approved will improve if you are not completely new around here and if you have some kind of positive track record of contributions to the project.

   If you're new and still want to propose something, you might also want to start making contributions and get to know others here. That's how it worked for all of us. :)
   - 😎: _seddd_

### 7. Other questions

None.

**Meeting adjourned.**
