# Meeting Notes: Development, Jan 12 2021

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- jaspervdm
- joltz
- lehnberg
- paouky
- phyro
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ The update is easy enough... After much sweat and hard work we have our 5.x release out! I hope everyone is taking some well-deserved relaxation time.
   - 🚀: _lehnberg, quentinlesceller, joltz, jaspervdm_
- _yeastplume:_ Some might say that grin is now 'really' released.:d
- _lehnberg:_ Call outs to a last minute fix that was discovered after last week's meeting and had to go into a 5.0.1 for the node.
- _jaspervdm:_ Yeah, and a new version for the wallet has to be released as well due to lockfile issues. But other than that I'd say it went mostly smooth.
- _quentinlesceller:_ Yeah and I think we will shortly need another release for this https://github.com/lymia/enumset/issues/17. But not urgent. ^^
- _jaspervdm:_ Yep, going to look into that one as I do not understand why its suddenly an issue but yes.
- _yeastplume:_ It did... It's hard to see the larger picture when you're nose-down into the actual issues every day, but hope everyone can take a step back and be proud of the accomplishment when you have time to breathe.
- _jaspervdm:_ Excited to see the final hard fork in a few days!
- _lehnberg:_ Two years went by fast...
- _yeastplume:_ They did indeed... And sure we're all wiser And prematurely aged as a result.
   - 😂: _phyro_
- _lehnberg:_ Feels like there's so much more to do than I imagined there to be in 2019.
- _quentinlesceller:_ Indeed:)

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/380) was accepted without changes.

### 3. Action point follow ups from previous meetings
_None._

### 4. v5.0.0 status
- _lehnberg:_ So what's left to do ahead of... Friday's?.... Fork? We're lacking a v5.0.0 blog post on website. I can bullet out some stuff and submit that, but would be nice if a dev did it perhaps.
   - _jaspervdm:_ I do not have great writing skills but could give it a shot.
      - 👍: _jaspervdm_
      - _lehnberg:_ Great - happy to act as your editor.
         - 👍: _jaspervdm_
- _lehnberg:_ Banners have gone up. Binaries are shasumed.
- _quentinlesceller:_ Yeah the blog post is the missing. Along with a forum post maybe.
- _lehnberg:_ Is it a matter of just staying in our fox holes waiting? Any last minute testing of 5.0.1 node and 5.0.2 wallet we want to do?
- _jaspervdm:_ Don't think we need to do additional testing, just have to make sure the binaries will work on snap.
- _quentinlesceller:_ I'm deploying grin v5 on grinmint and will also do several tests.
- _quentinlesceller:_ I have my hand on a macbook m1 hopefully we can fix grin to compile on it.
   - 👍: _yeastplume, joltz_
- _lehnberg:_ Nice. Also add to brew right? Or is that an automatic process?
   - _quentinlesceller:_ Brew is already up to date. It's not automatic it's detailed here https://github.com/mimblewimble/grin-pm/blob/master/release_process.md#3.-update-brew-formulas.

### 5. Priorities after the hard fork
- _jaspervdm:_ There's some wallet issues that I plan to look into soon.
- _yeastplume:_ True, though I don't think anyone will be doing any real planning just now, but perhaps what might be in people's heads about what's next? Or is everyone too exhausted with it?
- _joltz:_ Personal hopes once hf is behind us:
   1. tor support for nodes
   1. multisig support for wallet
   1. one-time use slatepack addresses for wallet.
   - 👍: _lehnberg_
- _lehnberg:_ Maybe we could see if we could come up with like the top 3 or top 5 big ticket items moving forward.
- _lehnberg:_ - parallel ibd.
   - 👍: _quentinlesceller, joltz_
- _lehnberg:_ - the exploration of two step transactions is in embryonic/research stage so I wouldn't call it out in this context, it would need to mature significantly, but would be good to drive that forward in a r&d stream that's separate from development.
- _jaspervdm:_ After pibd, I have a restructure of the wallet in mind that would better separate tx building, signing and transport layers. This would make it much easier to add features such as mutlisig and hardware wallets.
   - 👍: _quentinlesceller, yeastplume, lehnberg, phyro_
- _quentinlesceller:_ Usability, stability, ease of use. Also maybe wallet perf when you have thousands of tx.
   - 👍: _joltz_
- _quentinlesceller:_ Hardware wallet would be awesome.
- _lehnberg:_ Yeah, hardware + good multi-sig would be killers. We have a few threshold experts in the team now. :)
- _phyro:_ I'd love to see an aggregator access from the wallet.
   - _lehnberg:_ What's this?
   - _phyro:_ Just an aggregation service with an interface to send the tx to it.
   - _lehnberg:_ Daily / hourly etc? Centralized server?
   - _phyro:_ Oh yes, sorry, the daily:)
      - 👍: _lehnberg_
- _quentinlesceller:_ Support for view key in the wallet.
- _yeastplume:_ A better separation of the db layer from the wallet with support for sql backends, that could move a lot of querying into the db layer.
   - 👍: _jaspervdm, joltz, quentinlesceller_
- _jaspervdm:_ Yeah, thats definitely something we should pick back up.
- _yeastplume:_ Would make for more robust exchange wallets as well.
- _lehnberg:_ What about the light node that is @phyro's love child?
- _jaspervdm:_ Definitely, they could use something like postgres.
- _quentinlesceller:_ Also on a more technical side update on libsecp256k1 lib and maybe the one repo to rule them all thing with revamped integration tests.
   - 👍: _lehnberg, phyro, joltz, jaspervdm_
   - _lehnberg:_ Good one.
   - _jaspervdm:_ Yep, there's a bunch of merged prs on the bitcoin libsecp that we could integrate.
   - _quentinlesceller:_ Yeah we should probably fork the original repo and reapply the changes if possible.
