# Meeting Notes: Governance, Mar 16 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 50 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- anynomous
- bladedoyle
- cekickafa
- dburkett
- defistaker
- dtavarez
- geneferneau
- goyle
- hendi
- joltz
- lehnberg
- mcmmike
- mo5itoo
- phyro
- quentinlesceller
- renzokuken
- smokeking80
- trevyn
- vegycslol

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/403) was reviewed and accepted without any changes.

### 2. Action point follow ups from previous meetings

- _lehnberg:_ We're finally up to speed on financial reports. It took me a while and I almost went slightly mad but there's a small discrepancy happening sometime in Q4 2019 or earlier that caused numbers not to add up. Details here, https://github.com/mimblewimble/grin-pm/pull/402 Roughly USD 125 at the time. antioch has been paid, but I've not yet update the log for that I just recalled, so need to do that. And Q1 2021 report will be due in April. 
   - _antiochp:_ Thanks for doing those @lehnberg 

### 3. @ndcroos [ledger bounty](https://forum.grin.mw/t/available-support-ledger-wallet/8517/13)
- _cekickafa:_ It looks like he can do the job.but you are the experts.
- _mcmmike:_ I really like the idea of bounties and if someone can evaluate the developer I would say lets do it. 
   - 👍: _renzokuken, anynomous_
- _quentinlesceller:_ Regarding ledger Bounty I think we should lock the bounty for markholis. He seems serious and motivated.
   - 👍: _phyro, antiochp, cekickafa, joltz, mo5itoo, dburkett, mo5itoo, hendi, goyle, lehnberg, vegycslol, mcmmike_
- _anynomous:_ Good, should the bounty be split in sub tasks?
- _phyro:_ Also seems honest so far
- _mo5itoo:_ He's also very active in the community i can say
- _dtavarez:_ It would be nice to see some code though
- _quentinlesceller:_ I think the purpose of the bounty is that mark managed as he pleased and he'll paid based on the deliverables given. 
- _lehnberg:_ Where is that?
- _quentinlesceller:_ We should lock the bounty for X months if it's not done we unlock it.
   - 👍: _anynomous, phyro_
- _mo5itoo:_ On telegram @lehnberg 
- _lehnberg:_ Ah nice
- _quentinlesceller:_ Very little risk for us @dtavarez 
- _lehnberg:_ Yeah so wasn't aware we'd do locking, but I suppose that's fair? I really don't mind either way - just not familiar with how things are done here usually?
- _lehnberg:_ The concern without locking is that there's duplication of effort?
   - 👍: _quentinlesceller_
- _phyro:_ Also competition and shipping fast to deliver first which should probably not be encouraged
   - 👍: _vegycslol_
- _quentinlesceller:_ I mention assigning in the forum post sorry if that wasn't clear.
- _bladedoyle:_ Will we add any more bounty projects?   Is there a list?
- _antiochp:_ We'll probably end up learning as we go here as well - maybe he needs more people involved, maybe others have good ideas etc.
- _lehnberg:_ cool sounds good, so what's a fair time to lock it for then?
- _quentinlesceller:_ Feel free to suggest some more 
   - 👍: _bladedoyle_
- _lehnberg:_ Does it come with some expectation of a progress update?
- _quentinlesceller:_ 6 months ?
- _phyro:_ My question would be how would we get this reviewed. It's definitely something that would need a deep review in the end.
- _geneferneau:_ I would like to suggest a bounty project, is now the right time?
- _mo5itoo:_ I think i he should first give an estimation for the work first, and keep the community updated once a week or something and get paid once he's done.
- _lehnberg:_ Like if we lock for six months, it's not great if someone gives up and then we only realize it's not happening in six months
   - 💯: _cekickafa_
