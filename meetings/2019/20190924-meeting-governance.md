# Meeting Notes: Governance, Sep 24 2019

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5d8a2f79a7a5cc47334ac8ae). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* coolman_kurt_twitter
* DavidBurkett
* grinngots
* hashmap
* jaspervdm
* j01tz
* knocte
* lehnberg
* newtownf1
* nijynot
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/190) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 [Site redesign](https://forum.grin.mw/t/grin-website-redesign/5533)

* _nijynot:_ Part of the site is done, try it out [here](https://nijynot.github.io/site). Some things are still missing, e.g. mobile menu. Not too far from going live, I think.
   * _lehnberg:_ Very nice - I’d be in favour of shipping asap, whatever is broken can be fixed on the fly. So yeah whenever you’re ready!

#### 2.2 Security RFC

* _lehnberg:_  It’s now moving again, and we even have a security repo: https://forum.grin.mw/t/announcing-the-grin-security-repo/6105. @j01tz has been [working on the repo](https://github.com/mimblewimble/grin-security/pull/1) and I think action is now on me and @hashmap to sign keys and canaries etc.

#### 2.3 Moderation team new approach

Actioned.

#### 2.4 Community sub-team kicked off?

Actioned.

### 3. Security

#### 3.1 Audit

* _j01tz:_ The remediation verification process is completed- all fixes have been confirmed working. The next step is reporting. Coinspect started to compile the report from their side. From our side we need to decide where and when to publish and what format we want to use. We have the new security repo so at minimum the results will be published there. The community might like some article/blog detailing the process a bit from our side. So maybe just a overview of the grin audit process so far, why we did this audit, what we found and maybe a note about future work etc. it could be published on the forum
regarding when, probably just a coordinated date with coinspect once both parties have prepared what they want to share.

##### Decision: Security report publication

* _lehnberg:_ Okay so this is what will be published:
   * audit report published in repo
   * forum post about contents, meta, process, future
 
    Regarding timelines, does anyone object to leaving that to @j01tz and coinspects discretion?

_No objections, with explicit support from antioch, quentinlesceller, yeastplume, tromp, hashmap._

### 4. Grincon1

* _lehnberg:_ First of all you can now be a part of planning this community gathering, by following the steps [here](https://forum.grin.mw/t/announcing-the-grin-community-subteam-help-organise-grincon1/6080). There’s been some discussion already, feel free to join in. Current proposal, which I think pretty much is now accepted, is to pursue `Nov 22 2019` for the event, location `berlin` venue `c-base` (same as last). If anyone objects to this, it’s good to raise it asap in the channel on the subteam (or here, right now).

### 5. RFC & Sub-teams update

#### 5.1 RFCs

* _lehnberg:_ Me knowingly there’s no non-dev RFCs active or open or proposed.
 
#### 5.2 Sub-teams

* _lehnberg:_ In addition to the community sub-team referred to in the grincon1 discussion above, there's also been a `fundraising` subteam announced: https://forum.grin.mw/t/announcing-the-fundraising-subteam/. If you’d like to work on helping to make grin’s progress sustainable over the longer term, please join Nass there.
* _lehnberg:_ Last meeting we talked about the `moderation` subteam.
Since then, lavalulu, admin of the discord group, has agreed to take on the lead to set this up, and is working on that. When an announcement it’s ready with more details, it will go on the forum.
* _grinngots:_ So fundraising sub team focuses on growing general fund - I think there should be a sub team focusing on spending general fund.
   * _lehnberg:_ At the moment spending decisions is handled by the core team:
      > Handles multi-sig keys and takes high level spending decisions. Spending proposals can be made by anyone, and sub-teams can have their own own budgets to deal with as they please. 

      https://github.com/mimblewimble/grin-rfcs/blob/master/text/0002-grin-governance.md

      That said, if there are ideas for how this should be changed, RFCs are that improve on RFC#0002 are welcomed.

### 6. Hiring a cryptographer

Proposal made by @DavidBurkett:
> Seek out and hire a full-time cryptographer at a maximum of $10k/month in 3-month increments to design and implement changes to Grin that improve its privacy, scalability, and usability.

Related [forum thread](https://forum.grin.mw/t/request-for-funding-jrandomcryptographer/6056/). 

(Discussion is heavily truncated for brevity and focus.)

* _DavidBurkett:_ Significant strides have been made toward short, efficient, ZK proofs recently, and it's difficult for us to keep up with them all, and understand their benefits. There are a few ways we could potentially improve Grin's scalability and privacy as a result of recent cryptographic advancements, and since we're still young and agile, it seems like a good time to make the kind of fundamental changes that may be required to ensure long-term scalability. It should be noted that what I'm proposing is a quarterly renewal of a contract, similar to the Yeast agreement.
   * _yeastplume:_ I'd have to maintain that with development, its nature is more obvious as to what the work will entail. All 'hires' to date have been fairly specific short-term contracts, I know that 'dev work' isn't always fully specced out, but in general, I think it's been clear that the scope of a dev contract has been for ongoing project development work. Personally I've always tried to at least predict what that work is likely to entail in campaign info, and my updates frequently include what I have in mind as far as specific work over the next few months.

      I'm not, in principle, fundamentally objecting to hiring anyone for anything for a limited full time basis, but I think we'd just need a specific proposal from a specific person and least an idea from them of what they'd be looking to achieve. Also, I'm not sure how well the whole 'cryptographer' job title lends itself to volatile short term contracts.  
   * _tromp:_ Before we can vote on hiring a cryptographer, I think we'd need to identify a cryptographer who is interested in working on Grin and has a reasonable expectation of being able to make progress. And whose previous work can be inspected.
* _bladedoyle:_ If we already know what we want then we could use the bounty model.
   * _yeastplume:_ Bounties might be more appropriate for specific crypto breakthroughs, as how they're used in solver improvements. There's no more guarantee that hiring a cryptographer will lead to breakthroughs than there is that hiring a physicist will give you cold fusion... so a bounty model for specific advancements might work there.
   * _lehnberg:_  So what would good bounties be like? I can imagine they could still be subjective, and have core decide on whether a bounty has been met. Like “significantly improve transaction graph obfuscation”, maybe with some constraints on scalability etc.
 * _yeastplume:_ Many more funded coins and companies in the space (and tech in genera) do hire cryptographers for research and validation of ideas. But this project doesn't have the resources to keep a research department on staff. If you were a startup with less than a million in the bank would you be prioritising the hiring of a full-time cryptographer without a specific goal on the hopes they're going to come up with breakthrough over all of the other work that needs to be done? So I think bounties work here.. another approach is considering working with particular research departments.. we've had a lot of traction with Stanford and Dan Boneh's team, perhaps we could come to some sort of arrangement there.
    * _lehnberg:_ But again, even with a uni department, we’d probably want a defined set of problems specced before approaching them about it. We have a couple, graph obfuscation, kernel aggregation, accumulator style setups as examples.
    * _DavidBurkett:_ Fast sync. Non-interactive payments (tricky).
    * _yeastplume:_ So would the first step be to write up these problems in detail, describe the situation in Grin as it stand today, and what we'd like to achieve? If we wrote up all of the advances we'd like to see, put it up there as a sort of spec, and a cryptographer with some track record said they have some ideas and would like to clear their plate for a few months to work on these issues, provided they came across well enough, I'd be happy to experiment with giving them a chance.
* _lehnberg:_  So, to summarize the discussion here, and this is my take on it is: 
   * We’re open for a cryptographer to show up and apply for funding based on a specific proposal.
   * We’re open for reaching out to academic institutions to co-operate with them on specific problems.
   * More generally, it will be easier to attract cryptographers and co-operation with academic institutions, if we have a list of clearly defined problems that we feel we’d like help with.

   Perhaps we could start with compiling this list? First as a page on the wiki that could be reviewed and synced upon with the rest of the community, and then publish that into a page on `/site`?
   
   * _antiochp:_  Yes, kind of what I was thinking, only once its agreed on (and not a dumping ground of all sorts of rough ideas).
   * _tromp:_ We could also announce it on multiple forums; e.g. bitcointalk and reddit etc. where cryptographers might lurk.
   * _lehnberg:_ Does anyone want to pick up the action to start on the wiki page?
      * _quentinlesceller:_ I can take the action point.

### 7. Gary Yu resignation from Core

* _lehnberg:_ For those that missed it, Gary Yu has resigned from core, and stopped by a few hours ago to [share a message](https://gitter.im/grin_community/Lobby?at=5d8a1b5328c1df0ed689f13d) about this: 
   
   > Hi Friends, please allow me to continue missing the governance meeting of today :-)
   > Regarding the agenda item no.7 for my new journey with MimbleWimble and resignation from Grin Council / Core Team or what ever you called it, the purpose of adding this item into one governance meeting is to make the Grin community well informed about that, I'm not part of the Grin Council anymore. For the context reference: https://forum.grin.mw/t/a-new-journey-with-mimblewimble/6058
   > And as I said, definitely I would love to continue my developer contributions as usual, and continue being part of this wonderful community.
   > If any question, please feel free to ping me here or contact me directly.
   > (btw, if anyone here is interested in the Gotts vision, I would like to invite you to join me into this new journey. pls find the Gotts Introduction [here](https://github.com/gottstech/gotts/blob/master/docs/intro.md) and the [README](https://github.com/gottstech/gotts))
   > Have a good day!

### 6. Other questions

#### 6.1 Funding for meetups

* _newtownf1:_ Is there any funding available for meetups in south Florida?
   * _lehnberg:_ There’s not been any funding of meetups to this date to my knowledge, but there’s also not been any requests. So if you have a specific proposal, feel free to share for a future meeting. From my own experience organizing meetups, if you’re lucky you might be able to get support from people and companies locally and it might not need to cost anything.

**Meeting adjourned.**
