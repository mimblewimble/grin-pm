# Meeting Notes: Governance, Jul 02 2019

Governance meeting held Jul 02 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5d1b71915ce02535b00b2051). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* coolman_kurt_twitter
* chisa0a
* hashmap
* jaspervdm
* j01tz
* kargakis
* lehnberg
* nijynot
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/154) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Status of misc. /site improvements

* _nijynot:_ Have been working on the re-design. Will be posting what I've been up to in the few coming days in the [/design channel](https://gitter.im/grin_community/design).

#### 2.2 @hashmap added to SECURITY.MD
Actioned.

### 3. RFC Process proposal

* _lehnberg:_ Lots of stuff has happened since last meeting:
   * There’s now an [RFC repo](https://github.com/mimblewimble/grin-rfcs], which is a proposal for how we could work to introduce “substantial” changes and make improvements to Grin, heavily borrowed from Rust language’s own RFC process.
   * There is a [proposed RFC template](https://github.com/mimblewimble/grin-rfcs/blob/master/0000-template.md).
   * @j01tz and @yeastplume put in a lot of work to put together the repo with the [current RFC process proposal](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0001-rfc-process.md), and I took a pass at the texts over the weekend, including an update PR to the process (not merged yet): [mimblewimble/grin-rfcs#9](https://github.com/mimblewimble/grin-rfcs/pull/9).

* _lehnberg:_ Has anyone reviewed? Does anyone have questions? Should we perhaps walk through an example of how it could work? Does anyone think it’s a bad direction? Any alternative proposals/structures/templates we should consider?
   * _yeastplume:_ Perhaps one or two things to add, but I'm happy merging as is and starting to tentatively apply it.

* _lehnberg:_ A quick overview of the thinking: To propose a “substantial” change to Grin, you submit a PR to /grin-rfcs using the template. If the change relates to a sub-team (coming soon ™), the sub-team will be tagged and a shepherd from the team will be assigned to the PR, which will have the responsibility to make sure stakeholders respond as appropriate and that we reach a conclusion. If all is well, at some point, the sub-team will motion to get the RFC to a final comment period (10 days) where the proposal has a last chance to be commented on and iterated on. As it moves to FCP there’s a disposition to merge/close/postpone the RFC, and community can interact and offer opinion. If merged, the RFC becomes active, which means it gets an RFC number, and that this is something the community has said yes to *in principle* and can now be implemented. Implementation happens separately, and the RFC is not a final spec or anything, things might still change in implementation. An RFC will not be needed for simple documentation tweaks, and performance improvements, etc. Only when there’s big ticket stuff that needs to be thought through and aligned well with the community. Does it feel like overkill?
   * _yeasptlume:_ I do not think it is a particularly onerous process, RFCs don't need to spec out implementations in detail (unless they're specifications, of course). It will help focus and guide community discussions on important features and changes, as well as give everyone and anyone an obvious place to present their ideas to the community.
   * _antiochp:_ I think the biggest question is where to draw the line - which changes go through this process and which changes continue as simple PRs (+ discussion).
   * _j01tz:_ The line probably cannot be defined now in a way that covers all cases, but hopefully should naturally emerge based on the culture of the core team and each subteam. The added transparency may outweigh the added complexity.

* _lehnberg:_ An open question is what/who/when do we know an RFC is “good enough” to be merged and become active? Are we okay to leave it undefined for now and let the sub teams work this out?
   * _j01tz:_ Yes, it will be important for each subteam to set the tone for that. Similar to above, the culture will likely be different in each subteam to best reflect the community.
   * _lehnberg:_ Do all sub-team members need to agree? Can a sub-team member veto an RFC? Consensus-seeking is good in the sense that you “try to agree" but it’s not like anyone has got a veto and can block a process indefinitely.
      * _yeastplume:_   I don't think all subteam members would need to agree, but voting would be a last resort, one person vetoing/blocking an RFC isn't appropriate. If a consensus based decision for an RFC isn't emerging, it may really be contentious and needs wider consideration. Which might also lead to 'what can we change to make it more acceptable'.

* _lehnberg:_ So how do we move forward? Usually, we make governance meeting decisions and then that’s that. But it seems like we’re not a lot of people here today, and this is kind of a big deal. Yet nobody is disagreeing, or at least not saying they cannot live with this approach. Does it make sense to start feeling this out a bit? To consider that RFC process document still to be a "living breathing document” for now where we welcome changes/proposals? And we trial run it.
   * _yeastplume:_ Personally, I'd like to move forward in a GRIN-RFC world ASAP. I could live with general agreement to start following this process, still giving a couple of weeks for any serious objections or tweaks to the process before we officially make it active.
      * _lehnberg:_ Yeah - nothing’s stopping you from submitting RFCs today, right?
      * _yeastplume:_ Nope. As a matter of fact I'm preparing one and have about 3 more in mind.
   * _antiochp:_ +1 on trying it out with a few.
   * _j01tz:_ Those two weeks could be the "final comment period" in the spirit of the RFC process

### 4. Governance process proposal

* _lehnberg:_ There's an evolution of the forum post discussed in last meeting that's been [posted as an RFC to the RFC repo](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0002-grin-governance.md). Added a [new section](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0002-grin-governance.md#in-case-of-conflicts-disagreement-or-dissent) dedicated to answer some of those questions @chisa0a and @j01tz raised last meeting. The idea is to evolve council into: core, sub-teams, rfc process, and a bunch of values.
   * _yeastplume:_ This is really hand-in-hand with the RFC process, given much of the RFC process assumes subteams and shepards. 
   * _chisana:_ It makes sense that core will be arbiters for subteams when conflicts can't be handled internally. Thanks for adding that section. If the worst should happen, and core begins to stray away from the community, what are some steps we could take to correct that?
       * _lehnberg:_ It’s a good question. I think communication is key. Talking it through, giving direct and honest feedback, constructive criticism to make core more aware that they are pulling in one direction and community in another. There is no election process, because there is no electorate and it’s not a democracy, but I think good ideas for how to improve this are welcomed in general. In this document, the term of a core member is undefined, because that’s just how it was. And defining it leads to a bunch of other tricky questions.
       * _chisana:_ For sure, technocracy should remain. thinking more like members outside core seeing a serious issue (technically) with a decision being made by core, that affects everyone
       * _j01tz:_ The RFC process should also support making sure those issues are seen.
       * _nijynot:_ The community sub-team could also raise awareness to the core team if the community wants something. E.g. have the community sub-team represent the community in a way. At worst case.
       * _chisana:_ Yeah, seeing as most of the community likely doesn't attend these meetings, or read/write the forum, I think big noise to engage the community (voiced earlier) is a good idea around big decisions.

* _lehnberg:_ Node, Wallet, Infra, Ecosystem, Community, Fundraising, Moderation are the teams proposed initially. There was a proposal by @j01tz to add Security, and it was also something we had thought of, but thought we could live with being within core for now in order to keep it to seven groups and see how it all would evolve.
   * _chisana:_ I second @j01tz's idea, I think an independent security team is healthy, fwiw, even if it's additive to the members in core security.
   * _lehnberg:_ There’s merit to that. I don’t think anyone is against it, was more a cautious “wait and see” how it all evolves.
   * _j01tz:_ Security is a sensitive topic and i can understand why folks aren't eager to change things there quickly.

* _lehnberg:_ What do we do about this governance proposal? Do we consider this RFC in a FCP period as well? Perhaps start experimenting with one or two sub teams?
   * _yeastplume:_ Same as with RFCs, I think. Similarly, we haven't seen wild objections to it in principle
   * _j01tz:_ I don't see an issue to running both FCPs in parallel.
   * _yeastplume:_ Let's start getting subteams together where we can. It will take quite a while to fill them out as we have them planned here anyhow. And we may learn things that help us tweak the process as we go along.
   * _lehnberg:_ Right. I guess if there’s wide community objections in two weeks, we can go back to status quo. Any objections?

_There were no objections to going with this approach._

### 5. Security

#### 5.1 [Audits](https://github.com/mimblewimble/grin/issues/1609)

* _lehnberg:_ Hard fork is around the corner and we’re looking in decent shape, so time to move on this audit, i.e. publish the report, and publish the joint press release with coinspect, and statuses on the items discovered. I would like to propose we invite @chisa0a and @j01tz to this process as they’ve shown interest both of them, and we’re drowning in work. So if they would be willing to, I could share audit with them both (if they are on keybase) and then we can work together to get this all lined up.
   * _j01tz:_ happy to help with audit related drudgery
   * _chisa0a:_ down to help out wherever I can as well :)

_Support from @yeastplume and @kargakis, with no objections._ 

#### 3.2 [Bug bounties](https://github.com/mimblewimble/grin-pm/issues/149)
* _chisa0a:_ Nothing new, been consumed with other things. It can be removed from future meeting agendas and I'll add it when I have something new to report.

#### 3.3 Add a fourth contact to SECURITY.md

* _lehnberg:_ As user on the forum correctly pointed out, now that @ignopeverell is absent we are back to two people on the contact
so would be good to add another contact again to [SECURITY.md](https://github.com/mimblewimble/grin/blob/master/SECURITY.md). I’d like to propose @j01tz, who works in security, and arranged for our first audit to be made. Here’s [him in action](https://www.youtube.com/watch?v=FWBOp5x5jRI&list=PLvgCPbagiHgqOe0z_xgrIsGq-ayVZcNjy&index=4&t=0s) btw.
   * *coolman_kurt_twitter:* I would prefer for another member of the core team. Just my opinion, they have the most proof of work.
   * *lehnberg:* Today it’s @ignopeverell (BDFL, absent currently), @hashmap (dev, core), @lehnberg (non-dev, core). I thought it would be nice to have a non-core member to complement.
   * _chisana:_ Think adding a non-core contact could add unique perspective. could help balance discussion around bug reports, for example.
   * *yeastplume:* I'm okay with it, @j01tz was instrumental in helping us get our libsecp256k fork audited, as well as many other things.

##### Decision: Add @j01tz to `SECURITY.MD`

_Support from @kargakis, @yeastplume, @hashmap, @antiochp, @chisa0a, @nijynot, @jaspervdm in the meeting, later also @quentinlesceller showed support._ 

* *coolman_kurt_twitter:* Don’t we need the approval of the other core members for such an important decision ? Well not responding might be equivalent to approving
   * _antiochp:_  I don't see any reason why any other members would be opposed to this.
   * _lehnberg:_ We haven’t heard from @quentinlesceller, @garyyu, and @tromp I think they both might be away. I’ll solicit their feedback and if there’s objections we’ll deal with those.

### 6. Funding status

#### 6.1 Budget 
* _lehnberg:_ No progress since last.

#### 6.2 ETH and Grin donation addresses
*  _lehnberg:_ These donation addresses are in Igno’s control, and with them away, it doesn’t make sense to keep these up any more, so will need to be replaced or taken down. Should we just remove for now?
Or do we have better ideas?
   * _kargakis:_ Well at least the grin donation address should run in infra maintained/owned by the community. Or you have a way to do multisig so it doesn't matter really where it runs.
   * _lehnberg:_ With ETH, the realization was that there wasn’t a great ETH mu-sig option. So Igno just ran one and we would convert ETH donations ASAP to BTC and send to mu-sig in any case. And grin, well that was on grin-tech.org, which is Igno’s domain. 

* _lehnberg:_ Okay, not hearing any ideas here so I will PR a change to remove the current donation addresses and open an issue on /grin-pm for them to be replaced.

### 7. Other questions

None.

**Meeting adjourned.**
