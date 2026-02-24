# Meeting Notes: Development, Oct 15 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5da5df5289acff6ff5fe2046). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- jaspervdm
- j01tz
- lehnberg
- quentinlesceller
- tromp
- yeastplume


_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume:_  Most major thing over the last couple of weeks is beta 2.1.0 was 'officially' released, (with another beta for the wallet soon after to fix a compatibility issue). Beyond that, @quentinlesceller's been working on the [V2 Node API](https://github.com/mimblewimble/grin-rfcs/pull/28) (bringing it inline with how the wallet is doing things. Also @JosephGoulden has come into the effort to make some much-needed [TUI improvements](https://github.com/mimblewimble/grin/pull/3064). @antiochp has also been at work bug fixing, particularly an issue found with [hydration of compact blocks](https://github.com/mimblewimble/grin/pull/3089). And I've been completing TOR work, which is ready for testing in the wild: https://forum.grin.mw/t/grin-wallet-experimental-tor-integration/6233/5

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/198) accepted.

### 3. Action point follow-up

* _Ignotus removed from security contacts?_ [Done](https://github.com/mimblewimble/grin/pull/3009).
* _Canaries set up?_ [Done](https://github.com/mimblewimble/grin-security/pull/1).
* _TX Proof RFC_ Jaspervdm:  @DavidBurkett will be the one writing it.

### 4. Security

* _j01tz:_  A coordinated release date with Coinspect for the audit findings has been set for this Friday, October 18. A post will be made in the forum with some general information about this audit process and findings on that date. The full report will be made available in the `grin-security` repo.
    * _yeastplume:_ Thanks @j01tz for all your work on this.
    * _j01tz:_ Thanks to everyone who helped me follow up on all of the issues etc, true team effort!

### 5. Status of open RFCs

* _yeastplume:_ Nothing has changed from last week, but I think we're in a position where we can start moving https://forum.grin.mw/t/grin-wallet-experimental-tor-integration/6233/5 toward acceptance, perhaps after a revision or two. Revision mostly to solidify some necessary implementation details, make the problem cases a bit more explicit, and perhaps make it clearer that this shouldn't cut off any future tech developments that may suit our needs. I can shepherd that one unless anyone has any objections.
   * _lehnberg:_ It might be good to clarify what’s in the integration that just got merged and how that should instruct the RFC.
   * _yeastplume:_ Yes, particularly around how keys/v3 addresses are derived. Also its behaviour, that it's attempting to use tor in the first instance for sending and only falling back to http if needed. And also making sure we document any problems and highlight the use cases that tor won't cover.
   * _j01tz:_ I think the RFC would be the specification and the documentation would be more to describe the implementation.

### 6. Release packaging

* _yeastplume:_ Context and suggestion [here](https://github.com/mimblewimble/grin/issues/3093). Motivation:
   1. Gives us the ability to include/add as a dependency things such as TOR;
   2. Improves the experience on all platforms with proper installations that live where they're expected to live and allow for upgrades etc. Right now we just splat out a binary and expect everyone to know what to do with it.

* _lehnberg:_ I might be wrong about this), I’ve always considered `grin` and `grin-wallet` not made “for end users". I.e. more like tools in a toolbox, that wallets like @xiaojay’s Niffler then use to go the last mile to produce an end user wallet. Because if we say they are made for end users, then we need GUI for them, obviously. I'm not saying that nice installers are a bad thing, it just feels a bit strange that we do that to deliver something that end users still will not be using. I don’t mean to say that friction is good and that we should be making things harder, but there is continuous effort required here to maintain this, so the question then is whether this is the right call. And if it’s the right call, are we being consistent?
   * _yeastplume:_ Are end users not using grin or the wallet at all?
   * _lehnberg:_ End users, as in mainstream users? I would say no, not even crypto mainstream users. My impression is that they are in dire need of a GUI, and prefer to use Niffler or Grin++ right now.
* _quentinlesceller:_ I feel like at least having some basic packaging would be good. Maybe just brew (macOS), choco (Win) and linux package.
* _antiochp:_ I think there is definitely an argument that grin-wallet is only for "expert" users, but that does not preclude making installation easier. Grin node itself should be used by anyone wanting to run a "full node" and this needs to be relatively painless to install (for some definition of painless).
   * _j01tz:_ It could make it easier for users to run a node and encourage more nodes on the network. It could also be a pain to maintain across many distros, e.g. arch breaks something while devs are busy, it doesn't get fixed for 6 months and people get upset.
* _antiochp:_ Tor already has reasonable install options? I'm tempted to have it be an optional dependency - where we take advantage of it if already installed? `brew install grin-wallet` should not necessarily also install tor (but should maybe shout loudly that `brew install tor` is a good thing to do)
   * _yeastplume:_ Is there a real reason not to pull on tor if it's there anyhow? As it makes the whole experience markedly better if it's available and it adds no more pain to the install?
   * _antiochp:_ Users may have issues installing dependencies like that, particularly something potentially contentious like tor it should maybe be opt-in (via simply having it installed). It can complain loudly that we're falling back to non-tor. But its up to the user to explicitly make the decision to install it. Our docs can even say `brew install tor && brew install grin-wallet`.
   * _lehnberg:_ Yes, which seems to be in line with how it’s developed in this last PR, no? At least as a _first_ step.
   * _yeastplume:_ I think I could live with that for now. And if we stick to CLI package managers, I don't think the upkeep will be that onerous. Okay, so I'll update the issue with feedback from this meeting and we can discuss again at next meeting.

### 7 Release planning

#### 7.1 v2.1.0

* _antiochp:_  [This](https://github.com/mimblewimble/grin/pull/3089) didn't make it in. This behavior has been in place for 6month+ so I think we're good not including it in 2.1.0. It will be in for 3.0.0. Are there any remaining issues or fixes still pending?
   * _yeastplume:_ No there are no issues I'm aware of. However I'd just like to hear back from polo about their testing with the last wallet beta. Will just await confirmation on that one issue then ship it, unless any objections.

#### 7.2 v3.0.0

* _lehnberg:_ I'll create an issue similar to [mimblewimble/grin-pm#179](https://github.com/mimblewimble/grin-pm/issues/179?). Any immediate stuff we want to add that we already know? Preferably with github issue # if such exist.
* _yeastplume:_ In order of priority:
   1. Optional (but preferred) TOR integration with payment proofs
   1. Rework of transaction verification, to prefer kernel-lookup and incorporate chain scanning (i.e. what today is a manual check-repair step)
   1. Interactive CLI mode (in addition to current single-invocation mode, which won't go away)
* _antiochp:_ "Relative kernels" is still in play but its possible this will be limited to prep work - there are still a lot of moving parts to juggle and the changes are far-reaching.
* _lehnberg:_ And then there's @tromp's POW modification.
   * _tromp:_ Still working on cuckatoo cuda miner rewrite. Plan to start on next cuckaroo tweak next week. Following the trusted just-in-time principle.
* _lehnberg:_ Shall we aim to freeze scope in next dev meeting Oct 29?

_No objections. Support from @yeastplume, @antiochp, @quentinlesceller._


### 8. Other questions 

None.

**Meeting adjourned.**
