# Meeting Notes: Development, Jan 21 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- hashmap
- jaspervdm
- joltz
- lehnberg
- mare
- molimimi
- quentinlesceller
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume_:_ I guess we hard-forked with so little drama that I'm almost bored writing this. Which is a good place to be in. once again well done everyone involved, in the right light, you could almost mistake this for a professional operation. And since then, mostly regrouping and letting the dust settle a bit and some thoughts collect while thinking about roadmaps and future releases. I've been working on some bits here and there for 3.1.0 while trying to start thinking about some of the longer term items and being @tromp'ed in the process.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/241) reviewed, points for 'Triaging' and 'Overlay networks / i2p' added.

### 3. Action point follow-up

#### 3.1 Research linking commitments in grinscan.net

- _jaspervdm:_ Still wip, i expect to have something public by next meeting
   - 🚀: _lehnberg, quentinlesceller_

### 4. Triaging

- _yeastplume:_ I was just now trying to do some triaging of the grin-node, and a few things struck me. There are a lot of open issues in there, many of which haven't been updated in ages (or even addressed initially). I'm not of the opinion this should be the case... a project with many open rotting issues just looks unmaintained. We just had a bit of a discussion in the node_dev channel about what our strategy should be for closing old issues, and how long we keep them around, definitely worth going over if you have opinions here.
   - _quentinlesceller:_ I did a quick pass two weeks ago but definitely agree to close old issue. But some of them are still very relevant.
   - _yeastplume:_ Yes, it becomes hard to tell. I think there are a couple of immediate take-aways though. We haven't been great at addressing feature requests as they come in, so they often rot unanswered leading us to close them. And doubly so for prs, there are quite a few in there that were proposed but just never reviewed or picked up on, I'd imagine this would be horrendously off-putting for anyone hoping to get involved with development in some minor way.
- _lehnberg:_ Maybe we could incorporate some kind of triaging process? I.e. rather than one or two poor souls having to dig through a giant list every three months and close antiquated issues that nobody ever responded to, perhaps some more active process? Maybe sort them in buckets as they come in somehow. And then review bucket contents every x weeks.
   - _yeastplume:_ Yeah, we should get a (hopefully short) set of guidelines as to how we approach triaging issues, and also perhaps build in some pledges to respond to feature requests and prs much more quickly and definitively. Guidelines and process, as you suggest.
   - _lehnberg:_ We probably can learn from other open source projects here. Sounds like a common need. I could do a bit of a review of the space. If ppl have suggestions for projects to look at, shoot them over to me. And then i can put together some source of knowledge
   - _yeastplume:_ Indeed. I mean, there are a lot of research questions on there, then feature requests, then bugs, some of which are against ancient revisions of the code. Do we need 40 issues worth of open research questions that haven't been added to in a year sitting there open against the issue count? Great @lehnberg, sounds like you're taking an action here.
   - _lehnberg:_ Yes - again - great to get some examples of projects that do this well already, so send me your favourite open source projects etc.
      - 👍: _yeastplume, quentinlesceller_

### 5. Overlay networks for the node (i2p, etc)


- _yeastplume:_ Okay, so I innocently asked 'what's the status of i2p' a couple of hours ago, which led us here.
   - _lehnberg:_ I might be completely off here, but i see two areas that would be nice to see improvements in:
      1. encrypting node traffic, to avoid eavesdropping
      2. circumvent the need for port forwarding, to make the entire p2p network more robust
      - _dburkett:_ Obscuring ip and/or transaction origin
      - _lehnberg:_ Yeah that as well, good point
- _yeastplume:_ Right, i was looking at a couple of open issues and (I think 2) largeish prs open concerning i2p work. Are we at a point where we don't think that work will be used, particularly as none of the authors are still around? (sorry, just housekeeping related to this cause i was in triage mode)
   - _lehnberg:_ Is i2p really a viable option?
   - _dburkett:_ @hashmap is still around, and @chisana probably still could be, but I think he left when he realized we wouldn't be using i2p anytime soon.
   - _jaspervdm:_ If we still want to consider i2p integration, I think we would need an rfc for it first
   - _hashmap:_ That's where I dropped the ball:)
   - _dburkett:_ My personal opinion is that it's still a great feature to have, but probably not a super high priority. Totally agree rfc is necessary.
   - _yeastplume:_ I think there was quite a bit of igno work as well there.
   - _dburkett:_ Yea, but i wasn't mentioning igno, because he's obviously not coming back. chisana still could, if we reached out
