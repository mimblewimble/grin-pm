# Meeting Notes: Governance, Dec 03 2019

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5de678cd8e906a1c8d619b7c). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* DavidBurkett
* jaspervdm
* lehnberg
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/220) accepted.

### 2. Action point follow ups from previous meetings

* Write Q3 Financial Transparency report
   * _lehnberg:_ Not actioned,  I did however get the income and spending logs up to date (I think): [mimblewimble/grin-pm#222](https://github.com/mimblewimble/grin-pm/pull/222).

* Publish Open Research Problems on website
   * _quentinlesceller:_ [Actioned](https://grin.mw/open-research-problems)

* Publish Grin 2020 roadmap RFC
So that gives you a little tease at least
   * _lehnberg:_ Not actioned. I did talk a bit about it and what I would like to see as contents in the [grincon1 talk I gave the other week](https://www.youtube.com/watch?list=PLvgCPbagiHgrQa5KVt4XixK9t_NbfpkuP&v=hZuFWTi6iJc) though. I will try to get to this, after the financial report. 

### 3. Grin-forum.org

#### 3.1 Status of forum.grin.mw
* _lehnberg:_ I've not done anything on this yet. Given that the domain expires in Jan, we have _some_ time, but not too much of it. I will try to have some update for next governance meeting.

#### 3.2 Allowing closed source projects on forum?

* _lehnberg:_ There was a question about allowing closed source projects on the forum: https://gitter.im/grin_community/Lobby?at=5ddbf852c52bc74c968c8d14
   I quote:
   > Is there a problem to have posts about wallets that are closed source in the forum?
   > Example: https://forum.grin.mw/t/flare-wallet-simple-to-use-wallet-with-grin-support/
   >Closed source wallets can steal funds more easily than open sourced wallets, but this alone does not imply that every closed source wallet developer is a scammer.
   >To forbid any closed source software to be promoted in our forums is quite a restriction to have. At the same time, allowing closed source software that does not seem to be an immediately obvious scam (whichever way that can be determined), also exposes the community to risk of being ripped off.
   In the thread we got replies and thoughts from Jasper, Blade Doyle, David Burkett, Energyburn, Hashmap and others. Just wanted to get some kind of decision that we're good to proceed with allowing closed source projects. In the thread I write:
   >  thanks all for sharing. I read this as no particular action required at this stage.
   So I guess we're good with that?

* _quentinlesceller:_ I'm okay with that.
* _yeastplume:_ I'm okay with allowing closed source projects. Not allowing them is opinionated, preachy, etc... some people or orgs might have their reasons to keep their source closed.
* _jaspervdm:_ Yeah, I dont want us to become some kind of judge on each project (whether its a web wallet, closed source or even open source). But at the same time we don't want new users to get scammed. So I would be fine with some kind of disclaimer on third party wallets, if we think we need that.
* _tromp:_ Scams can come with either closed or open source; we should allow anything that doesn't appear like a scam.
* _lehnberg:_ I've been getting DMs about "hey you need to take this down as I think it's a scam" kind of thing in the past. I don't really know how to answer, without getting into really subjective debates.
   * _tromp:_ People can point out red flags in the product/service thread itself.
   * _lehnberg:_ Okay, and alert a mod and then there's some discussion and a "ruling" or whatever? How do we decide whether a custodial web wallet is an exit scam in the making or not?
   * _yeastplume:_ Do we need to? Who makes us the ruler here? And who do people appeal to? I can see a lot of problems if we get something like that wrong. We'd have to be passing opinions on people's intent as well. I think it's safest to let the community have their say in whatever thread. Encourage people to read entire threads before using a service, and staying out of it
      * _DavidBurkett:_ This makes you the ruler: https://forum.grin.mw/g/moderators

##### Decision: Closed source projects / potential scams on forum:

* _lehnberg:_ In lieu of an actual moderation sub team (more about that in just a moment), I'd be very much in favour of taking discussion about these things in the open. So far we've said:
   1. Yes to closed source on forum;
   2. If someone thinks something might be a scam - say so in the thread;
   3. If there's a really egregious problem with a post - alert a mod, with a clear motivation. Mod might take additional actions.

   Does that sound right? Anything more to add at this stage?

_No objections, explicit support from quentinlesceller, yeastplume, jaspervdm._


### 4. Grin.mw

#### 4.1 Link to grin financials on site

* _lehnberg:_ I've not linked financials onto the site yet. Others are very welcome to take a stab at this, whilst I deal with the other points of shame I have on my todo list.

#### 4.2 Ensuring multiple people have access to grin.mw domain

* _lehnberg:_ This one is not actually on me! @0xb100d has signalled intention and agreement, but has not had a chance to action it just yet. I believe the idea is to get a new account set up for the grin.mw domain, that then @0xb100d would share credentials for with others. I guess we could do Samir's secret sharing of the password or something. Other ideas are welcomed.

### 5. Grincon1 follow up

* _lehnberg:_ Happy to say that [slides and talks](https://github.com/mimblewimble/grin-pm#grincon1) have now been uploaded. Anything we should look to evaluate following the conference? what went well, what went less well etc for next time? @tromp did you get reimbursed for the donation to c-base? Are there any more donations due?
   * _tromp:_ No, not been reimbursed yet.
   * _lehnberg:_ Okay let's take an action on that for the council and for me to update the spending log afterwards.

* _lehnberg:_ What went well was sponsorships I think, was nice to get some support from both QTUM and SparkPool. Also went well was the submissions for talks, we got more than expected. But it ended up being tight on time allocations for the speakers.I think the shorter talks were actually nice though, and we did kinda okay with timings. We did however get delayed an hour due to slow start etc.

   Guess maybe next time begs the question if it's worth doing multi day events etc.

   Was nice to get people from other mw projects to speak. Someone suggested we invite a proper Grin hater next year to speak, which I think is a great idea! By the looks of crypto twitter, we probably wouldn't have a problem finding someone :)

   Does anyone have any other feedback? It's a wonderful opportunity to get your ideas sealed into the book of meeting notes forever.

   * _yeastplume:_ Yes, was a very good event, I thought. Really solid turnout as well. Probably more than one grin hater candidate around for future events, though it might be harder to find one with real technical gripes. Plenty around who are really just cheerleading their particular bags
   * _tromp:_ Nice to see grinoire and to feel its heft:)
      * _jaspervdm:_ Yeah definitely. Considered buying it, but it's a bit more expensive than I'm comfortable spending on it haha. Nevertheless really cool.

   * _lehnberg:_ Indeed - awesome/mindblowing work on that @0xb100d. In stock here: https://tmgox.com/product/grinoire-cypherpunk-anthology-book-pre-order/.
   * _yeastplume:_ Indeed, great tome. Don't recommend carrying it around Berlin when hungover though.

### 6. RFC & Sub-teams update

#### 6.1 Moderation team
* _lehnberg:_ We really need a Moderation team. The person who had volunteered, and we had made some progress with, unfortunately had to pull out
for personal reasons. I've a couple of replacement ideas in mind, but have not had a chance to speak to those in question yet. So shame on me, and if there's any comfort, please know that I'm being punished for my lack of progress as I spend my days writing moderation justifications like [this one](https://forum.grin.mw/t/mod-off-topic-screenshot-from-arrrr-telegram-group/6646/10) until this sub-team is working as it should.


#### 6.2 Other teams

* _lehnberg:_ Any other sub-teams that want to be created? There's someone in /dev asking questions about how an exchange should integrate grin. Could this be the beginning of a Developer Experience (DX) sub-team?
   * _yeastplume:_ Not the worst focus for a sub-team.
   * _jaspervdm:_ Interesting idea yeah.
   * _lehnberg:_ What does this team do? documentation, guides? "frameworks" & "tools"? Maybe a bit of... dare I say... evangelism? of features & functionality?best practices?
   * _yeastplume:_ Developer relations as well. They basically solve all our DX issues in a convenient and pleasing way.
   * _lehnberg:_ Sounds exciting!

#### 6.3 RFC status review

* _lehnberg:_ @antiochp just merged [RFC-0006](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0006-payment-proofs.md). Congrats @davidburkett for getting it over the line, looks nice!

* _lehnberg:_ what's status of [mimblewimble/grin-rfcs#30](https://github.com/mimblewimble/grin-rfcs/pull/30) Improved Wallet State management? @quentinlesceller as a shepherd are you happy to get that merged?
    * _quentinlesceller:_ Yeah it's been in FCP for 7 days officially, and unofficially for 2 weeks. :) IMO we can merge it. Do you agree @yeastplume ?
   * _yeastplume:_ Yes, I think it can be merged now anyhow.

* _lehnberg:_ For Node API [mimblewimble/grin-rfcs#28](https://github.com/mimblewimble/grin-rfcs/pull/28) as a shepherd, I'd just like someone to take a look at the changes @quentinlesceller did for foreign / owner API split and then I'm happy to merge it.
   * _quentinlesceller:_ Yeah that would be much appreciated, especially the code [mimblewimble/grin#3094](Especially the code
mimblewimble/grin#3094).
   * _yeastplume:_ I can review it.

* _lehnberg:_ And then finally there's Tor RFC (the rest are WIP): [mimblewimble/grin-rfcs#24](https://github.com/mimblewimble/grin-rfcs/pull/24). @yeastplume what's the status?
   * _yeastplume:_ That one's been in FCP since nov 29th, so Dec 13 expiry.

### 7. Other questions

None.

**Meeting adjourned.**

*A 3.0.0 review followed in https://gitter.im/grin_community/dev immediately after the meeting.*