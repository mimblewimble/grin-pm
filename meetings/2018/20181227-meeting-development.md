# Meeting Notes: Development, Dec 27

Development meeting held Dec 27 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c24e9f66649aa1f82db7622). Meeting started _~50 min late_ and lasted ~ 135min in total as a result.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* davidburkett
* garyyu
* ignopeverell _arrived late_
* jaspervdm
* lehnberg _arrived late_
* mably
* kargakis
* mcdallas
* priori-incantatem
* rentenmark
* superphly
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
No retrospective.

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/29) accepted, with point 5 and 6 changing order.

### 3. Action point follow-up
No action points reviewed.

### 4. Proof of Work
No updates.

### 5. Mainnet planning

#### 5.1 Floonet
* All issues [tagged for Floonet](https://github.com/mimblewimble/grin/milestones) are fixed now.
* [Overview of the issues](https://github.com/mimblewimble/grin/milestone/7?closed=1) that were identified as part of first Floonet release. All are "nice to have" as nothing is fundamentally broken with current Floonet.
* If no other issues, we should just go through the same process as last time and re-release.
* **Meeting agreed to re-release Floonet on Friday Dec 28th.**

#### 5.2 Genesis block / mainnet launch

* _rentenmark:_ would be nice with a preflight checklist for mainnet launch. 
   * _igno:_ see https://github.com/mimblewimble/grin/blob/master/etc/gen_gen/src/bin/gen_gen.rs

##### 5.2.1 DNS seeds
* Things needed for mainnet: 
   1. A couple of more DNS names
   1. Several more seed IPS to have as A names on those seeds
* Several members of the meeting offered to host DNS seeds.
* Decision to create a [dedicated forum topic](https://forum.grin.mw/t/grin-mainnet-seeds-needed/1580) to solicit seed IPs from the community.

### 6. Results from libsecp audit
* Audit performed by [JP Aumasson](https://aumasson.jp/), who mostly looked at our patches and additions on top of libsecp, and their use in Grin.
* Found a couple of smaller issues that aren't difficult to fix, and made several recommendations as well, that we'll be relaying.
* Audit report available [here](https://grin-tech.org/audits/jpa-audit-report.html).
* Related: https://github.com/mimblewimble/grin/issues/2218 & https://github.com/mimblewimble/secp256k1-zkp/pull/37
* Effort was funded and facilitated by a benefactor that connected with us following Grincon0. 

### 7. Post-mainnet release planning

#### 7.1 Versioning
* re-Floonet binary to be released as 0.5.0. 
* Discussion on whether to rely on [semver](https://semver.org/) or opt for something more custom, like being 0.9.x for a longer period of time to indicate it's not 'finished' or 'stable'.
* After some back and forth, **the meeting agreed to adopt semver**, i.e. to release as 1.0.0 and to be on version 5.0.0 (at least) by the time the scheduled hard forks have concluded.

#### 7.2. Priorities and roadmaps
* There's a potential downside with having a too detailed and too rigid plan for open source projects. Contributors start to expect the job will be done either way by someone else, and it becomes difficult to offer spontaneous help.
* _Igno:_ My take for how we do this would be:
   1. Give some _high-level_ sense of direction and important features we'd want to see
   1. Push toward that direction when we can, at least for people core to the project
   1. Communicate clearly on what other stuff we would accept/refuse
   1. Hope good stuff happens 
* _yeastplume:_ Makes sense.. and on a fairly regular basis we're going to want to wrap 1 and 2 into targeted releases, and include any good bits from 3 and 4 that come along.
* _lehnberg:_ How do we realize 1?
   * _igno:_ We maintain a high level list of priorities for "next release" that then can get broken down into multiple issues. We should stick with privacy, scalability, and not the kitchen sink.
   * Focus should not be "to plan hard forks", but rather "to plan what's important to do next, hard fork or not".
* For the next couple of weeks, meeting agreed focus should be on resolving issues related to existing functionality, bugfixes, and improving documentation. As opposed to adding any new functionality.

### 8. Other questions

* _lehnberg:_ I've had loads of questions from an exchange. Look similar to the questions that another exchange was asking. So I’m putting together a big FAQ doc that I’m hoping the community will help populate, and we keep on the wiki. That we then can post exchanges to, and help them help themselves.

**Meeting adjourned.**