- _lehnberg:_ And to refresh my memory, the reason why tor is not a good candidate for this was... 
   - _dburkett:_ Not every tor peer is a relay, so by relying on it for large amounts of data, the tor network suffers. I2P, on the other hand thrives with more connections.
   - _lehnberg:_ Ah, and here we're talking about large amounts of data due to ibd?
   - _dburkett:_ Or if we ever get full blocks. But yes, mostly ibd.
   - _yeastplume:_ Right, tor is a relative static network while i2p is designed to have nodes joining and leaving, but that's at the cost of propagating a dht.
- _yeastplume:_ Just backing up a bit, is it an absolute no-brainer slam dunk that it would be a great improvement to privacy and security if we ran grin on an encrypted overlay network? I mean, miners generally want their blocks broadcasted as quickly and directly as possible once they're found, and as many txes in the pool to choose from as quickly as they can get there. Given this, what tangible benefits does allowing an overlay network bring?
   - _dburkett:_ Miners won't use an overlay network. best case scenario, it's only used by a portion of the network (maybe most peers, but probably not all)
   - _lehnberg:_ To me, what's most important is the nat bypassing and encryption of traffic, not necessarily that it's an overlay network. But maybe one implies the other?. And maybe someone wants to challenge why encryption is important? Or maybe even nat bypassing?
   - _yeastplume:_ Encryption can be done without an overlay.
   - _dburkett:_ Obscure transaction origin and no ip leakage for those who live in countries where grin is illegal
      - _lehnberg:_ But this would only be beneficial for those running nodes from these countries, right? in theory they could use a wallet that connects to a node abroad?
      - _yeastplume:_ Indeed, nodes should only be passing public data around anyhow (though the tx graph 'attack' needs to be considered. Yes, and i2p is badly maintained and relies on a lot of outdated crypto.

- _dburkett:_ Fwiw, submitting transactions to a tor hidden service works just as well for obscuring origin, or for anyone privacy-minded that doesn't want it known that they use grin.
   - _yeastplume:_ @dburkett good point, we could just have the pool listen on a tor hidden service
   - _quentinlesceller:_ And isn't it still possible to run grin through tor?
   - _antiochp:_ So we could get much of the benefit by having a few long-lived nodes running behind tor and having nodes/wallets post txs direct to them? Rather than all peer connections via tor.
   - _dburkett:_ I think a private overlay network is absolutely valuable. The question is, valuable enough to dedicate resources now? In my opinion, the answer is no.
   - _lehnberg:_ Would you say the other stuff (encryption, nat bypassing) is valuable enough?
   - _dburkett:_ We see that the benefits are limited to certain people, mostly just privacy junkies. those folks can still run vpns and stuff for now. Nat bypassing is nice. Encryption seems not too important. What's your reason for encrypting?
      - _lehnberg:_ I'm not sure. It just seemed to make sense, but I can't honestly formulate a strong argument for why. An eavesdropper can still listen in on the network no?
      - _dburkett:_ And learn what? assume, for a second, that we're using a tor hidden service that all txs are submitted to.
   - _dburkett:_ I should add a caveat: nat bypassing is nice for promoting a healthy network with more connection options, however it comes at a cost of slower connection. So is it really that much healthier? I don't know.
   - _yeastplume:_ Nat bypassing is nice, but if you're running a node somewhere you should have a bit of technical acumen anyhow, it's far more important for the wallet which is solved. The network and all data in it is public.
      - _dburkett:_ Precisely
   - _lehnberg:_ That's also true. but wouln't we want all (most) wallets to run their own node? (ideally)
- _yeastplume:_ Yes, but wallet nodes can still connect outgoing.
   - _dburkett:_ And maybe the wallet to node connection should be via tor? Encryption is not important in my mind.
       - _lehnberg:_ Okay so that's a good statement for us to have formalized and agreed on if all agree.
       - _jaspervdm:_ Yes, they can and in addition publish tx to another node that is behind i2p/tor/whatever.
       - _yeastplume:_ Perhaps concealing the traffic between a wallet and the grin nodes might be worth looking into, nodes running privately to service.
- _dburkett:_ Does anyone think encryption is important? if yes, why?
- _jaspervdm:_ Node-to-node, no
- _lehnberg:_ So node is running a hidden service in addition to clearweb? Or wallet sends to node via exit node?
   - _dburkett:_ Hidden service, yes. But only important for shared nodes. Not all nodes need this
- _yeastplume:_ Node-to-node, no, wallet-to-node I can see a better case for.
   - 👍: _lehnberg_
- _lehnberg:_ Shared node == hosted node?
   - _dburkett:_ Yes, like the one wallet713 hosts.
      - 👍: _lehnberg_
- _antiochp:_ What about stem txs (not yet public)?
   - _lehnberg:_ You mean nodes would stem to each other via hidden services?
   - _yeastplume:_ Can these be considered 'private' though?
   - _dburkett:_ Ideally, you would design the hidden service tx submission mechanism to support this
   - _lehnberg:_ How do you mean? Perhaps the fluff node runs a hidden service each epoch somehow? It would make the "breaking mw privacy" thing much harder to pull off.
   - _antiochp:_ I'm wondering if that is a category of data that needs to be considered here. I think they should be considered "private" yes
   - _dburkett:_ Nodes could advertise an onion address, you could choose which node to submit to. Derailing a bit, but my long-term design is that all nodes agree on a very small subset of peers to submit transactions to via hidden services. That way there's no need to pass from stem to stem. You just aggregate on one node, and that node randomizes. But of course, that all needs worked out.
      - _lehnberg:_ Some kind of extension of the objective-dandelion thing to incorporate hidden services?
      - _dburkett:_ Yea, we've discussed this design a bit in the past in gitter and elsewhere. 
      - _dburkett:_ I'm convinced it's the best approach, but that doesn't mean everyone else is. So if we have stem nodes as we do today, then perhaps an overlay network is good for that
         - 🚀: _jaspervdm_
      - _lehnberg:_ It's quite an interesting 'ring fencing' of overlay networks: not for ibd/syncing/txhashset, but purely for tx broadcasting between nodes and between wallets -> nodes
         - 👍: _antiochp_
      - _antiochp:_ @lehnberg yes good point - this is likely limited to some subset of tx data
- _yeastplume:_ I think we're kind of decided that smashing everything into i2p isn't quite the right approach anyhow
    - _dburkett:_ Yea, i would agree with that. at least for now, since grin's not illegal anywhere.
- _yeastplume:_ But there's a much bigger discussion around what we think should be concealed (or at least given the option), and how much of a priority it is right now. Given the time, can we move this into the node channel for further discussion?
   - 👍: _antiochp, lehnberg, dburkett_

### 6. Planning

#### 6.1 Status of v3.0.0 / HF post-mortem
- _yeastplume:_ Is there anything we want to talk about in terms of 3.0.0 post-mortem?
   - _lehnberg:_ https://forum.grin.mw/t/medium-severity-vulnerability-sucessfully-patched-in-grin-v3-0-0-public-disclosure-of-cve-2020-6638/ in case people missed it
   - _yeastplume:_ Indeed, and thanks to @joltz and everyone else for handling this professionally and bending over backwards to ensure we adhere to our published security policies, (which is no easy task).
- _dburkett:_ 3.0.0 went well. Network conditions improved quite a bit as a result of everyone upgrading, and no consensus problems.
- _lehnberg:_ Planning wise I think we did a much better job than 2.0.0.
   - _yeastplume:_ Yes, our planning for 3.0.0 went very well, the realistic and well-published timelines helped a lot.
- _lehnberg:_ 4.0.0 is now just around the corner! 😛 But yeah, only two more shots at getting consensus breaking stuff merged in a relatively "easy" way. So we really ought to make those shots count.
   - _yeastplume:_ Definitely
   - _lehnberg:_ Easier said than done though

#### 6.2 v3.1.0

- _yeastplume:_ Starting with 3.1.0, on the wallet-side anyhow the theme is quality of life and stuff that can be got out of the way before bigger slate-smashing hf tasks. Milestone list is here: https://github.com/mimblewimble/grin-wallet/milestone/7 Do we need to sync wallet releases with node releases for minor version increments? For patch level, I think we agreed on no.
   - _lehnberg:_ I would argue it's on a case by case basis. If wallet has enhancements that requires a node upgrade, then they need to be synced. If not, then no.
   - _yeastplume:_ Right, that's more or less what i was thinking anyhow. Is the node likely to want or need a 3.1.0?
   - _lehnberg:_ Or well, actually they don't need to be synced, but the feature might not be turned on until node upgrade is available
- _antiochp:_ I'm not sure there is anything immediately pressing for node to require a 3.1.0 at this stage?
   - _dburkett:_ I'm in the process of writing an rfc for parallel sync using our new header commitment. Probably best to wait for 3.2.0 or 4.0.0 though
   - _jaspervdm:_ I'm moving the node p2p to async/await but I wouldn't call it "pressing".
   - _lehnberg:_ I'd be interested in exploring dandelion-related improvements, but not sure it's for 3.1.0. Maybe even stuff like what was discussed above re tor etc.
- _yeastplume:_ That's fair enough, i mean we can assume we're moving right to 4.0.0 planning as well. But yeah, definitely want a 3.1.0 release of the wallet as well, aiming for about the beginning of March.
   - _lehnberg:_ On wallet planning, would stuff like exchange integrations be included there? We received some feedback from exchanges that the integration process could be made easier for them.
   - _yeastplume:_ Exchange integrations hasn't really been well enough defined
   - _lehnberg:_ What about testing? Is that something that can move independently of releasing?
- _yeastplume:_ The list I have there is tentative anyhow, if you can point me at the exact issues I'm sure I can adjust plans
- _lehnberg:_ Yeah txhashset sync improvements would be a nice candidate. If we think we can get there
   - 👍: _antiochp_
- _quentinlesceller:_ The whole testing framework is definitely something we should tackle too.
   - _yeastplume:_ Yes, probably should have been on the agenda today
   - _lehnberg:_ We can add to other questions in the end. If we have time
- _lehnberg:_ Maybe we should think about when we need to freeze scope for 4.0.0 and work our way backwards from there? I suspect we'll be surprised to see that we only have like two months to pull off a 3.1.
   - _yeastplume:_ We should probably just take the same timeframes from the 3.0.0 release and use those dates, seeing as how they appeared to work well?
- _lehnberg:_ Yes. looking at it now. Scope freeze was 2.5 months prior to fork date, so end of May.
   - _yeastplume:_ Makes sense
   - _lehnberg:_ Which would be like the latest a 3.x would be able to go out. If wallet does a quick 3.1, it might have time for a 3.2
   - _yeastplume:_ Right, I'm thinking wallet 3.1 beginning of march anyhow.
   - _lehnberg:_ And yeah seems like node would not have time for more than a 3.1 if even.
   - _dburkett:_ 3.2 would be nice, since sync changes are non-trivial. Darn
   - _lehnberg:_ Haha maybe i'm wrong?!
   - _dburkett:_ You're probably not. Just wishful thinking on my part. As long as we beta early enough though, we should be ok.
   - _lehnberg:_ Node doesn't seem to have anything for 3.1 at the moment, so can't see how it would release it soon? And if there are bigger items, then it would take longer
   - _dburkett:_ O, are you talking about just postponing 3.1 on the node side?. That would work too
   - _lehnberg:_ Yeah
      - 👍: _dburkett_
- _antiochp:_ If anybody does want to advocate for stuff for 3.1 then now is the chance
   - _lehnberg:_ I mean... we could even say node doesn't do 3.1 at all, and puts all effort into 4.0.0 prep instead. No idea whether that makes sense
   - _yeastplume:_ So node 3.1 is a question mark, slated for no later than end of april if it does exist?
   - _jaspervdm:_ Not sure if it makes sense to define that already
   - _lehnberg:_ Yeah
   - _antiochp:_ We can and definitely should cut a 3.1 on node to include whatever cleanup/improvements there are
      - 👍: _quentinlesceller_
   - _antiochp:_ But timing can be very flexible
      - 👍: _lehnberg_
- _lehnberg:_ But yeah @dburkett when that sync rfc has a first draft, you are very welcome to make it public :)
   - _dburkett:_ Will do. I'm in the process of figuring out the message structures, then can finish the rfc. There's a branch for it in the grin-rfcs repo you can follow. Right now, it's just boilerplate though.

