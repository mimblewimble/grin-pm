# Meeting Notes: Development, Mar 03 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 110 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antanst
- antiochp
- bladedoyle
- dburkett
- funkyswing
- jaspervdm
- joltz
- kurt2
- lehnberg
- phyro
- quentinlesceller
- rsgags
- tromp
- xiaojay
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

No retrospective in this meeting.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/256) reviewed, and accepted, with point 4 and 5 trading place on the agenda, and testing and packaging points being tabled to next meeting.

### 3. Action point follow-up

#### 3.1 Research linking commitments in grinscan.net

- _yeastplume:_ No longer in the realm of science fiction, thanks to @jaspervdm 
- _jaspervdm:_ \o/ just saw it looks kind of shit on lower screen resolutions, but at least its there.
- _quentinlesceller:_ Very nice @jaspervdm. Can you quickly how it works? looking at logs?
   - _jaspervdm:_ Using the webhook feature, storing all incoming tx, then doing analysis on each block.
- _yeastplume:_ Yes, looks really good, well done
- _quentinlesceller:_ Nice. Next step blockchain clustering :p
- _lehnberg:_ Very nice work @jaspervdm, haven't had a chance to look at it but will do so and get back to you with any feedback.
- _jaspervdm:_ Thx all

#### 3.2 Triaging research

- _lehnberg:_ No progress: While Jasper shines, I've not been able to find time to do that.
- _quentinlesceller:_ 🔔 

#### 3.3 Use of stable tag?

- _jaspervdm:_ I think managing stable/beta branch requires upkeep from us. But in principle can be automated, we can have a look at how rust does it for example.
- _antiochp:_ We looked into stable tag vs stable branch and I think at the end of the day it's not adding much value given the added complexity.
   - _yeastplume:_ I would kind of tend to agree
- _antiochp:_ We would need to exclude some tags/branched from the automated build process. And keep them updated ourselves. I think having `master` and then various released tags is good enough for now + release branches. 
- _jaspervdm:_ Its nice to be able to tell `git checkout stable` to users, but realistically anyone needing that command should juts use the binaries
   - _dburkett:_ I tend to disagree. I think should be encouraged to build locally. Building locally is safer than saying "hey, here's some binaries. there are no backdoors to steal your money, just trust me".
   - _jaspervdm:_ Hm, so how do you do it for grin++? Do you have stable/beta branches.
   - _dburkett:_ Lol, the wild west, basically. I just use master for everything, and make sure it's stable. Do as I say, not as I do 😆.
   - _jaspervdm:_ Heh ok. Even building from source is a somewhat trusted process given that the rust compiler is a bootstrapping compiler, but I get what you're saying.
   -  _dburkett:_ Sure, but if someone can release a malicious rust compiler that somehow steals your grins, then nothing's safe.

- _jaspervdm:_ Ok, lets think a bit more about it. I kind of want to have a look how easy it would be to automate

- _dburkett:_ I wasn't making an argument about stable vs master, btw. I just was saying ideally users should be able to build locally. But the world's not ideal. Didn't mean to derail.
   - _lehnberg:_ All good, think it's a good point

#### 3.4 Croaring failing on CI?


### 4. Planning

#### 4.1 v4.0.0

- _yeastplume:_ Okay, so... what do we think we want to get in to 4.0.0 a.k.a hf3. Pow changes go without saying, nkotb kernels would probably be the most pervasive.
- _antiochp:_ Relative (aka recently seen) kernel locks is still on the cards
   - _dburkett:_ You don't think it's rushing to squeeze relative kernels?
- _tromp:_ Parallel ibd?!
   - 👍: _lehnberg_
   - _dburkett:_ Parallel ibd can be done anytime. doesn't necessarily have to be on a hf
   - _jaspervdm:_ It requires new p2p messages right? would be easiest to activate during hf, but not needed
   - _dburkett:_ Yeah, but we have a versioning mechanism we can use.
   - _tromp:_ Pibd will bring noticeable usability improvements
   - _dburkett:_ Yeah, I have a started rfc on it, and all the messages defined on paper. I need to type it out and submit a pr.



- _quentinlesceller:_ Wondering also if when we should deprecate node api v1.
   - 👍: _lehnberg_

