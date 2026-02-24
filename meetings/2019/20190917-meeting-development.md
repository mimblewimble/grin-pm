# Meeting Notes: Development, Sep 17 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d80f52ba6f48964491fcc0e). Meeting lasted ~ 50 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- davidburkett
- energyburn
- georgieva_val_twitter
- hashmap
- jaspervdm
- j01tz
- lehnberg
- quentinlesceller
- tromp
- yeastplume


_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_  I believe most of the work the past couple of weeks has been about the upcoming 2.1.0 release.
  
   On my side, it's been completing the wallet lifecycle APIs, several bug fixes around the node/wallet API secrets and confirming transactions by kernel in certain cases, which was causing an issue with transactions not confirming when there were no change outputs, that is nearly ready for review as well: [mimblewimble/grin-wallet#220](https://github.com/mimblewimble/grin-wallet/pull/220)

   Just need to update the comments, but once that's in that's all we had for 2.1.0 done on the wallet side. Aside from the BIP39 entropy issue, which I don't think we're going to do anything about, other than say we considered it and decided against action.

   On the node side @antiochp has been at work on implementing [variable sized kernels](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0005-variable-size-kernels.md).
   * _antiochp:_ Yes, it's broken out into 3 separate issues here:
      * [mimblewimble/grin#3010](https://github.com/mimblewimble/grin/issues/3010)
      * [mimblewimble/grin#3011](https://github.com/mimblewimble/grin/issues/3011)
      * [mimblewimble/grin#3043](https://github.com/mimblewimble/grin/issues/3043)

      With PRs in various stages on completion for each. P2p and db stuff is relatively straightforward, the txhashset.zip changes are a bit more involved. This first one is ready for review - [mimblewimble/grin#3034](https://github.com/mimblewimble/grin/pull/3034).
      
      Tl;dr: we're changing the binary serialization of kernels for more flexibility (and to save some space).

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/183) accepted.

### 3. Action point follow-up

Initial HF2 comms has gone out: https://forum.grin.mw/t/grin-v3-0-0-upgrade-jan-2020/6036

### 4. Security


#### 4.1 Audit status

* _j01tz:_  I got a reply about 5 minutes ago from Coinspect, apparently the last issue is now fixed!
   * _lehnberg:_ Great!

#### 4.2 Canaries

* _j01tz:_ Regarding canaries, the security RFC set it up as a canary for the security disclosure process (with only signatures from disclosure contacts). There was discussion about adding more core members to the canary and making it more of a project-wide canary as opposed to a security disclosure canary. This has some tradeoffs that may be worth discussing.
   * _lehnberg:_ I might be just making things more complicated for no reason by suggesting a project wide canary. What’s the purpose of the security-disclosure-contact-only canary? To ensure that nobody discloses responsibly to a compromised contact?
   * _j01tz:_ Disclosure contact only canary is more manageable and concentrated on a critical area. I think we would have biggest impact there with least risk the risk being a missed signature or changed message spreading FUD.
   * _lehnberg:_  Anyone who thinks it’s a bad idea that we only do disclosure contact canaries?

_Meeting did not object._

##### Decision: Removing Ignotus from security disclosure contacts

* _j01tz:_ Though that does bring up Ignotus, he won't be able to sign.
   * _lehnberg:_ Should we remove Ignotus from the disclosure contacts?

_Decision carried, with explicit support from DavidBurkett, antiochp, lehnberg, j01tz, yeastplume, quentinlesceller._


### 5. Status of open RFCs

#### 5.1 Transacting via Tor Hidden Services

[mimblewimble/grin-rfcs#24](https://github.com/mimblewimble/grin-rfcs/pull/24)

* _yeastplume:_ I'm only just really turning my fuller attention now to the transaction exchange issue. I think we had vague notions of providing tor as an option via configuration of docker images to do the heavy setup, but that was years ago.
* _antiochp:_ I think we need to resolve the tor vs i2p question - it makes little sense to be using both, or proposing to use both. But maybe we do that by spiking a couple of different impls and playing around with them for a bit.
   * _DavidBurkett:_ Not true. They each have their advantages and disadvantages. Tor is more suitable for wallets. I2p is more suitable for long-term connections, like nodes. Using tor for the node is harmful to Tor. Using i2p for the wallet is harmful to i2p.
   * _antiochp:_ Totally understand you believe we should use both but there is a cost to doing that. We need to minimize dependencies in the long run, not add huge overlaps. I guess I'm not clear on why tor hidden services for long running nodes would be harmful to the tor network, but probably best discussed offline (from this meeting).
   * _DavidBurkett:_ Slows down the tor network since all traffic has to go through exit nodes. But, yes offline works.


### 6. Release planning


* _lehnberg:_ 
   [mimblewimble/grin-pm#179](https://github.com/mimblewimble/grin-pm/issues/179)

   Target release dates
   * Beta: Week of Sep 30
   * Release: Week of Oct 14

   v2.1.0 Milestones
   https://github.com/mimblewimble/grin/milestone/14
   https://github.com/mimblewimble/grin-wallet/milestone/5

   Are we all comfortable with the timelines?

   * _yeastplume:_ Yes to timelines on wallet side, should be good for a beta any time now. Based on the discussions we've had, everything appears to be on track for 2.1.0.
   * _antiochp:_ If we get the 2 PRs merged on the node side we should be good for a beta there as well (the 3rd one won't hold anything up).

### 7. Other questions 

None.

**Meeting adjourned.**
