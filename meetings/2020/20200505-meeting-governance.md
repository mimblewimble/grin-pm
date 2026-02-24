# Meeting Notes: Governance, May 05 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- bladedoyle
- dburkett
- goyle
- jaspervdm
- joltz
- kurt2
- lancelot_n
- lehnberg
- quentinlesceller
- smokeking80
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda: Governance, May 05 2020

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/285) was accepted without modifications.

### 2. Action point follow ups from previous meeting

#### 2.1  New keybase structure
- _lehnberg:_ On the action point follow ups, based on the last meeting, #fundraising & #community channels have been created. Announcements of closing down the respective keybase teams went out, last week, so unless there are objections, I'll shut them down after the meeting.
   - 👍: _yeastplume, quentinlesceller, joltz, antiochp_

### 3. [GUI wallets](https://forum.grin.mw/t/the-official-grin-gui-wallet/7209)

- _yeastplume:_ Mostly want to reiterate that the idea is still very much in my head, but I'm sidetracked with hf3 work at the moment (as is everyone else). However I'd like to get the first portion kicking along by getting some starter criteria down for what can become 'community approved'. Which is going to be a delicate balance between practicality and security, obviously.
- _joltz:_ I think I owe you some security considerations for this.
- _yeastplume:_ No worries. Perhaps we don't want to hash over all of this now. Shall we take an action to have the criteria in place for review/discussion at the next governance meeting?
   - _joltz:_ Sounds good to me, I'll look more closely at how bitcoin and monero handle this and see if I can compile something that will make sense for grin wrt security considerations.
   - _yeastplume:_ Okay, that sounds great, I'll have a look through them as well and try and add whatever I can.
   - _joltz:_ Great, I'll start a gist or other document and try to share with plenty of time before next meeting so we have some time to iterate. 👍
      - 👍: _yeastplume_

### 4. RFC & sub-teams update
- _lehnberg:_ In order of appearance: https://github.com/mimblewimble/grin-rfcs/pulls.

#### 4.1 [Deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)

- _lehnberg:_ Are we still on track to conclude on an approach by next week's dev meeting? @antiochp @yeastplume @jaspervdm @dburkett.
- _joltz:_ Currently building community feedback there. Added a timeline as well based on @lehnberg feedback. I'm thinking that with deprecate-http, armored-slates, compact-slates, slate-serialization etc we may end up with one more RFC 'slatepack' which is a definition of the full stack of all of these components for a more universal transaction type.
- _bladedoyle:_ Please consider deprecate http but delay removal.
   - _joltz:_ Currently the timeline is to add support and warnings in next hf. Then require custom configuration to support after last hf. I don't think http can be removed entirely because tor uses the listener on localhost.
- _yeastplume:_ The 'custom configuration to support https after last hf' seems like a reasonable compromise. You'll only be able to listen via https, and it'll be turned off by default?
- _jaspervdm:_ But that would mean any exchanges would just use that custom configuration. Or expect their users to use it.
- _joltz:_ The only listening by default would be localhost. It would require some hacking to listen via https. For sending it would probably always be supported but should give a strong warning when using. Users shouldn't be able to listen to anything besides localhost without some hacking.
- _lehnberg:_ Given that exchanges are happy to rely on third party mitm relays right now in order for their customers to make withdrawals, I tend to agree @jaspervdm. But is there an alternative? I guess the question is what we're trying to achieve.
- _yeastplume:_ I don't think we can reasonably expect all exchanges to just accept this change though and dedicate resources to supporting it. If we go hard-nosed, we will lose exchanges.
- _quentinlesceller:_ Already mentioned before, but an exchange kit for grin would be nice in that case.
- _bladedoyle:_ One goal is to not kill grin. We are wounded already. Let’s take it easy for a bit and heal up some.
- _joltz:_ Personally I think we are moving in the right direction for grin in the long term and want to do everything possible to not leave anyone behind. I also want to be careful not to burn any bridges from some of our earliest supporters. We might be able to navigate this without getting delisted but ultimately my priority is to make sure that users aren't forced the transact with methods that risk their privacy. Unfortunately that may mean a delisting until after our last scheduled hardfork and things have stabilized with more users and volume. I think that is a price worth paying to protect the privacy of current and future users and will ultimately bring more prosperity to grin, but I can certainly see how this could create a lot of fud from our current users/supporters who might be an exchange delisting away from abandoning the project.
- _bladedoyle:_ Can we make some other privacy enhancement changes a priority over this for some time?
- _yeastplume:_ We could leave a longer tail. Deprecate it, allow it to be turned on via config, but set the deprecation date far into the future. That would give us more time to demonstrate to exchanges That our officially sanctioned methods are worth supporting.
- _jaspervdm:_ Yeah its a balancing game.
- _bladedoyle:_ So far we are very unbalanced.
- _antiochp:_ Deprecating for longer than 1 hf might be a good idea.
- _bladedoyle:_ Its not consensus so whats it have to do with hf schedule?
- _antiochp:_ That's the timeline we are working on currently.
- _yeastplume:_ There's also the question, 'are all of the alternatives we're coming up with actually better', we don't know the answer yet.
- _antiochp:_ Right - we need to be able to demonstrate a "better" approach beyond deprecation.
- _bladedoyle:_ Let the market decide, imo.
   - _antiochp:_ That doesn't really make sense in the context of exchanges and user privacy.
