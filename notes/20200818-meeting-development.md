# Meeting Notes: Development, Aug 18 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 55 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- joltz
- paouky
- phyro
- smokeking80
- tromp
- quentinlesceller
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ So last couple of weeks have been a burst of activity, several large and discussion-worthy RFCs have been created that I think we're all familiar with. For my part, I've been investigating late locking while trying to come to terms with the replay-prevention RFC. Antioch has been hard at work on an issue in cut through logic, do you want to say a bit about that here to raise awareness?

- _antiochp:_ Sure thing. I have been spending some time investigating how to get rid of input features, which are redundant - i.e. to spend an output you just need the commitment, not the specific features. Off the back of that we discovered what we thought may have been some inconsistent consensus related logic. Further investigation led us to conclude the `verify_cut_through()` logic on both blocks and txs is indeed inconsistent, but does not affect consensus.

   There's a PR up to fix the inconsistency and make the code a lot clearer here: https://github.com/mimblewimble/grin/pull/3424

   - 👍: _smokeking80_

   Tl;dr in some places we compare inputs/outputs by commitment and in other places we compare by hash
   and these are not the same. The whole effort around getting rid of the redundant "input features" was to clean the p2p msg structure in advance of the final HF4 and in turn simplify some of the internal logic (i.e. we spend by commitment, and always by commitment).

   If anybody is interested in discussing further then grab me after this meeting or feel free to comment in the PR.

   - _paouky:_ Thank you for explaining clearly. Who's "we" if I may ask?
      - _antiochp:_ Royal we, but for the sake of transparency - there were some internal conversations with the security team early on as this may have affected consensus. So "we" as in dev+security team.
         - 👍: _paouky_
   - _yeastplume:_ We use "royal we" a lot when describing what the code does.


### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/334) was accepted without modifications.

### 3. Action point follow ups from previous meetings

#### 3.1 [Mitigating re-org risks actions](https://github.com/mimblewimble/grin-pm/issues/327)

_1 of 3 actions done. No progress since last._

### 4. v5.0.0 planning:

- _yeastplume:_ Feels we're going in circles overall here.
It seems the way things stand, there's very little actually going into 5.0, though I imagine some of this will be affected by the results of continuing RFCs.
   - _antiochp:_ I thought takeaway from last meeting was we were not tackling any of the items listed in the (4) on the agenda?
   - _yeastplume:_ That was my understanding as well.
   - _antiochp:_ Ok cool - just wondered if i had missed something or misunderstood. 👍
   - _joltz:_ So the only currently proposed consensus change with an RFC is DAA, correct?
   - _yeastplume:_ Yes, I believe so.
      - 👍: _joltz_ 
   - _tromp:_ I hope to add a fee RFC.
      - 👍: _antiochp_ 

- _yeastplume:_ Is there any of these issues listed in the items that anyone strongly wants to discuss (otherwise we'll drop them from explicit mention in future meetings).
   - _joltz:_ If we don't have many new things to add maybe there are some areas we can identify where security/efficiency improvements can be made that are currently maybe a little questionable (I don't have any in mind in particular).
   
   But things like @antiochp found in the cut through logic etc.
   - _antiochp:_ My bad luck opening a big can of worms thinking "input features" was going to be a small change/improvement.
      - 😅: _joltz_
   - _tromp:_ It might be good to get rid of the mmr index numbering discrepancies. Which is sometimes 0-bases, and other times 1-based.
      - _antiochp:_ I'm not touching that with a barge-pole
      - _yeastplume:_ heh
      - _tromp:_ I guess that would be on me then. :(
      - _antiochp:_ Whoever tackles that should be prepared to be working in it right up to HF4.
      - _tromp:_ What do APIs use?
      - _antiochp:_ We should discuss outside this meeting.
      - _tromp:_ Ok.

### 5. Slatepack Adoption status / docs

- _joltz:_ I don't really know the details behind that item but assuming related to overall documentation effort to encourage slatepack adoption?
   - _yeastplume:_ Yes, I believe so, not sure where that item came from.
   - _joltz:_ As far as that goes, @quentinlesceller and I were collaborating on an integration doc for exchanges but I'm not sure on the status of that. Also not sure if @paouky  is planning to cover that area.
   - _quentinlesceller:_ Yes that would be easy to integrate in @paouky docs.
   - _paouky:_ Im gonna need some brief on this as im not sure what this is about. Docs specifically for exchanges? does this significantly differ from users?
   - _joltz:_ A general use/explanation doc would probably be a helpful component of anything prepared specifically for exchanges. So not necessarily the same doc but enough overlap for one doc to be generically useful for both (maybe supplemented by availability to answer specific integration questions).
   - _paouky:_ So the shared component between the two docs would be a high level overview of slatepack flow? Or a low level one detailing compact, armored slates impl etc? I suppose the former.
   - _joltz:_ They can always refer to the RFC for low level details. The key as always is to find the right balance for them to see the big picture while answering technical details that would come to mind without forcing them to read the entire specification. IIRC the doc already going by @quentinlesceller was a good start, maybe we can all collaborate around that some time after the meeting?
   - _paouky:_ Sure
   - _quentinlesceller:_ Sure I don't have a lot of bandwidth this week though but next week I'll have more time.
      - 👍: _yeastplume, joltz_

### 6 [Eliminating finalize step](https://forum.grin.mw/t/eliminating-finalize-step/7621/)

- _yeastplume:_ I'm sure everyone is very aware of the ongoing discussion there, and plenty has been added to it. Do we want to just ensure everyone's aware of it here (we are), or have another discussion here?
- _joltz:_ Might be good to just encourage everyone to give it a close look (accompanying RFC at https://github.com/mimblewimble/grin-rfcs/pull/59) unless @dburkett is here for a quick pitch.
- _vegycslol:_ Is it possible to store a person under "contacts" if you make txs with them regularly?
If we implement burkett's solution I mean.
   - _tromp:_ That seems like a wallet specific question.
   - _joltz:_ Since each address is one-time use you shouldn't be able to spend to the same contact again without a fresh address from them (unless there is some hybrid approach as indicated in his most recent comment in the RFC).
   - _yeastplume:_ Indeed, that would be up to a feature provided by wallet implementors.

### 7. Other questions

#### 7.1 Unscheduled hard forks

- _joltz:_ Just a note to add to v5 planning for future use- since we are expecting there will be future unplanned HFs it might be nice at some point to do some thinking around how that would actually work in practice, well in advance. And maybe build some community consensus/support around an approach.
   - 👍: _yeastplume, vegycslol, antiochp_

#### 7.2 Block-size

- _phyro:_ A bit off topic, but we might think into making block size smaller. One can make a ton of outputs and just leave them there and make the chain grow (a lot).
   - _yeastplume:_ Sure, I think we could probably wrap up a block-size debate in the 15 minutes remaining... :D
      - :grinparrot: _joltz, quentinlesceller_
      - 🚀: _phyro_
- _joltz:_ Do you have a particular proposal in mind @phyro or just sharing a general thought/concern?
   - _phyro:_ No, no proposal, just did some math one day and got concerned about it.
- _antiochp:_ @tromp fee RFC may address part of this at least.
- _joltz:_ Fair enough, sounds like the fee RFC might be an opportunity to make things more concrete there.
   - 👍: _phyro_ 

**Meeting adjourned.**

