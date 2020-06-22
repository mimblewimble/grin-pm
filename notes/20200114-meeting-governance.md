# Meeting Notes: Governance, Jan 14 2020

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [#general in the grincoin keybase team](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* funkyswing
* lehnberg
* jaspervdm
* joltz
* nass769
* qitian
* quentinlesceller
* tromp
* xiaojay
* yawser
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/233) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Publish Grin 2020 roadmap RFC

* _lehnberg_: A first draft of a proposed roadmap RFC has been posted, https://github.com/mimblewimble/grin-rfcs/pull/38. It's based on my personal opinion and reading some of the comments in the forum. I'm hoping we could have a bit of a back and forth in the PR to the point where there's convergence on something that makes sense
   * 👍: _yeastplume_
* _lehnberg_: I think it definitely could be improved. For example, some parts are fairly open ended and vague, whilst other points are quite precise. I'm not sure which one is better. I think the list is also a bit long for it to actually be a roadmap. It feels more like a `wishlist` of stuff that's `maybe nice to have`, which I think is wrong.
* _yeastplume_: I suggested earlier we might want to split items more between development and research. Do we want to think in terms of deliverables that we can then map against a review later?
   * _lehnberg_: I mean if we could get there, that would be great. But can we really do that?
   * _yeastplume_: With some tasks yes, others it could be as vague as 'we have a github issue exploring it that's had sufficient activity'
   * _lehnberg_: Yes, we could expand on each item in the roadmap and determine what quantifies as success and how it's measured etc.
* _lehnberg_: Ideally, we would shrink the list to the point where it feels focused and doable, and then try to really go out and achieve it. But take for example 'transaction building' or 'output linkability' – we may not have a very clear answer today what we're doing there. 
   * _yeastplume_: I think that makes sense, but we're also in the discovery phase at the moment, the first task being to list of the outstanding items, developmental or research or otherwise and ensure they're included
      * 👍: _lehnberg, quentinlesceller_
   * _yeastplume_: Then we can refine into 'actions' that measure success... and in many research cases this will be something like 'evidence that someone or a few people properly looked into it, there's the resulting discussion'. Whether or not those translate into PRs will remain to be seen... extra bonuses if we find the right solutions.
* _tromp_: Some well defined tasks that merit inclusion: implement parallel IBD, final AR PoW tweak, and implement relative kernels
   * _lehnberg_: Nice. Could you write something up in the one-bullet format I used there and post in the PR?
   * _tromp_: ok
   * 👍: _lehnberg_

* _lehnberg_: In Rationale and Alternatives, I write:
   > As outlined, the focus is on improving what already exists today rather than introducing new functionality and features. This is deliberate. As the project is already spread out thin in terms of resources and contributors, care should be taken not to increase the surface area further.

   Does that feel right with people? Or should we think about it differently? I could argue the other way as well, in that, if what we have today is not good enough, there's no point in polishing it
   * _yeastplume_: I think that can be a focus, not the only one.
   * _lehnberg_: For example, if we think we cannot succeed without BLS signatures, then we ought to spend time there.
      * _yeastplume_: BLS is definitely still in the research phase. Relative kernels less so and is a new feature we think we need. As is some standard for offline transacting. As we go on, you'd think we'd converge on something like 75% improving what's there, 25 new features and would probably expect the rate of 'new features' to decrease over time as Grin becomes more established.
   * _lehnberg_: I think where I'm coming from in my mind is that "Grin launched, but it's not really ready for prime time". It's not as usable it needs to be for developers, let alone users. But that might be wrong.
      * _yeastplume_: I agree, it's definitely getting better and you're right, the major focus now should be to keep that improvment going. But.. there are 2 scheduled hard forks left... so there's also a soft deadline on making changes. So while improving and solidifying what's there is definitely a goal, ossification can't be either.
      * _lehnberg_: yeah... time is ticking. Ideas, thoughts, opinions all welcome in the RFC! https://github.com/mimblewimble/grin-rfcs/pull/38
      * _quentinlesceller_: Also we can still HF later if needed.
      * _yeastplume_: We can but it's signifcantly harder.
      * _jaspervdm_: It should be avoided if possible, would save us a lot of trouble.


### 3. [Lehnberg funding request](https://forum.grin.mw/t/request-for-funding-lehnberg-jan-mar-2020/6767)


* _lehnberg_: Before I hand off to yeastplume to lead that discussion, I just wanted to say that I realized that the first version of my request could have been made much clearer. I wasn't intentionally being vague, just was in a rush to finish for the day and wanted to keep it super short. That was a mistake, lesson learned, I've updated the request since, and I will do my best to avoid triggering situations like that again.

   I got annoyed initially when people challenged the request, I took it personally and felt it was unfair. But I wasn't as clear as I could have been, and in hindsight I think it was fair to challenge it.
   * 👍: _yawser, xiaojay, qitian, funkyswing, nass769_

