# Meeting Notes: Governance, Apr 07 2020

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [#general in the grincoin keybase team](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- jaspervdm
- joltz
- justaresearcher
- lehnberg
- quentinlesceller
- tenthousandlakes
- tromp
- yeastplume


_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/270) accepted, [network upgrades](https://forum.grin.mw/t/network-upgrades-hard-forks-on-grin-v5-0-0-and-beyond/7231/) added to Other Questions.

### 2. Action point follow ups from previous meetings

#### 2.1 forum.grin.mw

- _lehnberg:_ @quentinlesceller do you have your credit card linked to the forum now? After some negotiations with discourse and removing a couple of staff accounts, we got the monthly fee down to something like usd 50/month I believe moving forward, which is great!
   - _quentinlesceller:_ Yep awesome job @lehnberg 
- _lehnberg:_ Oki and so let us know when they charge your card, and I suppose we send you 50 usd from the fund at that point each month?
   - 👍: _yeastplume_
   - _quentinlesceller:_ Yes
- _lehnberg:_ Not awesome to do recurring billing with a mu-sig, but not sure there's a better way to handle it...
   - _jaspervdm:_ We could batch it up in 3 months. If quentin is ok with that.
      - 👍: _antiochp_
      - _quentinlesceller:_ Yep I don't care I was planning on keeping the btc anyway
      - _antiochp:_ I think for those amounts it would make sense to batch them up
- _lehnberg:_ Okay, so then there's some exchange rate variance, but I guess it doesn't matter. It could move in quentin's or in the fund's favour
   - _jaspervdm:_ Right
   - _quentinlesceller:_ For such amount of money it's okay
   - _lehnberg:_ We pay in advance of after?
   - _quentinlesceller:_ I'd say after? 

##### Decision: forum.grin.mw payments approved for @quentinlesceller

- _lehnberg:_ Oki, so @quentinlesceller you ping when it's time for fund to pay `3 x $50 = $150`, and then we just add it to the spending logs when transfer has gone out, don't think we need to make governance decisions about this every time, right?
   - 👍: _antiochp, yeastplume, quentinlesceller_

- _jaspervdm:_ No, I'd say another decision is only needed when we want to cancel or price changes significantly or someone else is taking over as payer
   - 👍: _lehnberg_

#### 2.2 Community manager meeting
- _lehnberg:_ There's now a moderation / community management working group at @grincoin#wg_moderation → those interested should join in and participate in discussion. This is following discussion in the last meeting
- _joltz:_ There hasn't been much activity yet. I will try to circle back in there this week to see if we can conjure up enough to justify a meeting or at least another pass at the RFC.

#### 2.3 @lehnberg & @yeastplume paid & logs updated?

- _yeastplume:_ Not yet, trying to get that sorted now.
- _lehnberg:_ I've been paid, I have on my todo-list for the week to update the log accordingly and start working on the [Q1 financial transparency report](https://github.com/mimblewimble/grin-pm/tree/master/financials/reports) that is due.

### 3. Funding request by @antiochp

- _lehnberg:_ Request: https://forum.grin.mw/t/request-for-funding-antioch-apr-jun-2020/7183

   The floor is open.

- _jaspervdm:_ Just want to say that antiochp has been doing amazing work on the node and I'd like to see him continue in the same capacity, so I am in favor of the proposal. Now whether we should prioritize nerd kernel implementation or parallel ibd is open for debate but that's something we can discuss independently.
- _joltz:_ Personally I'm grateful that grin gets @antiochp full time. Good crypto researchers are hard to come by and even harder to motivate :) I don't have strong feelings about the scope of work but I'm sure others do.
- _yeastplume:_ Only think I can think of to say is that I don't think there's anyone who's been more instrumental to grin's development, and nobody who generally sees so little of the street-cred as a result. Not sure what we'd do without him on the project.
   - 👍: _lehnberg, joltz, jaspervdm, quentinlesceller_
- _antiochp:_ Just like to state that "crypto researcher" is probably not accurate here...
   - _joltz:_ Budding crypto researcher :)
   - _tromp:_ Antioch also has proven crypto skills by managing to simplify nskr kernels.