- _kurt2:_  If we want to consider exchanges, whereas price has never been a concern, I see kind of a little contradiction. While poloniex has been extremely grateful to support Grin financially, the message that was posted on the forum by one of its representative was almost a direct threat And not acceptable. If they do not make money, they would have delisted already. And If the usability is not considered better by user after two years of grin for the reason that apparently some exchanges threaten verbally to delist, I do not see on what side is the the fud.
- _yeastplume:_ So perhaps, mark it as deprecated without a specific cutoff date.
- _lehnberg:_ We need to show some backbone. Either we deprecate it, or we don't. We're just muddying the waters and creating confusion and noise otherwise. If we're deprecating, there ought to be a timeline, and a clear plan for what happens next.
   - _yeastplume:_ No, sorry, why does this need to be so black-and-white?
- _antiochp:_ @lehnberg sure but there needs to be an objectively better solution for everyone involved.
   - _lehnberg:_ What are the criteria we're evaluating against?
- _bladedoyle:_ Users can choose to use more private exchanges... Less private exchanges can switch to tor if they want to keep business.
- _joltz:_ I definitely want to give the network time to make sure 'slatepack' works well for most needs. I think 6 months should be enough there. I do want to be careful about "letting the market decide" because it will decide a method that is easy but violates user privacy most likely.
- _yeastplume:_ There's plenty of precedence for a project saying 'this will go away at some point in the future, use this instead'.
- _antiochp:_ Yeah agree with @yeastplume there is no requirement to set a hard deadline if this is deprecated.
- _bladedoyle:_ So on one hand we know that depreciating http will hurt us when exchange(s) delist. On the other hand we... What? feel like we know best so we want to force it?
- _antiochp:_ (not to say we keep kicking the can down the road indefinitely though).
- _joltz:_ If we don't align this timeline with hardforks we may not be able to make any of these changes.
- _bladedoyle:_ Users will demand tor if they want it.
   - _antiochp:_ You're basically arguing that the "privacy" part of a privacy focused coin is irrelevant because people just want to speculate on exchanges.
- _lehnberg:_ I just don't see us breaking out of the equilibria of lowest common denominator transaction building methods otherwise. We'll be stuck on http(s) forever as there won't be any reason to change. And any new exchange considering listing grin will resolve to the same methods. Cause why wouldn't they?
- _bladedoyle:_ New exchanges should not implement an already depreciated method. Why would they?
   - _joltz:_ Unfortunately they will probably just do whatever is easiest and used by other exchanges.
- _bladedoyle:_ Exchanges interact with users more than other exchanges.
- _joltz:_ The end result is requiring an ip address to withdraw coin from most exchanges/services which is obviously bad for privacy.
- _bladedoyle:_ If you are withdrawing from exchange you already have no privacy.
- _joltz:_ It depends on the exchange or service really. The most popular do require kyc but not all.
- _lehnberg:_ Should all tx building methods that the default wallet implementation is supporting be privacy preserving and secure by default?
   - 👍: _joltz_
