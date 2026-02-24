# Meeting Notes: Development, May 14 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5cdad83f6fd7c11cd8b82c4b). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- davidburkett
- garyyu
- hashmap
- ignopeverell
- jaspervdm
- lehnberg
- mcdallas
- quentinlesceller
- tromp
- xiaojay
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _ignopeverell:_  The most visible work that landed was probably invoicing on the wallet side, and our new shiny Azure Pipelines CI.  I think the transaction pool eviction PR from @quentinlesceller probably won the title of the longest standing one too :-) Other than that, still a lot of small fixes and cleanup,
after 1.1.0 we'll have some more larger work. There's also been several fixes on the p2p code that should make our network pretty stable once it's mostly 1.1.0.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/126) accepted. 

### 3. Action point follow-up

#### 3.1 v1.1.0 communication

_lehnberg:_ Not been able to action that yet.

#### 3.2 Documentation of git branching model

_ignopeverell:_ Not done yet, sorry for the delay.

#### 3.3 CI Status

_quentinlesceller:_ Done for wallet and node repos bar any tweaking, grin-miner and libsecp are next on the list. 

#### 3.4 Protocol versioning review

* _ignopeverell:_ I reviewed and looked good.
   * _antiochp:_ So did I.
   * _lehnberg:_ Okay - closing and moving on.

### 4. Security review status

- _ignopeverell:_   We've received the final report, we'll be working on those fixes gradually, I believe several have already been actioned.  The more severe issues should be in 1.1.0. Then we should have about a month, perhaps 1.1.1 or so, to make sure we're all good with respect to all those findings.
  
### 5. Grin v1.1.0

- _ignopeverell:_ I was thinking of doing 1.1.0-beta2 today, then we all test it for about a week and ideally release early next week. Sounds good to everyone?

_Support by yeastplume, hashmap, antioch, garyyu, quentinlesceller, no detractors._

### 6. Upcoming releases

#### 6.1 General version planning

- _ignopeverell:_ There will definitely be a 1.1.1. Our planned hard fork (2.0.0) should be in about 2 months from now, something like 62 days I believe. I'd like to have a release ready about 3 weeks prior to that, which doesn't leave us that much room. We'll see if there's time for a 1.2.0 but I doubt it. 

#### 6.2 Hard fork planning

- _yeastplume:_ Does it make sense to cut off the wallet V1 api at that point? probably a bit early. My concern is whether it leave wallet developers enough time. Would be good to know how many are already using v2.
   - _ignopeverell:_ I think it might, as everyone will have to upgrade.
   - _xiaojay:_ Yes, 2 months is enough to port to v2 api.
   - _davidburkett:_ It's not a significant change. v0->v2 should be easy to upgrade.
   - _lehnberg:_ We could add a note about it in the v1.1.0 communication.
   - _yeastplume:_ That works for me.

- _lehnberg:_ Any actions we could look to get checked off until next dev meeting with regards to 2.0.0 planning?
   - _ignopeverell:_ I think it'd be nice if we had some writeup from @tromp about the PoW changes. Given that we only have 2 months, I think it makes sense to share it publicly, as all the GPU solver authors will need to get started on supporting the changes.
      - _tromp:_ I'll write a post before next dev meeting and prepare a PR.
    - _yeastplume:_ We've been thinking about multi-sig a bit, but I don't think we'll have anything definite in time.
    - _hashmap:_ Do we need to think about node v2 api? It’s awkward to work with rest and json rpc at the same time.
       -  _yeastplume:_ Would definitely be good to redo the node v2 api. The work is already done in the wallet as a model.
    -  _garyyu:_ Perhaps the bulletproof nonce can be changed.
       - _ignopeverell:_  Agree, it'd be nice to agree on a scheme, it seems we currently have to worst one.
       - _jaspervdm:_ I had a proposal in mind, but cant get it to be fully compatible with what we have now. So we basically have to attempt 2 rewind per UTXO, or we maybe do a height based rewind method. I.e. use new bulletproof rewind scheme after HF. I will write down my proposal and open an issue in grin-wallet today or tomorrow.
  
#### 6.3 Http deprecation

 -  _lehnberg:_ What about [deprecating http](https://github.com/mimblewimble/grin-wallet/issues/66)? Feels a bit annoying that we’re a privacy coin that’s relying on really flimsy transaction building methods as default.
    -  _davidburkett:_  Https is hard to setup for person to person txns. Waiting for i2p would be better.
       - _ignopeverell:_ Unfortunately i2p is not close enough to replace that yet.
       - _yeastplume:_ Surely i2p is a good enough story for where we're headed with transaction building methods? As long as it's on the roadmap, I think we can live with a bit of http.
   - _lehnberg:_ i2p is great, but what are we doing in the meanwhile? Http is the most common denominator currently, and that will likely remain the case due to inertia. It’s a dev-only feature, useful for internal systems only. Shouldn’t be exposed to end users, and certainly not something end users should be transacting with on plain internet. Dunno, just feels hard to take us seriously with this being the baseline. I’m probably being overly critical, but that’s how it feels. I agree with the criticism we get for having allowed that to be included in 1.0.0, it was a mistake.
      - _jaspervdm:_ I agree, it's especially a problem when exchanges etc. only allow http withdrawals.
      - _ignopeverell:_ Fundamentally I personally agree as well on http. Having i2p by default I think will take a while, it'll require a decent amount of testing and finicking to be user-friendly. What would be a reasonable gradual path from unsafe (http) to safe (file, https)?
         - _lehnberg:_  We have it now, we can’t just remove it, but we need to set a timeline for moving away from it. I think we need to move forward on adding `unsafe` as discussed in the ticket, and then over time making it clear that http transacting is something that will need to be manually enabled by the end user in the config, possibly even as part of build process and not supporting it at all for binaries.
         - _ignopeverell:_ The non-rushed timeline would be announce in 1.1.0, `--unsafe` in 2.0.0, remove in 2.1, I don't think it needs to wait 3.0.0 as it's got no consensus impact. It can also be removed from the wallet client only. The rushed timeline is `--unsafe` in 1.1.0, remove in 2.0.0.
            - _jaspervdm:_ I think the slower timeline is preferable, we need to give plenty of notice and give exchanges etc time to adapt.
            - _davidburkett:_ As a GUI wallet dev, I would love the rushed timeline, so I don't have to support a bunch of questions about how port forwarding works. As an exchange, I would hate that.
            - _garyyu:_ I vote the rushed timeline, to kill the “problem” fast. Our 1.1.0 wallet will already force the exchange to make some changes. So why not one more.
            - _ignopeverell:_ Okay, let's start with --unsafe in 1.1.0, that's very easy to support and then work out a plan for the next steps from the reactions to that. And we clearly state that http is going to be removed in the 2.x timeline.

_Support by jaspervdm, antioch, garyyu, lehnberg, no detractors._

### 8. Other questions

None


**Meeting adjourned.**
