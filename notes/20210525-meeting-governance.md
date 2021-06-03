# Meeting Notes: Governance, May 25 2021

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 45 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- joltz
- geneferneau
- mark_hollis
- tromp
- mcmmike
- dtavarez
- phyro
- quentinlesceller


_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_



## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](agenda for dev meeting later today - https://github.com/mimblewimble/grin-pm/issues/422) was accepted without changes.

### 2. Bounty statuses
 - _joltz:_ Getting started with bounty statuses it looks like @mark_hollis has recently made an update https://forum.grin.mw/t/grin-ledger-hardware-wallet-progress-thread-by-markhollis/8670/13
 - _mark_hollis:_ hello there
 - _joltz:_ Anything to add from a governance/process perspective? and thanks for keeping the updates coming!
 - _mark_hollis:_ Not at the moment.
 - _joltz:_ I think this is the only active bounty currently?
 - _quentinlesceller:_ yes
 - _dtavarez:_ @mark_hollis, you said that you started looking grin++ is there any blockers or something?
 - _mark_hollis:_ I had some problem which I created a github issue for. (issue #174)
 - _joltz:_ 👍 sounds like you can continue the technical details of the conversation there then?
 - _mark_hollis:_ Yes
 - _dtavarez:_ I will answer the issue :) - Cool
 - _joltz:_ Great, thanks again @mark_hollis is great having you here. As always feel free to ask for anything you need (repeatedly if needed) and   I'm sure everyone will do their best.

### 3. RFC Update
- _joltz:_ @geneferneau has published a draft RFC for atomic swaps https://github.com/mimblewimble/grin-rfcs/pull/80 Please give it a read if you get a chance, am looking forward to reading myself soon. Already some good discussion with tromp and phyro