- _kurt2:_ Bladedoyle, you think that we should keep http(s) because poloniex half threatened to delist otherwise?
   - _yeastplume:_ I didn't read it as a threat, just insight into the development process at exchanges. They have many coins to support, if a particular coin takes a disproportionate amount of resources, naturally the people taking decisions are going to be questioning why it's being supported.
- _bladedoyle:_ Im not saying privacy is bad, or we should not head that direction, I'm just asking to consider the impact.
- _antiochp:_ Is there a way to handle user initiated withdrawal (invoice style), obviously needs the exchange to authorize it somehow on their end.
   - _joltz:_ Couldn't they just paste their slatepack into a "withdraw" input box?
   - _lehnberg:_ https://github.com/mimblewimble/grin-wallet/issues/67 cc @hashmap.
- _bladedoyle:_ We should consider usability - by both users and projects built on top if grin.
- _kurt2:_ The impact on users is much more greater that impact of exchanges. If price and liquidity skyrocket because people can finally use grin, you will not see poloniex whining anymore on the forum.
- _bladedoyle:_ We have feedback from exchanges saying they can not switch to tor.
   - _jaspervdm:_ They can support a copy-paste tx.
- _bladedoyle:_ Even if resources were not an issue (which they are).
- _lehnberg:_ "antiochp commented on 5 feb 2019
user initiated withdrawal is potentially scary."
- _antiochp:_ https://github.com/mimblewimble/grin-wallet/issues/67#issuecomment-460695025. Lol.
- _joltz:_ What types of withdrawal are not user initiated?
   - _antiochp:_ Most of them today I think - as users need an ip address etc.
- _goyle:_ Hi, I just want to throw another option here: Pay poloniex to reduce their burden. I know grin doesn't pay listing fee but I think there could be an exception in this case for exchanges that contributed to the grin general fund.
   - _lehnberg:_ That's definitely an option.
   - _bladedoyle:_ We could refund polo donations....
- _bladedoyle:_ But cut-n-paste is going to be through an https connection, no?
- _joltz:_ I mean for other coins-aren't they all user initiated? "i request a w/d of my 1btc".
- _lehnberg:_ But in any case, I feel this is a bigger issue than what will happen to poloniex's listing of grin. It's far more important than that - and poloniex is currently down in any case. So let's not obsess about the standing of one exchange. And instead think about what's best for grin longer term (years to come).
   - 👍: _goyle_
- _joltz:_ Pasting a slatepack should be handled the same way.
- _antiochp:_ Yes absolutely. We're in agreement.
- _bladedoyle:_ I do not understand why would it be better to cut-n-paste files over https rather than native support?
   - _joltz:_ Cut and paste allows you to choose your own transport method instead of forcing https.
- _antiochp:_ Cut and paste over https is totally fine (and to be encouraged).
- _bladedoyle:_ So we expect exchanges to choose something other than https for cut-n-paste slates?
- _yeastplume:_ Expecting users to run an http listener to withdraw is a very questionable decision anyhow, particularly when we did have file exchange in place from the get-go.
- _antiochp:_ Its the "user hosts a public endpoint over http(s)" that we want to move away from.
   - _yeastplume:_ Right.
- _joltz:_ An exchange will have text boxes for slate input/output on their site.
- _antiochp:_ Not https itself.
- _kurt2:_ It seems a no-brainer to have 2 nice transaction methods for the long term, rather than 4 or 5, where people gets lost.
- _bladedoyle:_ Whuh?   a few min ago the argument was that https exposes ip address so its a security issue.
   - _joltz:_ Sending directly via https is risky for privacy, pasting a text string into a text box on a website that you can access via tor etc isn't as bad.
- _antiochp:_ @joltz user pastes a slate and then receives a slate back in another box to copy, is that what you are describing?
   - _joltz:_ Yes.
