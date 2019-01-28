# Meeting Notes: Development, Jan 22 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c47302483189945242e2fd1). Meeting  lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* davidburkett
* garyyu
* ignopeverell
* jaspervdm
* kargakis
* karenhsumar
* lehnberg
* mcdallas
* newtownf1
* quentinlesceller
* rentenmark
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
_igno:_ We launched mainnet. Most of the development activity has been preparing for it, and then dealing with some of the obvious loose ends afterward.


### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/41) accepted.

### 3. Action point follow-up
No action points reviewed.

### 4. Post-mainnet evaluation

* _igno:_ Overall it seems it's gone well, we got a little lucky on initial difficulty too and it behaved as we hoped for. What didn't go as well was the absence of min difficulty in our miner and stratum implementation, nothing enforcing any sort of difficulty on the shares. That was fixed rather quickly at least, thanks to @yeastplume and @hashmap.
One issue is that in the rush of mainnet, we have several issues that would be good to examine (like wallet state corruption) but not much detail about them and particularly how to reproduce them. So it would be good to get more detailed reports for bugs that are deemed important.


### 5. Grin v1.1.0

* _igno:_ The great majority of what we're going to be doing now are:
   1. perf, stability and security improvements
   1. actual functionalities (a few)
   1. support an ecosystem

* _bladedoyle:_ Would be nice to have a way to backup a wallet's transaction data without stopping all the services first. Export/import functionality.
   * _igno:_ Would be useful, can you create an issue for that?

* _kargakis:_ It would be good to address backwards compatibility with the new wallet API.
   * _yeastplume:_ Yes, agreed. Honestly, the current wallet REST api is a stopgap, it just kind of grew and isn't really fit for purpose. The V2 release will be more carefully thought out. Backwards compatibility will be there, a `/v1` endpoint and a `/v2` endpoint, and we'll give developers a certain amount of time to switch to V2 before killing v1
   * _hashmap:_ Do we really need RPC API for the wallet? Perhaps just C bindings will do.
      * _rentenmark:_ This practice was started by btc core, it is common across almost all node implementations, and also makes for a nice cloud deployment environment. If we don't create one, others will need to create one for microservices.
      * _igno:_ You eliminate a lot of people with C bindings, seems that JSON/RPC is one of the thinnest thing you can do on top of that for people who'd have difficulty with direct bindings.

* _hashmap:_ We also need to start thinking about how we manage changes in our Rust code. Rust native API needs to be versioned as well.
   * _yeastplume:_ Good point, but the versioning should be one and the same. The idea is to generate the json rpc stubs right from the rust APIs.

* _yeastplume:_ Perhaps we should consider splitting the wallet out into a separate build. It can be done relatively soon, I'll look at it once any existing wallet-related PRs are merged.
   * _ignopeverell:_ yes, perhaps more like grin-miner. This would:
      1. Make it more easy to run a node without a wallet
      1. Help 3rd party wallet developers
      1. Allow the wallet to be on a different release schedule

* v1.1.0 scope: Dandelion++, relative time locks, wallet split, sounds like a good start. FlyClient wouldn't be a bad thing either, but not crucial.
   * _igno:_ I think we can keep our usual "work one what you think is important and we release when it's ready" type thing.

* Timelines: v1.1.0 has no exact timeline yet, it should come after a couple of months, but v1.2.0 and v1.3.0 may take longer, up to 6 months each. 

#### Decision: Define approach for releases
1. Each come up with a few things they think are important and are willing to work on
1. These are refined depending on complexity, work begins toward an implementation
1. Releases cherry pick from those and how they converge. Agreeing on what to pick can be a discussion.

### 6. Add templates

#### Decision: Add issue reporting templates
Igno to take a stab at creating reporting templates with some simple guidelines to improve the quality of issues created.

### 7. Co-ordination and encouragement of application development

* _karenhsumar:_ gavinmcdermott suggested this as a way to co-ordinate work between 3rd party developers and projects. Wallets is at the top of the list. Cold storage, and interfaces with exchanges were some other projects people wanted to collaborate on. We can get feedback from the community and come back to this group with a summary 
   * _igno:_ From the dev team standpoint, it's mostly going to be taking feedback from application teams and try to be helpful and support them with easy to use APIs. I think it would be great if a group coalesced and served as an entry point to provide that feedback.

### 8. Other questions

#### 8.1 Decision: Pull Request reviews

* Dev team is going to have to shift their time towards doing more PR reviews. Both because we're likely to get more of them from that ecosystem of developers, and also because we need better PR scrutiny.
* Following mainnet release, the bar for having PRs accepted has been raised:
   * A quick fix or quick feature that doesn't think through all the current and future possibilities, have proper tests included, proper documentation etc, is not likely to be accepted.
   * We will prefer guiding over rejecting. But when people submit a PR, that we then provide feedback on what need to be done and the author then disappears, it will be closed.
* [ ] Yeastplume to update `CONTRIBUTING.md` to reflect this.

#### 8.2 Grin v1.0.1 timeline
Soonish.


**Meeting adjourned.**
