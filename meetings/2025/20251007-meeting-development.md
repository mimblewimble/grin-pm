**Community Meeting Notes October 7, 2025**

Grin Governance Council (GGC) Developer meeting held in Telegram GCC channel at 19:30 UTC. Meeting lasted approx. 80 minutes.

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

*   anonymous
*   Wayne George
*   Ckeci
*   SyntaxJak

**Short Summary**

The meeting focused on reviewing ongoing development work. Key topics included the status of a pull request for wallet configuration fixes, the persistent issue of Grin++ nodes banning Rust nodes and its impact on network sync, and the challenge of limited developer time. Other follow-up items such as payment proofs, the Grin GitHub organization, multisig development, node integration with Umbrel/EmbassyOS, and the Cuckatoo reference miner were shortly discussed. 

**Agenda Points & Actions**

https://github.com/grincc/agenda/issues/190

*   Follow-up on Ongoing Issues
*   Pull Request Review Status
*   Developer Updates & Priorities
*   Community Concerns & Network Health
*   Broader Crypto Space & Privacy Coins

__anonymous__: 👋

__Wayne George__: 👋

__anonymous__: 👋

__Ckec__: 👋

**Follow-up on Ongoing Issues**

__anonymous__: We have no agenda topics today, just follow ups:

Follow Up.
* Fixing peers, grin++ node bans Rust nodes.
* p2p: log message sizes; warn on >1x; demote Ping/Pong to debug (#2825) also fixes PIBD Sync bug mimblewimble/grin#3811 PR
* Payment proofs fix.
* Grin Github organization.
* Grin MultiSig
* Grin Node meets UmbrelOs, EmbassyOs
* Cuckatoo reference miner

__Wayne George__: Shall we just go through and discuss them?

__anonymous__: Wiesche you were at the API for grin++ node right, for the Umbrel integration, but not at peer issues I think?

__Wayne George__: I assume that Grin++ is still banning nodes. Is it a case of us needing to investigate it or do we already know the cause?

__anonymous__: I think it is in some cases. Based on what I know from the code it prioritizes speed over inclusivity. This means that nodes that are busy creating for example a .zip file to share chain information (even though this is obsolete), might get banned. Also unstable nodes might get banned. Grin rust prioritizes inclusivity and a minimal foodprint, but it sure is slower because of it. In particular in heading sync.

__Wayne George__: Thanks for the insight.

__anonymous__: I think David knows, the solution is implementing PIBD. He wants to implement it but it is a lot of work and it happens in his free time for now.

__Wayne George__: I suppose there is work that could also be done for PIBD on g++. A handover would be challenging due to how busy David B is and the absence of David T.

__anonymous__: Yes, Grin++ completely lacks PIBD right now. We/I offered finances, but I think time is the real bottleneck.

__Wayne George__: My suggestion is that we ignore that issue until further notice.

__anonymous__: Indeed it is. I am not sure how easy it would be for example for Wiesche to work with the code. But for now lets focus on the Umbrel implementation. Yep, next follow up.

__Ckec__: more than year, this problem persists, blockchain is not a static thing, ignoring such bugs and patches etc put grin a stagnant position, none of people imagined. It is time to call out such things from my side.

__anonymous__: I wish someone had time to fix it, money is not the issue as you know. It is really a lack of time from developers. Perhaps we can ask Wiesche if he wants to work on it after the Umbrel node is released, for now that is even more important, huge boost for the node network 🚀.

__Wayne George__: Quick digression, don't we now have a Python implementation ready for testing?

__anonymous__: We do, we already did, but now it works better and Renzokuken / Marek fixed some bugs which is great.

__Wayne George__: Perhaps it's time to move on from certain old projects.

__anonymous__: I also had a project based on mimblewimble-py but I am for now prioritizing working on grin and grin-wallet.

__Wayne George__: What are you doing with Grin and Grin-Wallet?

__SyntaxJak__: We could implement a ban of grin ++ or would that be counter productive?

__anonymous__: @syntaxjak I think counter productive, rust node also has its issues. Choice is best.

__Ckec__: we can maybe warn users not to use it completely until fixed.

__anonymous__: I think not even that is needed.

__Ckec__: why ? do we have a guarantee it will be fixed ?

__anonymous__: Grin++ still works for me.

__Wayne George__: I haven't actually seen the issue. My g++ node always has connected peers.

__anonymous__: No. but it does not matter, especially since now only few nodes are Grin++, it hardly impacts the rust nodes.

__Ckec__: it is banning rust nodes and blockchain doesnt synch. How is it working for you and rest of others?

__anonymous__: Perhaps it needs an update of its seed nodes 🤔. If you already have working peers in your list, it just keeps working perfectly. That would be a minor fix, we can have look at it.

__Ckec__: how many peers you get?

__Wayne George__: What are you working on with grin and grin-wallet? I currently have 10. 10 outbounds, 7 inbounds.

**Developer Updates & Pull Request Review**

__anonymous__: Nothing to special, a python script to generate grin vouchers, and additional wallet generation options like using BIP39, brain wallets (with slightly better security though). The main bottleneck was that I found it to hard to work with the API and encountered issues with grin rust wallet when specifying directories.. which is part of some bugs that I fixed in this PR: https://github.com/mimblewimble/grin-wallet/pull/732. Basically I came to the conclusion that grin and grin-wallet first need attention before further building stuff on top of it.

__Wayne George__: Very cool. Thanks for your time.

__anonymous__: No problem, I am not the only one busy at work 😁. @syntaxjak Care to tell about your work on: * p2p: log message sizes; warn on >1x; demote Ping/Pong to debug (#2825) also fixes PIBD Sync bug mimblewimble/grin#3811 PR https://github.com/mimblewimble/grin/pull/3811.

__Wayne George__: I would like there to be a place were we can go to see what is being worked on with any updates from the workers. I'm happy to do some work to make it.

__anonymous__: I would like that as well... github projects. I do not have the permission or time to se it up though.

__SyntaxJak__: Sure. I originally thought it was grin ++ nodes causes the stalls during PIBD sync of rust nodes but it turns out that it happens when a node that is expected to send goes offline during the sync step that causes the node to hang. I implemented a minimal soft reset whenever it encounters a the try_send disconnected error that I’m 90% sure is responsible for the stalls. It seems to work now except one time it stills stalled so I could make the reset more aggressive but waiting for further testing.

__Wayne George__: Oh that issue. Should we skip using grin repo and make a new organisation?

__anonymous__: 🚀. Perhaps that would be best.

__Wayne George__: We could always copy a project from it into another if we ever want to.

__anonymous__: In any case, I am not willing to spend time on setting it up. I purely want to focus on the code right now.

__Wayne George__: Okay, I'll make that a task of mine.

__anonymous__: I reviewed it, and I think it is great. For some reason all Header messages were bigger than the size limit, causing issues. Perhaps because header request also include node information I think to avoid pings. In any case, @syntaxjak fix 🔧fixes it. I am looking into Header Sync, if I can make it parallel. At the moment Header request are concurrent (using async package), but not parallel (using different threads to connect to different peers).

__SyntaxJak__: I noticed you tested it and even reverted the header size limit so you could see the warn! Message for yourself, very cool! Ya I was surprised that the message headers are larger than the max but this was never known because until now message sizes were never logged.

__Wayne George__: That sounds promising. Thanks for looking into it.

__anonymous__: I think it fixes the stability issues. So far I could not manage to get my node hanging with @syntaxjak improved node version except for one time when I accidently run out of storage space 😅. The next step would be parallel threads for Header Sync, I think that would reduce the total sync time from 4-8 -> 1 hour approximately, which is not great but acceptable.

__SyntaxJak__: Ya multi threaded header sync might be interesting but could be tricky to implement.

__Wayne George__: I'm sure that the Umbrel work once completed would really help in testing existing node behaviour.

__anonymous__: I tried to AI wing it today, did not work. But I just started, need to read up and better understand the code as well as Rust parallelization. For sure, at the minimum it would boost the network, make it more robust and high quality since those nodes are much better than old Raspberry Pi's, which accounts for quite some of the current Rust nodes.

__Wayne George__: I'm looking forward to a visualisation the network. I remember the node map.

__anonymous__: Yes, what Wiesche has shown so far looked really awesome.

**Other Follow-up Items & Wishlist**

__Wayne George__: If were ok to move on, next item to discuss is payment proofs. https://forum.grin.mw/t/grin-product-wishlist/9704/61. Not sure what has been said recently about this.

__anonymous__: Regarding other Follow ups:
* Payment proofs fix (contract branch).
-> I wanted to work on this, but for now I am busy with the node and seeing if I can improve Header Sync
* Grin Github organization.
-> Anyone, feel free to take this one, I just do not want to spend time on it
* Grin MultiSig
-> Vlad ooo vlad, where are you?
* Grin Node meets UmbrelOs, EmbassyOs
-> we can ask Wiesche if there is any update
* Cuckatoo reference miner
-> I think Thomas just took on a slightly too ambitious project. It requires quite a lot of time investment and mathematical knowledge to properly understand Cuckatoo.
Feel free to comment on the above update, or we can discuss the Wishlist?

__Wayne George__: Looks like the Payment proofs fix (contract branch) was planned work for Yeastplume. Which obviously he isn't doing any longer.

__anonymous__: It is already implemented in the contract branch, there is just a bug when using RSR flow (Receiver Sender Receiver). It might be very little work or a lot. I does require some reading to get into payment proofs.

__Wayne George__: I plan to look at Github organization within the next two weeks. Is fixing it something that we want to prioritise? I guess I don't know what it would be used for right now.

__anonymous__: Not really, I first want Header Sync to be better and the current Pull Request to be merged - high priority tasks. I would call fixing that bug and further testing the contract branch - medium priority tasks. Ckeci Can you add checking the seed nodes for Grin++ as a #TO DO? Might be very little work while fixing the zero peers issue for Grin++.

__Wayne George__: RE: Grin MultiSig. What did Vlad last say?

__anonymous__: I think @ardocrat asked him, not sure about the reply if there was any.

__Wayne George__: Following up with Vlad should be high priority IMO.

__anonymous__: https://t.me/Grin_Governance/2278. https://t.me/Grin_Governance/2461. A bit conflicting indications 1) Ready to work on Grin 2) He is probably busy. I think it is 2) at the moment, he is just busy.

__Wayne George__: Any news on this @ardocrat? That was in August. Maybe it can be his next job.

__anonymous__: It could be - but wait, we first needed a RFC (Request For Comments - basically a proposal).

__Wayne George__: Yes that's where we can ask him to start.

__anonymous__: True, but it would require community and governance council to agree to pay for an RFC. Until now I think we only paid for development, not for RFC's.

**Broader Crypto Space & Privacy Coins**

__Wayne George__: Unless others want to continue or discuss anything else, I'd like to discuss the current crypto space in general and Zcash.

__anonymous__: I would be fine paying for a RFC if it would be workable. The problem is, what if someone makes and RFC and we simply would not agree with it. Something similar happend with the Atomic Swap implementation in the past. I am fine to move on, lead the discussion.

__Wayne George__: I heard some on X talking about a recent price move with Zcash and made me think. It's very interesting how it seems accepted due to it's optional privacy feature. Accepted by exchanges I mean.

__anonymous__: I think Zcash is banned in Europe. Just like other coins that are very privacy focussed.

__Wayne George__: I thought I saw it on Coinbase UK, I'd need to double-check.

__anonymous__: Ok, suprising.

__SyntaxJak__: Seems like the current narrative in the cryptosphere is privacy coins in general. Most privacy coins are experiencing extremely positive price action, including grin.

__anonymous__: Not too surprising considering how much privacy coins had a completely lack of attention in recent years. When you are rock bottom, you can only go up... For Grin's acceptance at exchanges, payment proofs are very important in my opinion.

__Wayne George__: I wonder if Litecoin adding MW put any strain on their relationships with any exchanges.

__anonymous__: Since they allow you to proof you send the coins.

__Wayne George__: If there was enough usage, I'm sure exchanges would want to start capitalising.

__Ckec__: mweb is banned all exchanges. NOt used at any CEX.

__Wayne George__: So that would be a good reason to sort out the contract branch bug.

__SyntaxJak__: It doesn’t seem to matter too much that mainstream exchanges are scared of privacy coins, they will fold under pressure if people decide they want privacy. Just recently a new exchange opened for grin and currently has a 20,000 dollar order for grin on it!

__anonymous__: I think it mostly depends on regulators. If regulators only check at the gate (what go's in and out of peoples accounts), there should be no issue with allowing privacy coins. This is basically also my point of view on how privacy coins should be allowed and regulated. If you want complete transparency of transactions to have 100% proof no money laundering is possible,.. yaaa that is not possible with privacy coins, but neither is cash completely tracible for intermediate transactions, only when withdrawing or depositing.

__Wayne George__: Oh I didn't know that. I suppose it works as an additional layer outside the exchanges anyway.

__anonymous__: Wow, I do not think I ever saw that much even on Trade Ogre.

__Wayne George__: It seems highly likely that the monetary system will get worse and drive the demand for real crypto.

__anonymous__: It largely depends on politicians and policy makers. Trump appears to be very pro crypto (even though he does not understand them and only wants to profit from them). This might push regulation of crypto to be more inclusive and permissive to all projects. In Europe it is a bit unclear. I think regulators are still afraid of actually taking on the responsibility of regulating privacy coins, therefore they push them and their users more into unregulated territory - a mistake if you ask me.

__Wayne George__: I think the reason for shading privacy coins is that they put the income of governments at risk.

__anonymous__: How so?

__Wayne George__: I think that they would love to eliminate cash. So all income can be taxed accordingly. Privacy coins would make tax a lot harder to collect.

__anonymous__: I think there should be no issue as long as you "check at the gate". When money appears, people still pay taxes on them, and if money that appears cannot be explained, it can be seen as money laundering, no issue. Regulators actually mis income, many crypto owners are afraid to come clean - afraid regulators will get everything they have.

__Wayne George__: I think the reaction to Tornado Cash was a big clue. I believe it's more about tax avoidance than preventing crime.

__anonymous__: I know someone who has a lot of crypto, now wants to spend it to buy a house and pay taxes and everything, but regulators mark crypto as foreign investments and ask huge penalties. He is afraid nothing will be left, hence he is forced into keeping his crypto out of the legal system, no tax is paid. He loses, the tax office loses.

__SyntaxJak__: I think government regulations are the catalyst that is causing the privacy coin super cycle. I notice basically stable coins are always usd, there’s no Canadian dollar stable coin or yen etc. in my opinion all government currencies will collapse to hyperinflation and we will be left with us dollar backed stable coins and privacy coins. Btc may fail soon with this whole op_return drama.

__anonymous__: True, they can do illegal things legally 😉.

__Wayne George__: Yes, the op return issue is insane.

__anonymous__: My main point is that everyone loses when there is too strict regulation (or worse, banned), also the regulators lose. "You can only catch a bird with an open hand, not with a closed hand." I think we can wrap up this meeting officially, but feel free to continue the discussion.

**Closing Remarks & Future Ideas**

__Wayne George__: My last question is, what everybody thinks about a grin wallet using Nostr? It seems like a great idea to me as a way for people to connect with each other.

__anonymous__: I think it would be interesting to have an integration especially on mobile. Can a grin address not only be a pubkey hiding as a tor address, but also functioning as a nostr address, who knows 🤔.

__Ckec__: davidtavarez was thinking about grin++ & Nostr but cooled off.

__Wayne George__: Certainly food for thought.

__anonymous__: Not too many people jumped on the idea at that time. I also see some downside, but I think it is definitely worth exploring. However, it is not high priotiy, medium priority at best.

__Wayne George__: Thank you all for a great conversation tonight.

__anonymous__: Thank you all.

**TO DO List**

*   Check seed nodes for Grin++ for peers issue.
*   Continue review and testing of critical Pull Requests ( wallet config fixes, P2P message logging).

*   Explore options for progressing Grin MultiSig RFC ( contacting Vlad, funding an RFC).
*   Consider using GGC BTC fund for bounties or part-time developer.

Meeting adjourned.