- _antiochp:_ An exchange exposing its ip address is not the issue.
- _yeastplume:_ For deposits, user can fill in a form and get back an invoice slate to cut/paste/qr code. For withdrawals, just a standard slate, same workflow.
- _bladedoyle:_ I do not understand how sending pasted text over https is less private than having a protocol that dens that data without cut-n-paste.
- _antiochp:_ My understanding of this (and correct me if this is wrong) 
   1. _sending_ via http(s) is fine
   2. _receiving_ via http(s) is not something users should be doing.
   - _joltz:_ Yes in general, though sending via http(s) is still undesirable for privacy imo unless you are a service.
- _bladedoyle:_ Non-interactive tx would also eliminate the ip address privacy issue, no?
   - _joltz:_ It would if we can find an option that doesn't require weakening other security assumptions.
- _lehnberg:_ Okay so trying to come back a bit to the meta-level of the discussion, what's the process we're following to reach an agreement on this? Is it the RFC that @joltz has begun work on? What happens in the dev meeting on tuesday?
- _yeastplume:_ Much the same as what just happened now, I suspect.
- _lehnberg:_ What I'm keen to understand asap: Will there be a deprecation message included in 4.0.0 or not?
   - _joltz:_ If we can have 'slatepack' working by then I think we would want to include deprecation warnings.
- _bladedoyle:_ No, I am finished so there will not be any disagreement in the dev meeting.
- _yeastplume:_ Maybe we should have an extraordinary meeting to discuss this the day before?
- _bladedoyle:_ I made the point the best I could.
- _bladedoyle:_ Lol, for best security unplug it.
   - _joltz:_ Right, which is why I like copy/paste so much.
- _lehnberg:_ Right. It can always be aborted if slatepack turns out to be less than 'good enough'.
- _joltz:_ We can always not deprecate it if we try slatepack for a few months and it doesn't work.
   - 👍: _lehnberg, bladedoyle_
- _lehnberg:_ Okay, so guess that will be the main question ahead of tuesday's dev meeting then: Will we have a version of slatepack ready for 4.0.0, and is that good enough to allow an inclusion of a deprecation message. And then there's a second question about the actual timeline there, once the deprecation has been announced.
- _lehnberg:_ I'm going to nudge us forward today with other rfcs. If anyone feels something important re https has been left unsaid at this stage, now's your chance.
   - 👍: _yeastplume_

#### 4.2 [Armored slates](https://github.com/mimblewimble/grin-rfcs/pull/53)

- _joltz:_ Not much new to report there, as hinted at earlier, it is one layer in the 'slatepack' stack.
- _yeastplume:_ Yes, that layer looks good. It the middle layer now needs attention, which will inform whether we'll have slatepack ready for 4.0. Time is getting a bit short there.
- _lehnberg:_ It lacks a shepherd.
- _joltz:_ Agreed. Might be possible to have something barebones in for hf that could be extended with subsequent minor releases.
- _yeastplume:_ It should probably be someone other than myself or joltz.
- _lehnberg:_ Anyone feeling the call?
- _jaspervdm:_ Sure, can be the shepherd.
   - 👍: _lehnberg, yeastplume_

#### 4.3 [Parallel IBD](https://github.com/mimblewimble/grin-rfcs/pull/52)
- _jaspervdm:_ You can expect updated technical details on the RFC later this week, will also do my best to add the "fluff" (community explanation etc). I've been going through a few different iterations.
- _lehnberg:_ Nice. We're on track for whatever is going into 4.0.0 there?
- _jaspervdm:_ Also thinking I should rename the RFC to "parallel ibd p2p messages" to more clearly reflects its scope. Yes, I think so.
   - 👍: _lehnberg_
- _lehnberg:_ Lacks a shepherd. @joltz now's your chance to return the courtesy.
   - _joltz:_ I'm on it!
      - 👍: _lehnberg_
- _tromp:_ @jaspervd see my https://github.com/mimblewimble/grin-rfcs/pull/47 comment which also relates to pibd.
   - 👍: _jaspervdm_
- _kurt2:_ Is there parallel bulletproof verification in the ibd (if threading them makes sense?)?


#### 4.4 [e2e encrypted slates over http(s)](https://github.com/mimblewimble/grin-rfcs/pull/50)
_No update._

