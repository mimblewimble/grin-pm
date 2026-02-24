# Meeting Notes: Development, May 12 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 80 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- hashmap
- joltz
- lehnberg
- mably
- quentinlesceller
- tenthousandlakes
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
- _yeastplume:_ So a quick reminisce: We've mostly been finishing up 4.0.0 definitions and working on their implementations, my part has mostly been on compact slates and testing the implementation of slatepacks. I'll let everyone else sound off on the bits they've been doing, as there's a bit too much for me to keep track of in my head right this moment, and I don't want to forget anyone's contributions.

- _antiochp:_ Nrd kernel RFC is almost done (some minor feedback to address) and we have corresponding pr(s) up for some of the impl work (done in parallel).
   - 🚀: _yeastplume, lehnberg, joltz, hashmap, mably_

- _tromp:_ I've only written a cuckarooz29 simpleminer so far. Which sufficed to verify the expected #solutions as being 1/84. Stared work on a cuda miner. Will be quite a bit slower than cuckaroom29.
   - 📉: _antiochp_
   - 🐣: _lehnberg, joltz, hashmap_
- _hashmap:_ Some storage improvements, in particular introducing a saner db schema which as a side effect allows us to have significantly less heap allocations.
   - 👍: _antiochp, yeastplume, lehnberg, joltz, mably_
- _lehnberg:_ And @joltz has been knee-deep in transaction building standards.
- _yeastplume:_ Awesome all around!

### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/288) was accepted, with the 5.0.0 placeholder struck.

### 3. Action point follow ups from previous meetings

#### 3.1  Soft-fork discussion: initiated in a permanent place?
[Actioned.](https://github.com/mimblewimble/grin/issues/3317)

#### 3.2  http(s) deprecation discussion: communicated properly to wider community?
[Actioned.](https://forum.grin.mw/t/potential-deprecation-of-http-s-transaction-building/7297)

### 4. [Slatepack proposal](https://github.com/mimblewimble/grin-rfcs/pull/55)
- _yeastplume:_ I'm happy with the direction this proposal is going.
- _joltz:_ Quick tl;dr for anyone: Slatepack is a workflow-based approach to transactions (as opposed to the existing open-ended "provide choices and hope for wise decisions" method-based approach). It combines the tor method and proposed armored slate method into a unified privacy-preserving workflow that should allow _any_ grin users or services to successfully transact.
   - 🚀: _antiochp, mably_
- _tromp:_ Is slatepack agnostic to including multi-sig inputs&outputs?
   - _joltz:_ It should not have any opinions there as designed.
   - _tromp:_ Excellent :)
- _antiochp:_ So workflow in an abstract way, not a prescribed workflow?
   - _joltz:_ It is a prescribed workflow to follow the 'slatepack standard'. Of course you can still manually use non-slatepack workflows.
   - _antiochp:_ Just to @tromp's point - multiparty/multisig would involve initial round(s) for communicating nonce values.
   - _yeastplume:_ Right, at the moment the workflow is optimised for single sender/recipient.
   - _joltz:_ The workflow is more about an order of transport methods to attempt as opposed to exact steps for each round of transport.
   - _antiochp:_ Cool - that makes sense 👍
   - _yeastplume:_ Yes, it it just a manner of packing the slate for transport with metadata. Multisig will be an alternate flow, not yet defined.
      - 👍: _joltz_
   - _joltz:_ It is just focused around transporting the slates, not the contents.
- _yeastplume:_ It's very important that everyone reads, absorbs, and comes back with whatever feedback they have on it. Cause if we deprecate https, that's it. This is how transactions are done.
- _joltz:_ Yes just wanted to put it out there again for folks to have time to digest. We may be stuck with it for a while so really want to make sure we can live with it.

- _lehnberg:_ My high level take on workflow:

   1. Send `Amount of grin` (to optionally provided `Address`)
   2. A) if `Address`: Encrypt slate and try Sending via tor
   		- if tor fails: Present Encrypted slatepack string to share manually
   3. B) if no `Address`: Present unencrypted slatepack string to share manually.
    
   (`address` here also works as encryption key).

- _yeastplume:_ It's anticipated that this flow would be extended for multisig.
- _joltz:_ So workflow is really just: 1. Try to build over tor, 2. Exchange ascii armor if 1 fails.

