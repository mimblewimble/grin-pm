# Meeting Notes: Governance, Mar 10 2020

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [#general in the grincoin keybase team](https://keybase.io/team/grincoin). Meeting lasted ~ 40 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- bladedoyle
- jaspervdm
- joltz
- lehnberg
- quentinlesceller
- yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/259) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Grin.mw domain access: shards are distributed?

- _lehnberg:_ The domain registrar supports multi-accounts for domain control, but I do not have privileges to add new users. I've pinged @0xb100d about this and asked him to set up @jaspervdm and @yeastplume like he has done with me. In the meanwhile, I packaged my own username, password, totp, and security questions into a file and samir secret shared it into 3-of-5 shards. And have distributed these to council members. So now we have (1) + (3 of 5) access to my account.

- _jaspervdm:_ Can anyone with an account extend the registration for the domain and pay for it?
   - _lehnberg:_ Yes, my account takes me to payment methods and check out for domain renewal.
- _lehnberg:_ Domain is currently set to expire *16 november 2023*, I've set myself a reminder, I urge the rest of the community (you all) to do the same. And on or around november 1 2023, start hitting people on the head with something hard if they haven't renewed the domain.

#### 2.2 Documentation on how to add repos to org on wiki

- _lehnberg:_ Available at: https://github.com/mimblewimble/docs/wiki/adding-repos-to--mimblewimble

#### 2.3 @jaspervdm funded?

- _lehnberg:_ Yes, and logs are updated: https://github.com/mimblewimble/grin-pm/pull/264. Will merge in the next day or so, unless someone reviews and approves before.

### 3. Funding request by @yeastplume

- _lehnberg:_ https://forum.grin.mw/t/request-for-funding-yeastplume-april-june-2020/7073
   Floor is open for (relevant) questions, thoughts, comments.

- _jaspervdm:_ My thoughts: 👍
- - _joltz:_ Thanks for your continued work on grin @yeastplume we are very lucky to have you here 👍
   - 👍: _lehnberg, jaspervdm, antiochp, quentinlesceller_

- _yeastplume:_ Thank you all for the kind words, this remains hands-down the best group of people I've ever worked with.

#### Decision: Approve @yeastplume funding request

- _lehnberg:_ I'll let the clock run until 3:20 before taking any lack of objections and all the show as support as acceptance
- _quentinlesceller:_ Ah just wanted to add 👍
- _lehnberg:_ Clubbed Yeast, guess you're stuck with us for another quarter.
   - 🎉: _joltz, jaspervdm_
- _yeastplume:_ Thanks all!
   - 🚀: _antiochp, lehnberg, quentinlesceller, joltz_
- _quentinlesceller:_ Well deserved :) 👍
   - 👍: _joltz, bladedoyle_

### 4. RFC & Teams update

#### 4.1 [Relative kernels](https://github.com/mimblewimble/grin-rfcs/pull/19)

- _lehnberg:_ Relative kernels - when is that is targeted for? 5.0.0? It is consensus-breaking, I must assume?
   - _antiochp:_ It is yes - likely 5.0.0 but have been assuming it may be possible for 4.0.0. At least the consensus breaking part of it - maybe not full wallet integration etc.
   - _lehnberg:_ Nice. That would be amazing, as it gives us a plan be if it all goes pear shaped
   - _jaspervdm:_ Yeah v4 would be ideal so we have some breathing room
   - _yeastplume:_ Yes, makes sense to get the consensus-breaking part over with then worry about full wallet support

- _lehnberg:_ Are there open questions in the approach etc? Or is it more about refinements and sense checking at this point?
   - _antiochp:_ Been working with @tromp regarding the kernel index and think we have a workable solution to this now. Aka nkotb
   - _jaspervdm:_ Will catch up with it soon and feedback as well.
   - _antiochp:_ The rfc is pretty out of date though at this point based on the changes to the index etc. Its on my list of things to go back and update rfc to reflect our current understanding.

