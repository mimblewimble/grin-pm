# Meeting Notes: Governance, Aug 25 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 40 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- i1skn
- joltz
- paouky
- phyro
- quentinlesceller
- smokeking80
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/336) was reviewed and accepted with the addition of "funding software outside of the grin repo" proposed by @paoyky and added to other questions. 

Additional relevant discussion:

- _i1skn:_ If this would be appropriate today, I would like to add [my funding request](https://forum.grin.mw/t/request-for-funding-i1skn-ironbelly-wallet/7733) to the agenda.
- _yeastplume:_ Absolutely, I had that in my paste buffer. Though I think as per our own funding guidelines we can only point it out right now and schedule a decision for the next Gov meeting in 2 weeks?
   - _paouky:_ Hm I don't think we have that as a guideline? But maybe I missed it, at least it didn't work that way for my request.
   - _yeastplume:_ It's [in the RFC](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0014-general-fund-guidelines.md#request-for-funding-process):
      > the final decision on the request will be made by members of the core team at a public governance meeting, to take place at least one week after the request is made. 
   
      And it was only made over the weekend, it's just to give everyone sufficient time to digest it.
   - _paouky:_ Oh, one week. I was thinking 2 weeks notice. Makes sense.
- _yeastplume:_ So by all means, please review the thread and comment if you want to. Ivan was an early believer in Grin and has a great track record as far as I'm concerned, so I'm happy he's put in a request.
   - _i1skn:_ Absolutely fine with me about the decision on the next governance meeting. Happy to answer any questions here :)
      - 👍: _quentinlesceller_
   - _paouky:_ I don't mind asking a question here, but could also wait for the next gov meeting.
   - _joltz:_ Happy to see this request, looking forward to putting you to work on the mobile wallet!
   - _yeastplume:_ We'll definitely discuss at the next meeting, but anyone feel free to chime in as we go at this meeting as well (or on the thread), like I say the agenda is very light today.


### 2. Action point follow ups from previous meeting

_None._

### 3. Documentation progress
- _paouky:_ I haven't gotten around to a forum update for the past week yet, but i pushed it all to https://paouky.github.io/docs/ today.

   tldr it's been a chaotic week and it's hard to sum it up, touched on pretty much everything. the main points of interest are that I finished migrating the technical docs from grin repo (including some slight changes here and there and merging of docs) and began work on the 56 wiki pages that need to be sorted out carefully.
   Also wrote a pretty neat slatepack integration guide for services with the help of @joltz who provided great feedback.
   And some other stuff that I'm probably forgetting right now. But I _think_ I can finish everything by mid september.

   I want to:
   1. Write more beginner level material and make it much easier to begin transacting.
   2. Re-think https://grin.mw/get-started
   3. Go over the 56 wiki pages and update what I can, still want to see what @lehnberg thinks about what we should do with them.

   So im 100% sure I can finish it all up in less than the planned 3 months. (It's a good thing a month-by-month funding was suggested.)

- _yeastplume:_ No worries, I was just looking through it, it's really beginning to shape up, really looking good. Have you solicited people from the team directly for reviews of what's there?
   - _paouky:_ Not directly, no. I always ask for community feedback on my forum posts (and my calls aren't answered unfortunately). But if you suggest the dev team will have the time to review some stuff, i'll definitely ask for it.
   - _yeastplume:_ Definitely, I'm sure we'll collectively be happy to take a few sections each for initial review.
      - 👍: _joltz_
   - _paouky:_ Cool. Btw I wish I could do more by reading the code and documenting some undocumented processes, but it's out of my scope atm.
   - _yeastplume:_ No worries, I think it's probably advantageous to write this from a perspective that's outside the code.

- _yeastplume:_ And I just realized we don't have a formal process in place for approving the next month of funding, we'll get back to you on that before the end of this month.
   - 👍: _paouky_

### 4. Code of conduct progress
- _yeastplume:_ Relevant issue: https://github.com/mimblewimble/grin-pm/issues/309.  I think this is @lehnberg's baby, so unless anyone has anything to add, we can park it for the next meeting?
   - 👍: _joltz, paouky_

### 5. RFC & sub-teams update

#### 5.1 [creating 'eliminating finalize' rfc](https://github.com/mimblewimble/grin-rfcs/pull/59)
- _yeastplume:_ There's a very active discussion underway, which I think we can leave to the github thread, it's active enough.

#### 5.2 [wallet rules for (re)play protection](https://github.com/mimblewimble/grin-rfcs/pull/60)
- _yeastplume:_ And wallet rules for replay protection still WIP.
- _joltz:_ What is the current state of that one? Still working through details? Looks like it, i'll try to take a pass there this week too.
- _yeastplume:_ Yes, i think that most accurately describes it. :D

### 6. Other questions

#### 6.1 Funding non-MW repo projects

- _paouky:_ I think it's something worth discussing before his request his granted.
- _yeastplume:_ Sure, might be as well to point out that the funding guidelines are here: https://github.com/mimblewimble/grin-rfcs/blob/master/text/0014-general-fund-guidelines.md
- _paouky:_ This time, funding Ivan seems to be a no brainer. He is very trusted, already built a great wallet, and is uniquely valuable to grin. However, david raises a very good question: 
   > Imho, Ivan has indeed earned this opportunity, as have a number of different ecosystem and core devs. So then the question is, if approved, are we willing to fund requests by all of the trusted ecosystem devs if they decide to submit them? How do you pick and choose which projects to fund, if we aren’t willing to fund all of them? Or is it first come, first serve?
   > 
   > The decision needs to take this all into consideration, because I’m sure there will be additional requests, and we need to make sure we’ve made clear the criteria for ecosystem funding requests to be accepted. Otherwise, we risk choosing favorites, and further centralizing development.
- _yeastplume:_ Honestly, I don't think there's anything there that isn't covered in the RFC. That RFC was outstanding for months before it was merged just a few months ago.
- _paouky:_ Ah I see, my bad.
- _yeastplume:_ The funding process isn't being made by an algorithm or on a vacuum, there will be different circumstances surrounding each case, and I hope what's in the RFC reflects that.
   - 👍: _joltz, smokeking80_
- _paouky:_ I actually forgot about that RFC, so ignore whatever I said, i'll just read the RFC again.
- _yeastplume:_ No worries, but if there's anything in there you think is wrong or should be reconsidered, please feel free to open an issue.
   - 👍: _paouky_

**Meeting adjourned.**