### 4. Community funding status
- _joltz:_ https://forum.grin.mw/t/call-for-grin-community-candidates-for-additional-fund-granting-control/8521/13 voting is over and it looks like Mac and @anynomous are the two newst members (pending council approval which I think might be there?)
So next steps per the proposal at https://forum.grin.mw/t/fund-alternative-a-split-fund-proposal/8476 would be
1. Signers announce their spending guidelines
2. Wallet is created, tested, and then funds are transferred
Is there anything else that we want to address/discuss, or is it now up to the new group to discuss and share their spending guidelines?
 - _mcmmike:_ I think it is up to us know to brainstorm and come up with some spending guidelines and build some structure around the new formed group.
 - _phyro:_ would it make sense to routinely check that 6/6 is possible? or is this entirely up to them now? I'd like to avoid not having funding requests for 4 months and then figuring out multiple people lost their keys
 - _dtavarez:_ I raised a question on #community_fund but I don't think this is the right moment to discuss; I would like to read more comments about it my question is: how the Community Council could  prevent becoming another centralized front for Grin and avoid having 2 centralized fronts fighting each other? for example, what will happen when one side wants to make a change that requires an RFC and the other side disagrees?
 - _mcmmike:_ I have not yet answered this question in detail publicly on the forum, but once we organise and stuctured, we can answere these question. From what I did understand, the current council is in favor of RUST implementations and supporting RUST improvments. So we need to figure out how we work together if we want to
 - _dburkett:_ @mcmmike - I had a proposal that allocated funds to rust  vs everything else. But that was not chosen. This merely splits the funds into 2 councils, each with the same goal, though with a different set of eyes. Both funds are for RUST and for community projects.
 - _dburkett:_ @dtavarez - They presumably wouldn't spend funds on implementation unless there was already rough consensus for the change.
 - _dtavarez:_ but what if the community council decides to support with funds something that requires a protocol change?
 - _phyro:_ It's good that this is not possible imo. Otherwise you can throw money at protocol changes.
 - _joltz:_ Ok,so it sounds like the new council needs to get together to come up with their spending guidelines?
  - _mcmmike:_ as this was a requirement for splitting, I would say "yes" we have to sit down and agree on guidelines.
  - _joltz:_ Ok then, we will all follow up together in the next governance meeting to check progress?
  - _mcmmike:_  not sure if we can come up with a final version in 2 weeks but we will at least start. next few days, I will contact all new members and ask for a communication basis , where we will publish and discuss our progress.
  - _dtavarez:_ but this is a good start:-> [presumably wouldn't spend funds on implementation unless there was already rough consensus for the change.]
 - _joltz:_ Don't mean to derail the above convo. I think there is no clear answer there and variations have been discussed quite extensively. I think we can only all act in good faith and hope that the new model brings the improvements we all wanted to see. It won't be perfect but hopefully it gives us some new tools to continue to make the improvements we all want to see. It also touches on a particular point that has never happened before that I think is a cause for a lot of discomfort. What happens when the community funds and implements a change that the old council isn't happy with? Does it get merged or not? I think the aim here is to move culture in the direction of bitcoin but it's hard for us since we are so small. I think it will be an ongoing discussion

### 5. Council asset audit
 - _joltz:_ Thanks Quentin for putting together [Grin Access Rights] https://github.com/mimblewimble/grin-pm/pull/426 ; it looks like there is already some discussion, maintenance on making the document more accurate. Hopefully we can keep it relatively up to date.
 - _quentinlesceller:_ We can add the list of current council members. But this list was more on "who has access to what"
  - _dburkett:_ Why are the council keyholders private, but the community council's keyholders are not? keyholders for funds, that is
  - _quentinlesceller:_ Some of them are anonymous too no?
  - _dburkett:_ Pseudonymous, but their names will be in the list. I'm not asking for KYC- I think there's a real danger of losing access to council funds, considering the past history of members disappearing without handing things off. And we're down to just 3 or 4 members.
  - _mcmmike:_ this is true, as this is a long-term commitment
 - _dburkett:_ It was mentioned before that it was a 3 of 5 fund IIRC (I'd have to check gitter). So ideally, we would have 5 keyholders still active. That's clearly not the case, since we don't have 5 council members active. So is it time to move those funds to a new 3 of 5 (maybe picking up an additional council member to bring us up to 5)
  - _joltz:_ That is not the requirement. The requirement is funds held in 4/6
 - _joltz:_ My personal take is that it is up to the council to secure council funds as it is up to the community to secure community funds. Transperency and accountability ar important but personally if I were a key holder I would not want to have that as public information.

 - _quentinlesceller:_ Do you feel like a public list of key holders would be the solution?
  - _dburkett:_ A public list of key holders would allow the community to audit access and recognize when we're at risk of not meeting the threshold.
  - _joltz:_ Yes and the community fund can decide to do that. Personally, for me, for the council fund I am not comfortable doing that myself and I don't see why it should be required especially with the fund now being split
  - _phyro:_ would a sig from the council fund be enough to prove people have access to the fund?
  - _joltz:_ Yes I would be fine with a regular "proof of key ownership"
  - _quentinlesceller:_ This is a good idea, we can do a monthly or quarterly update with a proof of ownership
  - _mcmmike:_ like we did in the past with the Canaries
  - _tromp:_ that would be more convincing if you could sign as 5/5 but we can't AFAIK

 - _joltz:_ @_dburkett - Is that acceptable for you?
  - _dburkett:_ The council isn't exactly overly active these days. I don't blame anyone for that, most are volunteers, but I have little faith in their ability to manage those assets without others monitoring. We've lost many assets before, the grin wallet has been inaccessible for nearly a year with no public effort to restore access to those, etc. Having a public key list allows the more active members of the community to monitor and alert when there's a problem. Because if it's a 3 of 5 but only 3 of those keyholders remain, I will call attention to that and ask for key rotation. Honestly, I think we're down to 3 at most now, so this is already a problem.
 - _phyro:_ the only way to prove we have access is with a signature. People being around doesn't prove they have not lost their keys, so periodical signing makes sense in any case imo
 - _quentinlesceller:_ I agree with @dburkett that this is a concern. I disagree with the idea of publishing the name of the keyholders online though.
  - _dburkett:_ Why? If security is a concern, a single rubber hose attack on any one of the council members will be enough to get the rest of the names.
 - _vegycslol:_ can't we just publicly announce public keys and then every quarter each member signs something individually?
 - _joltz:_ Both councils are free to take this up internally and hopefully reach a transparent, accountable and resilient solution.
 - _phyro:_ if we can't do a 5/5, we should start moving in that direction.
 - _dburkett:_ Right now, the active council members are:[joltz, tromp, quentin, antioch (inactive for weeks)] Even with a 3 of 5, I think we are at a real risk of losing access to those funds now. Yet it wouldn't even be discussed if I hadn't brought it up. That doesn't instill a lot of confidence.
  - _joltz:_ Your concern has been heard @dburkett
 - _quentinlesceller:_ Give us time to think about a solution. I propose we re-discuss this at the next governance meeting with hopefully a concrete solution.
  _dburkett:_ sounds good. Thanks

###6.new funding request for some general pm duties https://forum.grin.mw/t/request-for-funding-newjack777/8893
  - _dtavarez:_ I think the role (Grin Groundskeeper) is needed; but I would like to see someone more familiar doing this
  - _dburkett:_ It's a very modest request, so I believe if @jankie1800 continues to contribute to the community and make themselves more well known, I see no reason it wouldn't be approved in the future.
  - _dtavarez:_ would like to more contributions as Grin Groundskeeper from @jankie1800  I think the role is needed actually
  - _quentinlesceller:_ Also, I'd like people to start contributing directly to Grin as a regular open source project instead of directly asking for funding. Funding can come after once you have proven yourself useful- (regarding funding not bounty)
   - _joltz:_ To their credit I suggested that as well and they have started https://github.com/mimblewimble/grin-pm/pull/425 which is nice to see. Hopefully they can continue adding value and if this is really what they want to do, find a nice home here after getting to know the community better. So it sounds like this request will not be approved for now but we are happy to see their contributions and hope that they can evolve into something longer term?
  - _tromp:_ perhaps bringing out a new Newsletter will further boost his profile

###7.Other questions
  - _mcmmike:_ I would love to see the Newsletter get activated again, this was a very popular way of communicating for GRIN
   - _joltz:_ What is needed to reactivate it?
   - _mcmmike:_ good question, do we want to use the old account again or start with a new one ?
   - _dburkett:_ Mac has been trying to get in contact with lehnberg to take over the newsletter, but no response yet. It would be ideal to continue the old one, since so many people see it.But we're at Lehnberg's mercy, since it is his newsletter and list.
   - _joltz:_ Maybe we can collaborate on the newsletter in #community and hopefully have an opportunity for anyone interested to get involved
  - _phyro:_ also writing your own blog posts or similar would be much appreciated. We have a lot of people in the community but very little content made


- _joltz:_ Ok, thanks for your time today everyone, we got through a lot. Some big points to follow up for next meeting. See you all there!

**Meeting adjourned.**
