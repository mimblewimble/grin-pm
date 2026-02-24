# Meeting Notes: Development, Dec 10 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5defb38ed75ad3721d8b0147). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- DavidBurkett
- hashmap
- jaspervdm
- j01tz
- lehnberg
- yeastplume  

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume_:_ So just a quick reminisce. We've had a fairly successful launch of 3.0.0-beta.1 so well done all for all of the hard work getting us to this point
of course, we can't say it's 100% successful until we're past the floonet and main forks respectively, but I live in hope.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/224) accepted, with a question about API v2 added in Other questions.

### 3. Action point follow-up

#### 3.1 v3.0.0 changes doc

* _yeastplume:_ I think we kind of fell apart on coordination, I think the info is spread across 3 places still.
   * _lehnberg:_ So I started this: https://github.com/mimblewimble/docs/wiki/Grin-v3.0.0:-Changes-&-Improvements, which @tromp has been adding to.
   * _yeastplume:_ Indeed, and I went all like this: [mimblewimble/grin-wallet#262](https://github.com/mimblewimble/grin-wallet/issues/262). The changes doc could outline a couple of important notes for all users, list the new features to let everyone know they're there, and then link to the changes issue for greater detail.
      * _lehnberg:_ That could be a good approach, avoids replication of effort as well.
   * _antiochp:_ I can start putting something similar togeter for the node. In terms of node there should only really be a couple of high level points (cuckaroo changes and "fast sync" header changes) - maybe similar to wallet, with links to the actual detailed changelog.

* _hashmap:_ The original intent of splitting node and wallet was different release cycles, perhaps we should have different changelogs.
   * _yeastplume:_ On HFs though everyone should upgrade both, so I think it makes sense to treat them similarly for now.

* _lehnberg:_ So if I understood it right, the new structure on the wiki would then be more like:
   * Breaking changes:
      * [outline of each change]
   * Node changes:
      * [high level bullets]
      * [link to detailed changelog issue]
   * Wallet changes:
      * [high level bullets]
      * [link to detailed changelog issue]
   * _yeastplume:_ looks good. 

#### 3.2 v3.0.0 comms to ecosystem?

* _yeastplume:_  It makes sense to wait till we have the doc. Should we aim to have it by end of week? (with main doc linking to detailed notes)
   * _lehnberg:_ Sounds good to me.

#### 3.3 Research linking commitments in grinscan.net

* _jaspervdm:_  No update yet.

### 4. Planning

#### 4.1 v3.0.0 status

* _antiochp:_ We are still investigating (and attempting to resolve) some issues that we are seeing during sync.

* _yeastplume:_ I see that's ongoing, so we're likely looking at a beta.2 at some point anyhow, which leads to the next discussion as for scope of what we want to put into it. Are we just looking at fixes or want to slip any changes in? The only thing I really have is packaging and verifying payment proofs, which is just surface-level stuff that shouldn't affect anything, but also happy to leave it till 3.0.1 if we decide against this kind of thing in general.
   * _antiochp:_ @JosephGoulden has a couple of minor TUI fixes that I think there is consensus for getting into the next beta release (low risk fixes).
   * _yeastplume:_ Right, so if everyone's okay with a proof verification in the next release, (also low risk) I can get that in as well
   * _lehnberg:_ Are we still meant to cut a release candidate in three days? or is that timeline changing?
   * _yeastplume:_ It's dependent on the sync issues for the most part, the other stuff is minor and can really wait if needed. What's a 'release candidate' in our context? I mean, we don't do special RC builds, if it turns out everyone is happy with beta.2 that's the release candidiate.
   * _antiochp:_ Yes I guess the assumption here is beta.2 is the RC (pending anything unexpected). Beta.1 is the RC currently given the fact we are doing a release for HF2. 
   * _lehnberg:_ Generally, if you're doing bug fixes and release, there's a good chance you might get a release candidate if there's no regression. But if you add new functionality and release, you might get a release candidate, or you might get a list of bug fixes that you need to do.
      * _antiochp:_ yes absolutely - last thing we want to do right now is add to the list of outstanding bugs.
   * _yeastplume:_ Okay, so happy with saying no to new features as well and just including any needed sync fixes.
   * _lehnberg:_ I feel it's up to you the devs to agree on. I'm skeptical myself, my opinions are as per [the comment in the thread](https://github.com/mimblewimble/grin/pull/3161#issuecomment-563217208). But I'm also not the one that's at risk of being stuck doing last minute troubleshooting & bug fixes over the holidays.
   * _antiochp:_ I'm going to test the TUI changes though locally - they are limited enough in scope I think and give some tangible benefits (no new features). One fixes a known panic in the TUI for example. Although that said, the TUI is usable right now, so I'm not entirely convinced by my own argument here.
   _yeastplume:_ Okay, so think we're agreed here. Sync fixes necessary, TUI up to @antiochp 's judgement, and beta2 is the working assumption release candidate. And we can branch when it's built, for >3.0.0. I already need a place to throw the stuff I'm working on into post 3.0.0, I'm sure others have the same issue.
   * _lehnberg:_ Do we still believe beta2 could be Thursday?
   * _antiochp:_ I think so yeah. Ideally we have a few nodes running on master having done a full sync successfully between now and Thurs.

### 5. /packaging repo status update

* _lehnberg:_ Quentin had given us an update before the meeting: 
   > Regarding the package thing we have created a repo with @JosephGoulden and Joseph added the ubuntu snap there https://github.com/mimblewimble/packaging. Future work would be to find a way to automate this for each release or at the very least have a check list somewhere with all the tasks required. I'd be also in favor of adding choco, ubuntu and debian (apt) if possible though I'm not very familiar with the process.

### 6. Project focus 

_No discussion._

### 7. Other questions 

None.

**Meeting adjourned.**
