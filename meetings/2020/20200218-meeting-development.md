# Meeting Notes: Development, Feb 18 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 30 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- jaspervdm
- joltz
- justaresearcher
- kurt2
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ So seemed a bit quiet the past couple of weeks, but plenty of activity going on. on my end the beta of 3.1.0 wallet is out. I might let everyone else sound off on details of what they've been working on.
- _jaspervdm:_ From my side, I've been working on both node and wallet side. On the node: upgrading dependencies to futures 0.3 (ready to be merged) and continuing with my other pr, fully async p2p. On wallet I've been refactoring the backend trait so we can actually gain speed improvements for sql type backends.
  - 🔥: _joltz_
- _tromp:_ I did a major rewrite of cuda cuckaroom solver making it nearly twice as fast https://github.com/mimblewimble/grin-miner/pull/242
  - 🚀: _joltz, jaspervdm, justaresearcher, quentinlesceller, kurt2, yeastplume_
  - _tromp:_ Bminer still seems about 30% faster on 2080ti though:-(
- _antiochp:_ On the node side I think we're also planning a 3.1.0 shortly. Mainly stability fixes and ipv6 support (or at least better handling of ipv4-mapped ipv6 internally). And @jaspervdm futures deps.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/251) reviewed and accepted.

### 3. Action point follow-up

#### 3.1 Research linking commitments in grinscan.net

- _jaspervdm:_ You can ring the shame bells for me again. turned out to be a bit bigger task than I hoped, have to refactor some backend code. I will try to free up some time this week.

#### 3.2 Triaging research

- _yeastplume:_ lehnberg posted the following before the meeting:
  > An update on my action point re triaging is that I've not been able to make a lot of progress on that since last. Following the chat here in #dev over the weekend, I've also been thinking about whether it makes sense to try to expand contributing.md (or something else) with more detailed and fine grained documentation about expectations, processes, and general guidelines. Not sure if it would help or add to bureaucracy. If anyone wants to be a part of this effort please feel free to reach out to me.

#### 3.3 Use of stable tag?

- _antiochp:_ 🔔 . That said - if we cut a 3.1.0 beta then we can probably play with `stable` and `beta` tags (at least manually)
- _yeastplume:_ (should probably point out that priorities shift quite a bit between meetings, a large number of bells shouldn't be alarming).

#### 3.4 QA Team?

- _joltz:_ I've started a draft on the qa team. since then there has been a lot of discussion about contributions, which the qa team would have some influence over. I wanted to take a little more time to think and integrate those discussions. I'll submit a draft pr for what I have today or tomorrow so that everyone can begin to add feedback
  - 👍: _quentinlesceller, jaspervdm, antiochp_
  - _yeastplume:_ @joltz that's great, really look forward to seeing that
    - 👍: _joltz, tromp_

### 4. Planning

- _yeastplume:_ Okay, so straight onto to 3.1.0 planning. I note this agenda is mostly a cut and paste of the last agenda, so we might not necessarily have enough to fill all the point here, but 3.1.0 node obviously bears some discussion.
- _antiochp:_ Grin milestone: https://github.com/mimblewimble/grin/milestone/16 Looks like one pr needs removing from that milestone (the kernel index is not making it in for this release). And I think there is another one that's not tagged yet for that milestone.

  - _quentinlesceller:_ Which one?
  - _antiochp:_ Actually there may not be a pr for it yet, might still just be a branch - but stability fixes for the output index.

- _yeastplume:_ Should we just set a general timeline for a beta and release?

  - _antiochp:_ Yeah probably makes sense. Beta later this week? When is wallet due to be released?
  - _yeastplume:_ Was thinking by the end of next week. So we could release them both at the same time (though we don't need to)
  - _antiochp:_ It might make communication easier if they go out together and next week sounds reasonable for node. And wallet would not need to be held up if node was not ready by next week.
  - _quentinlesceller:_ 👍
  - _jaspervdm:_ Yeah thats doable if we manage to get the beta out this week
  - _yeastplume:_ If we say monday the 2nd for both, that should give us enough time?
    - 👍: _antiochp, jaspervdm_

- _yeastplume:_ Great. I think we can leave talk of 4.0.0 off for the time being, unless anyone has anything right now?
  - _jaspervdm:_ Nope

### 5. Testing

- _yeastplume:_ I might have missed a bit of conversation, but was anything done to address croaring failing to build on the node side? It now fails consistenly on ci servers on the wallet side
  - _antiochp:_ We applied the fix from wallet to node and it was working
  - _jaspervdm:_ @quentinlesceller looked into it but if I understood correctly the fix only worked occasionally
  - _yeastplume:_ Was that not mac-specific though? It fails hard and consistently on linux now. Might be worth kicking off a test pr on the node and see what happens?
  - _quentinlesceller:_ I didn't follow that croaring issue. can take a look
  - _jaspervdm:_ Here's an example run https://dev.azure.com/mimblewimble/grin-wallet/_build/results?buildid=1460&view=logs&jobid=d0d954b5-f111-5dc4-4d76-03b6c9d0cf7e&j=d0d954b5-f111-5dc4-4d76-03b6c9d0cf7e&t=841356e0-85bb-57d8-dbbc-852e683d1642
  - _quentinlesceller:_ The mac issue seems an image thing but the fix seeems to fix it.
  - _yeastplume:_ Sure, thanks @quentinlesceller, whatever it is probably affects both builds.

### 6. Packaging

No update.

### 7. Other questions

None.

**Meeting adjourned.**
