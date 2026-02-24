# Meeting Notes: Governance, Apr 23 2019

Governance meeting held Apr 23 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5cbf288c1cd0b8307d5cf8c7). Meeting lasted ~ 75 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* chisa0a
* crazymonkyyy
* davidburkett
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* lehnberg
* mcdallas
* yeastplume


_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/105) accepted, with a point in "Other questions" added by @lehnberg: "Improving evangelism".

### 2. Action point follow ups from previous meetings

* _ignopeverell:_ Funding for @lehnberg has been processed, and remainder of ETH holdings were converted at the same time.

### 3. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* _ignopeverell:_ Coinspect has started working on some final findings and the final report, they've also been auditing the wallet crate. Final report was due 4/20, but we're happy to give them additional time as required. I'll ping them before the end of the week just to make sure everything is on track.
 
### 4. Funding status

* _lehnberg:_ I’ve started looking at writing the [Q1 funding transparency report](https://github.com/mimblewimble/grin-pm/pull/114). Will first try to dig into old data and update the income logs as needed. And then provide a snapshot of where we were at Mar 31 2019.
* _lehnberg:_ @yeastplume funding end of October. @ignopeverell did you receive your remaining funding? I recall you only got partial before.
    * _ignopeverell:_ I still have to finish up the last bit I think, about $4100 equivalent.
* _garyyu:_ Besides the report, it might be good to estimate the funding requirements we have, in order to call out for more support from mining pools & ASIC miners.
   * _lehnberg:_ Yes - a budget would be a good idea to get a feel for what would be required there.
   * _yeastplume:_ We need a sustained effort as opposed to taking the foot off the pedal once we have no immediate funding needs. We should really be operating in a sustained and continuous fundraising mode.
   * _lehnberg:_ In terms of forecasting our projected financial needs, at the moment we have kind of two “types” of spends, one that is coming from the project, and one that is separate, i.e. yeast funding. I suppose we include the latter in the forecast as well, to understand our burn rate etc?
      * _yeastplume:_ Yes, I think so
      * _ignopeverell:_ Agreed 


### 5. Promotion of other projects

Related issue: https://github.com/mimblewimble/grin-pm/issues/52

* _lehnberg:_ Right now we have three sections in friends of grin:
   1. Hall of fame
   2. Companies
   3. Individuals
 
   What’s the smallest step we could do to promote other projects/entities that contribute to supporting the wider grin ecosystem, in one way or another, that’s not necessarily direct financial contribution?

 * _ignopeverell:_ Perhaps a bit of a tutorial for application developers on where to get started?

* _lehnberg:_ We _could_ also just put another section in the friends of grin area where we gave companies some cred if they had dedicated grin staff, or something.
   *  _davidburkett:_ I don't think that would actually convince many companies to contribute though. The only way most companies are going to invest $ into development is if they think they're going to profit from it. This is true for the whole Friends of Grin section however.
   * _lehnberg:_ Not a big fan of it either: I don't see how it all will fit and worry it will be a bit overload on that page. It’s already quite busy on there. But i also don’t have a better suggestion.
      * _ignopeverell:_ Same here - even though I agree with @DavidBurkett, I'd support that addition. Companies/Entities to go on there could be vault713, BlockCypher, and Cycle42 for example. 
      * _lehnberg:_  There’s also a bunch of companies that make pledges to donate or mining software providers that honor (or at least donate like they are) the fair mining license. So I guess let’s go for it, I can create an issue on `/site` and we can see if someone is willing to pick it up, and we can iterate from there.

* _ignopeverell:_ Perhaps we can add a section about that in the funding update as well?
   * _lehnberg:_  Would like it to be quite objective. raw financial data. It might be nice to include in a “Grin Quarterly” type of report? Covering what’s happened in the past quarter, notable changes, funding highlights, releases, meetups. A relevant section on contributions and funding could be included there.
   * _ignopeverell:_ Sure, we could release both around the same time then.

### 6. Other questions

#### 6.1 Improving evangelism
* _lehnberg:_ @garyyu had mentioned some things we want to build (flyclient, confidential assets, rsa accumulators, etc.). We have a lot of things to build, we want to move faster, and yes we need more resources, but the biggest resource we need (imo) is more people involved, not more funding. We need funding too, but at the moment, our list of regular contributors (of all levels) is not growing that much, and I wonder why that is and how we can improve on this.
* _ignopeverell:_ Agreed and I wonder as well, would love some input.
* _davidburkett:_ The core devs are all in gitter and the users are all elsewhere (like on telegram or discord).
   * _antiochp:_  I doubt we have a pool of "ready and eager" devs in discord who simply don't know how to find us here in Gitter.
   * _davidburkett:_ Yeah, I don't think you'll attract devs directly there, but I know the project has very little visibility overall, and that's because there are so few users. And there are so few users because Grin as-is can only be run by advanced users, and there might be a marketing problem. 
* _lehnberg:_ Example: @ErnestKissiedu_twitter has been chasing me to join this Rust meetup he’s doing in London regularly. I don’t feel I’m the right person to represent Grin at a Rust developer meetup, but if someone else wanted to join, that would probably be a great way to attract talent to have a look at us. I'm not saying we should buy facebook ads, but we probably have some room to improve on raising awareness in the right circles about the project, the tech, the cool stuff we’re doing, our ethos, and why it’s fun to get involved.
   * _ignopeverell:_ Evangelism
   * _lehnberg:_ Yes, that's right, we need grinvangelists!
   * _ignopeverell:_ So how do we get better at this? We'll leave this as a take-home assignment for a future meeting! 

**Meeting adjourned.**