- _tromp:_ Relative kernels is important for long term development, not urgent
   - _yeastplume:_ Yes, but we're a year and a half in and have been talking about it since before launch, would be nice to have some progress on that front.
   - _antiochp:_ Agreed not urgent but it would be good to get the consensus changes in there via one of the scheduled hfs.
   - _tromp:_ Relative kernels definitely have to go in by hf3 or hf4
      - 👍: _lehnberg_

- _lehnberg:_ At the risk of sounding like a broken record, slate and tx building process. this wouldn't have notable usability improvements, but might make some tx building methods easier, and might reduce leakage of data. 

I'm stressing about it because we have two hard forks left to get it right without creating incompatibilities across wallets.
   - _antiochp:_ (that implies some level of urgency)
   - _yeastplume:_ @lehnberg are you talking about this issue? https://github.com/mimblewimble/grin-wallet/issues/317
   - _lehnberg:_ Yeah, in part. but I wonder what else there is we could look to improve there.
   - _yeastplume:_ Yes I think it's worth looking into the 'slate lite', e.g. reduce what get passed around to the minimum info needed.

- _dburkett:_ For hf4 (v5.0.0) I was going to submit an RFC for non-interactive txs. That will remove the need to deal with slates, if we want to go that route.
   - _jaspervdm:_ Any eta on that RFC? I think we would need a lot of time to discuss.
   - _lehnberg:_ Yeah, this is sth I've been thinking about as well, how this potentially eliminates a swathe of challenges. I urge you to try to get that RFC out in the wild as soon as possible. Even if hf4 is almost a year away, it will require a lot of thinking and scrutiny.
   - _dburkett:_ I can submit it this week if needed, but I wanted to gauge interest before going through the effort. Latest design is in #tx-building, so if that seems like something worth pursuing, I can get an rfc written relatively quickly. Here's the litecoin version: https://github.com/davidburkett/lips/blob/master/lip-0004.mediawiki. I've been trying to get as many people as I can to review it. Nobody has pointed out any problems yet, but it's still early.
      - _lehnberg:_ Yeah, unfortunately that's far from there not being any problems, or there being consensus around the proposal.
      - _yeastplume:_ Same here, sorry. I'd definitely say it's worth coalescing into a preliminary draft RFC, it doesn't need to be massively detailed, but just get all the info together in once place as a draft pr for everyone to consider?
      - _dburkett:_ Sure, it's going to look a lot like that lip :)
      - _yeastplume:_ Sure but at least we'll have a central point for the grin-specific discussion
         - 👍: _dburkett, quentinlesceller, lehnberg_
      - _dburkett:_ Have reached out to a few respected cryptographers for review as well. waiting to hear back.
         - 👍: _kurt2, quentinlesceller, rsgags_


- _yeastplume:_ So, seems this far we have 'relative kernels (possibiliy), 'slate lite' and pibd.. Is there anything else? And pow changes.

- _tromp:_ I alrd have a design in mind for next cuckaroo29. Just needs to be coded up
   - 👍: _quentinlesceller_
   
- _quentinlesceller:_ Deprecate node api v1?
   - _yeastplume:_ @quentinlesceller sure, was just trying to get the consensus or completely breaking changes in first.
   - _quentinlesceller:_ I'm torn about this since having a rest endpoint is still very nice for stuff like status. There is no urgency to remove it. I'd encourage exchanges and devs to work with v2 (maybe add deprecate message during build?) and revisit after hf3.

- _lehnberg:_ Deprecate http? Or still too early
   - _yeastplume:_ If we deprecate http, it's going to make a lot of developers at exchanges very unhappy
   - _lehnberg:_ So a good time to do now that there are still relatively few exchanges?
   - _yeastplume:_ And the primary method is to become Tor? Which is just a layer on http anyhow. In all cases you still need an http listener of some description running
   - _lehnberg:_ So deprecating would be to announce that from 5.0.0 and onwards, it will be removed. (as part of 4.0.0). I don't think there's any other option to go about it. And if we want to get rid of http (for end users at least), then that's the time.
      - 👍: _dburkett_ 
   - _yeastplume:_ We can't remove it though.. the only thing we could really do is remove the option of exposing an http listener to external addresses
      - 👍: _funkyswing_
   - _dburkett:_ Right, same thing we do with owner listener. Just listen on localhost.
   - _lehnberg:_ Unfortunately I don't have an amazing strategy for the alternative (yet). Just saying that if we're doing this right, we need to announce well in advance and be very clear.

