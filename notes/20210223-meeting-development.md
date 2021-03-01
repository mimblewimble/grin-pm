# Meeting Notes: Development, Feb 23 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 18 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- cekickafa
- defistaker
- goyle
- joltz
- phyro
- quentinlesceller
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions
### 1. Retrospective

- _antiochp:_ Not much to update on the dev side of things.
@bladedoyle identified and fixed an issue with "peer locks" related to receiving lists of peers during p2p handshake.

   I'm continuing to make some progress of "full archival sync" and taking opportunity to clean up some backend code. Other than that not much to update on this week.

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/396) was accepted without changes.

### 3. Action point follow ups from previous meetings

- _antiochp:_ @quentinlesceller any update on bug bounties?
   - _quentinlesceller:_ No sorry was very busy last week. Going to work on it as soon as possible.
   - _antiochp:_ No worries - we can revisit this next meeting.

- _antiochp:_ @phyro updates on triage/github?
   - _phyro:_ The old PRs have not moved as much as I had hoped, so hopefully this improves in the next week or two. There were some other PRs that were checked though, namely @bladedoyle's. Ideally I'd want to cleanup the old ones so that we have a small list of open PRs.
   - _antiochp:_ Yeah sounds like there were also some strong opinions about closing old PRs etc.
   - _phyro:_ Yes. I think quickly re-evaluating them first would be a good first move that shouldn't hurt in any direction. We can then decide how to proceed.
   - _antiochp:_ Still a work in progress then.
   - _phyro:_ Definitely. I'll likely ping you guys more often in the next weeks. 👀

### 4. Version planning from [Post 5.0.0 wish-list](https://github.com/mimblewimble/grin-pm/issues/385)

- _antiochp:_ Version planning for post 5.0.0 wish list - not sure we have much to discuss there. At least currently.
At some point its going to be clearer that we have a tentative release in the works, and I don't see much reason to force an arbitrary deadline on one right now, but feel free to disagree here.
   - 👍: _quentinlesceller, phyro_

- _antiochp:_ (going for a record short meeting right now)
   - 😂: _phyro_
   - _quentinlesceller:_ That's okay for once.
      - 🚀: _antiochp_

### 5. Other questions

#### 5.1 Chat bridges

- _goyle:_ Are the admins on Keybase open to a chat bridge between Keybase and other platforms like Discord and Telegram for users to participate in the Grin weekly meetings?
   - _antiochp:_ If they are around?
   - _quentinlesceller:_ Sure
   - _goyle:_ Only for the meetings or at any time?
   - _antiochp:_ The only thing I'd add there is that the weekly meetings are not intended as a single point of contact.
      - 👍: _quentinlesceller_
   - _goyle:_ Can you explain that?
      - _antiochp:_ We should not really be discussing anything new in these meetings that we are not already discussing here on keybase throughout the week.

- _yeastplume:_ I think this may be more of a governance question rather than a tech one.
   - _goyle:_ Ok 👍
- _antiochp:_ Ok maybe we declare dev meeting over and we can discuss chat bridges if people want?

**Meeting adjourned.**