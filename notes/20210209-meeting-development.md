# Meeting Notes: Development, Feb 09 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 80 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- joltz
- lehnberg
- phyro
- quentinlesceller
- vegycslol

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _antiochp:_ Things have been slow these past couple of weeks. I got a couple of small prs merged - actually want to discuss process here as we have limited resources for review etc. Tl;dr things are slow - people are taking some breathing space and presumably considering future steps.

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/391) was accepted with "Github Processes" and "Release planning" added to the agenda.

### 3. Action point follow ups from previous meetings
_None._

### 4. [Post 5.0.0 wish-list](https://github.com/mimblewimble/grin-pm/issues/385) next steps
- _antiochp:_ I just want to preface this discussion with a personal comment - its awesome we have a wish list but given resource constraints we should be a) realistic and b) aware that building something is way more valuable than wanting something built. I would ideally like this discussion to be along the lines of "we want x and I'm going to go build it". (Not intended to come across negatively, just pragmatic.)
   - 👍: _quentinlesceller, phyro, joltz, lehnberg_

- _lehnberg:_ Yes. Currently, we have 0 dev resources that can take on work. (not counting antioch's pending funding request, which is ring fenced around specific tasks.)
   - _antiochp:_ Right - there are 6 items at p1 and nobody to build them. And my specific tasks against the funding request are mainly personal preferences - I'd rather (as would anybody) focus on things that interest me personally, within reason.
      - 👍: _phyro, quentinlesceller_
   - _antiochp:_ That said - they are not exclusive or exhaustive.
   - _lehnberg:_ Of course, and given that you don't have an employer that gives you a to-do list, I think that's reasonable. You can suggest what you'd like to work on, people can chime in whether they think that would be useful and a good use of funds, and that's it.

- _lehnberg:_ So what should we do with this list now? We could try to advertise these priorities somewhere, and hope developers get interested.
   - _antiochp:_ Its a valuable reference point for what we think is important.

- _lehnberg:_ We could attach bounties to them (not sure we'd want that).
   - _joltz:_ Could always bounty some if we want to invest time to really specify what is needed.
      - 👍: _lehnberg_

- _quentinlesceller:_ I'd like to work on putting bounties together and advertising them somewhere. Maybe either setup something like zcash or simply a forum post for each.
   - 🚀: _phyro_
   - _joltz:_ I can help write up the bounties as well 👍
   - 👍: _quentinlesceller_
   - _antiochp:_ I think its definitely worth taking a few of these and running a bounty experiment.
   - _lehnberg:_ Yes, experiment is a good way To put it. To do some small contained trials and see if we can flush out where the friction points are and determine a process we feel works.

- _lehnberg:_ Who will review these and determine whether they've been completed correctly? Is that a council task? Again, we have 0 dev resources right now.
   - _joltz:_ If the bounties are clearly defined enough it should be straightforward to assess. As far as the final yes/no decision I would assume whoever is funding, in this case council. But would be great to have lots of community input on the formation and definition of the bounties.
   - _antiochp:_ I'm tempted to say we cross that bridge once we get there - ideally we'd see incremental progress via prs etc. And not a big bang approach.

- _joltz:_ Some of the tasks can be chopped up into smaller chunks but that requires someone going through and essentially planning the development steps in advance.
   - _antiochp:_ I suspect we'd be able to see if a bounty was realistically being tackled or not relatively early on.
   - _quentinlesceller:_ I think it's worth experimenting with 3/4 items on the wishlist.
      - 👍: _antiochp, joltz, lehnberg_
   - _antiochp:_ Agreed - no more than that initially.
   - _antiochp:_ Put them out there and see if we can entice somebody to commit some time toward it.
   - _phyro:_ Let's get a few bounties running and see what comes out of this. I don't expect people unfamiliar with code to tackle the big ones, but some of them might be approachable for onboarding.
   - _antiochp:_ Yeah this has to be somebody willing to put independent time into it as we have no resources to onboard in any significant way.

- _lehnberg:_ Probably can be done on the forum as a start right?
   - _quentinlesceller:_ Yes. No need to set a new platform.
      - 👍: _antiochp, phyro, lehnberg_
   - _antiochp:_ Yeah forum makes sense.

- _phyro:_ This is also a good opportunity to possibly get new devs working on the code.

- _quentinlesceller:_ I think we should try to determine the price of each bounty. Maybe discuss it here?
   - 👍: _dburkett_

- _quentinlesceller:_ https://grants.zfnd.org/proposals. This can give us an idea of the pricing.

- _lehnberg:_ I'd be happy for @quentinlesceller to look into our list of priorities, pick the ones he thinks are suitable, and make a proposal for bounty sizes. And we could review in a dev meeting to come.
   - _antiochp:_ Yeah maybe we start with @quentinlesceller doing an initial pass if he is up for it?
   - _quentinlesceller:_ Yes I'm in.
      - 🚀: _phyro, antiochp, joltz, lehnberg, vegycslol_

- _lehnberg:_ Anyone who wants to get involved could ping quentin and roll up their sleeves.
   - 💪: _antiochp_
   - _quentinlesceller:_ Yeah any help is appreciated:)

- _antiochp:_ I see "late locking" is there on the agenda under wish list - I'm starting to think about this a bit more, nothing concrete yet but its on my todo list.
   - _phyro:_ I guess I'm lucky since I expressed this wish as well:)).
   - _lehnberg:_ @mcmmike wrote:
    ```
    for 4.)
    i would like to put the late locking on top (or at least top 10) to fix some issues (add features).

    the late locking feature is enabled on the wallet and can be used with the -l flag. There is a known limitation currently in that the transaction can not be finalized if the required number of inputs changes. This could be solved by adding a second kenrel that pays for the difference.

    in reference to e.g. Mimblewimble/grin-wallet#541
    ```
   - _dburkett:_ Yikes! A second kernel would be not great.
   - _antiochp:_ Good to note, but yeah maybe not how we end up doing this. I suspect we still fail tx building in some situations. And just need to restart the process. It does not need to handle every situation.
   - _dburkett:_ Maybe input fees was a mistake:/
   - _vegycslol:_ Why does the number of inputs matter with late-locking? We could just pick x and then in phase 3 pick and inputs and make them sum to x or not.
   - _antiochp:_ We are getting off topic.
   - _dburkett:_ It's a dev meeting. Isn't that on topic? I mean, we're discussing dev.
   - _antiochp:_ Lets stay on the agenda.
   - _dburkett:_ Late-locking is on the list.
   - _antiochp:_ There's a late locking issue in github - feel free to comment there. Actually please comment there so we can keep on track for the meeting. Its a "dev meeting" with agenda - not for generic dev discussions.
   - _dburkett:_ It's not generic. It's lIterally about one of the agenda Items (late-locking). But sure, I can move to the github issue.
   - _antiochp:_ Moving on.
      - 🙃: _dburkett_


### 5. Github processes: Reviewing, branches, etc.
- _antiochp:_ Tl;dr do we have the resources to do effective code review? And if not, what do we do about it.
- _lehnberg:_ 18 prs open on grin: https://github.com/mimblewimble/grin/pulls. 7 open on grin-wallet.
- _quentinlesceller:_ Right now we are 2/3 able to do review.
- _antiochp:_ Some of those probably warrant review, some may be stale. So we likely want to do some housekeeping. And in terms of branches etc. We have `5.0.x` (for bugfix if needed) and `master`.

- _lehnberg:_ @phyro would you be up for doing triage / maintenance of the repos and keeping them tidy on an ongoing basis? I.e. Not reviewing, but just making sure things don't get lost or forgotten, and pinging others to review, and if you don't get any reviewers, flagging that in a meeting such as this one?

- _quentinlesceller:_ Imo we can do a coordinated effort to review + housekeeping. We can start with grin repo.
   - _lehnberg:_ Right, but would be good to do it continuously and have someone in charge for it.
      - 👍: _antiochp_
   - _quentinlesceller:_ Indeed.
   - _lehnberg:_ Doing a sweep every once in a while doesn't quite cut it, we need to remember to sweep as well!
   - _antiochp:_ Yes it would be a win if we could come away from this meeting with somebody owning this.
      - 👍: _quentinlesceller_

- _quentinlesceller:_ Though I'd find it much easier to keep it in clean once we have done a cleanup.

- _phyro:_ Alright, I'll do my best, but this may result in pings on the pr as I'll lack the context 👀.
   - 👍: _quentinlesceller, vegycslol, lehnberg_
   - _lehnberg:_ Awesome! Do your best, feel free to ask questions here or dms, wherever you feel like.

- _phyro:_ Would it make sense to go through these at dev meetings? Or to check on the state or something similar.
   - _antiochp:_ No I think we can summarize in the dev meetings, but not go item by item. We have the issues etc in github for that.
   - _lehnberg:_ Generally, use this as your dumping ground, you could for example come up with a recommended list:
       - stale (close?)
       - to review (who will review?)
       - in progress.
   - _antiochp:_ Pings on prs are good because it means relevant things will bubble to the top of the heap as they will be discussed.
      - 👍: _lehnberg, phyro_
   - _antiochp:_ And we prune anything that lacks engagement.
      - 👍: _quentinlesceller_


### 6. Release planning: next minor and patch releases
- _antiochp:_ Not sure if we have much to discuss on this point. We kind of need something to release first.
- _quentinlesceller:_ Loosely related to release planning but we do need to check that everything that is on v5.0.x branch is on master as well.
   - 👍: _antiochp, phyro_
   - _antiochp:_ Yes - good point. There's a task to reconcile those 2 branches so nothing gets missed.

- _lehnberg:_ So I guess a question here is. How do we do releases. Say that I submit a pr with an improvement, it gets merged. It's not a bug fix, so it should get out in a minor release. When does it get released? I think it could be nice if we could get into a cadence here.
   - _antiochp:_ Yes agreed. We don't want to wait too long between releases.
   - _quentinlesceller:_ We should probably focus on bugfix and expose the build_coinbase api (very specific I know).

- _lehnberg:_ Means contributors know what to expect here, and it doesn't all feel so ad hoc. Also means it's equal for all.
   - _antiochp:_ But not sure we want a rigid schedule right now.
   - _lehnberg:_ Patches perhaps continuously? And minors every month? Maybe patches every week or two weeks? Unless something critical? Idk.

- _quentinlesceller:_ Technical objection but the release process is a bit long to do every week (unless automated).
   - _lehnberg:_ Maybe bounty the automation up as well?

- _antiochp:_ At this point release planning just feels like extra drain on resources, but yeah maybe minor on a monthly basis.
   - 👍: _quentinlesceller_

- _quentinlesceller:_ Maybe a 2 week schedule?

- _antiochp:_ I'm honestly not sure about patches. Are we supporting 5.0.x branch with official patches for anything other than critical fixes?


- _phyro:_ I'm not sure what the current flow is, but I believe the master doesn't have the latest code right now. Would it make sense to have master being the latest release at any point in time?
- _antiochp:_ Master is latest code - if not then we need to get anything missed onto there.
- _vegycslol:_ I think the latest tag on master could be a release.
- _antiochp:_ And master should be buildable and deployable at all times.
   - 👍: _lehnberg, quentinlesceller_
- _quentinlesceller:_ Yep that'd be great. Maintaining 2 branches is a pita.
- _phyro:_ Agree, I think we need to merge a few things to master 👍
- _antiochp:_ 5.0.x branch (at least in my mind) is if we do something on master that needs more testing in the wild before we are willing to make it official release. And we encounter a fix that needs to go out immediately. But `5.1.x` should be the next scheduled release (off master) - I think. But others may have other opinions on this.
   - _quentinlesceller:_ Agree with that.

- _antiochp:_ This all needs a bit of a rethink though post-hf4. Pre hf we had a 6 month schedule and a branch for each hf. And we needed to support both as we got closer to a hf. Its different now.
- _quentinlesceller:_ Agree with all the above actually.

- _antiochp:_ Non-contentious stuff goes in master - anything remotely contentious is tbd in terms of how we even think about merging/deploying it. To @lehnberg point about process.
   - _lehnberg:_ I mean, what's a contentious thing that we merge? Anything we merge, we should be happy to put in a release, no?
   - _antiochp:_ Sure but we can only hope people deploy it, there is no real incentive to do so now. (no 6 month deadline to keep up to date with).
   - _lehnberg:_ Deploy, as in deploy a release? Or run the node?
   - _antiochp:_ Oh I guess run a node - we can release it, no guarantee anybody upgrades their node. We at least had rough idea that people would proactively upgrade before and then at hf would be forced to upgrade. We can release `5.1.0` but will everybody upgrade?
   - _vegycslol:_ What's the downside if they don't?
   - _antiochp:_ For the dev team? More combinations of things to support over time, compatibility issues etc.
   - _phyro:_ They eventually will need to, if nothing else, we probably won't be supporting the txhashset.zip forever.
   - _antiochp:_ Perf issues to support with old code running etc. Its not so much a downside as just a different environment compared to pre hf4.

- _lehnberg:_ I guess everything we merge from now on will need to take this into account.
   - 👍: _antiochp_
- _phyro:_ Yeah, everything needs to be backwards compatible:(
- _lehnberg:_ We prob can't merge stuff that requires / expects a majority of nodes to use it, unless it's a major (`x.0.0`) release, i.e. a hard fork. This is the path of the distributed network. We must walk it.
   - 🚶‍♂️: _phyro_
   - _antiochp:_ Totally. Pibd support is a good example. It needs to be opt-in based on nodes upgrading.
   - _lehnberg:_ So yeah actually, maybe a 6.0.0 branch is necessary...:/ Launch date: 2024.
   - _antiochp:_ And we need to support txhashset.zip for a while yet.

### 7. Other questions
_None._

**Meeting adjourned.**