- _tromp:_ For let's say 3-party txs, is slatepack expected to be passed aound from a->b->c, or could a send simultaneously to be and c and combine the return slates for a similar 2nd round?
   - _joltz:_ If method 1 fails, yes it would need to manually be passed around.
   - _tromp:_ That is, is it designed for round robin?
   - _joltz:_ So the multiparty workflow would need to be established for how it is handled in both tor and for ascii armor slates. But that shouldn't change the overall slatepack workflow of: Try to first then fall back to ascii armor.
   - _tromp:_ Round robin is simpler, but could be slower if both be and c take their time to pass slate back/on.
   - _antiochp:_ I see any solution ending up pretty gnarly for 3 or more  participants.
   - _yeastplume:_ Right, it's not as if bitcoin multisig is particularly pretty at the moment either.
   - _joltz:_ The hope is that it shouldn't be any more complex to design this for slatepack than existing methods since slatepack is just instructions for an order to attempt existing methods. But may require some extra engineering since one party might have a tor failure in the middle of building.
   - _tromp:_ Ok, let's assume  focus on 2-party for now while keeping n-party round robin generality in mind.

- _lehnberg:_ A lot of the usability question marks around the proposed approach will depend on how reliable tor will be for usage in this context, i.e. Not only how often both parties will use tor and be accessible, But also how often they will be synchronously online.

   The copy/pasting of an armored slatepack string is fairly robust as a fall-back option, I can't imagine many situations where it would fail. But in complex use cases it can be quite arduous to manually copy paste/strings back and forth.

- _lehnberg:_ @joltz / @yeastplume assuming the RFC matures fast, how much of slatepack can be included into 4.0.0? Or like, what's a reasonable mvp?
   - _yeastplume:_ I think all of it, including encryption, why not?
   - _lehnberg:_ Oh that would be amazing. That would give us a full six month period + another hard fork to fix any flaws. That's really great.
   - _joltz:_ Yeast went into beast mode and much of this already seems implemented in a pr.
      - _lehnberg:_ Beastplume.
         - 😶: _antiochp_
         - 😁: _joltz_
         - 👹: _lehnberg, quentinlesceller_
         - 😂: _xiaojay_ 
   - _yeastplume:_ Sounds like a rival tribe.

- _yeastplume:_ Anyhow, will get that all coded according to the rfc, tweak, refine as much as we can before 4.0.0 then see how it goes.
   - _joltz:_ Will you communicate with me any areas that can be cleared up from implementation perspective? As they come up.
   - _yeastplume:_ Definitely, will likely have a set of changes once I'm done the first round of implementation.
      - 👍: _joltz_

### 5. Decision: Deprecate http(s)
- _yeastplume:_ I'm in favour of this provided:
   1. slatepack proves to at least be better than what we have now
   2. lock-free transactions are implemented soon after 4.0.0 and is proven to work.

- _joltz:_ The timeline is include warnings about deprecation in 4.0.0 and fully deprecate in 5.0.0?
   - _yeastplume:_ Yes.

- _yeastplume:_ And also, that we're prepared for it with some recommended practices for exchanges on why we made these changes and how to migrate.

- _lehnberg:_ I'm definitely in favour of including a deprecation announcement message as part of 4.0.0. We can always retract if slatepack fails to be the savior We have been wating for.
   - _joltz:_ Yes we are not forced into a corner we can't get out of until 5.0.0.

- _tromp:_ In addition to warning, can we require a flag --unsafe for continued http operation in 4.0.0?
   - 👍: _joltz_
   - _yeastplume:_ For http, sure.
   - _quentinlesceller:_ Can we just put a warning and not break anything for v4.0.0?
      - _lehnberg:_ Yeah I guess any http automated flows might be disrupted by `--unsafe`. Yeah I'd be in favour of not breaking anything.
          - _quentinlesceller:_ Yeah.
      - _tromp:_ The idea is to start introducing small pain points.
      - _lehnberg:_ Would it make a difference if local network was not requiring `--unsafe`? Or is that still not good enough?
      - _quentinlesceller:_ No unsafe flag for now just a big warning would be enough imo.
      - _lehnberg:_ Guess might be hard to determine what's local here.
- _quentinlesceller:_ With that in mind I agree to go through the http depreciation route as @yeastplume mentioned.
   - _antiochp:_ 👍