- _lehnberg:_ Technically, there's already a funding request approved, dating from about a year ago exactly... which never was used. So I consider this a bargain.
   - _antiochp:_ Yes - I decided against mentioning that with this request to keep things simple
- _antiochp:_ Definitely a separate discussion to have around exactly what the focus should be over the next few months.
- _yeastplume:_ Whatever the focus is, it'll be the right one.

#### Decision: Approve @antiochp funding request

- _lehnberg:_ Okay lots of support, any objections / questions / challenges? Speak now or forever hold your peace, aka write a forum post about it.


   [...]
- _lehnberg:_ I consider this then _carried_.
   - 🍾: _joltz, yeastplume, quentinlesceller, lehnberg, tenthousandlakes, jaspervdm_
- _antiochp:_ 🙏 its a pleasure working alongside you all
   - 🙏: _joltz, quentinlesceller, justaresearcher, lehnberg, jaspervdm, yeastplume_
- _quentinlesceller:_ Pleasure is shared.

### 4. RFC & Sub teams update

- _lehnberg:_ In order of appearance: https://github.com/mimblewimble/grin-rfcs/pulls
 

#### 6.1 [Compact slates](https://github.com/mimblewimble/grin-rfcs/pull/49)

- _lehnberg:_ Lots of discussion on the subject in @grincoin.teams.wallet_dev#general. I think it's very promising. Main questions now is around containing the scope and how far we go in our desire for compactness.
- _yeastplume:_ Sure. The discussion also encompasses other RFCs as well, this one is purely concerned with changes to the slate format.
   
#### 6.2 [slate serialization](https://github.com/mimblewimble/grin-rfcs/pull/49)

- _joltz:_ Serialized slates: Will see another pass of major changes soon. Currently assessing all serialization options for the optimal outcome. Some good discussion in @grincoin.teams.wallet_dev#general for those that want to follow along.
  
#### 6.3 [N(e)rd kernels](https://github.com/mimblewimble/grin-rfcs/pull/47)

- _lehnberg:_ @antiochp does that mean https://github.com/mimblewimble/grin-rfcs/pull/19 can be safely closed now?
- _antiochp:_ Yes we can close this, 47 fully replaces it.
   - _lehnberg:_ Cool - feel free to do it yourself as author.
      - 👍: _antiochp_

#### 6.4 [qa team](https://github.com/mimblewimble/grin-rfcs/pull/45)

- _lehnberg:_ No updates for a while there. I think it's mainly as we're all focused on other rfcs and 4.0.0 at the moment. But if someone wants to work on qa team questions, the thinking is outlined in the pr. So anyone can jump in there and get involved.
   - _yeastplume:_ Yes

#### 6.5 [General fund spending guidelines](https://github.com/mimblewimble/grin-rfcs/pull/41)

- _lehnberg:_ The fcp period is running out today, yes?
   - _jaspervdm:_ Yes, but I think we should extend it. There's some extra things we want to clarify in there.
- _yeastplume:_ Sure, there's no urgency on it anyhow.
- _lehnberg:_ Will you comment and keep it open?
- _jaspervdm:_ Yep will update there.
- _lehnberg:_ And maybe give an extension date? 
- _jaspervdm:_ 2 weeks is most natural since thats when the next governance meeting is.

- _lehnberg:_ If we're extending the fund spending guidelines, I might as well point out this: https://github.com/mimblewimble/grin-pm/pull/275. Initial work on a funding request template. I suppose that is separate from this rfc no? Or would you want to set out what should be in the template as part of the rfc?
   - _jaspervdm:_ Hm, I think that can be kept separate. But no strong opinion on it, what does @yeastplume think?
   - _yeastplume:_ I think it can be kept separate, if we adopt it we can link to it from the rfc via a pr?
   - _jaspervdm:_ Sounds good

#### 6.6 [Multiple named wallets](https://github.com/mimblewimble/grin-rfcs/pull/12)

- _yeastplume:_ No, update.

#### 6.7 Parallel IBD

- _jaspervdm:_ There's no pr for it yet but I have been working on it for some days, will post a wip pr this week
   - 👍: _lehnberg_

#### 6.8 Teams

