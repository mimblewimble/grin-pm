# Meeting Notes: Governance, Jul 14 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 80 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- johndavies24
- joltz
- lehnberg
- paouky
- phyro
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/313) was reviewed and accepted, with the addition of a "Play/replay working group" added to the "RFC & Sub-teams" point.

### 2. Action point follow ups from previous meeting

#### 2.1  Funding requests processed?
_Actioned._

#### 2.2  Spending logs updated?
- _lehnberg:_ _Actioned._ [mimblewimble/grin-pm#315](https://github.com/mimblewimble/grin-pm/pull/315) contains the relevant updates.

### 3. Documentation progress
- _lehnberg:_ I've not had a chance to complete the wiki audit myself, been slow progress on my front.
- _quentinlesceller:_ Documentation very little progress for the past week getting ready for v4. However after trying extensively readthedocs I think it's a too big burden to maintain compared to other simple markdown solutions.
- _lehnberg:_ Mm... I defo see where you're coming from.
- _quentinlesceller:_ That what stopped me mostly.
- _lehnberg:_ I think I need to look more at what other projects are doing.
- _quentinlesceller:_ There is basically sphinx and mkdocs.
- _lehnberg:_ There's defo friction around readthedocs.
- _lehnberg:_ Btw, is there a reason why we wouldn't want to have the rust one?
   - _quentinlesceller:_ @lehnberg like the rust book https://doc.rust-lang.org/book/ch01-01-installation.html?
      - _lehnberg:_ Yes. It's pure-rust docs implementation, sec... https://github.com/rust-lang/mdBook
      - _paouky:_ Looks good.
      - _quentinlesceller:_ Yeah that can be nice too. I think as long as we are going with markdown and start writing stuff we can quickly switch.
      - _lehnberg:_ "pure" rust may have been a slight exagerration. Yup 👍 anyone interested is welcome to come and talk about it in #dev or #general.
- _quentinlesceller:_ Just I don't think we should start writing the whole doc in the language used by sphinx.
- _quentinlesceller:_ Anyway this is definitely on my short term todo but was a bit discouraged by the mess that sphinx is ^^
- _lehnberg:_ I can't blame you.

### 4. Code of conduct progress
- _lehnberg:_ Progress so far is non-existent. Will look at it post 4.0.0, there's a bunch of other more important stuff right now imo.
- _paouky:_ Maybe I can take it up. What does it entail remind me?
- _lehnberg:_ https://github.com/mimblewimble/grin-pm/issues/309 specs it out quite well I think.
- _paouky:_ Got it. I'll see what I can do.
- _lehnberg:_ Great. Feel free to discuss in issue 👍

### 5. RFC & sub-teams update

#### 5.1 General
- _lehnberg:_ https://github.com/mimblewimble/grin-rfcs/pulls. I think the only one worth mentioning is https://github.com/mimblewimble/grin-rfcs/pull/57.
- _lehnberg:_ Looks like we should merge this one?
   - 👍: _antiochp, joltz, tromp, quentinlesceller_
- _lehnberg:_ That's done. The rest no update, I believe?
- _quentinlesceller:_ Nope.

#### 5.2 Sub-teams
_No update._

#### 5.3 Play/Replay working group
- _lehnberg:_ Given the very active discussion we've been having about play/replay and variations. Recently. And the two "branches" of possible solution, one going towards consensus layer mitigation, the other going towards wallet-level mitigation. Let's put together a working group consisting of interested individuals that can hash this out and come up with a proposal (in the form of an RFC?) that we can then make a decision about.
- _quentinlesceller:_ Agree.
- _antiochp:_ I suspect reconciling two disparate solutions like this will be hard? Not entirely sure how a single RFC can emerge?
- _lehnberg:_ Good point. Maybe a single RFC would be premature. Perhaps instead an "information document" should be the deliverable. That outlines the issue, the known possible attacks we've identified so far, and potential mitigation strategies, alongside outline of their respective pros/cons. And, _ideally_ the working group would based on that document, comes with a (subjective) recommendation, like:
   >  "we the working group believe we should go with x, because y, and z".
   
   And if that's not possible, then at _least_ there could be something like:
   
   > "the working group is split on this issue. Some think we should go with x, because y and z. Others think that a is more suitable, because b, and c."
- _antiochp:_ This is an interesting situation because I think this is the first time we have encountered a "problem" with two possible/potential competing solutions. Previous (vigorous) debates have been limited to "do we do x or not". Rather than "do we do x or y".
- _paouky:_ The only reason I see for a decision to be made is if somebody trustworthy and capable (who didn't participate yet) joins one side of the argument.
   - _lehnberg:_ I'd be disappointed if we'd be unable to write a document that's unbiased on various positions, despite having our own subject personal opinions about what the right decision is.
- _antiochp:_ The "pro consensus change" camp has a big incentive to resolve this prior to hf4.
   - 👆: _johndavies24_
- _tromp:_ There's also the closely related RFC for allowing duplicate outputs.
   - _lehnberg:_ Remind me again what the situation is with this. Is there a clear opinion for/against at this stage? Is it all contingent on approaches with play/replay?
   - _tromp:_ The situation is that forbidding duplicate outputs can prevent txs from entering mempool. Which is considered undesirable in different circumstances. One being payment channels, the other being the tx expiry proposal.
- _lehnberg:_ That's why ideally you have people from "both camps" participating, so that you can agree on a common baseline of truth. If we can't agree on a common truth, then I struggle to see how we're going to make a valid decision.
   - _paouky:_ I see your point, but I am skeptical. Some debates have two sides relying on two different basic assumptions (see bitcoin's block debate) that can't be translated into actual facts.
   - _lehnberg:_ Your skepticism is noted, I hope we can make you positively surprised.
- _joltz:_ Maybe the working group can produce a "fact-finding" document which would be the basis to build potential rfcs.
   - 👍: _quentinlesceller, lehnberg_
   - _lehnberg:_ Yes, exactly.
- _antiochp:_ "core" has veto rights here, right? 😇
   - _lehnberg:_ On facts? Hardly.
   - _johndavies24:_ I do not see the value you get from this statement when we all know it's true and add on top the many comments from many individuals about issues with the core.  It makes "competing rfcs" seem like a futile and frustrating exercise that will not be fair or balanced.
- _antiochp:_ What @paouky said - there is a real risk we are starting from incompatible assumptions with this one.
   - _lehnberg:_ I just don't see what assumptions have to do with facts. One can still outline a bunch of assumptions (that may differ), but they cannot have an impact on facts.
- _antiochp:_ Bitcoin block size is the canonical example here - facts don't necessarily resolve anything.
- _lehnberg:_ Are you saying that a 1 page (or 2 page) fact sheet about the various positions of the bitcoin block size debate is not possible to be produced?
- _antiochp:_ Possible to produce, but next to zero value. "Facts" are also inherently political but that's a whole other thing. (Not saying we are at that level of conflict, but its an example.)
- _lehnberg:_ Right now, I don't have a clear understanding of the trade/offs of each branch of proposal. It would be useful for me to understand what's good with each, and what cost each comes with. I don't think it's impossible to produce such a document without it being unbiased. I get that some have very strong opinions about what the correct solution is. I'm not one of those people. If someone is very convinced which way is the right one, it should be straight forward to outline the pros/cons with the approach. Am I the only one who would value such a document? If so maybe it's better I write it for myself instead.
- _paouky:_ It would definitely be valuable for people like you and me who don't understand entirely the whole situation and proposals. But it won't do much to convince either side I am afraid.
   - _lehnberg:_ That's fine! That's not its purpose.
- _paouky:_ I agree its inevitable that whatever is decided, somebody will be against it.
- _joltz:_ It would be challenging to produce of both camps have already made up their mind unfortunately. I think part of the problem is that, at least for me, regardless of the details of the particular situation, a consensus change should _always_ be the last possible resort. There is some nuance There that can be hard to get at with a "fact-finding" doc as far as how to convey this risk concisely and accurately for the given circumstances without spending a ton of effort.
   - _johndavies24:_ I appreciate this sentiment, that consensus change should be the last resort.  I would argue that the consensus is flawed and allows for behavior that does not exist in the industry.  But more objectively, I would ask how one weighs the importance of fund/balance security and whether or not security of funds should be hardened in consensus rules?  it is not as if our consensus rules are set and we now have to decide whether or not to change them, we are in a stage where we're literally expected to change consensus rules and we've changed them for far less reasons.
- _lehnberg:_ Well, the whole point of scheduled hard forks is to make consensus changes _if required_. How else are we going to figure out whether one is deemed required?
   - 👆: _johndavies24_
- _tromp:_ Some people are strongly opposed to having wallets offering the option to sweep outputs.
- _antiochp:_ Well if the problem can be solved without a consensus change then by definition it is not _required_ (regardless of pros/cons of either approach).
- _joltz:_ Unfortunately "requirement" is subjective and we will get arguments for both.
- _lehnberg:_ Okay perhaps it's worth taking a step back here. Is there support for having a working group formed related to this topic? `[...]` Okay, if I interpret 2 minutes of silence as "no, there is no support", then... How are we supposed to reach a decision on this subject?
   - _paouky:_ More people need to voice their opinion, so that one method seems to be of wider consensus. Then you just implement the contentious change.
- _quentinlesceller:_ Imo yes to produce a document outlining the problem and the possible solutions.
   - 👍: _phyro_
- _antiochp:_ I think a lot of people involved only feel there is a single solution here, one or the other.
   - _lehnberg:_ Great. Can we get those two solutions on paper?.
- _phyro:_ I think the problem and attacks need some further research.
- _lehnberg:_ How is voicing an opinion helping if we can't even frame the issue properly?
- _phyro:_ There have been many new cases found in just the last month. In order to really capture the surface well and know what the best solution is, we might want to first understand the whole area very well.
- _paouky:_ It should be framed properly. I was just describing how a decision will be made eventually, even if its contentious.
   - 👍: _lehnberg_
- _lehnberg:_ Okay, so how do we move forward?
- _joltz:_ What about an RFC for each approach? Then they can both be hardened for review by rest of the community?
   - 👍: _paouky, phyro_
- _tromp:_ That seems best.
- _antiochp:_ I was going to suggest something similar - these are competing rfcs.
- _tromp:_ If an RFC makes a claim you disagree with, then you can open issue on that.
   - 👍: _phyro_
- _antiochp:_ Competing being too strong a word but also somewhat true. Conflicting rfcs.
- _joltz:_ Yes, only one could be accepted.
- _lehnberg:_ That's maybe great for both camps, but I think it's a shame to make it into a competition basically. Pitting one RFC and group of people against the other.
- _antiochp:_ Its how all of this has always worked - this is just the first explicit instance of it.
   - _lehnberg:_ Yes, I get that some people have firm opinions, but I think there's also a group of people that do not have, and now have to "pick a side". It's exactly the type of thing I would want to avoid when it comes to making a decision.
- _joltz:_ Fwiw I will be contributing to both to make them as good as possible so we end up with the best possible option.
   - 👍: _phyro, antiochp_
- _tromp:_ Well, in the worst case, you end up with a fork.
- _lehnberg:_ And may do so prematurely.
- _antiochp:_ Yeah that's fair.
- _phyro:_ I think it's fine if some people say they are not satisfied with any of the presented solutions.
- _lehnberg:_ It's like calling a referendum in a country, it's not the best way to govern.
- _antiochp:_ Oof.
- _lehnberg:_ Seriously. If we're honest about trying to make the best decision. I'd expect us to work on outlining the pros/cons of _each_ proposal.
- _joltz:_ Doesn't RFC provide the structure for that though?
   - _lehnberg:_ No, it makes it really easy to spend time on the RFC you like the most. Rather than some spending time polishing one, others the other, and then we argue about which one is superior.
- _joltz:_ I would hope everyone would spend good faith effort on both but I guess that is not realistic.
   - _johndavies24:_ I wrote a biased summary yesterday and learned/finally understood more points since then and have acknowledged the wallet solutions seem to cover the risks for the most part.  I will write up an unbiased document and share it with tromp and antioch before everyone else to make sure it is fair.
- _lehnberg:_ Ignoring (at best) or sniping (at worst) the other. If you force these two groups to get into a "room" and try to agree on one document, you kind of force people to hear both sides of the story.
   - _antiochp:_ I'd argue that's not an effective way to govern either.
- _phyro:_ Agree, it would seem fair to try to 'up' the other proposals as well.
- _lehnberg:_ Look, in the end, it's going to be a core decision. Correct?
- _lehnberg:_ How so? Depends I guess on what the deliverable is.
- _tromp:_ Can an RFC assume that duplicate outputs will be allowed? e.g. so as to simplify the example scenarios, or not having to conditionalize everything?
   - _phyro:_ I'd suggest that in this case, there is a Duplicate outputs RFC and this RFC references it under "requires: Duplicate outputs" or smth.
- _antiochp:_ Yes, I see no reason not to make assumptions like this.
- _tromp:_ They were one of kurt's proposed rules.
- _antiochp:_ Making a contentious assumption would be different.
- _phyro:_ Duplicate outputs should also be challenged as part of it and would hence be nice for them to have its own rfc, otherwise you can't challenge this assumption it builds on. 🤷‍♂️
- _paouky:_ Damn this is complicated. Where is ignotus.
- _phyro:_ E.g. What kind of new replay attacks are possible with duplicate outputs.
- _tromp:_ Or how does a wallet represent duped outputs?
   - 👍: _phyro_
- _phyro:_ I'm confused what duplicate outputs even *mean*.
- _tromp:_ Having two utxo with identical commitment. At the same time.
- _phyro:_ Yeah but, I'd wonder... does a->a become valid? Does it not require a kernel?
- _tromp:_ Inputs must always be disjoint from outputs. I.e. cannot have same commitment.
- _antiochp:_ Let me clarify what I meant - I would assume there is going to be a "duplicate outputs" RFC and pending this, it is reasonable to make assumptions based on this. If we were to discover a compelling reason not to support duplicate outputs then this would impact subsequent work. (but we assume this is unlikely given what we know today).
- _phyro:_ That sounds good to me as long as there is a place to ask questions 👍
- _antiochp:_ As a counter example I would not think it wise to make assumptions based on us moving to bls signatures.
- _lehnberg:_ So coming back to the topic about the working group, obviously anyone is free to produce any RFC and submit it. There's been some show of support for having a working group on the subject, is there anyone against having it? Still not hearing anyone against having such a working group.
- _paouky:_ Who's on the other side of the argument right now? John and kurt? David as well?
   - 👋: _phyro_
- _paouky:_ Other side as opposed to tromp and antioch it seems.
- _lehnberg:_ Does it matter at this stage? I could be on the other side if it helps.
- _antiochp:_ Boo.
   - 😂: _phyro_
- _paouky:_ It matters to me, I want to know haha.
- _antiochp:_ Be right back - I'm being accused of trolling people on the forum.
   - 😂: _paouky_
- _phyro:_ I don't think this really matters as long as there are arguments laid out of both possibilities in the end.
   - _paouky:_ True I suppose.
- _joltz:_ For me I thonk it is pretty obvious: Why potentially damage the security model when we have not been able to show That we need to risk it? That being said, we only have one more chance to make a consensus change like this and we want to be 100% sure we won't have to end up making a consensus change at some point anyway. So I think we still don't have all of the facts and information we need to say with 100% confidence that we know a set of wallet rules that will mitigate all possible issues. In the same way we are not ready to say a consensus change will mitigate all possible issues without creating new ones.
   - 👍: _phyro_
- _lehnberg:_ We have a #wg_moderation working group that's completely dead, so maybe we shouldn't set up a dedicated channel for it. Maybe I just call myself a member of this working group, and anyone who wants to can join in and we can work on some kind of fact sheet.
   - 👍: _tromp, antiochp, phyro_
- _antiochp:_ I'd argue this is not about being fair and balanced and "both sides", its about objectively evaluating two different approaches.
   - _lehnberg:_ This I agree with.
- _lehnberg:_ But being objective imo is being balanced.
- _phyro:_ While I think I understand the rationale for consensus changing implementation, I'm afraid that rushing consensus changes could make us forget something even if it's something as simple as unique kernels. Let's not forget that replay attacks are actually really obvious and they seem to have been missed by everyone.
- _antiochp:_ And maybe those two different approaches need to be kept distinct and separate (just an argument against trying to produce a single doc).
- _phyro:_ I feel I need to clarify that my point is that crypto is hard, not that people are blind lol.
- _antiochp:_ To be fair I think it says somewhere in our docs "don't reuse outputs as they are at risk of replay". Which does not cover the entire "replay attack" but is close. Pretty sure igno put that in there early.
- _phyro:_ Ah, my bad!
- _tromp:_ Should also say: Beware of others reusing outputs on you:)
   - 😂: _phyro_
- _antiochp:_ That's the "new" part we missed I think...

### 6. Other questions
_None._

**Meeting adjourned.**