#### Decision: Approve lehnberg Q12020 funding request

* _yeastplume_: I think plenty said in that thread, and unless anyone has anything genuinely new to add here, I don't think we need to hash over it again. What I would like to do from a personal perspective instead, is re-iterate how important I feel Daniel is to this project, and stress again that we would be nowhere near where we are today without his contribution, and particulary in the manner in which he has and continues to step up to the PM tasks. He genuinely cares about this project and personally I'd feel lost without his management talents.
   * 👍: _qitian, quentinlesceller, joltz, jaspervdm, xiaojay, funkyswing, nass769, quentinlesceller_ 
   * _jaspervdm_: agreed
* _tromp_: I hope to see Dan continue running PR and greasing the grin ecosystem gears, for what is certainly not an unreasonable amount of compensation
   * 👍: _qitian, yawser, yeastplume_
* _yeastplume_: So I hope we can leave this meeting with Daniel feeling a little bit appreciated instead of more than a little-bit-downtrodden after the events of that thread. Not much more to add from me other than a 👍.
   * 👍: _joltz, qitian_
   * _quentinlesceller_: Definitely awesome work @lehnberg. And agree with tromp that the amount is certainly lower than what you deserve. And I'm of course in favor.
   * _jaspervdm_: Agree with the sentiment and of course i'm in favor of approving the funding request.
   * _joltz_: Yes we are extremely lucky to have someone like @lehnberg dedicated to the project.

* _yeastplume_: Then carried. @lehnberg Glad to have you on-board.
   * 🙏: _nass769_
   * 👍: _xiaojay, kurt2, blockchainsmoker, yeastplume, lancelot_n_
   * _lehnberg_: Thanks all!

### 4. Site & Forum

* _lehnberg_: So a quick rehash of the latest about the forum situation:

   1. On jan 18 the `grin-forum.org` domain name will expire and it seems we have no ability to renew it or recover it. The URL will stop working.
   2. The forum is hosted by Discourse, using a separate account that we do not have. It looks like we will be able to get access to this on Thursday if all goes well. If so, we will be able to point the forum to resolve to a different URL, i.e. `forum.grin.mw`.
   3. @0xb100d is still the only one with access to the grin.mw domain, and we've not been able to reach them in order to get it confirmed that they can help reroute to `forum.grin.mw` in the next few days. (If you're reading this, please DM me)

   So we probably should have some kind of fall back, directing to some other forum domain temporarily until we have `forum.grin.mw` working. Any thoughts?

   * _jaspervdm_: If we fail to set up forum.grin.mw soon, we should probably buy a different domain for it, just so we can direct people to a new location when the old one goes down, preferably before that.
      * _tromp_: Like grin-forum.mw ?
          * 👍: *xiaojay*
      * _yeastplume_: Would still prefer forum.grin.mw
          * 💯: *kurt2*
      * _lehnberg_: Yeah if we can get grin-forum.mw that's a good fall back. or .com if that's around
      * _tromp_: Yes, also prefer under grin.forum
* _yeastplume_: And grin.mw in safe control
   * _lehnberg_: Yes, hopefully @0xb100d will get that sorted for us, and also share the shards of the domain login at some point. Just not sure we'll get there before Jan 18.
   * _lehnberg_: Okay so some form of reasonable `grin-forum.xxx` temp domain name acquisition should happen between now and Jan 18. Any objections / other ideas?
      * _yeastplume_: All okay
      * _jaspervdm_: Not an ideal situation (again), but the best we can do

#### 4.1 Link to grin financials on site?

Actioned: https://grin.mw/fund

### 5. Keybase team visibility

* _lehnberg_: This has now been actioned: https://grin.mw/community Improvements are welcomed as PRs. And I know @nijynot was looking into putting https://github.com/Chia-Network/keybase-live-feed on the website as well.
   * _jaspervdm_: that would be nice, people can at least follow the meetings without signing up and installing keybase
       * 👍: *yeastplume, lehnberg*

### 6. RFC & sub-teams update

#### 6.1 Moderation sub-team status

* _lehnberg_: Unfortunately the person that was ready to step in to take up the moderation team had to bow out due to family and new work stuff. So for the second (third?) time, we find ourselves needing someone to step up and take the lead on that. I'll take an action to ask for help on grin-forum (if we still have the forum working) in time for next meeting.
   * _yeastplume_: We very much need a very active moderator who's not a member of the core team.
      * 👆: *lehnberg*
   * _yeastplume_: It is a rough and thankless job. The kind of thing you'd think you'd need to pay someone to do, but of course that presents an immediate conflict of interest if the core team is paying theml
   * 👍: *funkyswing*

### 7. Other questions

None.

**Meeting adjourned.**