- _yeastplume:_ Tor becomes the default?
   - 👍: _joltz, funkyswing_
   - _xiaojay:_ I don't think it's a good idea to make tor as default, because in mainland China, Tor is totally blocked. And it will make most end user can not send/withdraw grin to/from exchanges.
      - 👍: _funkyswing_
   - _yeastplume:_ @xiaojay that's another concern
   - _joltz:_ We could offer a pluggable transports option at some point. https://2019.www.torproject.org/docs/pluggable-transports.html.en
      - _dburkett:_ There's also that
   - _yeastplume:_ At the moment, tor is the default if tor is installed and works and you run a listener. Http is very much the fallback.
   - _dburkett:_ Turkey also blocks Tor. VPNs solve that. Not a big deal for Turkey since it's not illegal. For china it probably is.
   - _quentinlesceller:_  yeah the problem by using tor by default, while it looks ideal, it would hurt the usability.
      - _dburkett:_ I disagree. Http has been horribly unusable. The only way most people are using http now is because jay and I each run nice, easy-to-use mitm services. If either of us goes rogue, we could steal a lot of grins.
      - _yeastplume:_ Tor's nat punching is very favorable for usability.
   - _xiaojay:_ Yes, maybe file-exchange should work 
      - _dburkett:_ Good point. we do still have file
   - _yeastplume:_ In any case, can we put this down as a question mark for 4.0.0 and we can have a larger discussion/think about this?
   - _dburkett:_ I'll bet if we remove http support, chinese exchanges like kucoin would finally implement file support
      - 👍: _funkyswing_
   - _xiaojay:_ Yes, I think so
   - _joltz:_ If we do force Tor as default I think we want a good option to ensure folks in china can still easily connect, whether we run our own obs4 somehow etc may still be open.
      - 👍: _dburkett_
      - _lehnberg:_ @joltz would you like to research our options there? Could be useful in any case
      - _joltz:_ Yep I'm on it 👍
         - 🚀: _lehnberg, yeastplume, quentinlesceller_
   - _yeastplume:_ And we can open a separate discussion issue for it I think, away from the main list of 4.0.0 issues.

- _yeastplume:_ So, I think we have a preliminary list of points to address in 4.0.0. We get them all into an issue, start discussing there and meet back on it at the next dev meeting?
   - 👍: _jaspervdm, xiaojay, lehnberg, joltz, quentinlesceller_

- _lehnberg:_ Will update https://github.com/mimblewimble/grin-pm/issues/248 based on the initial ideas penciled here
   - 👍: _quentinlesceller, xiaojay_
   - _yeastplume:_ @lehnberg great, thanks!

### 5. How to handle upgrades after 5.0.0

- _yeastplume:_ Are we really ready to give up on the scheduled hard forks?
   - _tromp:_ I am. we should not rule out future hf, but they can be purely on an as-sorely-needed basis
   - _lehnberg:_ How do you envisage that working in practice @tromp?
   - _tromp:_ As consensus builds that some consensus breaking new feature is highly desirable, we figure out a good time for doing a hf.
   - _lehnberg:_ But how do you achieve consensus around that? Seems like this is where most projects will stumble.
   - _jaspervdm:_ Good question

- _jaspervdm:_ Ok there's many sub points on that, but here's my opinion in short: I am okay with adding 1 additional hard fork 1 year after the last. I am also in favor of making the code more soft fork friendly. however I think miner signaling is a bad idea, judging from history
   - 👍: _quentinlesceller, lehnberg_
   - _quentinlesceller:_ Agree with @jaspervdm 
   - _dburkett:_ Miner signaling does suck, but how should future forks be agreed upon?

- _yeastplume:_ I would like to dissect a bit. I'm of the opinion that we should allow for hardforks, just not on the same frequency. I'd like to hear more about why scheduled hard forks are a bad idea?
   - _lehnberg:_ It's a centralizing force on the network
   - _yeastplume:_ To me, it's like saying 'windows 95 is good enough, so let's make it extremely awkward on ourselves to roll out any updates to it'

- _lehnberg:_ The "problem" with adding more hard forks after the "only 4", is that we kind of open pandora's box. will we ever say "you know what, now we're good and there will never be any more scheduled hard forks"?
   - _yeastplume:_ No, that will never happen and never should happen. There will always be improvements. But all of the benefit of everyone knowing dates in advance, and having communication on upcoming forks and dates, and forcing upgrades, I think is huge.

