# Meeting Notes: Development, Aug 20 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5d5c0b457d56bc60808f59cf). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- davidburkett
- j01tz
- lehnberg
- mcdallas
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_ Most visible over the past couple of weeks have been: 1) @antiochp and changes to the kernel serialization formats in anticipation of variable kernel sizes and ultimately relative kernel locks, both of which have shiny new RFCs for consumption. These are carefully done so as to not have repeats of our pre-hf incompatibilities.
   * _antiochp:_  It's what's taking so long (that and writing RFCs), although just writing it down like this is making us think about all the places we need to be careful - so it's worth it.
 * _yeastplume:_ 2) the introduction of a secure API mode for the wallet json-rpc APIs, in anticipation of full lifecycle functions (create wallet, open wallet, etc) within in the API. That took me most of the last couple of weeks, and I'm moving on to actually implementing these functions next, which should hopefully be quick(ish) given the groundwork has been done over a few very large wallet PRs. 3) @tromp has been doing some solver related work as well (which I'll let him fill us in on)
    * _tromp:_ I've been working on integrating photon's GPU speedups back into my repo, which i'll be tweaking over the next week or so and then we'll update the reference miner.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/175) accepted.

### 3. Action point follow-up

None

### 4. Security review status

* _j01tz:_ Coinspect confirmed receiving our remediation report at the end of last week. Hoping to hear back from them soon with any updates.
   * _yeastplume:_ Thanks again for all your work here, hopefully we should have this entire issue closed off soon.

### 5. Status of open RFCs

#### 5.1 Security process

[mimblewimble/grin-rfcs#13](https://github.com/mimblewimble/grin-rfcs/pull/13)

* _antiochp:_ @lehnberg mentioned numbering and merging the security RFC earlier, should we do it?

_Yestplume, Antioch, Quentin, Lehnberg in favour._

#### 5.2 Wallet lifecycle API

[mimblewimble/grin-rfcs#18](https://github.com/mimblewimble/grin-rfcs/pull/18)

* _yeastplume:_ It's also time to merge/number this one, unless anyone has any outstanding objections?
  * _lehnberg:_ Do you know if anyone has actually reviewed it? I see no discussions or reviews on the pull request. Would be nice for audit and posterity to get some +1s on the PR as well.
  * _yeastplume:_ @DavidBurkett has, and it's had sufficient mention in the wallet dev channel. Agreed though, if anyone who's looked at it silently would like to add some +1s.
  * _quentinlesceller:_ Will do this afternoon.
  * _antiochp:_ I'll take a look as well.

#### 5.3 Variable size kernels

[mimblewimble/grin-rfcs#21](https://github.com/mimblewimble/grin-rfcs/pull/21)

* _antiochp:_ Hoping to have this out of WIP in the next day or so - just need to document the migration process etc. It's reviewable today.

### 6. Release planning

* _yeastplume:_ Let's have a discussion on what's going into the next minor releases of the wallet and node. I admit not having had the discussion in the wallet subteam yet, but in my head the next wallet release (2.1.0) will include the new secure wallet lifecycle API, and I'd also like to address one or two long-standing issues, though which ones is open for discussion. I'm thinking [mimblewimble/grin-wallet#169](https://github.com/mimblewimble/grin-wallet/issues/169), but it requires some additions to the node API as well.
* _antiochp:_ I'd personally like to get protocol version 2 kernels working on p2p layer (without breaking any wallet apis) - i.e. saving bytes on unnecessary fee and lock_height and allowing them to be variable size, even if we're not maintaining them in the MMR like that just yet.
* _quentinlesceller:_ I'd like to add [mimblewimble/grin#2966](https://github.com/mimblewimble/grin/pull/2966) in there if possible. Still needs some work though.

* _lehnberg:_ Do we want to target it based on scope (stuff being ready and then when ready we release) or time (setting a deadline for release and releasing it with whatever is ready)? I know we’ve been doing it on scope before, just wanting to confirm that this is still desired. 
   * _yeastplume:_ I think scope until there's a need for a time-based deadline (HF2).
   * _quentinlesceller:_ Agreed.
   * _antiochp:_ I'd say scope but keep scope limited.
  
* _lehnberg:_ Maybe we could do some planning on a github issue on `/grin-pm` or something with a cut-off? 
   * _yeastplume:_ Yep, sounds like a plan.
   * _antiochp:_ I'd say by the gov meeting next week, (for scope).
   * _lehnberg:_ Sounds good, we can finalize it asynch over the github issue (I’ll create one).

* _lehnberg:_ Also regarding HF2, do we want to set some “rough” targets / rules here? feels like it’s almost just around the corner!
If HF2 is ~ Jan 15 2020, when is feature freeze? And if feature freeze date is x, when is scope freeze? etc
   * _yeastplume:_ Think they'd still be very rough at this stage, but I think this time we want the scope defined very well in advance? Like 2-3 months at least? End Oct would seem like when we'd want to have scope frozen, i.e. all issues targeted for the HF tagged in Github.
   * _antiochp:_ I think features should probably be done by end of Nov as well as its leading into holiday time. So maybe end of Oct for scope then end of Nov for features (assuming some features are already being worked on prior to end of Oct).
   * _lehnberg:_ And then december is beta / release candidate modes plus holidays etc. Floonet hard fork practice.
   * _antiochp:_ And first 2 weeks of Jan gives people time to upgrade.

* _yeastplume:_ So, 2.1.0 scope to be finalized next week via grin-pm issue/subteams. Timeline for HF release as discussed here agreed and to be documented.
   * _lehnberg:_ Yep. And with it being Aug 20 today, it means we have roughly 2 months before we’re in full hard fork mode. So anyone who wants to get something into a 2.1.0 or a 2.2.0 keep this in mind please, there’s ~8-9 weeks to get it done.
   * _yeastplume:_ That would mean we want to get 2.1.0 out before then.
   * _antiochp:_ If we can finalize scope by this time next week - then maybe we err on scoping for a couple of weeks beyond that? i.e. not much more than that?
   * _lehnberg:_ It might be a while after 2.1.0 is out for “regular” non-consensus improvements to be included in a release.
      * _yeastplume:_ As long as we keep our heads and plan scopes sensibly, I think we can get away with allowing some non-HF related changes into 3.0.0. 
      * _lehnberg:_ That would ease things for sure.
      * _antiochp:_ Yeah - we just don't want to be piling them in during last week of Nov.

_Meeting in agreement._


### 7. Other questions 

None

**Meeting adjourned.**