- _joltz:_ Security team owes the community a fresh canary for this quarter which should be up with signatures this week.
   - 🐤: _lehnberg, quentinlesceller, yeastplume_


### 7. Other questions

#### 7.1 Network upgrades / scheduled hard forks

- _lehnberg:_ This discussion will be capped at 13 mins.
   - _yeastplume:_ Should be all it needs

- _lehnberg:_ I made an attempt to summarise some of the thinking of previous meeting here: https://forum.grin.mw/t/network-upgrades-hard-forks-on-grin-v5-0-0-and-beyond/7231

   Question re soft forks, isn't that in a way unrelated to this? Making grin soft fork friendly can be good or bad regardless of what we do with hard forks.
   - _jaspervdm:_ Making grin more soft fork friendly can be investigated in parallel
      - 👍: _antiochp, lehnberg_

- _lehnberg:_ Okay, so are there other potential routes at the moment we can think of outside of the three there?
   - _jaspervdm:_ I think those 3 are the reasonable scenarios.
   - _antiochp:_ Yeah I think those cover the range of approaches.

- _lehnberg:_ Question, how does eth do it? They have hard forks left right and centre no? They are all by "community agreement"?
   - _antiochp:_ Do they still have the difficulty bomb in there?
   - _jaspervdm:_ Yes think so, they are not hardcoded in, and I think the bomb was delayed, but could be out ot date info.
   - _joltz:_ I don't think we want to follow their model..
      - _tromp:_ Indeed, let's not. Eth does not project an image of immutability.
      - _lehnberg:_ Maybe not, but how does it work?
      - _joltz:_ I'm not sure it does work. it seems influencer based consensus.
      - _lehnberg:_ What they start a twitter thread and convince node operators to ugprade?
      - _jaspervdm:_ Im afraid option # 1 will become that as well.
   - _antiochp:_ The bomb effectively translated to our #2. And the community - bitcoin is arguable #1 also. "no hard forks unless unavoidable"

- _lehnberg:_ If it's hard fork by popularity contest, it won't necessarily be the most beneficial long term fork that will win.

- _joltz:_ I'm more inclined to follow bitcoin's lead here than eth's.

- _tromp:_ I'm for sticking to the original plan. only 4 planned hfs

- _lehnberg:_ I wrote in `x years more`:

   > would be a clear statement that grin is years away from being stable and will remain under heavy development on the consensus layer for the foreseeable future.

   Does anyone strongly feel that this is not the case?
   All other things aside, are we really stable enough to consider ourselves stable? Well if we think we're bound to have many more consensus layer changes, then we should bake in mechanisms to do these orderly.
   - _antiochp:_ I just think that can be true for all of 1, 2, 3
   - _joltz:_ The concern is that we never reach this point or don't for a very long time
   - _tromp:_ We have some decent chance to be consensus stable by grin5.
   - _lehnberg:_ And haters / detractors be damned
      - 😮: _antiochp_

- _lehnberg:_ Or we'll end up having debates about work rather than doing actual work, for the next few years.
   - _joltz:_ Which would mean perpetual hardforks
   - _lehnberg:_ Yes, and constraints do encourage innovation.

- _antiochp:_ @ignotus made a tough decision early on to go live on mainnet when we could have held off and incrementally improved things. And I'm in favor of doing this with the end of the scheduled hfs
   - _joltz:_ I would have preferred to delay launch but since the genie is out of the bottle I'm not sure we can try to stuff it back in with perpetual hfs.
   - _lehnberg:_ Tbf antioch, Ignotus left two months later, so not sure that they stood by that decision. Or that this should be what guides our decision now.
   - _antiochp:_ I guess what I wrote could be used to argue either way also. Fair enough.
   - _lehnberg:_ Not saying that option 1 is not right, but I'm saying it won't be right based on some decision that was made 1.5 years ago.
   - _antiochp:_ No but 1 is truer to the original vision in my mind.

- _lehnberg:_ Ding dong! Time's up. This was a small taste of how it's like to discuss this topic. If you enjoyed it and left you wanting more, please do continue at: https://forum.grin.mw/t/network-upgrades-hard-forks-on-grin-v5-0-0-and-beyond/7231. It's coming again on the dev meeting agenda next week

**Meeting adjourned.**