- _lehnberg:_ Maybe it's better to not put any scheduled ones in beyond those that we're in pre-mainnet and then just 'deal with it'

- _tromp:_ We'll still do plenty updates. Just be conservative about consensus breaking ones. Trying to make grin immutable by default, like bitcoin. But not as hf averse as bitcoin. Segwit would've been much cleaner as a hf. And grin is big on simplicity.
- _antiochp:_ I agree that "immutable by default" is a good principle
   - 👍: _funkyswing_
   - _lehnberg:_ This

- _antiochp:_ > segwit would've been much cleaner as a hf

   but probably impossible to actually pull off
   - _lehnberg:_ And sadly also this. :/

- _lehnberg:_ If we always have scheduled hard forks in the code, anything can happen if the core team wants it. Which makes it super super centralized.
 
- _joltz:_ Hf averseness can be good. It is nice to know you can hibernate for 5 years and wake up still able to spend your btc.
   - _yeastplume:_ If your keys are intact.. This should always be possible, though you may need to update your wallet software and rescan. And if we become immutable, someone competent will come along with a fork will change that.
   - _tromp:_ It's crucial for wanting grin in 100 years to resemble grin today. What it comes down to is that for a decentralized coin, it's good to have a little friction to hardforks.

- _jaspervdm:_ My fear for not coding in an extra hf would be that impossibility of _any_ hf.

- _phyro:_ I agree with the immutability perspective, but what happens if there is an easy way to achieve unlinkability but we only start researching this after the "last" hf? It would mean we want to do as much research in the beginning to make such scenarios sort of less likely to occur.

- _lehnberg:_ I definitely think there's a logic for us saying sth like:
   
   "Grin is very young in blockchain years. We're an open source project, and things take their time. There's no way we will be able to get all the consensus-breaking stuff into these four hard forks. We need more scheduled hard forks. Because we're still in open heart surgery on the patient. But. we are aiming towards a future of no _scheduled_ hard forks." 

   But the "we're in dev mode" excuse can only last for x years, at some point we'll have to be considered mature.

   - _joltz:_ Right but if there are tons of forks how do I know what to actually download?

- _kurt2:_ I like the idea of opening a window to hf every four years. It is a good compromise between being hard to change (which definitely has value, imo) and the need to adapt with new tech when you are a coin like grin. Also it is more predictable than choosing when the need arise, which has it's own value too in term of organisation, philosophy and preparation (athletes usually prepare for bigger event during years on a predetermined schedule). I would see many advantages in that schedule. But not really against visions too (every 1 year for example).

- _tromp:_ I'm not opposed to hfs, just opposed to making them too easy, as in having them prescheduled.
   - 👍: _dburkett, phyro_
   - _lehnberg:_ But how do you reasonably make them happen otherwise, unless there's a huge reason for them?
   - _dburkett:_ The reason hfs were pre-scheduled was because we made a promise to be asic-resistant for 2 years.
   - _lehnberg:_ Not true, they were scheduled in before this became a discussion point. 

- _yeastplume:_ I tend to prefer agile and nimble development, and would hate for us to put the block on that artifically early.

- _tromp:_ Specifically, I'd like to take out the built in expiry dates in grin v5.

- _lehnberg:_ If we're doing the type of improvements we've been targeting for major releases so far, they would not have been hard forked in.

- _joltz:_ I don't see a significant difference in 2 years of planned hfs vs 5 years of planned hfs looking at a long time horizon. But I do see a significance in leaving the possibility of hardfork open ended to be decided by core at some future date. Leaving optional unscheduled hardforks by core on the table as reasonable options for upgrades in the future.
   - _jaspervdm:_ Not sure if giving "core" such a long-term power is a good idea
   - _yeastplume:_ What is the alternative? I'm fairly opposed to miner signalling.

- _tromp:_ There is one not-yet-mentioned downside to not having scheduled hfs though. They're good excuses for slipping in critical vulnerability fixes
   - 😂: _dburkett_
   - _dburkett:_ We've only done that once! :)
   - _lehnberg:_ Something tells me it won't be the last... 🌝

