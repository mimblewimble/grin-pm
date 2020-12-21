# Meeting Notes: Governance, Dec 15 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 40 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- bladedoyle
- jaspervdm
- joltz
- lehnberg
- mcmmike
- phyro
- quentinlesceller

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda: Governance, Dec 15 2020

### 1. Agenda review

- _lehnberg:_ [Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/374).
   - _jaspervdm:_ Lgtm.

- _quentinlesceller:_ David funding request will be considered at the next governance meeting I guess?

- _antiochp:_ Just want to add that I totally dropped the ball on funding (my funding), forgetting it was jan next month... I'm looking to put a funding request together early next year to cover q1 (just a heads up, nothing to discuss today).
   - 👍: _quentinlesceller, jaspervdm, lehnberg, joltz_
   - _lehnberg:_ Yeah I almost did the same. And had to rush to put it in.

- _lehnberg:_ So let's maybe add a meeting point about "holiday schedule".
   - 👍: _antiochp_

- _lehnberg:_ And yeah dunno - we have a policy that we are to give one week notice for these requests, but who knows when the next gov meeting is. Maybe we could also agree to do it next week as part of the dev meeting? For both you and david? Assuming you submit a request today @antiochp Seems a bit silly to have you both wait until jan before we agree.
   - _antiochp:_ I actually want to defer until jan to give it some thought and a bit of planning. And either do it retroactively from jan 1 or happy to just do it from mid jan, whatever works best.
   - _lehnberg:_ Ah fair enough.

- _quentinlesceller:_ Tuesday 29 dec is next governance meeting.
   - _lehnberg:_ Yeah - not sure this will happen:)

#### 1.1 Holiday meeting schedule
- _lehnberg:_ Okay so maybe let's slide into the "holiday schedule" right away now and settle this.
- _antiochp:_ Yeah next realistic governance meeting is likely in jan?
- _jaspervdm:_ I'd be in favor of disussing David's proposal next week during the dev meeting.
- _quentinlesceller:_ @antiochp december 29.
   - _antiochp:_ "realistic".

- _lehnberg:_ 
   * Tue dec 22 - dev meeting
   * Tue dec 29 - gov meeting
   * Tue jan 05 - dev meeting
   * Tue jan 12 - gov meeting
   
   I'd imagine the 29th one maybe should be postponed?

- _lehnberg:_ Or we do a dec 22 gov + dev meeting bonanza. And then come back on 5th for the dev meeting again?
   - _jaspervdm:_ Yes sounds good @lehnberg. Don't think we will have a huge list of items anyway so we could do both meetings net week.
   - _lehnberg:_ Could also do a jan 05 gov + dev meeting bonanza again? And then from the 12th we can do it regularly again.
   - _quentinlesceller:_ I'd be in favor of doing both next week.
      - 👍: _antiochp_

- _lehnberg:_ How's this?

   * tue dec 22 - dev & gov meeting
   * tue jan 05 - dev & gov meeting
   * tue jan 12 - dev meeting.
   - 👍: _joltz, jaspervdm, antiochp, quentinlesceller_

- _lehnberg:_ Sweet - so david's we can handle on 22nd, and antioch if you like we can take yours on 22nd or 5th whatever you prefer.
- _antiochp:_ Yeah sounds good.

### 2. Action point follow ups from previous meeting
#### 2.1  Slatepack status

- _lehnberg:_ Nothing new to update really, David shared that tradeogre seems to be working now with text at least?
   - _antiochp:_ Yeah that's awesome news about tradeogre.

- _lehnberg:_ @jaspervdm that tokio fix, is that going into 5.0.0?
   - _jaspervdm:_ Thats the plan yes.
   - _lehnberg:_ Very nice, might get that other exchange up and running soon again.

- _antiochp:_ Is the tokio runtime pr ready to go or still needing review?
   - _jaspervdm:_ Me and quentin tested it, but more testing can never hurt.
   - _quentinlesceller:_ Yep tested and looking good.
      - 👍: _antiochp_

- _jaspervdm:_ (I also opened another small bugfix pr on the wallet today). We could get both fixes merged and release a new beta.
- _lehnberg:_ Cool - let's not derail into dev meeting.
- _jaspervdm:_ Yeah sorry lol.
- _lehnberg:_ Np. But we could continue dev discussions in #dev after this meeting?
   - 👍: _bladedoyle, quentinlesceller, antiochp_

### 3. Lehnberg [request for funding Q1 2021](https://forum.grin.mw/t/request-for-funding-lehnberg-q1-jan-mar-2021/8040)
- _lehnberg:_ Happy to answer any relevant questions. @antiochp please can you run this part?
   - _antiochp:_ Sure thing.

