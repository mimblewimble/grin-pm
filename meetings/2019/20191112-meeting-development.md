# Meeting Notes: Development, Nov 12 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5dcac91d4adf071a8418180f). Meeting lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- DavidBurkett
- hashmap
- j01tz
- lehnberg
- quentinlesceller
- tromp
- yeastplume (joined towards the end of the meeting)
  

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _quentinlesceller:_ Covering for @yeastplume who's away for most of the meeting. First of all before we start a big thank you again to the very generous anonymous donor [for the 50 btc donation](https://forum.grin.mw/t/donation-to-the-grin-general-fund-nov-11/6446/). This is an amazing encouragement for all of us here. As for this past two weeks, @yeastplume has been working on the new restore function at a certain block height which could significantly speed up the process. There have been improvements on the grin node side logic thanks to @antiochp. And finally we have a Ubuntu snap available for grin thanks to @josephgoulden. Let me know if I am missing something. Again seems like everyone is focusing on a stable 3.0.0 build and grincon1 next week. RSVP here https://grincon.org if not already the case :)

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/213) accepted, with a question about package managers added in Other questions.

### 3. Action point follow-up

* _TX Proof RFC:_ [Created](https://github.com/mimblewimble/grin-rfcs/pull/31), thanks to @DavidBurkett 

* _Jeremy Rubin PRs:_ @antiochp: I went ahead and closed them for now, with an aim to revisit them post 3.0.0 HF. CuckooCache and Arcify the pool make sense, but not really feasible for 3.0.0 as there is still some discussion ongoing. For example, there was still some debate around exactly which part of the pool should be arcify'd. So lets pick these up again in the new year.

### 4. Release planning

#### 4.1 v3.0.0 status
* _lehnberg:_ Planning issue: https://github.com/mimblewimble/grin-pm/issues/204, [node milestone](https://github.com/mimblewimble/grin/milestone/15), [wallet milestone](https://github.com/mimblewimble/grin-wallet/milestone/6).

_The meeting reviewed tickets, and added a "status" field to the table in the planning issue. Legend:_ 🛠 _: in progress,_ ✅ _: merged,_ 🔍 _: awaiting review._

* _quentinlesceller:_ Needless to say it's going to be tight. Above issues are not all PRs btw. We might want to relook at the planning in two weeks to see if everything is doable or not.
   * _antiochp:_ yeah - maybe make a call around dropping some P3 issues then.
   * _lehnberg:_ Agreed.

* _quentinlesceller:_ I think what we can do for the next following weeks is focus on P1, P2 and the RFCs and look again at that list after together.

#### 4.2 Timelines ahead of v3.0.0 release

* _lehnberg:_ So there's our [information post about the upgrade](https://forum.grin.mw/t/grin-v3-0-0-hard-fork-upgrade-jan-2020/6036). I think we said in last weeks' gov meeting that we would try to nail down the dates more explicitly in this meeting.

_Following discussion, the meeting resolved to establishing the following schedule:_

|Date|Milestone|Description|
| --- | --- | --- |
|2019-10-31| Scope freeze | New functionality, improvements, and fixes targeted for the upgrade are defined and communicated |
|2019-11-29 |PoW Release|New secondary proof of work is released along with a basic solver.|
|2019-12-03 |Beta Binaries Release|Release of grin, grin-wallet, grin-miner beta binaries.|
|2019-12-12 |Code Freeze|No changes are permitted on the branch to be released except critical bugs.|
|2019-12-13 | Release candidate binaries |Release of grin, grin-wallet, grin-miner binaries.|
|2019-12-19| Floonet upgrade | Launch of Floonet hard fork and public testing. |
|2020-01-15 |Mainnet upgrade | Grin is forking to v3.0.0.|

#### 4.3 Status of open RFCs

* _quentinlesceller_ There are currently 8 RFCs open https://github.com/mimblewimble/grin-rfcs/pulls, 5 of which are not WIP. As @yeastplume said last meeting and considering the above timeline we want to move forward fast on them. Last target was end of Nov IIRC.
   * _lehnberg:_ Also keep in mind that there's technically a 2 week "Final Comment Period" before a "final" RFC becomes merged according to our process.
   * _quentinlesceller:_ Right, which means we'd need to move to have these RFCs in FCP by end of this week if we're to make November.

### 5. Other questions 

#### 5.1 Package managers

* _lehnberg:_ Regarding these snap and homebrew builds
Maybe we should talk about how these should be managed?
   * _quentinlesceller:_ Homebrew build is simply a github directory with no owner so anyone can do a PR. (e.g. Homebrew/homebrew-core#45946). Had a look at choco last week and it shouldn't be too hard however I don't have a Windows machine so it's a tad bit harder for me to try it out.
   * _lehnberg:_ Okay - how does it work for snap? and  apt-get? Are we introducing any security risks? If there's no security risk then I wouldn't want to create noise here. But I wonder what our process will be? even for homebrew - so anyone can submit updated versions? How are they quality controlled and ensured they are not malicious versions of grin-wallet for example. Snap looks more in our control as it's PRed into our own repo
   * _antiochp_ Want to comment on the PR for snap here? [mimblewimble/grin#3107](https://github.com/mimblewimble/grin/pull/3107) Its a good point and I'm not sure actually.
   * _lehnberg:_ Oki, let's continue the disucssion there.

**Meeting adjourned.**
