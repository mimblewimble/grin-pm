# Meeting Notes: Development, June 11 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5cffc251fb90a50459f2674b). Meeting lasted ~ 70 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- bladedoyle
- condiosluzverde
- chisa0a
- davidburkett
- garyyu
- hashmap
- jaspervdm
- kargakis
- lehnberg
- mcdallas
- quentinlesceller
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

_yeastplume:_  So, most importantly, 1.1.0 was released. If for some reason you've missed this, update notes are at https://forum.grin.mw/t/upgrade-information-grin-v1-1-0/5147.

The other major news at this point was a collective decision on the contents and timing of the upcoming 2.0.0 fork, perhaps even more important that everyone with an interest in Grin familiarize themselves with every action they may need to take and when: https://forum.grin.mw/t/grin-first-hard-fork-mid-july/5148

We've decided that only HF critical work will go into the 2.0.0 release, so work is ongoing on that, with other non-crucial pieces deferred until after the HF. We want to keep the number of moving parts to a minimum to try to ensure as smooth a 2.0.0 release as possible.

Antioch has been on fire, in particular making Dandelion++ enhancements. Hopefully we'll start seeing some of these improvements post 2.0.0.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/143) accepted, with the removal of the POW discussion point (to be discussed in the governance meeting next week).

### 3. Action point follow-up

#### 3.1 v1.1.0 communication

_lehnberg:_ [Actioned](https://forum.grin.mw/t/upgrade-information-grin-v1-1-0/5147).

#### 3.2 Documentation of git branching model

Not done yet.

#### 3.3 CI Status

_quentinlesceller:_ secp256k1-zkp has not been moved to Azure yet. I intend to do it, but see it as a low priority right now.

#### 3.4 Integration tests review

_hashmap:_ I started, but I’m not sure what to do with wallet functionality. Writing a mockup for node tests is one option, creating a separate integration project another one. It would give us ability to cross version tests.
   * _yeastplume:_ Yes, ideally we'd want to be able to test all wallet-to-wallet http (or whatever comes next) functionality as well. A separate integration test project might be the way to go.

#### 3.5 Filing issues of security audit report findings

_yeastplume:_ I've not gotten to it yet.

### 4. Security review status

- _yeastplume:_   I don't have anything new here, does anyone else?
   - _lehnberg:_ I suspect v1.1.0 and 2.0.0 planning got the best of us these last weeks.

### 5. v1.1.0

- _yeastplume:_ There were a lot of changes in 1.1.0, and I'd say changes in the future, particularly between slates and the API itself, won't be as dramatic as in 1.1.0.
   - _davidburkett:_  I think it would be advantageous to get better about design reviews. A change as big as the one that was made around APIs and slates was far too large to have not had community discussion first.
   - _lehnberg:_ Agreed, we need to get better at how improvements are proposed, evaluated, and planned for.
   - _yeastplume:_ Yes, agreed more community discussion needs to happen around everything that's proposed.

- _garyyu:_ It took a long time for us to release this.
   - _lehnberg:_ I would agree - we ended up taking a long time to release, we threw in a bunch of stuff, and it got quite messy given our fixed 2.0.0 hard fork schedule.
   - _yeastplume:_ Indeed, this release did take a while to get out, and ended up being too close to 2.0.0. But we're going to get better at release planning, and we'll most likely have something to say about that at the next governance meeting.

- _yeastplume:_ There are no plans for a 1.1.1 unless something extremely critical comes up. All work at the moment is being directed at 2.0.0.

### 6. v2.0.0

- _lehnberg:_ Relevant 2.0.0 milestones: 
   - node: https://github.com/mimblewimble/grin/milestone/12
   - wallet: https://github.com/mimblewimble/grin-wallet/milestone/2

- _davidburkett:_ I’d like to see mimblewimble/grin#2789 included, if possible. Not a huge deal if we can’t though. I asked for it in 1.0.0 and got the response to wait for it.
   - _yeastplume:_ I think since we've already agreed to keeping non-essential PRs out of 2.0.0 for the time being, we should stick to that plan out of fairness to everyone else who wanted to get stuff into 2.0.0 but was told 'no', and do a better job pre-planning 3.0.0.
   - _antiochp:_ I commented in the PR itself - maybe we can find a non HF solution to rolling this change out.

- _jaspervdm:_ Re bulletproof rewind: grin PR will go out of draft today, wallet tomorrow probably. They should be reviewed and tested together, although they rely on tromps PR to behave as expected, for the chain dependent header version height.
   - _yeastplume:_ Okay sure, I will review them over the next 24 hours then, I guess we need to get tromp's PR reviewed and integrated ASAP as well.
- _quentinlesceller:_ Floonet HF is in 10.5 days.
   - _lehnberg:_ Indeed, and according to our [timeline](https://forum.grin.mw/t/grin-first-hard-fork-mid-july/5148) we have beta binaries ready for release in 6 days. Beta would assume all PRs have been merged by then? How realistic is that?
   - _quentinlesceller:_ If we review and merge BP change and Tromp PoW that'd be good no?
   - _yeastplume:_ Plus one or two others, but I should have them by end of this week, so I think overall we should be okay.
   - _jaspervdm:_ Yep that is definitely doable.
   - _quentinlesceller:_ Okay so maybe let's keep this as a target.

- _lehnberg:_ How are we doing on the private testnet side?
   - _quentinlesceller:_ We can make a private floonet that forks at low height, just change the hf block height in our node and try everything with a small network. We could post a seed on the forum.
   - _yeastplume:_ Shall we target this for Tuesday next week? We should have the important PRs in by then, and beta binaries will hopefully be out. We might add a manual source change + compilation step to the private testnet setup process?
   - _lehbnerg:_ Okay so:
      - Monday 17 - beta binaries target (all prs in node and wallet milestones merged)
      - Tuesday 18 - private testnet

_meeting agreed_ 

### 7. Review our branching model

- _garyu:_  There was an old action point for branching strategy, but now it’s gone.
   - _lehnberg:_ We said that the first step would be to document our current model. It’s an action that was on Igno, that’s not happened. Is someone else able to pick that one up?
   - _yeastplume:_ Yes, I will document the current thinking and we can go from there.

### 8. Other questions

None

**Meeting adjourned.**