- _dburkett:_ Nah, too long. We should at least evaluate after a month or 2
- _anynomous:_ Maybe it would be good to include at least an adviser who has more experience.
- _mo5itoo:_ 6 months is too much
- _quentinlesceller:_ 6 months to do the full ledger support?
- _dtavarez:_ he could join keybase and ask freely 
- _dburkett:_ He's welcome to take 6 months or more, but we should keep checking in to make sure there's steady progress.
   - 👍: _mo5itoo_
- _lehnberg:_ yeah so if we "evaluate the lock" 2 in months than that's cool
   - 👍: _anynomous_
- _bladedoyle:_ I think shorts lock time but maybe extended if progress is shown?
   - 👍: _dburkett_
- _anynomous:_ 6 months is ok, but can be reconsidered after 2 or 3 months if there is no progress or any reason for concern
- _lehnberg:_ "status check re the lock in 2 months to see how you're getting on"
- _quentinlesceller:_ I'd say evaluate the lock in 2 months yes. ok
   - 👍: _cekickafa, bladedoyle_
- _lehnberg:_ Or why not even do a monthly check in? is that really that bad? not like a report. Just ask "hey how are things going". Proof of life, that kind of thing
   - 👍: _antiochp, phyro_
- _antiochp:_ no I think interim checkins should be encouraged
- _cekickafa:_ Monthly check is cool
- _antiochp:_ at least informally
- _quentinlesceller:_ For sure. That'd be great. 
- _cekickafa:_ monthly update
- _lehnberg:_ so: lock for now → monthly check in on the forum post?
   - 👍: _antiochp, anynomous, dtavarez, phyro, cekickafa, joltz_
- _quentinlesceller:_ yes
- _lehnberg:_ if awol, we unlock again
   - 👍: _quentinlesceller_
- _mo5itoo:_ can he start by giving an estimation ?
- _bladedoyle:_ Estimates are hard. 
   - 👍: _renzokuken_
- _quentinlesceller:_ I mean the purpose of the bounty is flexibility. It is you either deliver and get paid or not. 
   - 👍: _mo5itoo_
- _anynomous:_ Ok, although I guess there are checkpoins for the bounty, like finishing sub tasks?
- _renzokuken:_ How about an agile / scrum kind of approach? smaller deliveries but more often and each of them needs to bring value ( to the community instead of to the company ) That would be evaluation more often, say every 2 week-long sprint.
   - 👍: _mcmmike_
- _vegycslol:_ I don't think putting pressure on him is good
- _bladedoyle:_ Nobody wants to be a scrum master 😩
- _dtavarez:_ Who is going to be the scrum master?
- _renzokuken:_ Btw who are we talking about? I though we discuss general approach and not a particular individual, sorry
- _antiochp:_ I think the person undertaking the bounty should be free to propose something along those lines - but it would be up to them
   - 👍: _vegycslol, phyro, dtavarez, cekickafa_
- _quentinlesceller:_ Indeed
- _antiochp:_ We are open to different approaches. and flexible
- _hendi:_ Exactly. If he has issues with "50k once done" he's free to propose checkpoints
   - 👍: _antiochp, vegycslol, bladedoyle, phyro, mcmmike_
- _quentinlesceller:_ yes
- _antiochp:_ lets not overthink this
   - 👍: _quentinlesceller, hendi_
- _goyle:_ I think the Ledger bounty feels less like a bounty and more of a regular funding request since its such a big undertaking
- _joltz:_ The difference is with former payment is made after work done, latter payment made before work done
   - 👍: _goyle_
- _goyle:_ it's like a bounty request for another GUI wallet
- _cekickafa:_ fund split and new members added.thats all.rest is details:smile:
- _dburkett:_ Also, it allows those who maybe haven't had a chance to prove themselves yet to get funded without risk to the council money.
   - 👍: _vegycslol, phyro, goyle_

