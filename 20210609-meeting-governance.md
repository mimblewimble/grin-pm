# Meeting Notes: Development, June 01 2021

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 50min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- joltz
- geneferneau
- defistaker
- mcmmike
- hendi
- vegycslol
- jankie1800
- cekickafa
- phyro
- quentinlesceller
- mark_hollis
- tromp
- dburkett



_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_



## Agenda points & Actions
### 1. Action follow-up
- _joltz:_

### 2. Agenda review
The [proposed agenda](agenda for dev meeting later today - https://github.com/mimblewimble/grin-pm/issues/427) was accepted without changes.

### 3. Bounty statuses / status update from mark_hollis
- _joltz:_ First up we have bounty statuses. @mark_hollis has been working on ledger support. His latest update is https://forum.grin.mw/t/grin-ledger-hardware-wallet-progress-thread-by-markhollis/8670/17 Not a ton to note there, looking forward to seeing how the next couple of weeks go- Anything you want to call out there @geneferneau ?

### 4.RFC update
- _joltz:_ For RFCs it looks like we currently only have one active https://github.com/mimblewimble/grin-rfcs/pull/80 Succinct Atomic Swaps
seems like lots of good discussion is going on there and progress is continuing
- _geneferneau:_ Just working on multiparty outputs. Still discussing some corner cases with SAS transactions.
- _joltz:_ sounds good, excited to see what kind of multiparty we end up wit
- _geneferneau:_ yeah, the multiparty part should be the same regardless. discussion is over whether to add adaptor signature to the Grin Timeout transaction

### 5. Community funding status for @geneferneau & @mwgrin-fr https://forum.grin.mw/t/request-for-funding-gene-adaptor-signature-atomic-swaps-grn-btc/8632/13
- _joltz:_ This brings us to community funding status for @geneferneau. I think you are owed payment for May and you are now seeking a continuation for June? Does anyone have any opposition or concern related to Gene's request that they'd like to share here?
- _phyro:_ I'd like him to continue to contribute 👍
- _dburkett:_ It's good to have @geneferneau around. I've been reading his updates, but haven't been following the RFCs & code as closely as @tromp and @phyro. If they are happy with his progress, then I am on board with continuing his funding 👍
- _tromp:_ i'm ok with continued funding but do want to see more work on the RFC that are still lacking in detail- for instance, are all the prepared txs done with multiple separate slatepacks (and if so how ,exactly are these communicated back and forth) or will there be a multi-tx slatepack. finally, i'm not a fan of the "atomic nonce" terminolog- just "secret" as in S.A.S. was fine.
  - _geneferneau:_ I definitely plan to add more detail to the RFC, including changes to Slate-currently, the setup I have coded uses multiple slates
if everything was with one slate, it would take many rounds (16?) the flow is somewhat non-linear, too
- _joltz:_ Ok it sounds like we will complete Gene's payment for May and continue funding for June 👍 We can continue the technical conversation in the RFC.

- _joltz:_ Moving on, there is another funding request https://forum.grin.mw/t/request-for-funding-mwgrin-fr/8888 to make onboarding videos for Grin
Personally, I think it's a better idea for the community fund.
- _hendi:_ I agree, and also second Anynomous' post from 4w ago (example first, then funding)
- _tromp:_ i'd be happy to consider funding if we see some good example videos first
 - _pyro:_ I think an example video was uploaded btw
 - _mcmmike:_ yes, https://streamable.com/mzayob - I recomend zooming into the terminal a bit more, but these are details we can discuss later.
- _cekickafa:_ he done some vids.i seen.He fits for this👍
- _jankie1800:_ It looks like tech documentation. Is this more effective than the github install instructions? Only issue with video tech documentation is that it doesn't age well with updates that may change the terminal cmds
 - _grindoggo:_ Just have to keep updating the videos honestly, and tag the videos with (2021 documentation) or something like that
- _tromp:_ but there's no accompaying narrative. i'd like to see an example with audio explanation as well
- _geneferneau:_ if the videos are CC-BY-SA, another community member could add audio, too

- _joltz:_ Great it sounds like we have some good feedback and interest for supporting their work,Ok, it sounds like the feedback is to share some examples with the community before pursuing funding, regardless of the approach let's see the next round goes and hopefully we can get some quality videos for Grin 🚀

### 6. Council asset audit (followup)
- _joltz:_ Next we have council asset followup. To take things a bit further I've made a proposal and some clarifications at https://forum.grin.mw/t/council-evolution-clarification/9021
The main takeaways:
- council updates fund key holders to ensure everyone is active
- council provides regular proofs of spendability
- community takes over meetings
I think this helps provide some clarity and certainty around the majority of the concerns and hopefully helps give us a clean way forward as a community while we try to have less and less reliance on council as a point of failure
Will give us a bit to take a look and digest
- _jankie1800:_ question on point 3: Will core be taking future donations? and how will core/rust continue operations
 - _joltz:_ the council may take future donations if they want. the council itself is only responsible for operations related to the fund. the repo/rust operations continue as they have since RFC0016, when the operations became responsibility of individual contributor teams and not "core"
- _defistaker:_ who are community Individual Contributors (ICs)? Contributors like mark_hollis, or community council members?
 - _joltz:_ all of us are IC's
 - _geneferneau:_ I like being an integrated circuit

- _dburkett:_ How will funding requests to the OC be handled? also, the decision process in particular. Will that be public?
 - _joltz:_ In the forum as per the funding guidelines RFC (which is probably due an update) but my hope is to improve the process at some point to make it even more clear, efficient and transparent. Maybe all in a dedicated github repo? As I'm proposing yes it would just happen all in the forum thread-
 - _vegycslol:_ Is proof of spendability enough? If it's a 4 of 6, then that means that even if you are only 4 left it's going to seem like everything is fine when the reality is that someone could randomly lose key (i avoided die :D)
  - _joltz:_ The proof itself can take many forms, I think that is still open

- _joltz:_ It might feel like these are big changes, but I think zoomed out, it just makes the process around council funds more reliable and transparent and brings the community council and original council to as equal footing as possible by giving ownership of the meeting time/space over to the community
And hopefully the clarifications around how repos work etc will help us stay on the same page as a community going forward
 - _phyro:_ so there will be no scheduled meetings unless someone creates an issue on the github?
as in, the current format dies unless someone picks it up
  - _joltz:_ correct, it's just no longer responsibility of "council". it's now our responsibility as a community. but any one of us here can pick it up
  - _geneferneau:_ I thought there was discussion about switching to one bi-weekly meeting? or is this only about community meetings?
   - _phyro:_ there was, if I recall correctly, we wanted to merge both gov/dev meetings into a single bi-weekly. This is changed with this and suggests that this will take place if someone steps up and organizes and leads them

- _mcmmike:_ its time for us now to organize and help with meetings,agenda, transcripts etc - I would suggest to keep the same timetable for gov-meetings and we from the CC agreed to attend the gov meetings at least one of us "all" the time. if there are no OC topics we have the bi-weekly CC meetings then
I would suggest to keep the same timetable for gov-meetings and we from the CC agreed to attend the gov meetings at least one of us "all" the time.
 - 👍: _grindoggo, _cekickafa, _geneferneau, _defistaker, _jankie1800

- _joltz:_ So in some ways this is a bittersweet meeting. Have been here every tuesday since we moved to keybase and hope to continue to see everyone on tuesdays. But sometimes you have to give up some control to have the right outcomes, and I think this is an example of that- I'm looking forward to seeing what we can accomplish together as one of the only truly community-driven project 🚀 Thanks to everyone for participating in these over the last couple of years, I'm really excited to be a part of our continued evolution


###Other Questions
- _joltz:_ With that, are there any other questions that we want to bring up today?:)

- _grindoggo:_ I'm not sure if this is my place but I wanted to mention Renzokuken's suggestion: keybase://chat/grincoin#community_fund/1582 / In short, he suggested a negligible funding to test the communication of the funding council.
 - _joltz:_ Yes I totally forgot to highlight that, Slatepacks marketplace looks amazing! Kudos to everyone working on it
 - _grindoggo:_ Well it doesn't necessarily need to have to be with that marketplace, it can be anything negligible probably

- _phyro:_ decentralize the newsletters 🚀

- _joltz:_ Ok, meeting over. Thanks again everyone for your energy and time today. Hope to see you all in the first meeting we put together as a community!

**Meeting adjourned.**
