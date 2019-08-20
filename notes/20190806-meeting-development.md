# Meeting Notes: Development, Aug 06 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d499639a96def4751ca50c1). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**


- hashmap
- j01tz
- mcdallas
- rheza
- tromp
- yawser
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_ Seems we have a fairly low turnout, but I don't think there's all that much in particular to go through at the moment. I expect these meetings get shorter and shorter over time as decisions get taken more and more in the corresponding sub-teams. The past couple of weeks have been fairly stable, there has been some enhancements to sync and validation. My own focus has been on getting some security features finalized in advance of full lifecycle management in the wallet API.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/169) accepted, with the addition of a point raised by @yawser re status of network and hash rate.

### 3. Action point follow-up

* _yeastplume:_ @lehnberg has assigned core members to each of the audit issues, and the branching model was agreed and implemented in the last meeting, so I think we're good on both points.

### 4. Security review status

* _j01tz:_ Security review status is progressing nicely. I've been coordinating more with the auditing team on the reporting. Do we have any issues with attempting to deliver the report to them on aug 19?
(they are busy next week and I think this week would be too early for a couple of issues)
   * _yeastplume:_ Sure, I think that should be okay
   * _tromp:_ Yes, no point in rushing a report if they don't have time to review it right away.

### 5. Status of open RFCs

#### 5.1 Security process

[mimblewimble/grin-rfcs#13](https://github.com/mimblewimble/grin-rfcs/pull/13)

* _yeastplume:_ I believe this is now ready for merging, having been through the final comment period. Thanks again @j01tz for getting this done, it's an important one to get right.
   * _j01tz:_ Yes, was hoping for more feedback but the feedback received was valuable.
  
#### 5.2 Wallet lifecycle API

[mimblewimble/grin-rfcs#18](https://github.com/mimblewimble/grin-rfcs/pull/18)

* _yeastplume:_ Still one week left for final comments. 

### 6. Status of particular open issues

* _yeastplume:_ For the most part, these discussions are ongoing on the subgroup teams, so not sure if we need to have this as an explicit item going forward.

### 7. Release planning

* _yeastplume:_ I don't have much to say here at the moment, other than perhaps we should urge both technical subteams to put forward a rough idea about the contents of the next minor releases before the next technical meeting? Does that make sense?
   * _j01tz:_ Yes.

### 8. Other questions 

None

**Meeting adjourned.**
