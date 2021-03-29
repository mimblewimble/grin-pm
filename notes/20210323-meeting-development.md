# Meeting Notes: Development, Mar 09 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 50 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- gringineer
- joltz
- lehnberg
- mcmmike
- phyro
- quentinlesceller
- renzokuken
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_



## Agenda points & Actions

### 1. Retrospective

- _antiochp:_ @quentinlesceller been doing a great job pulling prs across from 5.0.0 onto master. And general cleanup. Other than that not much to update for now.
   - 💯: _phyro_
- _phyro:_ I was also about to say this, it's very nice seeing quentin on the prs 🚀 I think he had over 5 cleanup prs in the 2 weeks.
   - 🚀: _lehnberg, vegycslol, joltz_

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/400) was accepted without changes.

### 3. Action point follow ups from previous meetings
- _antiochp:_ Bounty update @quentinlesceller.
- _quentinlesceller:_ Ok. First bounties section created on the Forum https://Forum.grin.mw/c/bounties/13. For now only one bounty https://Forum.grin.mw/t/available-support-ledger-wallet/8517/8 support for ledger wallet. I plan to add 1 or 2 additional bounty. Though I fear we need more visibility.
- _antiochp:_ Sounds like there's a conversation going on over in general about hiring/interviewing that's related.
- _quentinlesceller:_ It's on the rust side so that specific bounty will not be concerned. But that's an interesting suggestion.
- _antiochp:_ There has to be real interest from the dev(s) - we can't force people to work for us, bounties or otherwise. But yeah visibility has room for improvement.
   - _quentinlesceller:_ Indeed that would be the ideal situation.
- _quentinlesceller:_ Anyway my plan is to try attract devs through a bounty and maybe they will be motivated to work more on grin. Like an entry challenge.
   - 👍: _antiochp_
   - _antiochp:_ Its a good approach.
- _quentinlesceller:_ One last thing that we could do is post it on gitcoin. https://gitcoin.co/explorer?network=mainnet&idx_status=open&applicants=ALL&order_by=-web3_created.
   - _antiochp:_ Definitely worth looking into.
   - _quentinlesceller:_ With wbtc if that's possible.

- _antiochp:_ @phyro triage update?
   - _phyro:_ Not much, mostly my failure due to not pinging people enough. I do think that cleaning up of the old prs will take longer than I initially thought. Would it make sense to decide on taking 2 (or more) sequential days to decide on the old prs?
   - _antiochp:_ I'd prefer it to be async and gradually do it over time. The goal is to make continual improvements with the triage, not necessarily to have an end state that we aim for. (at least personally speaking).
   - _phyro:_ Then it's up to me to ping people - I'm unfortunately not able to review them myself. Sorry, I'll make sure to ping better until the next meeting.
   - _quentinlesceller:_ No worries. I think we might want to close old pr that are maybe not relevant anymore.
   - _antiochp:_ Yeah I'd be up for erring on closing old prs.
   - _phyro:_ Yes, I think there are two that are ripe for closing.
   - _antiochp:_ Anything important can always be reopened or resurrected. If people have strong enough opinions about them.
      - 👍: _phyro_

- _quentinlesceller:_ This pr https://github.com/mimblewimble/grin/pull/3053 is unfortunately very old. And hasn't gotten a lot of attention for example.
   - _antiochp:_ Right - we know we need to improve things in that area, but lets not get too caught up on aiming to merge everything we can.
   - _quentinlesceller:_ Indeed.
   - _antiochp:_ Some things are always going to be ongoing discussions. Ok - 5.1.0 planning.
   - _phyro:_ Agree, I think skimming over to see what good could be taken and creating an issue + closing it would be a good step.

### 3. 5.1.0 release
- _antiochp:_ I'd like to propose 5.1.0 release in the next couple of weeks. We have some decent cleanup, a couple of minor fixes and "archival sync" on master. And I think this warrants an official release.
   - _quentinlesceller:_ Agree with that.

- _antiochp:_ Is there anything else outstanding that we would like to include in 5.1.0?
   - _quentinlesceller:_ Build_coinbase. On grin-wallet side.
   - _phyro:_ @tromp suggested db crashes if I recall correctly.
   - _antiochp:_ Ideally stuff that is done, not stuff that is not yet started. Unless you have a fix for "db crashes"?
      - 👍: _phyro_

- _vegycslol:_ It might be good to include some wallet api fixes in 5.1.0 (noticed that while doing testnet exchange but have only fixed that locally) - basically wallet api doesn't work for srs or rsr.
   - _phyro:_ I suggest you open an issue for whatever you find 👍
