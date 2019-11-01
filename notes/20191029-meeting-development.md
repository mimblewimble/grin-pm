# Meeting Notes: Development, Oct 29 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5db8540da03ae1584f2e302a). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- DavidBurkett
- j01tz
- lehnberg
- quentinlesceller
- yeastplume


_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_  2.1.0 was released. Other than a few minor issues with some odd serde compilation error which has since been fixed on master, it seems to be holding up.

   A lot of preparation and thinking about 3.0.0 features has been going on, @tromp's been busy cooking up his new bird, the rest of us have been getting RFCs and issues straight. For myself, I've also been doing a lot of experimenting with how the wallet updates itself, but more about all of this to come later in this meeting.

   And a special mention to @JosephGoulden who's been doing more good work focusing on the TUI and status updates within the TUI, all stuff that's been neglected but giving it some attention should be a big win for the overall UX.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/206) accepted.

### 3. Action point follow-up

* _TX Proof RFC_ @DavidBurkett: Been busy and haven't had a chance to finish this. I was trying to see if we could come up with a way to do transaction proofs for invoices too, but doesn't look like it's possible without an additional round of communication. I apologize for the delays, but I will shoot for having this finished early next week.
* _Security Audit Published?_ Actioned.
* _2.1.0 Released?_ Actioned.

### 4. Security

Nothing to discuss.

### 5. Status of open RFCs

Covered as part of 3.0.0 planning.

### 6. Release packaging

* _lehnberg:_ Relevant issue: [mimblewimble/grin#3093](https://github.com/mimblewimble/grin/issues/3093)
* _yeastplume:_ Ahh... I'll be honest I haven't though about it much.. not many others seemed to agree it was the right approach at the last meeting. We could elect to do this packaging a bit more informally, as @quentinlesceller has been doing. 
* _quentinlesceller:_ My understanding is that we can start with brew choco and deb rpm.
   * _yeastplume:_ That sounds good. I think for the issue itself, will update with current thinking.

### 7 Release planning

#### 7.1 v3.0.0

_This section covers high level topics and is condensed from the meeting, as the planning issue is an accurate reflection of final snapshot. For detailed discussion, please refer to the gitter chat logs (link at the beginning of this document)._

* _lehnberg:_ Planning issue: https://github.com/mimblewimble/grin-pm/issues/204

* _antiochp:_ I submitted an RFC just a bit before this meeting, https://github.com/mimblewimble/grin-rfcs/pull/29. Basically, big monolithic `txhashset.zip` based fast sync is getting slower and heavier over time and we have been wanting to break this up into a more granular approach for a while now. After a bunch of discussions we believe we have a way of "batching" the outputs up in a way we can verify them as we go (and not need to wait for them all before we can start validating). The proposal is to adjust the existing root in the header to accommodate this - changing the meaning of an existing field. We're not proposing changing the actual header structure/serialization (which would be a far bigger effort). 

* _lehnberg:_ Anyone's got any news on the @JeremyRubin PRs? Looks like we dropped the ball here and did not give any reviews. While it might be hard to get them into 3.0.0 at this stage (unless there's a motivation), it still feels as though it would be good to get some clarity on these and what the plan is.
   * _antiochp:_ Yeah those should not be in for 3.0.0. Yeah agreed - I can chase Jeremy Rubin up and see if he can chime in on these PRs (and potentially resurrect them). 

* _lehnberg:_ So at the end of this, we have 11 items:
   * 4 wallet ; 7 node
   * 4 x P1 ; 3 x P2 ; 4 P3

   I guess considering that two of these are TUI updates, it should be fine.

   * _DavidBurkett:_ I've actually got to bail already, but I just read through the list, and everything looks good to me. Gonna be the best release ever.
   * _antiochp:_ Just to clarify, several of those 7 node PRs are ready to go now or will be soon so that list should decrease over time. It's not planned new work necessarily.

_No objections. Support from Quentin Le Sceller and Yeastplume._


### 8. Other questions 

* _quentinlesceller:_ About that serde issue. Any chance we could do a bugfix release for the grin repo only? That would enable packaging with brew alongside grin-wallet [Homebrew/homebrew-core#45833](https://github.com/Homebrew/homebrew-core/pull/45833) (should be merged soon).
   * _yeastplume:_ Sure, was thinking we can do a 2.1.1 release with that fix and not make a big deal about it. Just tag and remove the actual built artifacts so as not to cause confusion. Would that work?
   * _quentinlesceller:_ Yeah that would work. I don’t think we need to remove the binaries though. That’d be a release on `fb331f70996f46777b1528fa79c326ba0ae08434` just to be clear.


**Meeting adjourned.**