### 4. Community funding
- _lehnberg:_ So far there's been four volunteers for signers: anynomous, davidtavarez, hendi, mcm-mike. there's two weeks left of march, and we said in april we'll review the list of volunteers. Anything we need to do at this point in time?
- _antiochp:_ if anybody else is thinking of volunteering then please do so
- _mcmmike:_ I just wanted to let everyone know, if you have any questions about me ask me on the forum post , here or in private if needed. 
   - 👍: _quentinlesceller, renzokuken, defistaker, cekickafa, mo5itoo_
- _anynomous:_ Same here, and if anyone has a problem with me being anynomous (although I Doxed myself many times), let me know.
   - 👍: _renzokuken, mcmmike, cekickafa, mo5itoo, defistaker_
- _dtavarez:_ same here
   - 👍: _renzokuken, cekickafa, mcmmike, mo5itoo, defistaker_
- _anynomous:_ How many candidates are we looking for, the more the merrier?
- _lehnberg:_ Yes. If there's anything else to discuss on this, remember that there's #community_fund to raise questions and ideas in.
- _hendi:_ we should try to get more than us 4, otherwise voting makes hardly sense
- _anynomous:_ Yes, 5 would be ideal, at least an uneven number
- _cekickafa:_ i would like to be volunteer as a voting,but i dont like to be involved in mulitisig stuff
- _mcmmike:_ are we looking for 3 or 4 signers? 
- _phyro:_ I think 5 is a good number
   - 👍: _anynomous_
- _cekickafa:_ then you be the 5th
- _vegycslol:_ 4 of 6 seems fine
   - 👍: _phyro_
- _anynomous:_ Should the grin council maybe have some backup signatures, e.g. 4 out of 8 (2 from the Grin council)?
- _hendi:_ yes. depends on the splitting though. The council should definitely be able to help out if 1 or 2 sigs are missing
- _mcmmike:_ in total we will have 6 signers where 4 from the community and 2 from council , was this the original proposal? ( I need to look it up) 
- _phyro:_ agree, also solves the 2 going missing
- _hendi:_ "4 of 6, 2 for council" sounds good to me
   - 👍: _phyro, anynomous_
- _vegycslol:_ Is that a 4 of 8?
- _hendi:_ that's 4 of 6 (4+2). (for the current situation where we have just 4 volunteers)
- _vegycslol:_ But since council members don't vote, how do you vote with 4?
- _hendi:_ you don't, we need more volunteers for that. though voting is separate from multisig
- _antiochp:_ I'd keep the multisig as a detail to be worked out later
   - 👍: _hendi_
- _anynomous:_ Yes, I also do not mind not having one of the signatures as long as there are enough members who hold one
- _hendi:_ ^ my point here was the volunteers should be "voted in" by the broader community, (not the fact that we need more than 4 or an odd number)
   - 👍: _antiochp_
- _mcmmike:_ but at the end the council will decide , we can only offer our help at the moment. 
Also I do see the need for more peolple volunteering.
- _anynomous:_ Based on my experience an uneven number works better, so I hope some more candidates step up.
- _hendi:_ @lehnberg already mentioned the call for volunteers in his newsletter. Maybe we can get some more outreach, Twitter, Telegram channel?
- _lehnberg:_ With four signers, I don't see how we could give a lot of funds to such a group. 3 of 5 would be minimum imo. And ideally, if we're to pick 5, we'd have a bigger pool than just 5 to pick from haha
   - 👍: _anynomous_
   - 😄: _phyro_
- _anynomous:_ @cekickafa said he/she was interested right?
- _lehnberg:_ so please, do whatever you can to shake out more applicants from the trees
- _cekickafa:_ i volunteer voting. but phyro wants 5th multisig better
- _vegycslol:_ I was hoping for at least 4 needed "yes" votes :) 
- _hendi:_ @cekickafa can you please post your application on the forum?
- _cekickafa:_ ok
- _anynomous:_ In any case, I think it would be best not to give a lot of funds, simply allocate money and transfer a buffer to begin with
   - 👍: _hendi_

### 5. RFC Update
_None._

### 6. Other questions
_None._

**Meeting adjourned.**