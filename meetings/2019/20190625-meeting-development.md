# Meeting Notes: Development, June 25 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d123715f68cef3827c28577). Meeting lasted ~ 65 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- chisa0a
- davidburkett
- garyyu
- hashmap
- jaspervdm
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

_yeastplume:_ Unfortunately Igno's retrospective will need to be replaced with a yeasty reminisce. And before that, I just wanted to say a few words about the issues many people are having with transactions at the moment:

So as you know, Grin is only in its infancy. In the months since launch there have been many updates, changes and enhancements to the wallet APIs and the wallet exchange format, which we call the 'Slate'.

Unfortunately, some of these changes were breaking and not backwards compatible with existing versions of Grin, particularly changes in the recent 1.1.0 release. We've tried to be clear and urge everyone involved to upgrade, but for whatever reasons many users and particularly exchanges haven't been keeping up with the latest versions of Grin. Please note that I'm not blaming anybody other then ourselves here, as we may have misjudged the difficulties inherent in trying to keep up with changes in Grin, and possibly overestimated the frequency of changes the community should reasonably be expected to handle.

Anyhow, the result is that there are a lot of mismatched and slightly incompatible versions of Grin and the Wallet out there at there at the moment, and early versions of the code don't have sufficient version awareness to help mitigate this. This unfortunately means that users are having far more trouble transacting with Grin than they should.
We know that the interactive nature of Mimblewimble makes transacting more challenging to get right than most other coins. But I don't think we've handled the challenges particularly well over the past few releases, and I want to apologize for this.

Now, the good news and what we're going to do to make this right:
First, as you know, 2.0.0 is just around the corner, which is our first scheduled hard fork (or you can call it a 'network upgrade' if you prefer). Fortunately for our current situation, this is a forced upgrade, which means that all users of Grin will have to upgrade their software to the 2.0.0 release. This should go a very long way (if not all the way) toward making sure all Grin users are on the same version of everything, and should be able to transact with each other without these incompatibility issues we've been seeing over the past couple of months.

2.0.0 will be released over the next week, and I strongly urge (to the point of pleading) that everyone involved in the Grin ecosystem update their operations to 2.0.0 as soon as its available. If you work for an exchange, pool, or other entity, please make whatever noises needed internally to ensure this happens. All current versions of Grin will stop working as of the HF block in a few weeks, and I very much hope that the HF does not come as a surprise to anyone when their nodes suddenly stop working.

Second, I do anticipate a bit of pain around HF time over the forced upgrade, particularly over the new version of the slate and the new V2 wallet API. However, once this settles I would expect us to see a much longer period of relative stability where everyone is running the same version of everything and transaction disruption should be minimal.
Going forward, changes should be coming at a slower pace, and as we plan upgrades we will be taking into consideration our learnings from this period. Most importantly. We're planning on implementing an RFC process through which all such changes will be funnelled (https://github.com/mimblewimble/grin-rfcs). (This is on today's agenda for further discussion) We're also considering changes to the governance structure that should hopefully get more community members involved and encourage more in-depth discussion from a more diverse set of people on potential breaking changes to APIs or slate formats.

In addition, the V2.0.0 code is much better at doing version checks and the software should be better at explicitly informing users of potential incompatiblities, which we hope will greatly help when we do have to introduce new features to support upcoming technologies.

So that's more or less all I wanted to say, in a nutshell, apologies to those having transaction issues, the situation will improve soon, and we're taking steps to prevent this situation from happening again. Also, upgrade those nodes and wallets.

Okay, so onto retrospective:

So, for major happenings, its mostly been about the 2.0.0 release, which think we're in good shape for. We've had 2 tests so far where everyone was ensuring transacting before and after the fork are behaving as expected.

The first was a pre-floonet fork in which a few users ran a modified version of the 2.0.0 code to fork off a private floonet network a few days before the actual floonet fork. That went more or less as expected, with the participants splitting off into their own network. We were able to mine on the new network, blocks from old miners were rejected properly, and transactions before and after the fork both works, with transactions created before the fork unable to be completed after the fork (by design).

There was one issue in which a few users managed to get their local data into invalid states with their local database containing blocks with invalid version numbers. We don't have a fix for this issue yet, but the reason it occurred is because of the floonet pre-fork and the fact that we essentially had 2 incompatible floonet forks for a while, and switching between them turned up unexpected data in the local database. This shouldn't happen during in practice during the real forks, as nobody should be able to mine beyond the HF block without switching to 2.0.0 anyhow.

