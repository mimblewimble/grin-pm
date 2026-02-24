# Meeting Notes: Development, Feb 04 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

- antiochp
- joltz
- lehnberg
- quentinlesceller
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ We're between major releases, so many smaller fixes and improvements gone in the past couple of weeks. the world has been introduced to the nkotb relative lock (which you can read all about in the node dev channel,) and I've been plugging away at bits of wallet functionality, with the interactive command line mode soon to be introduced into grin-wallet master.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/246) reviewed and accepted.

### 3. Action point follow-up

#### 3.1 Research linking commitments in grinscan.net

- _yeastplume:_ @jaspervdm is not around, so we may have to just leave him a 🔔 and move on.

#### 3.2 Triaging research

- _lehnberg:_ I started looking into triaging best practices in open source. It's one hell of a rabbit hole. Leads to deep soul searching questions and existential angst. Can't say I'm any wiser yet. But yeah, it's not a very fun topic, so not planning to have it drag on for ever. If anyone wants to help out and/or toss ideas with me, feel free to reach out.
  - _yeastplume:_ Okay, given we only raised it last week and it's up there with the writings of camus, we'll only give you half a bell.

#### 3.2 4.0.0 timelines doc published?

Actioned: https://forum.grin.mw/t/grin-v4-0-0-network-upgrade-hard-fork-3-july-2020/7001

#### 3.3 Build docs updated no min rust version?

Actioned: https://github.com/mimblewimble/grin/pull/3219

#### 3.4 Use of stable tag?

- _antiochp:_ Not actioned yet, self 🔔

### 4. Planning

#### 4.1 Grin v3.1.0

- _yeastplume:_ I think last time we were questioning whether we needed a 3.1.0 release of the node

  - _antiochp:_ Right now there is no pressing need for one. So no need to schedule one I don't think, but good to leave the option open.

- _yeastplume:_ On the wallet side, still good here for 3.1.0 around the beginning of march, see here https://github.com/mimblewimble/grin-wallet/milestone/7 . But other than that, I guess there's no real need for planning?

#### 4.2 Grin v4.0.0

- _lehnberg:_ There's also 4.0.0 planning coming up in some weeks / dev meetings: https://github.com/mimblewimble/grin-pm/issues/248. @yeastplume have you had a chance to review https://github.com/mimblewimble/grin-wallet/issues/317 in that context? Do you think 4.0.0 could be suitable to target some kind of rethink in some of the tx building process?

  - _yeastplume:_ I have read it and gave it a minor think but not much more than that. Certainly happy to rethink it for 4.0.0, there was some other discussion earlier about only sending the kernel to the recipient... and this is kind of counter to another notion I have about making slates entirely self-contained, even storing encrypted private keys each party needs instead of requiring the wallet to store them during a transaction.
    - _antiochp:_ I'd be wary of storing encrypted private keys just to make the slate self contained.
    - _yeastplume:_ They're just ephemeral keys for the schnorr sig, it also limits the flow a bit, since the final tx can only be posted then by the initiator, but happy to discuss more in advance of 4.0.0.
    - _antiochp:_ Yeah - no need to discuss right now
  - _lehnberg:_ Yeah I think it could be worth while to open up the thinking and have a wider discussion about what the "right way" is here. Considering as many trade-offs as possible. Privacy, bandwidth, ease-of-use, etc

- _yeastplume:_ Okay, so we'll leave major planning discussions till 4.0 and wing a wallet release in the meantime (there won't be any breaking changes).

### 5. Testing

- _yeastplume:_ Right, so there are a lot of holes in our automated testing strategy at the moment. Firstly, we don't really have any automatic integration testing for the node, even at a basic level. When the wallet was split from the node, the tests no longer worked without creating circular deps and were more or less archived into the wallet project. Those tests are badly maintained and very basic, so there's quite a bit of work needed to update them. It might result in more payoff to put together a more coherent strategy for integration testing. Given we have grin and the grin wallet in separate repos with the wallet dependent on grin, we've also had issues where changes in grin weren't picked up and tested, leaving a surprise or two to resolve around release times or when things get busy. I'm sure it's possible for commits to trigger upstream builds, it looks as if we're going to need a separate testing module to pull in every thing and run a set of integration tests on commits... unless anyone has any better or more creative ideas

- _joltz:_ My understanding is that since the node is a binary crate it is meant to be run on its own without integration tests. To test here I think we would create an api testing harness or something similar to what btcsuite does with its rpc testing harness for its node like https://github.com/btcsuite/btcd/tree/master/integration/rpctest ?

  - _yeastplume:_ Yes, something along these lines might be worth considering
  - _antiochp:_ Think I agree on the separate integration test module/repo
  - _tromp:_ An integration repo seems necessary for running tests with all server-wallet-miner aprts
    - _yeastplume:_ Yes, the miner as well.. the stratum code isn't under automated testing at all at the moment

- _quentinlesceller:_ I don't think it is necessary. We could trigger a github action that test everything
  - _yeastplume:_ Where do the tests live though? the current integration tests require code from both the wallet and node
  - _quentinlesceller:_ Within grin and/or grin-wallet repo. We could let's say have `/githubaction test-all` command on the pr. That would checkout both grin and grin-wallet
- _antiochp:_ But if we have test code that needs to import both grin_core and grin_wallet, where do those tests live?

  - _quentinlesceller:_ We can have them in grin repo or grin-wallet. Or a third repo if you think it's necessary. We can checkout anything with github action https://github.com/mimblewimble/grin/pull/3187/files#diff-e9f950f17198d3d5e3122a44230a09b9r20