- _quentinlesceller:_ This on grin-wallet side https://github.com/mimblewimble/grin-wallet/pull/593/files
   - _antiochp:_ (and I'm completely forgetting about wallet side of things).

- _antiochp:_ How about this - lets add a 5.1.0 milestone in github (both node and wallet).
   - _quentinlesceller:_ Yes I think that'd be good.
- _antiochp:_ And we can tag issues/prs with the milestone. Just so we know what's still outstanding. I'll add the milestone after this meeting.
   - 👍: _quentinlesceller, vegycslol, lehnberg_
- _antiochp:_ And do a pass over the node side of things.
- _quentinlesceller:_ Sounds good.

### 4. Enabling "archival sync"
- _antiochp:_ Next item on the agenda is "archival sync" and that's pretty much covered by 5.1.0. The only thing is we need some node operators who currently maintain archival nodes to commit to upgrading to 5.1.0 as part of this. But I'm guessing that will not be an issue. @mcmmike @bladedoyle @quentinlesceller @hendi.

- _antiochp:_ Any others?
   - _quentinlesceller:_ I'll have at least two nodes 24/7 running as archival nodes.
      - 🚀: _vegycslol_

- _antiochp:_ Tl;dr its a "bootstrapping" issue for archival sync.
    - _mcmmike:_ We also have a lot of nodes running 24/7.
    - _phyro:_ I'm going to try and spin one probably today/tomorrow. I can't promise uptime of the node though.
    - _mcmmike:_ We are also auto upgrading some of the nodes every night to latest stale tag.
       - 👍: _antiochp_

- _tromp:_ Btw, does a block archive node deal better with db corruption? In that it would not have to d/l blocks again that it alrd downloaded before?
   - _antiochp:_ Do we have an issue tracking the details of "db corruption" here?

- _quentinlesceller:_ @antiochp so we should have this synced archival node **prior** to v5.1.0 launch?
   - _antiochp:_ Yes exactly - we want _new_ archival nodes to have peers that they can sync from.
- _antiochp:_ In theory yes, in practice its not necessarily automated.
- _tromp:_ I'd like to get that automated in a 5.1.0.
- _quentinlesceller:_ Ok.
- _mcmmike:_ Not urgently, but we might open an issue about the wallet api `init_secure_api` next few days but something I guess for upcomming dev meeting.
   - 👍: _quentinlesceller_

### 5. Version planning from [Post 5.0.0 wish-list](https://github.com/mimblewimble/grin-pm/issues/385)
- _antiochp:_ This is always on the agenda - not sure if there is anything to discuss here?
   - _lehnberg:_ How are we tackling these? Should we just keep that issue open?
- _antiochp:_ I know there are some edge cases but I'm not sure how prevalent this is currently.
- _lehnberg:_ Anything else that needs to be done?
   - _antiochp:_ I'd vote for dripping this off the agenda.
- _antiochp:_ Unless there is anything actionable there.
- _phyro:_ Some could probably be bounties 🤷‍♂️.
- _lehnberg:_ Cool.

- _antiochp:_ Some have been suggested as bounties yeah - libsecp one for example.
- _quentinlesceller:_ Yes the rust-secp256k1-zkp merge with upstream could be a bounty. Still thinking whether or not I want to do it.
   - 😂: _antiochp_
   - _vegycslol:_ Thanks quentin, we appreciate it.
- _antiochp:_ That one would be hugely beneficial.
- _quentinlesceller:_ Indeed.
- _antiochp:_ And well compensated no doubt. (given how tedious it will likely be). Do it. Go on.
- _phyro:_ I just read "i want to do it".
- _quentinlesceller:_ I want to do it. Can I deliver it in a timely manner that's another subject. Also it can be an "easy" first bounty.
   - _antiochp:_ Lol at "easy".  Well defined, yes.
      - 😂: _phyro_
   - _quentinlesceller:_ Yes I mean "easy" in the way it is easy to explain what we want.
      - 👍: _antiochp_

- _dburkett:_ Has there really been that many changes to upstream?
   - _antiochp:_ Its almost an ideal example of a bounty based piece of work.
- _dburkett:_ O wait, we want to merge our changes to upstream?
   - _quentinlesceller:_ We want to merge upstream into our changes. But not at all easy consider how meticulous the work must be.
   - _dburkett:_ Gotcha. So it's probably better to just go module by module. Submit a pr for each. This makes it more accessible to those with limited time(aka, humans), and is easier to review.

- _quentinlesceller:_ Yes that's why I think this might be good to create a bounty here. I think the best way would be to start on a "fresh" fork and apply our changes one by one.
   - 👍: _antiochp, phyro, vegycslol_
   - _dburkett:_ Are our changes well tested? If so, this works too.
   - _quentinlesceller:_ I don't know. Will have to check.

- _antiochp:_ Alright - any other questions?
   - _quentinlesceller:_ Nope all good.
- _antiochp:_ (hopefully @quentinlesceller posts a bounty and the subsequently claims it).
   - 😂: _phyro_
   - _quentinlesceller:_ That would be unethical of me.
   - _antiochp:_ But good for us.
   - _dburkett:_ He could submit a funding request. ;)
   - _phyro:_ I don't see it as unethical tbh.
   - _dburkett:_ It's definitely unethical. Just submit a funding request. We already have that process for it.
   - _quentinlesceller:_ Will think about it.
      - 🙌: _antiochp, vegycslol, phyro, dburkett_

### 6. Other questions
_None._

**Meeting adjourned.**