#### Decision: Release process until 4.0.0 (HF3)

- _yeastplume:_ @lehnberg you okay to get tentative timelines down for the release schedule between now and 4.0.0 based on this? 
   - _lehnberg:_ Yes, I can circulate a draft here for 4.0.0 timelines later this week and we can discuss and then  put it on the forum. And release schedule i think for now each of the wallet and node teams to agree on separately unless they need to interact. And if they do need to interact, bring it up here in this channel or in a meeting.
      - 👍: _antiochp_
   - _yeastplume:_ Great. As long as we have a cut-off date for minor releases in advance of an hf release.
   - _lehnberg:_ Yes agreed. And patches (bug fixes) i think is a bit of a free for all at the moment, which is fine. Fire away when it's mandated
   - _yeastplume:_ Carried.

### 7. Adding generic master/beta/stable tags to make build instructions generic and always applicable.

- _lehnberg:_ Okay so @johndavies24 asked to put this on the agenda. Is he here?
   > i would like to add a discussion point about adding generic tags on releases nicoespeon/gitgraph.js#143 so the build instructions could be generic and always applicable. for example git checkout master/beta/stable would always build the expected release regardless of the version we're at. Https://github.com/nicoespeon/gitgraph.js/issues/143
- _yeastplume:_ Personally I don't see what's wrong with checking out the desired tag and building, and i'm not even sure git supports what's described.
   - _lehnberg:_ Separately, this made me wonder. Would it be worth while to do grin nightly releases etc? To get us in the mindset of shipping often and fast? And move away from this release planning that we've been doing for the minor releases. Major ones we're bound by the hard forks.
   - _jaspervdm:_ To me it makes sense to have a "stable" tag, if that is possible
   - _yeastplume:_ Nightly releases yes, and we should be doing as part of testing. 'stable' is the last release in my mind.
   - _antiochp:_ I think we have have an arbitrary tag like `stable` that can "move" over time
   - _jaspervdm:_ Yes, we can point it to the latest release. So if someone is building from source they have "stable" tag checked out
   - _yeastplume:_ We'd need to delete tags and redo them (unless git supports this somehow?)
   - _jaspervdm:_ They can update easily instead of first having to figure out which the latest stable release would be.
   - _antiochp:_ I think git supports this via delete and retag.
   - _yeastplume:_ Yes, I guess this could make sense. It's a bit of an abuse of a tagging system. Btw the whole release process is feeling a bit manual these days, there's a lot there that could be automated.
      - _quentinlesceller:_ What do you mean @yeastplume ?
      - _yeastplume:_ We can talk about it a bit later.. I need to manually update all version numbers in all crates, pr them, wait, tag, upload crates to crates.io individually, etc etc. Not just referring to the actual tag/build, that part is fine.