- _antiochp:_ I think the third repo is being suggested because grin-wallet is not an ideal place for putting these tests.

  - _yeastplume:_ Right, that's the reason for the testing repo.
  - _quentinlesceller:_ I see what you mean however having it in the same repo allows us to test pr before merging.

- _joltz:_ Shouldn't grin-wallet have separate integration tests as its meant to be a library as opposed to the binary node?

  - _yeastplume:_ Grin-wallet has integration tests that run against a mocked-up node on the filesystem, they're okay where they are
  - _yeastplume:_ However, running against a live node and exercising the extremities of the http endpoints isn't considered in those tests
    - _lehnberg:_ Wouldn't that be better if possible?

- _antiochp:_ And putting them in grin repo is hard because we need a dependency on grin-wallet (which itself has a dependency on grin)

  - _quentinlesceller:_ It's really not that hard, you just need a new workflow file https://github.com/mimblewimble/grin/pull/3187/files#diff-e9f950f17198d3d5e3122a44230a09b9
  - _antiochp:_ Sure, but you still need to satisfy the import dependencies. The third repo makes this cleaner, I'd argue
  - _quentinlesceller:_ Ah you mean modifying the cargo? Arguably cleaner with a third repo but less usable as we won't be able to test completely pr before merging.
  - _yeastplume:_ Right, but if that third repo also contains more advanced tests, or becomes a testing harness, it will become a bit too cumbersome for people to run on their local machines anyhow.
  - _antiochp:_ I guess ideally we'd be able to configure this test harness to build and test against local versions
  - _quentinlesceller:_ I don't have a strong opinion on this btw :) just looking for the most efficient way. Ideally we should have integration tests in grin repo and let’s say grin/grin-wallet in a third repo . So agree with you @antiochp .

- _yeastplume:_ Wallet needs node, miner needs node. practically, trying to write integration tests for the node without the use of the wallet would be quite frustrating.
  - _joltz:_ Since the grin node is not a library I don't think it is meant to have integration tests according to rust documentation. to test the grin node here I think we would build a testing harness to hit the api (where unexpected stuff would happen).
  - _yeastplume:_ @joltz okay, I'm on the same page just differing in the definition of integration test vs 'rust integration tests'. So, yes, a harness kept in a 3rd repo that spins up small network, starts the miner, uses the wallet and exercises the apis as well as possible seems like the way to go.
    - 👍: _quentinlesceller_
- _yeastplume:_ And whose build is triggered every time code in either changes.
  - _joltz:_ It could even be kept in the node repo if we make a simple mock wallet. I don't think we need to test full wallet functionality in the node "integration" tests. I guess if we want a harness for the miner too it could make make sense to break out into its own thing.
  - _yeastplume:_ Would still be duplicating a lot of code from the tx building in the wallet. And yeah I'd see this growing into a much larger test harness
    - 👍: _joltz_
- _yeastplume:_ We also had a lot of issues with testing way back when, particularly when spinning up a load of servers in the same rust test process, ports would conflict all the time, ci servers would complain about open too many sockets, etc.
- _antiochp:_ Vs tags vs master vs branches etc. So we can test master grin-wallet against a local branch/pr of grin node, for example.
- _yeastplume:_ The integration repo could go as far as spinning up a small docker network.
- _yeastplume:_ Okay, think we're agreed on the strategy anyhow. perhaps we just start with a 3rd repo than runs some basic tests, then figure out how to get the tests triggering on commits.

  - 👍: _lehnberg, joltz, antiochp_

- _yeastplume:_ Does anyone feel strongly about taking that action?
  - _joltz:_ I'd take it with someone else. Eventually it would be nice if I could get the security team to maintain it etc.
  - _yeastplume:_ That's a really good point, do you think the overall task can be taken by the security team? We're not intending to have this next week, so there's time to get the plan sorted out.
  - _joltz:_ Sure 👍
- _lehnberg:_ Is it security, or is it QA though? 🚴‍♀️
  - _joltz:_ (well don't want to speak for everyone before the team has formed). Bit of both I'd say. Would love if we had QA for it but just have a feeling it won't get touched until security does :p
  - _yeastplume:_ Definitely QA, could make an argument for security. And generally, you'd expect the response to the question 'who wants to head up a QA team?' to be rather muted.
- _lehnberg:_ So I'd rather see if we could spin up a QA team and grow that (in addition to the security team). As this (in theory) should be a bit more inclusive and easier for brand new contributors to pick up.
  - _joltz:_ It would be an excellent onboarding team to development
  - _lehnberg:_ Yeah
  - _yeastplume:_ True. So, who wants to head up a QA team?
    - _lehnberg:_ Joltz does!
      - 😂: _joltz_
- _lehnberg:_ I can help, but I don't know what to do so you'll have to instruct me.
- _yeastplume:_ Okay, look let's document the decision than talk about what team it goes to later, it'll likely be us here doing the work in some form or another anyhow.
- _joltz:_ Sounds good, I'll do a little thinking about QA stuff.
- _yeastplume:_ Excellent @joltz

### 6. Packaging

- _yeastplume:_ /packaging! Anything to report on packaging? there was talking of `./grinup`
  - _lehnberg:_ So yeah last update was that @wnzzz was going to look into it, not sure if there's been any progress there yet.
- _yeastplume:_ Okay, I don't know of anything else on the packaging front.

### 7. Other questions

None.

**Meeting adjourned.**