- _lehnberg:_ So working backwards, assuming july 15 v4.0.0 release. Let's say code freezes roughly end of june maybe earlier. And work then maybe needs to start let's say end of may. RFC would ideally need to be accepted by then, and have had 2 weeks of feedback period. So maybe the 'final' draft by beginning of may or sooner?
   - _antiochp:_ Yeah that is totally reasonable
      - 🚀: _lehnberg, yeastplume_

#### 4.2 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)

- _lehnberg:_ We said to leave it a bit more right? Shepherd @jaspervdm, how's that looking?
   - _jaspervdm:_ Waiting on more feedback, iirc @bladedoyle did have some thoughts on it but still waiting on that. Are you happy with the rfc as is @yeastplume ? From my perspective its okay
   - _yeastplume:_ I might want to take another pass over it, can we do that and aim to start fcp at the next gov meet?

- _lehnberg:_ I think @dburkett was suggesting we enforce a grin / usd / btc only policy.
   - _jaspervdm:_ Prefer to add eur to that. :)
   - _lehnberg:_ And I gbp, in that case. :)
   - _yeastplume:_ Strongly disagree, so long as it's a resonably high-profile currency we should be fine.
   - _jaspervdm:_ Sounds reasonable.
   - _lehnberg:_ I had shared my thoughts on it in pr, not sure where it stands now.
   - _yeastplume:_ I don't think anyone's drawn anything down in usd-equivalent to date, aside from Igno that one time.
   - _jaspervdm:_ Yeah not sure we need to enumerate the currencies. Just btc / grin / major fiat.
   - _antiochp:_ @yeastplume just to be clear - high profile __fiat__ currency?
   - _yeastplume:_ Yes, I meant fiat
      - 👍: _antiochp_
   - _antiochp:_ Yeah agreed here
   - _lehnberg:_ Yeah and always _equivalent_ paid out. Based on what's in the fund.
   - _jaspervdm:_ Given that we said we would convert any non-btc/grin to btc anyway that shouldn't be relevant anymore.
       - 👍: _lehnberg_

#### 4.3 [Create a moderation team](https://github.com/mimblewimble/grin-rfcs/pull/42)

- _lehnberg:_ I _kinda_ deserve a bell there, as there's a check list of questions to answer as rfc author that shepherd @joltz has prepared. Will get around to it. if anyone has any ideas on how to bootstrap that team, feel free to reach out. A moderation team without moderators won't do much good

#### 4.4 [Create a QA team](https://github.com/mimblewimble/grin-rfcs/pull/45)

- _lehnberg:_ No progress since last. I've not had a chance to think much about it personally.
- _joltz:_ Yes there are some big open questions to be answered I think before making more progress there.

#### 4.5 Teams

- _lehnberg:_ We now have a security team up and running. It's been a very seamless transition so far.
   - 🎉: _yeastplume_

- _joltz:_ Now that we have that structure we can begin to do more work around formalizing our bilateral agreements, any bug bounty programs and future audits. I'm also talking with someone to audit our tor transaction method as we get more serious about using it as default.
   - 🚀: _jaspervdm_
   - _yeastplume:_ Very nice
   - _lehnberg:_ Nice!
- _lehnberg:_ One thing I was wondering there, and without meaning to derail the meeting, is what would happen to our txs if tor got DOSed, overloaded, or went down. Is there seamless fallback for that? not really right? 
   - _yeastplume:_ Mmm, well there's a seamless fallback for the listener to http now, if anyone can reach it
   - _joltz:_ I would say the fallback would be file-based. the same can happen for any http(s) endpoint
   - _yeastplume:_ Yes, most likely, though still needs more thought and discussion.
   - _joltz:_ That's something I'm trying to address in the pt document, what fallback options are when a method is actively censored.
   - _lehnberg:_ Yep, guess worth while to articulating and thinking about. Might not be a big deal to accept Tor network as a dependency either, as long as we're explicit about it.

### 5. Other questions

None.

**Meeting adjourned.**