- _yeastplume:_ Think this is consensus?
- _joltz:_ 👍 We can blame me if this doesn't go well. 🙃
- _yeastplume:_ Carried and no-further can kicking.
   - 🥫: _lehnberg_

- _yeastplume:_ For anyone on Exchanges who might be watching, we feel your pain, but believe this is better for the long term-health of grin. Exchanges should not be requiring clients to run http(s) listeners to withdraw funds, and we're coming up with a solution to make the locking of outputs in a wallet far less painful, which I think is a large reason why Exchanges may have decided only to implement the only synchronous method available.
- _joltz:_ Yes, one of the major goals is reducing required efforts from engineering and support teams. I want support tickets around tx trouble to be 0!
- _lehnberg:_ Yes, the wider ecosystem will benefit from having one way of talking to each other, one that doesn't rely on single point of failures. It would have been great to have had all this figured out before mainnet launched, but i believe the solution has become more informed after seeing usage in the wild.
   - 👍: _yeastplume, joltz_

### 6. Status of [Grin v4.0.0](https://github.com/mimblewimble/grin-pm/issues/248)
- _yeastplume:_ I want to break protocol entirely and say I think we need **another p2 wallet issue**, which is `ensure 4.0.0 offset selection is future-compatible with lock-free transactions`. If we want a chance at having lock-free transactions in the wild and tested for 5.0.0, this needs to be in place. It's not huge, It just means that we need to standardize on when the offset is chosen (at the beginning of signing round 2) instead of the current whoever's in first method. No issue created just yet. It's still bubbling. Also ensure the offset isn't applied to anyone's blinding factors as it currently is, instead of being passed around.
- _lehnberg:_ Is this consensus breaking? I'm worried we'll rush and miss something important and break transactions or make them unsafe or something.
- _yeastplume:_ No, when transacting with v3 slates, it will use the old method. When v4, it will use the updated offset selection. And the period whereby v3 will need to be supported will be short.
- _tromp:_ I fully support improved offset selection.
- _lehnberg:_ Will @tromp be available to sanity check the approach?
- _yeastplume:_ Yes he will.
   - 🚀: _lehnberg_
- _yeastplume:_ He will likely in the same place he is now for quite some time to come.
- _lehnberg:_ Okay, adding `improved offset selection`. Unless there are objections?
   - 👍: _joltz, yeastplume, tromp, antiochp, mably_

- _lehnberg:_ Shall we go line by line on rest?
   - _yeastplume:_ Sure.

- _lehnberg:_ Cuckaroo tweak | @tromp I presume is on track.
   - _tromp:_ Cuckarooz is not finished, still needs cuda impl (not so easy) and grin-miner impl (easy).Hope to have them done by end of month.


- _lehnberg:_ Compact slates | @yeastplume | https://github.com/mimblewimble/grin-wallet/issues/317 https://github.com/mimblewimble/grin-rfcs/pull/49. @yeastplume asked for reviews yesterday.
   - _yeastplume:_ Yes, apologies for the size of it.
   - _lehnberg:_ Any ideas on how we could test this?
   - _yeastplume:_ You should just be able to check out the branch (or pr) and work away wIth It as usual. It should also be fully compatible wIth v3 wallets.
   - _lehnberg:_ So what should we try to test here? Some transaction building between us? Anything else? Anything specific?
    - _yeastplume:_ Nothing specific. The only real effect of the change is the compact the slate and workflow, but there shouldn't be much apparent to users just yet. So the usual transacting and transacting with older wallet should suffice. The slatepack changes will be more visible, that will involve command-line changes to how slates are sent.
   - _quentinlesceller:_ Will have a look but it will takes a while to review.
   - _yeastplume:_ Sure, understood.

- _lehnberg:_ Parallell ibd, @jaspervdm is not here but passed on that it was on track.
   - 👍: _antiochp_

- _lehnberg:_ Deprecate node api v1 | @quentinlesceller. That's merged I see.
   - _quentinlesceller:_ 👍

- _lehnberg:_ Relative kernel locks | @antiochp.
   - _antiochp:_ Will do final edits to RFC later today. And initial pr up for review - https://github.com/mimblewimble/grin/pull/3303.
   - _lehnberg:_ Is todo here https://github.com/mimblewimble/grin/issues/3288 up to date?
      - 👀: _antiochp_
   - _antiochp:_ Yes, been trying to keep that up to date.
   - _lehnberg:_ Very nice.