- _jaspervdm:_ Yeah me too. just worried about leaving it open ended. Im ok with it for the shorter term
  
- _yeastplume:_ If there were something like 'stake signalling,' that might be more fair. I'm sure there is, I just haven't read up on it. (and it would require a working proof-of-stake).
- _yeastplume:_ It's like giving banks total power over monetary policy... hmmm. There's already a system that works like that (and it would require a working proof-of-stake).
   - _joltz:_ And steem is a nice current example of how that can be abused  by exchanges.
   - _yeastplume:_ @joltz indeed, of course.

- _lehnberg:_ If we include one scheduled hard fork, it gives core the power to include any scheduled hard forks in the future (they just add those into that one). But it would become very contentious. But so is there a difference between one scheduled and say five, once a year? I guess if we agree on five now, the topic dies for five years. If we agree on one, then every year we have this debate.
   - _joltz:_ I think the difference is whether the per year is left open indefinitely?
   - _yeastplume:_ I think it's too early in development to throw out scheduled fork changes

- _dburkett:_ Let's ask this: is there something we want to get in a hf that we can't finish by 5.0.0?
   - _lehnberg:_ I'd like to posit that we're in the sorry state of not even _knowing_ what we don't yet know here
   - _jaspervdm:_ Heh was about to type that.
   - _dburkett:_ Right, but how will a new scheduled hardfork help. will we know anymore 1 year from now?
      - _lehnberg:_ That's a fair point, in a way it just kicks the can down the road.

- _tromp:_ It's best to stick to the original storyline. that we would only do 4 scheduled hfs
   - _yeastplume:_ Linear falloff hf schedule?
   
- _antiochp:_ I'm with @tromp on this - future hfs should need to build enough consensus across the community
   - _lehnberg:_ How would we have handled the last cve this way?

- _lehnberg:_ There's no way we'd be able to plan for a good enough state in order for 5.0.0 to be the last scheduled hard fork. Happy to be proven wrong about it, I just don't see it, and wanted to kind of put it on the table
- _lehnberg:_ But at least it gives us a chance of getting better at this in the meanwhile.

- _joltz:_ At a certain point it has to be left up to the community otherwise we are just running a pseudo centralized network
   - _lehnberg:_ Agreed
   -  _jaspervdm:_ Agreed, thats why I was advocating for adding 1 extra. Then we could review at that point if we are at that point yet.
   - _yeastplume:_ Absolutely. I just think it's too early. we have virtually none of the 'future tech' in at the moment.
   - _dburkett:_ What 'future tech'? 
   - _yeastplume:_ We don't even have relative locks in at the moment, never mind the stuff that could build on it

- _lehnberg:_ I'd almost be inclined to go the other way: put five years of hard forks in. And if we get to a point where we don't need it, we take it out.
   - _joltz:_ The problem I think is that it will always be too early
      - 👍: _dburkett_
   - _antiochp:_ That's a lot of "we" and a lot of subjective "need it" there
   - _lehnberg:_ I don't disagree. But the whole thing is subjective - Why four and not eight scheduled hard forks?
   - _joltz:_ I don't think there is a significance here besides what was already committed to.
   - _dburkett:_ Because our bdfl said so. Relative locks should be in by 5.0.0. everything that builds on it shouldn't require a hardfork.

- _antiochp:_ Yeah - we agreed on a rough timeline early on, there needs to be a real solid reason to change that now I think
   - _lehnberg:_ I can buy that argument. So what do we do between now and jan 15 2021?

- _yeastplume:_ If we're not going to do more hardforks, we need to be very clear on what the consensus mechanism is for introducing them
   - 👍: _dburkett, joltz, lehnberg, bladedoyle_
   - _dburkett:_ Yea, that's a tough one

- _tromp:_ It's likely that we will have a *non-pre-scheduled* hf next year. It will instead be scheduled based on new features that were discussed with the community and that most agreed merit a hf.
   - 👍: _joltz_
   - _dburkett:_ It's not like we aren't creating new releases. We just won't hardfork. Most 'future tech' can be done with a soft-fork at most.
   - _yeastplume:_ Fair, we'll just be losing the ability to keep everyone on the same page
   - _dburkett:_ Yes. that's why we're having this conversation now. We need to build upgrade-ability into our code.

