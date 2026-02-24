# Meeting Notes: Governance, Jun 18 2019

Governance meeting held Jun 18 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5d08fc962313502d386f5837). Meeting lasted ~ 100 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* chisa0a
* garyyu
* hashmap
* jaspervdm
* j01tz
* lehnberg
* mcdallas
* nijynot
* quentinlesceller
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/147) accepted, with #3 that was raised by @tromp "POW: Putting phaseouts on hold" tabled due to his absence.

### 2. Action point follow ups from previous meetings

#### 2.1 Status of misc. /site improvements

* _nijynot:_ Still working on the re-design, trying to get this right before moving on.
* _quentinlesceller:_ Apart from the beautiful HF banner, no nothing.

#### 2.2 Comms channel for pools & exchanges
* _lehnberg:_ @hashmap and myself managed to action our point before this meeting. There’s now a keybase ecosystem group for mining pools & exchanges - any lurkers from either that want to be added to the group can DM.

#### 2.3 Hard fork document published
* _quentinlesceller:_ This has been actioned. I  contacted exchanges and mining pools, and also contacted mining software developers to be sure that they are aware and asked them for an auto switch. Looks like the biggest ones are working on it and will be ready. 

### 3. Security

#### 3.1 [Audits](https://github.com/mimblewimble/grin/issues/1609)

* _lehnberg:_ I have sadly no updates on audit, been knee deep in governance proposals. We’re still agreed with Coinspect to release a joint blog post etc but right now focus is on the hard fork.
   * _chisa0a:_ Can we expect publication past HF? Maybe 1-2 weeks after?
   * _lehnberg:_ I think that sounds like a possible timeline, but I guess it depends. There will be a publication for sure.

#### 3.2 [Bug bounties](https://github.com/mimblewimble/grin-pm/issues/149)
* _chisa0a:_ I just posted a [comment](https://github.com/mimblewimble/grin-pm/issues/149#issuecomment-503152220) with some more fleshed out details. It includes some answers to questions raised by @yeastplume and @jaspervdm. Still more to be done, but hopefully a good start,
gives some things to ruminate over, maybe more discussion post-HF.
   * _lehnberg:_ Yes, that was helpful, nice with some background info. How should we proceed here? Will you continue working on this?
   * _chisa0a:_ Yeah I can keep working on it. next steps will likely be research into how other projects minimize noise / maximize signal-noise ratio.
   * _lehnberg:_ It’s could be neat if community members donated somehow. They donated specifically towards the coinspect security audit, and we spent significant resources on that. So maybe that could be like a going bug bounty pool or something. Nice work! and nice to see it progress in the open :) Others who would like to participate in the bug bounty thinking should join in on the ticket.
   * _chisa0a:_ I think that makes sense. will also reflect how much community is willing to expend on bounties. you're welcome :)

#### 3.3 Add a third contact to SECURITY.md

* _lehnberg:_ As part of our [review of the vulnerability disclosure process](https://forum.grin.mw/t/please-help-evaluate-grins-security-process/4537) and previous governance meetings there were talks about adding a third person to our contact list in https://github.com/mimblewimble/grin/blob/master/SECURITY.md. Currently it’s @ignopeverell and yours truly. During the evaluation of what happened when we had our criticial vulnerability we found that two people on the contact list might not be enough. If one is away and the other is in transit for example then we’re screwed. So I’d like to propose that we add @hashmap to this list for now. He did an excellent job during that process and is, in my subjective opinion, good as another pair of eyes.

##### Decision: Add hashmap to `SECURITY.MD`

_No objections in the meeting, and support from council members._

* _lehnberg:_ Congrats @hashmap, welcome to a world of angst! If you are willing to accept the burden, feel free to PR your PGP key into SECURITY.md. 
   * _hashmap:_ Hm, ok! Sure, happy to sacrifice more weekends!

### 4. Governance iteration

* _lehnberg:_ In the last meeting, we mentioned we had some ideas for iterating on our governance process. Well, in [this published forum post](https://forum.grin.mw/t/proposal-grin-governance-iteration/5191) there are some more concrete ideas. It’s quite well motivated in the post so won’t repeat it here. I see there’s also been a some posts with ideas and thoughts in the thread, which is great. Generally speaking, the idea is to “push out” responsibilities and decision making away from core and get more people in the community engaged
and let core focus more on high level, cross-area stuff. And have smaller groups working more independently, the way they feel they want to work. We’re also proposing an RFC process, exact structure and template etc TBD. But it would be used for any “major” change to an area of the project, where “major” is to be defined according to the area itself. This is modelled closely from Rust’s governance model. The general idea is to slowly move away from having only these two bi-weekly meetings with a bunch of live chat and debate when we propose changes, and instead try to articulate stuff more clearly in written form, and then have asynch debates instead. And have smaller groups work and decide how they do stuff. They might not even like scheduled meetings and just have a dedicated forum or chat room where they decide in a different way.
   * _chisa0a:_ Sounds like a good idea. To play devil's advocate for a moment, say there is some dispute between a non-core subteam and core, how will the dispute be resolved?
   * _lehnberg:_  It’s very hard to say and depends on the situation I suspect. Probably no concrete super straight forward answer here just as with decision making in general. Soft influence and diplomacy is always useful.
   * _antiochp:_ Hopefully the teams and subteams have sufficient alignment that a conflict like that should be resolved way before it gets to that point.
   * _chisa0a:_ Right, but do decisions ultimately come down to core, or will it be put up to the wider community?
   * _j01tz:_ Both to an extent I would think. Core would have to agree to make it code and the community would have to agree to run the code.

* _yeastplume:_ Silence from rest of council is the result of being on more or less on the same page with respect to the proposal.

#### Decision: Set up RFC repo and process
  
* _lehnberg:_ In terms of how we might choose to move forward, I personally liked @condiosluzverde’s [suggestion](https://forum.grin.mw/t/proposal-grin-governance-iteration/5191/11) in thread: To put together a working group to hash out an RFC process and template proposal as an RFC-0, and then once that is in place use RFC-0 to propose sub teams as RFC-1. And look to have a draft proposal for RFC-0 ready in 7 days? Which is 7 days before the next gov meeting?What do you think about that?
   * _quentinlesceller:_ Seems like a good idea to start with a RFC-0 and that would be awesome if some newcomers could contribute. So we don't end up with the same persons again :) (no that it is a big problem per se). I guess creating the rfc repo and start with some PR/issues would do and maybe something more friendly like grin-forum could do.
   * _antiochp:_ Maybe forum first and then move to repo once it starts to take shape.

### 5. Funding status

* _lehnberg:_ Budget - no progress since last. @quentinlesceller made a good point about us needing to update https://grin-tech.org/general_funding. Would be awesome if that somehow could pick up on income log data or something.

### 6. Other questions

None.

**Meeting adjourned.**