- _quentinlesceller:_ Btw pushing stable tag is going to do a release. We can opt out for v*.*.* 
- _jaspervdm:_ I'm not a git expert, is there a difference between a tag and a branch?
   - _antiochp:_ @jaspervdm yes, branch changes over time as commits are added to it. A tag points to specific commit. (until it is updated to point to a new commit)
   - _jaspervdm:_ Hm okay, since "stable" changes over time as well, would it make more sense to have a "stable" branch? And merge latest stable release into it
   - _antiochp:_ But i think `stable` will only update over time when we explicitly decide to update the tag? (vs `master` which will update on every pr merge).
- _quentinlesceller:_ Btw this can be a good replacement for azure pipelines and we could enhance the release process like that. https://github.com/mimblewimble/grin/pull/3187 However, I don't like loosing the fact that igno is doing the release :/

- _yeastplume:_ Okay, does someone want to take an action to look into the use of a 'stable' tag?
   - _antiochp:_ I can take a look sure (and stable tag vs stable branch approaches)
      - 👍: _yeastplume, quentinlesceller, lehnberg_

### 8. Add min supported Rust version or not?
- _lehnberg:_ Context: https://github.com/mimblewimble/grin/issues/3192#issuecomment-575755453
- _yeastplume:_ Short answer, personally, no. Some cryptographers would be screaming that we should have frozen the version at launch and not changed without extensive review.
- _jaspervdm:_ In my opinion regular users should run binaries, not compile from source. So if we add a minimum rust version, it would prevent us from taking advantage of new features in rust. So I would say no
- _quentinlesceller:_ Same opinion as @jaspervdm considering we would miss very nice rust features.
- _yeastplume:_ Agreed with jasper, rust moves too fast to just say no to all of the newer features (though we need to acknowledge this does come with some security risks). Mind you the dependency graph provides plenty of that anyhow.
   - 👍: _lehnberg_