- _lehnberg:_ I think next quarter will be a lot about figuring out how work on grin will be post 5.0.0.
   - 👍: _joltz_
   - _antiochp:_ Agree strongly on this.

- _antiochp:_ Hopefully everyone has read the forum post for the request.
   - _quentinlesceller:_ Just did.
   - _antiochp:_ Shall we give everyone a few minutes to (re)read it?
   - _quentinlesceller:_ Can we just pre approve daniel for like a year or so lol.

- _lehnberg:_ Tl;dr of funding request is `more of the same, q1 2020, 3 x £2,500`.

- _jaspervdm:_ @lehnberg's work is very valuable and the amount of funding he is requesting for it is modest. Of course I am in favor of approving this one. :)
- _antiochp:_ Is anybody _against_ this or wants to raise any concerns or questions?
- _quentinlesceller:_ Same very much in favor.
- _joltz:_ 👍 from me without hesitation. Thanks for keeping us on the rails through another hardfork, looking forward to seeing what comes after v5:)
   - _quentinlesceller:_ Kinda excited for that.
      - 💯: _phyro_
   - _antiochp:_ Yeah maybe we come out of q1 with some kind of (gasp) roadmap. At least directionally.
      - 👍: _joltz_
- _antiochp:_ (also very much in favor here)
- _phyro:_ +1
   - 👍: _bladedoyle_

- _antiochp:_ Going to wait a couple of minutes for anyone to ask questions.

#### Decision: Approve @lehnberg funding request

- _antiochp:_ Ok couple of minutes is up - I'm going to propose we approve this? Anything else to add?
   - 👍: _jaspervdm, joltz, phyro, quentinlesceller_

- _antiochp:_ Approved!
   - 🚀: _jaspervdm, quentinlesceller, antiochp_
   - _lehnberg:_ Thanks all!
   - _antiochp:_ Thank you!

### 4. [RFC update](https://github.com/mimblewimble/grin-rfcs/pull/68.)
- _lehnberg:_ FCP of [PIBD](https://github.com/jaspervdm/grin-rfcs/blob/pibd_messages/text/0000-pibd-messages.md) ends today. Please anyone who has any opinions on this, raise a comment in the next hour or so, as it will be merged soon!
   - 👍: _antiochp_
- _lehnberg:_ To me, it reads very well, really nice work on this @jaspervdm and @antiochp.
   - 👍: _bladedoyle, joltz_
- _jaspervdm:_ Thanks!


### 5. Other questions

#### 5.1 Grinnode.live [Winter Bug Bash Challenge](https://forum.grin.mw/t/grinnode-live-winter-2020-bug-bash-challenge-and-free-grin-btc-prizes-giveaway/8060)
- _lehnberg:_ Really nice to see this initiative come together, I was wondering if there's anything we can do to support it?
- _quentinlesceller:_ I think this is an awesome initiative @mcmmike.
   - 🚀: _antiochp_
   - _jaspervdm:_ Indeed.
- _bladedoyle:_ Support it by working to fix the bugs:)
   - _lehnberg:_ Yes, this too:)
   - _bladedoyle:_ Probably some effort needed to evaluate the testing results, prioritize, and then fix.

- _lehnberg:_ > we have approx. 0.75 btc + 2500 grin ready to distribute and we need your help with that!

   Should we offer some grin from the general fund as well? Idk does that make a difference? Or btc for that matter, but 0.75 is already quite a lot.
   - _quentinlesceller:_ I think right now @mcmmike did not ask for funding. He is free to ask but I like the fact that we are not involved in this.
      - 👍: _joltz, mcmmike_
      - _lehnberg:_ Yes indeed, so do I.
   - _antiochp:_ Yes @quentinlesceller agreed. I think this gives us a good opportunity to see what bubbles up in terms of community priorities.
   - _joltz:_ I think this is a positive decentralizing force for the community. It's nice to see work getting done from others and this seems like a good way to bring even more people in.
   - _bladedoyle:_ Everybody who writes or runs a testcase learns more about grin.  finding a bug is a bonus.
   - _lehnberg:_ Cool - so I understand our position to be that we think it's a great initiative, while we we won't offer anything unless asked for it.
   - _joltz:_ And hopefully try to keep some bandwidth available to prioritize and address various things that may come in as a result.

- _mcmmike:_ I would like to know, if we should test in areas which we haven't thought about? 
any input is good, as we will write test-cases for the community even when we start on the 19.12.
   - 👍: _lehnberg_
   - _quentinlesceller:_ I'll have a look.

**Meeting adjourned.**