- _lehnberg:_ Slate serialisation | @j01tz, @yeastplume 
   armored slates | @j01tz, @yeastplume 

   These should be merged and updated into a slatepack item, yes?
   - _joltz:_ Correct 👍
   - _yeastplume:_ Yes, I think so. Which is underway.
   - _lehnberg:_ Guess we make it p1? Okay leave with me will update after meeting.

- _lehnberg:_ Okay and then we have  announce deprecation for running http listener for external addresses? | @yeastplume, which we said is no longer blocked.
   - _yeastplume:_ This is as good as announced.
   - _lehnberg:_ So it's just a matter of adding that message I guess at this stage?
   - _yeastplume:_ Pretty much. I could also make it play a very annoying sound every time you launch it.
      - 😁: _joltz, quentinlesceller_

- _lehnberg:_ Beta June 02. We think that's realistic? 3 weeks from now.
   - _yeastplume:_ Think so.
   - _joltz:_ Beastplume. 💪
      - 👾: _quentinlesceller_

### 7. Spring cleaning of [grin PRs](https://github.com/mimblewimble/grin/pulls)
- _quentinlesceller:_ There are 23 open prs on the grin repo. Most of them are valid and just needs review.
   - _lehnberg:_ Do we want to add that to the mix pre 4.0.0 releasing?
   - _antiochp:_ What @lehnberg said. Some may be good to go, but maybe not "now".
   - _quentinlesceller:_ Okay. Can we identify the prs that can wait and those that can be merge for 4.0.0? I guess that would drag the meeting for way too long.
   - _quentinlesceller:_ I'm going to compute a list and post it in node dev this afternoon.
      - 👍: _antiochp_
   - _quentinlesceller:_ On my end this one https://github.com/mimblewimble/grin/pull/3315, https://github.com/mimblewimble/grin/pull/3323 (safe to merge).
   - _quentinlesceller:_ https://github.com/mimblewimble/grin/pull/3319 is safe to merge (I need to review it though).
   - _lehnberg:_ 3315 is approved by hashmap already.
   - _quentinlesceller:_ Yep wanted @jaspervdm review since he wrote that code. I need to test it with some other miners (already tested with grin-miner).
   - _quentinlesceller:_ After that I'll merge. I'll come up with a list after in @grincoin.teams.node_dev.
      - 👍: _lehnberg_

- _lehnberg:_ But yeah I guess question is if these might as well could go into a 4.0.1 or 4.1.0. As any change, big or small, will add risk. And we're already looking tight and will have a lot of testing to get done by hf3.
   - _quentinlesceller:_ Yes.

### 8. Releasing: Crates.io
- _quentinlesceller:_ So this is just a matter of pushing grin and grin-wallet v3.1.1 crates.
   - _yeastplume:_ Right, I usually do that on a major release, but missed it for 3.1.1. So will take an action.

- _quentinlesceller:_ Basically I think we need a Release checklist like:
   ```
   1. Correct tagging of Grin in cargo.toml
   2. Grin crates.io Release
   3. Git tag Grin and push tag to trigger ci
   4. Correct tagging of Grin-wallet in cargo.toml
   5. Grin-wallet crates.io Release
   6. Git tag Grin-wallet and push tag to trigger ci
   7. Brew Update Grin and Grin-wallet (Brew bump-formula-pr)
   8. Update packaging repo and Update snapcraft version. Release snap craft
   9. Update website binaries and version.
   ```
   
   Not sure where it should be and whether we can/should automate it.

   - 👍: _joltz, mably_
  
- _yeastplume:_ We should definitely have a checklist for releases. I think parts of it can be automated, others might not be worth the pain, but there should be a documented process. That can be followed by anyone.
   - 👍: _quentinlesceller_
- _quentinlesceller:_ Where do you think it should be documented?
   - _yeastplume:_ I think somewhere within grin-pm should be fine. Then we can have a release checklist for each release.
   - _quentinlesceller:_ Okay I'll do it.
      - 🚀: _joltz_
   - _yeastplume:_ Great!

### 9. Other questions
_None._

**Meeting adjourned.**