Next test after that was the actual floonet fork, and I think the story was much the same. Have a look on grinscan and you'll see floonet blocks with a version number of 2 and cuckarood29 solutions.
(Although I think grinscan isn't properly displaying the algorithm name)

We have a point to discuss the 2.0.0 release later in the meeting, so for now I'll just leave it there, and looks like we should be getting the final 2.0.0 binaries out on time (July 1, I believe?). At which point we should be able to branch, fork, and start looking into all of those post 2.0.0 PRs and issues that have been piling up.

Does anyone else have any important happenings to share as well?

- _antiochp:_ Agreed that this should never happen - we went down a pretty big rabbit hole investigating these issues - see [mimblewimble/grin#2912](https://github.com/mimblewimble/grin/pull/2912) and [mimblewimble/grin#2918](https://github.com/mimblewimble/grin/pull/2918). That 2nd one is only tangentially related but the investigation highlighted some stuff relating to our MMRs that we can simplify and make more robust.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/151) accepted.

### 3. Action point follow-up

#### 3.1 Documentation of git branching model

_yeastplume:_  See [mimblewimble/grin#2915](https://github.com/mimblewimble/grin/pull/2915). It most likely needs refinement, but describes what we have been doing (feel free to comment)

#### 3.2 CI Status

_quentinlesceller:_ secp256k1-zkp has not been moved to Azure yet. :/

#### 3.3 Integration tests review

_hashmap:_ Not yet, I’ll post the current problems as an issue, we can discuss there. Can’t figure out cargo deps.

#### 3.4 Filing issues of security audit report findings

_yeastplume:_ No progress.

### 4. Security review status

_No update._

### 5. Proof of work

Proposal: [Putting phaseouts on hold](https://forum.grin.mw/t/grin-improvement-proposal-1-put-later-phase-outs-on-hold-and-rephrase-primary-pow-commitment) 

- _tromp:_ My proposal has two parts:
   1. Let's start with our commitment to ASIC mfg: [In our original commitment](https://forum.grin.mw/t/cuckatoo31-im-mutability) we committed to not make changes to primary pow "in the foreseeable future". I want to make that more concrete now, specifically, that we commit to **not making changes that take effect in less than 18 months**. This gives ASIC mfg more confidence to invest in ASIC development.
   2. Second, the original motivation for the forced size increases is no longer valid. I thought we could keep single chip ASICs at bay, but Obelisk's miners shows that to be infeasible the motivation for avoiding single chip ASICs is also mostly gone. Grin asics will be meaningfully different from SHA256 ASICs having much lower heat density. So single chip grin asics are an interesting economic experiment. That shift more of the cost from electricity to upfront chip cost. So i proposed to put the phase outs of smaller sizes on hold. If anyone thinks the phaseout are a good idea and should not be put on hold, please speak up now. By putting them on hold as I propose, ASIC mfgs can expect any cuckatoo32 asics they make to have years of time to ROI and there will be less hardware obsoleted - only the Cuckatoo31 asics like Obelisk's GRN1 whose phaseout will  start early next year and is too soon to change. In the long run, 3 or more foundries (samsung, tmsc, intel) should be able to produce increasingly efficient cuckatoo32 asics at 7nm/10nm with either 1GB of SRAM on board, or with 512MB of SRAM and external 512MB DRAM. The latter also possible to fabricate on larger nodes like 16nm.
- _yeastplume:_ I'm in agreement with the proposal, I think it makes sense to put phaseouts on hold. Is there any risk we can be in a situation where the algo will be cuckatoo32 but ASICs won't be generally available?
   - _tromp:_  [Innosilicon's miner](https://www.innosilicon.com/html/news/33.html) will handle cuckatoo32. In worst case, primary graphrate will fall, and gpu miners will be happy to pick up slack with secondary. Various slean miners will also be able to run c32. In any case, today's decision does not depend on that question, as c31 phaseout is a foregone conclusion.
- _garyyu:_ Can we invite the stakeholders to a dedicated meeting? As no grin asic miner developer is here for this decision, we should be more careful to make it. How about to use next week’s governance meeting to decide? And I can invite 2-3 of them to join for it.
   - _tromp:_ This change would go into 2.0.0 binary, there's no time to wait another week. My proposal has been up on the forum for months, so there was plenty opportunity to challenge it. Seems no one wants to argue for further phase outs anymore. They were admittedly controversial to begin with. Remember that I was practically the only one arguing for phaseouts in the first place. Both Casey Rodarmor and Tim Olsen were arguing against them, and now I've come around to considering them undesirable. We're just putting them on hold now. If in future there is ever a good reason to encourage c33 miners and phase out c32 ones, it will be easy to change the code again. It will just have to take effect at least 18+ months after the decision.
   - _yeastplume:_ Unfortunately it needs to go into 2.0.0, and we've had ample time to discuss and gather feedback on this.
   - _jaspervdm:_ I think they had enough time on the forum, tbh.
   - _antiochp:_ Agreed - we're making decisions in the open - no feedback does not necessarily mean we need to keep waiting until we do get feedback.
- _yeastplume:_ Okay, so can we consider this accepted and move on?

_support from tromp, yeastplume, antioch, jaspervdm, quentinlesceller, with no explicit objections._

#### Decision: Putting phaseouts on hold

Meeting accepted @tromp's proposal.

### 6. v2.0.0

- _yeastplume:_ I talked about this before, I think we're mostly ready for the tag build, barring anything major coming up we should be on track for a July 1 release. One thing concerning me is a couple of PRs merged into master that shouldn't have been. Ideally we're going to merge 2.0.0 back into master shortly before release, and those PRs should be rolled back out and into the 2.x.x branch which has just been created. Other than that and what's already been said, I don't have much more to add regarding 2.0.0, which is probably a good place to be in.

### 7. RFC Proposal Status update

_yeastplume:_ So as we've talked about, we've been talking about implementing 1) A change to how governance works and 2) Instituting an RFC process. We're still hammering out the details of 1 (and it's a governance discussion anyhow) but I think point 2 is at a point ready for comment and discussion.

We're trying to bootstrap the process by creating initial RFCs that define the process, and currently focused on GRINRFC-0000 and GRINRFC-0001 as defined in our new grin-rfc repository here: https://github.com/mimblewimble/grin-rfcs

So I don't think we want to do much more in this meeting in particular other than reiterate that that repository is there now, and ask everyone involved to look at the proposed RFC process, feedback and comment. Perhaps we can have a larger discussion of this at the next meeting

### 8. Other questions

None

**Meeting adjourned.**
