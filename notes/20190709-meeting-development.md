# Meeting Notes: Development, July 09 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d24ac0272d4092b1ab17be1). Meeting lasted ~ 65 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- chisa0a
- davidburkett
- garyyu
- hashmap
- jaspervdm
- j01tz
- lehnberg
- quentinlesceller
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_ 2.0.0 was released about a week ago now, and the ecosystem appears to be transitioning okay. Some integration issues here and there (and more and better documentation would help with this in the future), but overall we have quite a few confirmed reports of exchanges/pools having made the transition successfully, so all we can do now is wait for the HF. Very importantly, both the [wallet subteam](https://forum.grin.mw/t/announcing-the-grin-wallet-subteam/5430) and the [node subteam](https://forum.grin.mw/t/announcing-the-grin-node-subteam/5466/3) have been set up, and once again everyone at all interested in shaping Grin's development should **join the keybase teams ASAP**. I'd expect most of the types of conversation and decisions re wallet and node development will be moving off to 'rolling' subteam meetings instead of being discussed here in the /dev gitter channel.
 
   In other news, some work is starting now on post 2.0.0 development, @chisa0a and @hashmap have been progressing i2p, @antiochp has been looking at some MMR/sync improvements, and I'm developing some RFCs for future wallet work (and coding the most complicated one up at the same time, which is probably cheating but findings from development help hone the RFC).

* _quentinlesceller:_ Remaining exchanges: **please upgrade as soon as possible**, there is only 8 days left before the HF.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/157) accepted.

### 3. Action point follow-up

#### 3.1 CI: secp256k1-zkp on azure-pipelines

* _quentinlesceller:_ I did an attempt this morning. It's honestly a mess with the Azure Pipelines structure https://dev.azure.com/qlesceller/secp256k1-zkp/_build?definitionId=6. With a [huge file](https://github.com/quentinlesceller/secp256k1-zkp/pull/1). I'm not sure it is even worth it given how critical this is in our code. Setting the compiler to gcc or clang is also not something built in Azure. So I'm going to work on it anymore except if someone really have a strong opinion that I should deliver this. If Travis cease to exist that'd be a good motivation.
   * _yeastplume:_ You're right, it may not be. It gets tagged and published to crates.io anyhow where it gets picked up by other builds. So there might be better things to be spending time on

#### 3.2 Integration tests review

_hashmap:_ Mea culpa, I got swamped by I2P work, had to read a lot of code, including i2pd, promise to tackle it asap.

#### 3.3 Filing issues of security audit report findings

* _yeastplume:_ Since @j01tz has kindly agreed to start looking at security/audit in more detail, he'll take over with respect to this item and the audit status update.

### 4. Security review status

* _j01tz:_ I started breaking down what we received back in the audit report based on issue so they can be tracked to ensure fixes are applied. Right now I'm learning the code better to verify what we have fixed and what still needs to be addressed (would appreciate another set of eyes there if someone has time). Once we have each issue classified appropriately we'll make sure someone is assigned to each one so we can get the fixes in. The actual tracking of each issue is the the keybase repo. I want to make sure nothing falls between the cracks. Once we have made the first pass I'll work with coinspect to verify our fixes and complete and sync the community reports
   * _quentinlesceller:_ I'd be happy to help
   * _yeastplume:_ I'm sure we can spare an eyeball here and there. Ok, great, thanks for the update. So that's all underway. It really helps to have you drive this.
   * _lehnberg:_ Great work @j01tz.

### 5. Planning

* _yeastplume:_ With 2.0.0 released, right now grin/master is basically sitting there as the 2.0.x release. I think one or two small fixes have gone in, but at the moment the actual contents and dates of 2.0.1 are up in the air. Which is probably where it will stay until after the HF where we'll see if any fixes are warranted (hopefully nothing major, we've tested the HF transition twice). **So for now 2.0.1 is maintenance, and there's a milestone/2.1.0 for more major work.** Again, the plan isn't solidified around the next releases, but it should hopefully emerge from the subteams over the next few weeks as they start to come together.

### 6. RFC process & sub-teams update

* _yeastplume:_ I think I more or less took care of the RFC and subteam process updates earlier on, nothing further to report other than 'they're forming' and 'join the channel'. 
   * _hashmap:_ Blocking IO in p2p is ready for review, should we have an rfc for that?
      * _yeastplume:_ That would be a good question for the node team, but in general any changes that break anything, requires end-user or developer actions on upgrade, has an effect on the network or users, etc should be RFCed.
      * _hashmap:_ No, it’s purely internal thing, hence my question.
      * _yeastplume:_ Right, then it would most likely be okay as a PR

### 7. Other questions

None

**Meeting adjourned.**
