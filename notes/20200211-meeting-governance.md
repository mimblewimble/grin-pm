# Meeting Notes: Governance, Feb 11 2020

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [#general in the grincoin keybase team](https://keybase.io/team/grincoin). Meeting lasted ~ 35 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- jaspervdm
- joltz
- lehnberg
- quentinlesceller
- yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/249) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Keybase widget released?

Actioned.

#### 2.2 Moderation sub-team, help posted on forum?

- _lehnberg:_ Yes, well kinda. I took inspiration from @joltz and created an rfc draft for a moderation team, just posted it before the meeting and linked to it in the forum: https://github.com/mimblewimble/grin-rfcs/pull/42
  It's tricky to rely on one or two single people to do all the work here and even though we get people showing interest (latest one a few hours ago). I think it's about time we do this in the open or it will never get done it feels like. So let's see if we can move a bit faster on this from now on. Anyways, now's as good of a time as ever to join in and participate!

#### 2.3 Grin.mw domain access: shards are distributed?

- _lehnberg:_ I've no update, not seen @0xb100d since last meeting. again, I can log in to the domain host, but it seems to have a 2fa or something tied to it (and I don't have that second factor). the domain has been renewed and we have a tonne of time to work this out, so not super urgent probably, just point out that it's not where it needs to be for us to relax about it.

#### 2.4 Rename sub-teams to teams carried out?

Actioned.

### 3. RFC & sub-teams update

#### 6.1 Roadmap 2020 RFC

- _lehnberg:_ https://github.com/mimblewimble/grin-rfcs/blob/c66fc3b7fbdc3f6c6f6a03a8d7823ab9a6b3eb7c/text/0000-2020-roadmap.md. Not really seeing any kind of activity here → should this just be binned?
  - _yeastplume:_ Not binned, I think this list pretty much covers it. Perhaps give it the 2 week period from now or people can forever hold their peace?
    - 👍: _joltz_
- _lehnberg:_ Oh, okay. yeah that's fine by me. Will you fcp it then as shepherd?
  - _yeastplume:_ I will shepherd it into submission
    - 🐏: _lehnberg_
- _jaspervdm:_ Yeah, no objection from me. In the end, its up to the actual devs that are contributing what they want to work on but its a nice guideline what we think is most important at the moment
  - _lehnberg:_ Absolutely, and for example async/await I don't think is on there (although it could be argued that it should be there), but it's not like that stops you in any case from moving forward with that.
  - _jaspervdm:_ I guess it falls under the "p2p layer" point
- _lehnberg:_ The more in agreement the contributors are about what's important, obviously the better it is. But yeah, not seeing a lot of debate, which can mean a lot of things. Anyways, the opportunity has clearly been given.
  - _yeastplume:_ Indeed, that's fine. I don't think it's a huge lack of interest... it just seems in order for the most part and isn't 100% binding anyhow
    - 👍: _lehnberg_

#### 6.2 Security team RFC

- _lehnberg:_ Moved out of draft: https://github.com/mimblewimble/grin-rfcs/pull/39. @mcmmike has hinted they want to feedback on the rfc in the pull requests over the next few days, they couldn't join the meeting today. As shepherd, with the rfc having been out in the wild for 18 days now, seeing no objections, I'm inclined to move this towards fcp starting today with a disposition for it to be _merged_ in the next governance meeting.Any objections?
  - _yeastplume:_ No, all good
  - _quentinlesceller:_ Yep no problem
  - _jaspervdm:_ 👍

#### 6.3 General Fund spending guidelines

- _lehnberg:_ @yeastplume has a general funding guidelines draft out: https://github.com/mimblewimble/grin-rfcs/pull/41
  - _yeastplume:_ Full of that rfc goodness. Needs a shepherd
  - _jaspervdm:_ I can be a shepherd
    - 🐑: _quentinlesceller_
  - _yeastplume:_ Works for me, thanks!
  - _lehnberg:_ Assigned
- _jaspervdm:_ Since its been out 4 days, we should leave it open a while longer for comments
  - 👍: _lehnberg_

#### 6.4 Other RFCs

- _lehnberg:_ @joltz has been keeping busy and there's a rumored QA team rfc draft hitting as well within the next week.

  - _yeastplume:_ Ooooh!!!

- _lehnberg:_ New teams, no teamsters. 🥀. Build it, and they shall come.

  - _joltz:_ Maybe the structure will help some potential contributors find their homes
  - _lehnberg:_ Yep 👍.

- _lehnberg:_ What's the deal with [wip] rfc - multiple named wallets, is that coming @yeastplume? https://github.com/mimblewimble/grin-rfcs/pull/12
- _yeastplume:_ Kind of, but there are other things that are probably a bit more important. May be worth looking at for v4, think it's okay to leave that there for now
  - _lehnberg:_ Kk, so well that's that then. Anything else we got going today?
- _lehnberg:_ And yeah I suspect this is the same status of David's asynch tx building draft, him being busy with litecoin extension block stuff.
- _lehnberg:_ Relative kernel ones, I know @antiochp is busy iterating on.

### 7. Other questions

- _yeastplume:_ Might be worth mentioning the Grin Amsterdam date. Which looks like it'll be March 24, at Amsterdam Centraal Station.
- _lehnberg:_ Yes, see y'all there!
  - 🎉: _yeastplume_

**Meeting adjourned.**