- _lehnberg:_ But who's "the community" here? the people on keybase? Are they the ones running the nodes? I fear that we'll get to a point where "the community" agrees, but the network doesn't fork
   - _joltz:_ I'd argue the community doesn't really agree then.
   - _tromp:_ The comunity is people joining the discussion on the grin forum, and keybase channels, and dev/gov meetings
   - _jaspervdm:_ How about exchanges, mining pools etc? if they refuse to join the fork, you're making it orders of magnitude harder for yourself.
   - _tromp:_ The consensus mechanism for new features is rfcs. We need to get pool and exchange represented.
      - _lehnberg:_ I don't think they care enough

- _yeastplume:_ One thing that's occurring, grin isn't as big as we think it is either.. we do tend to be in an echo chamber. we're a long way off pools and exchanges having an opinion on grin other than rolling their eyes and assigning developers to it whenever we introduce a new version.
   - 🙂: _joltz_
   - _jaspervdm:_ Right, which makes it more likely that they won't perform the effort to fork if its not forced on them.
   - _yeastplume:_ Do a lot of these arguments apply to where we'd like grin to be one day as opposed to where it actually is? This leads me back to 'far too early' thinking.

- _bladedoyle:_ How can a discussion lead to known consensus? how do we know those in the discussion are not just puppets?
   - _dburkett:_ Kyc 😜 
   - _joltz:_ You can't, that's why I said that if the network doesn't fork the community doesn't actually agree
   - _bladedoyle:_ So reaching consensus means convincing the dev team. How is that different from the dev team just deciding to have a hf?
   - _yeastplume:_ @bladedoyle I think the point is that if we cut off all hfs, we'll need a better mechanism than that. Convicing the dev team to add new features just means getting an rfc accepted by the community (then anyone can develop it). That is, new features that don't need a fork.

- _lehnberg:_ If we don't add any scheduled hard forks, how do we do unscheduled hard forks, and (somewhat separately) how do we do soft forks?
- _jaspervdm:_ If the dev team decides to do a hf that is not pre-scheduled, users can just not follow the updates. So I _do_ think its fundamentally different
   - _tromp:_ Maybe we can avoid soft forks alltogether. If consensus layer is worth changing, then it's worth changing by hf.
   - _bladedoyle:_ Soft forks seem very messy and arguably less democratic than hard forks.
   - _dburkett:_ You can get quicker deployment with a soft-fork though. And then clean it up later during a hardfork (assuming we aren't bitcoin's level of hf-averse).
      - _jaspervdm:_ You would have to keep the ugly stuff in though, to be able to validate the intermediary blocks.

- _bladedoyle:_ Honestly I think we don’t need to worry so much about it yet.   “the community” is small and generally agrees.

- _dburkett:_ A soft fork is a consensus change
- _tromp:_ Grin has no reservoir of nop instructions waiting to be softforked
   - _dburkett:_ Good point. I proposed a way of allowing future kernel types.

- _dburkett:_ Also, the non-interactive txs proposal is almost soft-forkable as-is. I'll bet I could even come up with a way to do it full-sf
- _tromp:_ Grin has kernel features, but they should not need nearly as much new functionality as bitcoin script

- _jaspervdm:_ That would not allow us to change signature scheme for example, right? Basically allowing any kernel type as long as signature is correct
- _dburkett:_ It could allow you to add an additional signature scheme, but not modify the existing one. But there's a lot you can do with that.
   - _jaspervdm:_ Yeah true, was just trying to understand
   - _tromp:_ I'd rather introduce new kernel features by hf than softfork.

- _bladedoyle:_ Grin is still very centralized anyway.  I think a few more scheduled hf won’t hurt as much as it would help.

- _dburkett:_ I could make the existing signature scheme useless, have everyone publish blinding factors, and add a new signature scheme that actually enforces consensus. Not sure you'd want to, but there's lots of weird things that could happen.

- _yeastplume:_ How about something like, 'if we don't come up with an acceptable consensus mechanism for introducing hfs by a certain date, we schedule another hf for one year from now, to repeat until first condition is satisfied?'
   - _dburkett:_ Well, bitcoin still hasn't figured out an acceptable consensus mechanism. Because one likely does not exist.
   - _joltz:_ Decred's model is novel
      - _dburkett:_ For sure, but is it "acceptable"? does it result in the best tech being deployed?
      - _joltz:_ It doesn't fit with our minimalist philosophy imo, but may be a viable alternative in general.