- _lehnberg:_ Does anyone have a different view? I can update https://github.com/mimblewimble/grin/blob/master/doc/build.md#requirements to something a bit less precise than 1.34, maybe also encouraging users to consider downloading a release.
   - _dburkett:_ So, I disagree. Precisely because rust changes so much, is it a good idea to have a minimum version.
   - _lehnberg:_ How so? 1.34 would for example prevent us from using async/await
   - _yeastplume:_ The main consumers of Rust changes is the dev team, and we're all willing to deal with any pain that might come from moving along with the current state of rust.
   - _dburkett:_ Well, I guess the answer to this depends. Does rust make effort to be backward compatible? Ok, so then eff it, stick with latest. Because we don't want to prevent those with newer rust versions from building grin.
   - _yeastplume:_ It does make efforts to be backwards compat as far as I've seen.
   - _antiochp:_ I think rust is "forward compatible" and backward compatible via "opt in" stuff.
   - _dburkett:_ Ok, so does that mean that old code will compile under a new rust version?
   - _antiochp:_ Yes, they are very careful not to break things in this direction without long deprecation periods.
   - _yeastplume:_ @dburkett it should do, I can't give you a 100% expert opinion but that's the impression i've picked up over time.
   - _dburkett:_ Then in my opinion, it's better to target a specific version for those who have custom grin versions and potentially automated build processes. Like some exchanges probably don't just have some dude sitting at his laptop building the latest version of grin with their changes. Larger exchanges have big build pipelines for this stuff. Don't get me wrong, for many small exchanges, it is just some dude.
   - _yeastplume:_ Do they? My impression was most of them are happy to wait for official binaries.
   - _dburkett:_ The only one i see post regularly is from poloniex. The rest could be building custom versions. at least of grin-wallet.
   - _joltz:_ Exchange secops aren't that standardized for the most part.
   - _dburkett:_ Ftr, this is not something I'm real passionate about, so if everyone else disagrees, I'm happy to drop it.
   - _yeastplume:_ I can definitely note the downsides, but I think on the whole I don't think we have enough current/tangible reasons to want to stick to a minimum version, and plenty of tangible reasons to not want to put constraints on our dev work.
   - _dburkett:_ Understood
   - _antiochp:_ Hmm actually i'm not clear on backward vs forward compatibility here (and might have confused myself in the process).
   - _jaspervdm:_ As I understood it, once apis are stabilized, they don't change. So that means rust should be forwards compatible.
   - _dburkett:_ Then at _some point_ it would be ideal to standardize on a version. Doesn't have to be now. And it doesn't mean we can't change it either. We would just be more deliberate about version bumps once we do commit to a specific rust version.