#### 4.5 [Compact slates](https://github.com/mimblewimble/grin-rfcs/pull/49)
- _lehnberg:_ *slate v4 (compact slates)* by @yeastplume
https://github.com/mimblewimble/grin-rfcs/pull/49.
- _yeastplume:_ Think that will also be informed by whether we deprecate http. Slate v4 is ready for fcp as far as I'm concerned.
- _lehnberg:_ Lacks a shepherd. @quentinlesceller?
- _quentinlesceller:_ Sure.
   - 🚀: _lehnberg_
 
#### 4.6 [Slate serialization](https://github.com/mimblewimble/grin-rfcs/pull/49)
- _joltz:_ I'm still not entirely convinced slate serialization needs its own RFC if we do an additional 'slatepack' RFC describing the whole stack there.
- _lehnberg:_ Would it be productive to set up a "slatepack workshop"? Where the remaining questions re armored slates, serialization, and compact slates are ironed out? Thinking we need to converge quite fast and get all of these over the line if they are to stand a chance to get into 4.0.0.
- _yeastplume:_ Sure, but whatever we come up, it needs to be decided fairly quickly.
- _joltz:_ In my mind the only moving parts still are the metadata inclusion in the slatepack, is this accurate?
- _yeastplume:_ I don't think it'll be complex to implement, but still needs time for an iteration or two. @joltz yes. The slatepack and slate itself are in good shape.
- _yeastplume:_ So it's just where the meta goes. Perhaps we can set a time to have a meeting in the wallet_dev channel?
- _joltz:_ Ok I'll be available this week to help as much as I can there, otherwise if there are any actions useful from me just let me know. Sure, a meeting works 👍

#### 4.7 [N(e)rd kernels](https://github.com/mimblewimble/grin-rfcs/pull/47)
- _lehnberg:_ As a shepherd, am I ok to move this into fcp after this meeting?
- _antiochp:_ I believe so yes - @tromp just commented on there related to kernel fees, so there is some outstanding things to discuss.
- _lehnberg:_ Things that will lead to changes?
- _antiochp:_ Or just a decision to make around fees there, no change to the RFC though.
- _tromp:_ Well, there is consensus issue with weight of nrd kernel. As used in computing weight of a block.
- _lehnberg:_ Oki I will wait with fcp. And ask again end of this week.
   - 👍: _antiochp_

#### 4.8 [qa team](https://github.com/mimblewimble/grin-rfcs/pull/45)
- _joltz:_ There hasn't been much activity in a while. I might be in favor of closing this and moderation team RFC until a future date when it makes more sense, community members are spending more energy to improve them or we are better resourced to support them.

#### 4.9 [create moderation team](https://github.com/mimblewimble/grin-rfcs/pull/42)
- _lehnberg:_ Any objections to closing that one? I think I've the record now for least successful rfcs attempts....
- _joltz:_ Sometimes failed rfcs can even be more valuable than accepted ones:)
   - _lehnberg:_ Yes, I try to tell myself this as I cry myself to sleep each night.

#### 4.10 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)
- _jaspervdm:_ The postponed fcp is ending today, havent seen additional points raised in the last 2 weeks so I think we can move towards merging the RFC first thing tomorrow.
- _jaspervdm:_ Unless there are any objections raised now.
- _yeastplume:_ Re general fund guidelines, once again there is a point or two that needs to be made more explicit, but I haven't had time to address them.
- _jaspervdm:_ Ok, was not aware you'd like to iterate more on it. In that case we can take it out of fcp altogether.
- _yeastplume:_ Actually, no. Indecisive now, sorry. Can we give it 2 more weeks of fcp, final time.
- _jaspervdm:_ Thats fine with me. We're setting the record for longest fcp:)
- _lehnberg:_ Oki, so let's try to give any changes enough lead time for reviewers to look at before fcp expires next.
- _yeastplume:_ It's in fffcp now.
   - 😂: _joltz_

#### 4.11 [Multiple named wallets](https://github.com/mimblewimble/grin-rfcs/pull/12)
- _lehnberg:_ And then multiple named wallets is assumed to have no updates. @yeastplume you sure we shouldn't just close that multiple named wallets?
- _yeastplume:_ Yeah, happy to close it for now.
   - 👍: _lehnberg_

### 5. Other questions
_None._

**Meeting adjourned.**