- _tromp:_ Ok, let me turn that around: If we don't manage to do an impromptu hf within one year after hf4, then we'll go back to putting in 2 more scheduled hfs (each one year apart).
   - _dburkett:_ Eh, I don't want to encourage impromptu hfs. I just don't want to make them impossible
   - _antiochp:_ Kind of blackmailing the exchanges and mining pools with that one
   - _yeastplume:_ That means we schedule 2 hfs in for years 4 and 5, and our first impromptu hf removes them?
   - _tromp:_ Yes. If we prove we can do hfs on as-needed basis, we shouldnt need the prescheduled ones.
   - _lehnberg:_ Doesn't that just incentivize impromptu hf1 but not impromptu hf2? What's to say the 2nd one will work just because the 1st one did?
   - _antiochp:_ Each hf schedules a subsequent one a year later, and cancels any other scheduled ones.

- _lehnberg:_ Just to be clear on my own (fluctuating) position: 
   - I don't think we should keep scheduled hfs in indefinitely, and see it as a centralization problem.
   - I do think that if we don't have scheduled hard forks, it's going to be very difficult to hard fork at all.
   - I do think that we are in dev mode still and will be painfully needing to introduce consensus breaking changes for a long time forward, but definitely more so early on rather than later in the future. Now how long is 'long enough'? No idea.
   - _yeastplume:_ My position fluctates within those general parameters as well. So, moving on from here, obviously we're not going to resolve this now, but we need a separate issue started to resolve this soon. And the main focus for that issue would be 'how do we intend to agree on and perform hfs after hf4'. Well, one main focus anyhow.

- _yeastplume:_ But in the meantime, for planning purposes we should assume the default, and plan as if hf4 is the last. is that fair?
   - 👍: _jaspervdm, joltz, antiochp, lehnberg_
   - _lehnberg:_ Seems good to me 👍
   - _tromp:_ Yep
   - _quentinlesceller:_ 👍

### 6. Sample project
- _yeastplume:_ I wanted a quick discussion on this point,  just enough for a yeah or nay on whether it's worth discussing further. Moving all the configuration and startup, etc into a separate project altogether, making 'grin' and 'grin-wallet' library projects. Then we have a top-level project that handles the setup and environment for both and produces the grin-wallet and grin binaries as separate targets. It would also include all integration tests that use both, as well as another binary/lib that starts up servers and wallets quietly and exposes their apis for other consumers (e.g. developers of wallets).
   - _quentinlesceller:_ I think this a very good idea 
   - _jaspervdm:_ Yep
   - _tromp:_ I think grin-miner can also be a libary, with the executable built in joint repo.
      - _quentinlesceller:_ Grin-miner would be a bin which would use the grin library. We could build grin-miner as well from there @tromp.
      - _yeastplume:_ Yep, we could include grin-miner too
   - _dburkett:_ That last line has me iffy
   - _dburkett:_ We have a new binary that then creates child processes?
      - _jaspervdm:_ Could be within the same process
   - _yeastplume:_ I'm thinking about a sample harness that lets developers use that project as a foundation for their gui wallets. Not so focused on the detail at the moment, but such a harness would have a lot of shared init code with the current command line init and startup.

- _joltz:_ I think we'd want to considering it's use for some integration testing

- _yeastplume:_ It might make development a tiny bit more tedious separating the library out, but  I think it will help quite a lot with our testing and enable upstream development

- _bladedoyle:_ Having a lot of separate repos makes it harder to build from source.   
   - _jaspervdm:_ End users will not be building that repo likely. It will be used as a depdenceny by (gui) wallets.

- _yeastplume:_ Okay, sounds good anyhow. nice thing is that the consolidated repo can be worked on independently of everything else, we'd just need to decide when to rip out the init code from wallet and server. I'll start an issue (and perhaps even a repo) anyhow, and we can discuss timing at the next meeting?
   - _quentinlesceller:_ Sounds good to me 👍
   - _bladedoyle:_ Does each binary/ lib really need its own repo tho?   
   - _yeastplume:_ No, we'll have one repo that produces all 3 binaries. Grin, grin-wallet and grin-miner
   - _bladedoyle:_ 👍 

### 7. Testing
No update.

### 8. Packaging

No update.

### 9. Other questions

None.

**Meeting adjourned.**