#### Decision: No min rust version
- _yeastplume:_ Okay, so i think we're not going to specify a min version for the time being, and tell everyone that `rustup update` is their friend. We can revisit this down the line.
   - 👍: _dburkett, lehnberg, antiochp, quentinlesceller, jaspervdm_

### 9. Packaging 
- _dburkett:_ Don't know what the discussion was supposed to be for packaging, but I have something small to mention. I think it's really great that community members have taken to managing grin packages, like the snap one for example. but... We're trusting those users to not upload a malicious version. So we should be very careful about what we advertise as options for installing grin. When a trusted core dev says "there's a snap package available", most of the community are going to assume that's core/council managed.
   - _yeastplume:_ That's a good point
   - _dburkett:_ Since that's not actually the case, we're taking on a lot of liability. So I don't know if there's an actual action item here, just a very important note is all.
- _quentinlesceller:_ Agree with @dburkett what would be the action item here?
   - _lehnberg:_ I'm still thinking we should just a bash script and forget about third party release platforms
   - _yeastplume:_ So we should probably just refer people to the list of packages, which should have 'community managed' using the <flash> tag.
      - _lehnberg:_ Why doing this at all? I can see the downside, but what's the upside?
   - _dburkett:_ The only action item i could see is a bash script like @lehnberg mentioned, and even a custom updater, if we ever get to it. If the shell script is universal (at least for osx & linux), then that should probably be sufficient. Windows users don't use package managers
   - _yeastplume:_ Not against a ./grinup either
      - _dburkett:_ Right, we should get software signing keys and check signatures and stuff when we do finally get to this.
- _lehnberg:_ If community wants to manage third party package managers, they are free to do so, but we don't need to promote it.
   - 👍: _dburkett_
- _yeastplume:_ Okay, all noted, thanks!

### 10. Other questions

#### 10.1 Roadmap
- _lehnberg:_ Just a quick one that there's a roadmap rfc still open. Https://github.com/mimblewimble/grin-rfcs/pull/38 Feel free to review, feedback, share thoughts in the comments. And if you think it's stupid to have one, you can say that too.
   - 👍: _yeastplume, quentinlesceller_

#### 10.2 Testing

- _yeastplume:_ Can we put that point into the next meeting? I honestly haven't given it proper thought.

**Meeting adjourned.**