- _yeastplume:_ Always more integration testing needed.
- _jaspervdm:_ Agreed.
- _phyro:_ Careful not to overflow the bucket 👀
- _jaspervdm:_ Well this is just a wishlist.
- _yeastplume:_ Just a big brainstorm right now, the bucket has infinite capacity. What happened to flyclient talk btw?
- _jaspervdm:_ I think antioch was going to look more into that.
- _tromp:_ I wish for having payment proofs by default for all flows.
   - 👍: _phyro_
- _tromp:_ And payjoins
   - 👍: _joltz_
- _lehnberg:_ So far, what I have on wishlist
   ```
   - tor support for nodes
   - multisig support for wallet
   - one-time use slatepack addresses for wallet
   - pibd
   - multi-sig
   - hardware wallets
   - high load wallet perf (1000s of tx)
   - wallet view key
   - sql backend
   - light node
   - libsecp fork update
   - flyclient
   - payjoins
   - aggregators
   ```
- _lehnberg:_ Right what happened to all those wallet rfcs and attacks and what not?
   - _joltz:_ Probably worth spending some timer hardening around this too.
- _jaspervdm:_ We also might want to think if there's a way for us make the life of potential exchanges that want to integrate grin easier.
   - 👍: _lehnberg, quentinlesceller, phyro_
- _tromp:_ Block archive node support.
   - 👍: _lehnberg_
- _jaspervdm:_ Now that we've settled on a tx building mechanism.
- _quentinlesceller:_ Yep definitely.
- _lehnberg:_ Ughhh so much stuff. 🥲 Rip.
   - _quentinlesceller:_ Yeah lol...
   - _yeastplume:_ Heh, lol.
- _joltz:_ Might as well so it can be done under less stress than if it were actively being attacked:)
- _yeastplume:_ No shortage of things.
- _lehnberg:_ So maybe let's keep a github issue or something where we can throw things on the wall as wishes and then for next meeting we can try to sort by priority?
   - 👍: _joltz, jaspervdm, quentinlesceller_
- _phyro:_ The anchor replay mitigation would require first having the payment proofs, safe cancel and payjoins anyway so it's far away probably if it was considered.
- _lehnberg:_ And see what we realistically can bite off first?
- _lehnberg:_ I see no point in trying a full year roadmap again, more like a q1/q2 attack list or something.
- _paouky:_  side note task (just joined) - cleaning up issues.
   - 👍: _quentinlesceller_
- _lehnberg:_ Now that we have no pesky forking to worry about, do we still want to stick with this six month cadence? Or should we look to do sth different?
- _jaspervdm:_ As in major releases?
- _lehnberg:_ Yeah, like dev / release cycles.
- _yeastplume:_ That's a good question. There are some very large conversations that we can have now around this and how we organise ourselves.
- _lehnberg:_ Not saying we need to work in sprints, but could be good to have some milestones to target.
- _jaspervdm:_ Yeah there's different models. Either we release major versions at regular intervals.
- _jaspervdm:_ Or we base them around big features.
- _lehnberg:_ I tend to be a fan of the former. In my experience the latter leads to stuff never being ready for release. I.e. Better to have a release cycle (whatever that is), and if you make the cut, your feature is in, if not it goes into next release. But prob getting ahead of ourselves here.
- _jaspervdm:_ Yeah tend to agree, but its something to think more about.
- _lehnberg:_ Yep, we could very well decide to do it differently. We're not building a conventional mobile app here. And we're not a dev shop.
- _yeastplume:_ Not a lot conventional here. Is this something that ties in with a wider governance discussion?
- _yeastplume:_ Anyhow, I think everyone's tired and needs a break, but I think from a dev perspective, we have a nice high-level no commitment wish-list, which is about all we can hope for right now.
   - 👍: _lehnberg, jaspervdm, joltz, phyro, quentinlesceller_
- _lehnberg:_ Wish list idea gathering issue: https://github.com/mimblewimble/grin-pm/issues/385. Feel free to add in the comments as ideas come up.

### 6. Other questions

#### 6.1 Anything urgent post HF4

 _lehnberg:_ Any urgent fire that's burning that we need to tend to immediately once fork is successful? Any eta for the fork on friday, trying to understand time and whether I can be available.
- _joltz:_ I saw something about tradeogre having v5 issues, was that resolved?
- _lehnberg:_ I provided my email in the hopes of getting more info. Nothing yet.
   - 👍: _joltz_


#### 6.2 Fork party
- _lehnberg:_ Are we doing a fork keybase party / on call in case shit breaks?
   - _quentinlesceller:_ Yep  all be there hf is happening around 11:30 pm utc on friday.
- _joltz:_ @quentinlesceller we better make some new party parrots.
- _quentinlesceller:_ Indeed haha.
- _lehnberg:_ Oh shit, pm.
- _yeastplume:_ We could all get on zoom and stare awkwardly at each other.
   - 😂: _joltz, phyro, lehnberg, quentinlesceller_
- _lehnberg:_ Thought am. Haha it's vodka night...
- _tromp:_ Cuckaroo29 is now down to 1% fraction of blocks.
   - 👍: _yeastplume_
- _yeastplume:_ The aviary is being culled. With a much less diverse bird population.
- _tromp:_ Survival of the asicest.
- _yeastplume:_ Anyhow, on that note, I think that brings us to the end of the formal portion of our meeting. Thanks again everyone for all of your hard work over the past 3.5-4 years, and long may it continue!
- _joltz:_ Thanks @yeastplume!!
- _jaspervdm:_ Thanks! 👋
- _lehnberg:_ Thanks @yeastplume! 👋
- _phyro:_ 👋

**Meeting adjourned.**