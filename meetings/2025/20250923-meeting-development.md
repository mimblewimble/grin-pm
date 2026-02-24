**Community Meeting Notes September 23, 2025**

Grin Governance Council (GGC) Developer meeting held in Telegram GCC channel. Meeting time 19:30 UTC, duration not specified.

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

*   anonymous
*   Wayne George
*   transatoshiツ grinminer.net
*   Ardocrat


**Short Summary**

This was the first developer-focused meeting in a long time. The discussion centered on the current state of development, the major bottleneck caused by a lack of senior developers to review and merge pull requests, and the challenges with project management due to inaccessible GitHub repositories. Developers shared their current projects, including a pull request for wallet config fixes, a C32 CPU miner, and Grin wiki updates.The stale and open pull requests in both the `grin` and `grin-wallet` repositories  mentioned The meeting explored ideas to regain momentum, such as using the GGC's BTC fund for bounties or hiring part-time/full-time developers, and concluded with a technical discussion about database library update to improve wallet performance and maintenance.

**Agenda Points & Actions**

https://github.com/grincc/agenda/issues/189

*   Project & Developer Updates
*   The Pull Request Review Bottleneck
*   Project Management & GitHub Organization
*   Developer Resources & Onboarding
*   Developer Funding & Motivation
*   Technical Discussion: Wallet/Node Performance (DB update)



__anonymous__: 👋

__Wayne George__: 👋
Is it gonna be a quiet one

__anonymous__: Any more old, new, or aspiring Developers in the house?
I guess for now it is the two of us?
I think so. Lets get started non the less.

__aaa__: I love grin, thanks to all the developers and governance working on this

__anonymous__: Welcome to the first developer meeting in a very, very, very... long time 🧙‍♂️

__Wayne George__: Sure. Just give me 2 mins while I get to my desk

**Project Updates & Project Management**

__anonymous__: 1. What is everyone working on?
What would you like to work on and what time-frames are we expecting for each.
☝️What I mean with this topic is to discuss not only what anyone of us is working on, but where our interest are.
For myself I am rather torn on what to work on:
-In the last year in my spare time I worked on this Pull Request to fix all config generation issues. I thought it would take me 3 days...I underestimated it. Now after 6 months its ready for Review:
https://github.com/mimblewimble/grin-wallet/pull/732
I am currently torn what to work on.
1) I want to fix this issue with grin-wallet that it is not showing the grin... slatepack address when running grin-wallet listen
2) I feel like it is very important to fix the slow Header Sync of the node, yet P2P messaging is a bit out of my comfort zone
3) I also really feel like starting to test and review and fix some of the last issues in the Contract branch

__transatoshiツ grinminer.net__: I made it

__anonymous__: Welcome

__Wayne George__: In terms of agenda 1, are we still aiming to have a single place to keep a record of who's working on what ?

__transatoshiツ grinminer.net__: I would appreciate that. Everything feels scattered to the winds

__anonymous__: Yes. I do have an overview, but I have no way of sharing it since it is completely unclear who will give everyone access to https://github.com/mimblewimble/grin-pm so we can start using github projects.

__Wayne George__: I propose we still push for utilising the grin-pm repo

__anonymous__: I agree. But someone who has the power has to make the changes. I am powerless in that I do not have admin rights.
I could just start a project there I guess, but someone else has to give the access to the Project

__Wayne George__: I suppose we can just do pull requests to it, right?
Yes, the project would be the difficult part
Should we just make a completely new repo? Say in the grin CC organisation
Or perhaps just make a new organisation
GGC

__anonymous__: But above I listed what I worked on and what I want to work on.
Is there anything any of you want to work on in terms of grin, grin-wallet, reviewing pull request, other things grin related?

__Wayne George__: So then we can just crack on

__transatoshiツ grinminer.net__: I am working on a C32 CPU miner currently
I will fix grin-miner to compile again and add the plugins

__anonymous__: Perhaps the fastest way would be a new organization. I do not have full admin rights for github.com/grincc either.
@transatoshi_grinminerdotnet is that usefull? Well perhaps if you search for smaller graphs 🤔, but not for C32 graphs right? I mean it would take to long

__Wayne George__: I did mention in the private channel that I had some time availability. That does still stand, however I'm unclear on the way to approach starting any work

__transatoshiツ grinminer.net__: It's just for testing. It just needs 2GB per thread so it can be run on pretty much anything nowadays
I am in the middle of testing a pool I built, and it would have ben nice to have
But I get my G1 minis back in 2 weeks so I will use it til then

__anonymous__: @transatoshi_grinminerdotnet But you are not looking for C32 42 cylce graphs then I assume since that would take many minutes if not hours on slow hardware?

__transatoshiツ grinminer.net__: Takes 30 min for the first
tromp has been assisting me
Once it finds one it is fine and quick enough

__anonymous__: Can you write a bit in Rust?

__Wayne George__: I don't have any experience, however for the right project I'd be willing to start on it. It is certainly top of my list of languages to learn

__anonymous__: Ok cool, well then you have all the help you can wish for. I only understand roughly how it works and still have misconceptions which Tromp luckily always quickly points out 😅.
Are you also willing to start learning it on a voluntary basis?

__transatoshiツ grinminer.net__: Yeah, he's very nice about me not grasping it all quite yet
But I am getting there

__Wayne George__: Just reading this, I suppose we are in a similar position. I think we should, along with what is currently being worked on, create a wishlist, ranked in order of our collective preference/urgency.

__anonymous__: I think that is important. Next to that, I think it is really important to device and conquer.

**The Pull Request Backlog**

__anonymous__: I think we can move on to the next agenda topic, which is very much related to this:
🚀 2. Who is willing available to take on Reviewing? 🚀
Some of these pull requests are stuck because they need reviewing. Which ones (assign/reference reviewers on github)?
Open Pull Requests:
https://github.com/mimblewimble/grin-wallet/pulls (15 open PR's)
https://github.com/mimblewimble/grin/pulls (15 open PR's)

__Wayne George__: One thing that I am actively working on to start with is creating a couple of videos. What is Grin, and why Grin
I'm currently setting up my recording studio

__anonymous__: Ok, cool. We can also definitely use more explanatory material, tutorials etc.
Let me post an overview of Pull Requests (PR's)
Two branches - master | contracts (
which to work on, which need reviewing)
Contracts 29 commits ahead, 78 files changed
Mar 23,2023 Simple contracts restructured v3
contract test fixes
18-04-2023 Merge branch 'master', experimental Slate v5
08-08-2023 Early payment proofs (yeast Quentin) PR681
Contracts - Test fixes + warning clean-ups (#694)
added explicit payment proof tests for both rsr and srs (#695)
Basic mwmixnet send (#696)
[Contracts] Add self spend transaction state (#697)
30-04-2024 merge from 5.3.0 master release
27-080-2024 [CONTRACTS] update/rename mwixnet onion classes (#719)
[CONTRACTS] Add Owner API function to create mwixnet request (#720)
03-09-2024 [CONTRACTS] Add Owner API function to create mwixnet request (#720)

Master
[CONTRACTS] Contracts branch update for 1.80 (#718)
19-9-2024 Revert "[CONTRACTS] Contracts branch update for 1.80 (#718)"
19-9-2024 [MASTER] Updates for Rust 1.80+ (#722)
01-11-2024 Add mwixnet code to master
01-11-2024 Versioning updates for alpha release
08-03-2025 Fix for many wallet config errors (#731) (reverted, modified and now ready for review)
18-07-2025 http: provide proxy on node client creation (#738) (merged)
=> Problem with test runs on Windows for all PR's in the last couple of months.

So another problem I have in focussing is that there are two branches and to me it is not clear which branch I should focus on, where I should make changes.
The contract branch is full of goodies, it contains 76 files that have changed... that is a lot. So I think if we now make to many changes to the master branch, that might become harder and harder to merge.

__transatoshiツ grinminer.net__: I will be working a lot on grin.wiki once my pool testing is finished. I wanna pull in every bit of info I can from the various places grin docs live

__Wayne George__: I do believe that the development is an important, 100%, but just as or perhaps more important is Grin's vision
Beam is a perfect example. They have great features, yet they haven't been successful
I don't think anybody understands why they exist

__transatoshiツ grinminer.net__: Anyone can edit grin.wiki using dokuwiki which is DB-less

__anonymous__: True. My problem at the moment is more that there is no clarity.
For example, I reviewed all PR's on github, many should absolutely be close, some need reviewing. It is unclear what the bottleneck is, why some have just been open for years while being absolutely clearly ready for closing....

__Wayne George__: Grin was clearly the best placed crypto to implement mimblewimble. They could have just supported it.

__anonymous__: Let me take the grin node as example:
Master
#3811 last week p2p: log message sizes; warn on >1x; demote Ping/Pong to debug (#2825)
#3810 last week p2p-msg-size-logging-2825 (draft)
#3809 August 15 Update copyright year to 2025
#3808 Telegram Grin governance public channel added
#3807 [Do not Merge] Exploratory fix for PMMR header crash (perhaps currently used to crash nodes?)
#3805 [WIP] Improvements to grin's Header Sync which accounts for 70% of the data but is rather slow
#3802 [WIP] Add command to generate OpenAPI 3.0 Specs from exisiting json-rpc endpoint documentation (only few minor typo fixes)
#3800 nov 2024 [WIP] Snapcraft Definitions
#3875 apr 2024 chore: fix typos
#3783 march 2024 doc: clarify why blinding factor range proof is needed
-> Doc clarification, I will review this but on glance it looks good and ready to merge?
#3768 aug 2023 Update nixpkgs to release-23.11
#3741 feb 2023 Bump tokio from 0.2.25 to 1.18.5
-> Close this PR. Toio is already version 1 and tokio-rustls is already set to much newer version to than this pull request so absolute obsolete PR.
#3721 jun 2022 Bump hyper from 0.13.10 to 0.14.12
-> Close, current version is already 0.214
#3660 nov 2021 don't confuse with different numbering bases
-> Clarification in the comments on how MMR's are calculated, should have been merged l4 year ago!
#3643 2021 Changes for Atomic Swaps
Never finished, did not follow the requirements properly of the funding request. Why not close this PR?

__Wayne George__: The lack of clarity was why I was initially proposing project management work

__anonymous__: The Pull Requests on the top might need reviewing, some of them, e.g. #3807 might be critical since it could allow an attacker to crash nodes...
The ones on the bottom, very clear that most can be merged, why did that not happen, who to contact. I know what actions need to be taken, but it is completely unclear who I should contact for this.
That is why I was hoping some or at least one older Developer would be around. I can clean-up github, if someone is willing to read my feedback and close or merge Pull Requests 🤷‍♂️

__transatoshiツ grinminer.net__: One thing I will be taking a crack at RE: grin-server is to get it to not report every mining job's difficulty as 1

__Wayne George__: Just to get what we have in order and to create a good foundation to grow on
We could certainly do with a senior developer managing the core code
But they would need support

__anonymous__: Unfortunately these and more will be questions in the void.
Indeed, we need a Senior Dev, or just somoene with admin rights. Like I said, in many cases it is so obvious a PR can be close or merged... just someone needs to push the button.

__Wayne George__: There is still an overhead with merging in particular
From the previous main devs

__anonymous__: Sometimes yes, but in the list I give here, the last four or so PR's, they take 0 overhead, just changes in comment and documentation:
https://t.me/Grin_Governance/2764
That is my problem, I am shouting in the void. If I only knew 1 person who had merging rights, who would be willing to spend 30 minutes to review my feedback on a list of PR's, we could clean up Github a lot.
I will take up Reviewing some of these PR's, in the hope someone will read my feedback and implement it.

**Developer Funding, Motivation, and Resources**

__Wayne George__: I'm assuming you have directly messaged them?
Does @johntromp have access?

__anonymous__: I did before tag Yeastplume in feedback on quite a few issues, no response there. Also I asked him quite a few times in DM, no response. Perhaps also my fault because at that time I was burdening him to much with questions.
I should have started my onboarding process in the project earlier when there were still active senior developer around to answer my basic questions. Now I am late to the party.
I think he has. I can ask him, maybe he can help or knows who I should spam.

__Wayne George__: It's always hard to tell whether lack of response is due to being busy or not caring which is more disheartening

__anonymous__: It is a bit of both. At the moment I am working with the assumption that the real bottleneck is actually Peer Reviewing of Pull Requests. This is something I can and will help with.
But if nothing will happen with my Review and feedback, I would feel disheartened.
Perhaps someone can review my Pull Request. I think if enough people test and review code, those senior developers who have little time will be more willing to spend some final effort in reviewing and merging - that is my working hypothesis
https://github.com/mimblewimble/grin-wallet/pull/732

__Wayne George__: Do you think perhaps we could oil the machine with some funding? Like paying select people a regular amount for say half a day's work per week/fortnight/month.
Anybody who doesn't want to respond or do work gets their funding stopped
We just collectively manage and be honest about what is being done

__anonymous__: I am not sure, I think I will first do some DMing. like I said, it really is in many case just asking for 30 minutes of time to close and merge trivial github updates.
What I think would help is to go back to assigning Reviewing of PR's. I am available for Reviewing code, @aglkm has also been around helping me review my Pull Request.

__Wayne George__: I do think we need a resource to answer questions too. I know Tromp is very helpful at answering questions. David B also agreed to answer questions.

__anonymous__: Indeed. Many of the questions I have I think are more for Yeastplume, who is unfortunately not much available.
There are plently, but also plenty of case where it is actually very easy to review. LIke you see in the overview above. Out of 15 PR's, I think I know already clearly without any doubt what should be done to 5 of them, just by reviewing them in 30 minutes or so.

__Wayne George__: I suppose there are cases where PRs are too difficult for you to review alone
It is a bit sticky where the community cannot grow parts of the project without the core adapting or at least fixing bugs
Although there is the possibility of starting a whole new repo. Bitcoin has a number of implementations, I believe

__anonymous__: Yes. To be clear, I am not saying they are not doing that or are not willing. But there is unclarity on the procedural level.
Who to contact for what. Who will Review what. Practicalities like that are just Project Management and can be fixed rather easily.
Maybe we do need to hire a senior Dev if just only for 4 hours a week. Just to create clarity that we can expect a reply within at least a week on basic matters. I think we need to discuss it further within the Grin Governance Council (GGC).

__Wayne George__: If I were to do some dev work, I would like to have worked on grin-gui but I would certainly need a handover from Yeastplume. Otherwise, it would be better to just start from scratch.
I know there are wallets made/being made, but I would like to provide variation

__anonymous__: Also you would need to discuss Yeastplume what his vision is. I think he actually thinks it is best to continue with Grim as GUI, it can be added to the mimblewimble repository in the future.
That is also ok

The last agenda item is:
4. Developer practicalities

    What problems are there, e.g. do we have good template tutorials for working with Testnet?
    Are all Developer resources (e.g. Ansible workflow) listed properly somewhere, e.g. Grin Hub.
    -Which branch best to work on/prioritize, main or contract?
    -If time allows it, share tips and trick for Rust development, e.g. AI use, editors, plugin's etc.

I think we lack tutorial on using testnet. Also we lack tutorials on getting grin-wallet with tor working on Windows (I tried, it is difficult)

__Wayne George__: Yes, we do. I agree. How do we solve this?
Bounties?

__anonymous__: I am not sure. I was thinkin to perhaps start with some tutorial on my own website, and later merge them in the documentation:
https://anynomouss.github.io/grin-for-muggles/
But after reconsidering, I think I should just focus on development and cleaning of github for now.
I want to spend less time on Grin Governance, and documentation can wait for now.

__Wayne George__: I think a lot of problems to do with work not being done is related to money. I just don't think the majority of the community are in a position to volunteer their time.
Perhaps none of them

__anonymous__: I know, I am also a bit in torn on how much I should do for free. But for now I just do it.

__Wayne George__: I do think we should start utilising our biggest resource right now which is the BTC fund
Make hay while the sun shines

__anonymous__: But more than money I think the bottleneck is skill and time. Not that many Rust Developers around.
And for those things on the Wishlist, most are very complex and require a cryptographer and experienced developer to work together. Not something I can help with unfortunately.
Yes, that is why I think those bounties are still a good idea, still waiting for more response from GGC members on those proposed bounties.

__Wayne George__: We just need something to create some momentum, and then I believe more skilled developers would be attracted
Right now, there is zero visible incentive

__anonymous__: Yep, Grin is a bit in a low at the moment.

__Wayne George__: Would you ever consider going full-time on Grin with a salary?

__Ardocrat__: Yes, as we have Grin address, every service can do some work behind it, accept payments in Grin, POW protection for APIs

__anonymous__: I could spend more time, but right now I am not that great bang for the buck. That is why I am training myself while fixing stuff, perhaps at some point I can do paid work.

__Ardocrat__: I want 😁
Need to take more free time
Fix common bugs

__Wayne George__: I think that's what we need
If we had five or even three full-time individuals, I think the project would spring to life
I think you do a great job at organisation and having enough understanding of all the parts to be super useful

__anonymous__: How much time could you dedicate to Grin @ardocrat
I think even just having 2 developers around part-time would be useful.

__Ardocrat__: 8 hours per day, can record live video at desktop

__transatoshiツ grinminer.net__: I am trying my best to become proficient with Rust in hopes to maybe do a PT postition
Can I watch?

__Ardocrat__: Everyone at Tg

__anonymous__: Lol, I would never let people watch my life coding. I tend to sometimes do very smart things, then stupid things, undo a lot and finally wrap things up. Not something I would like to show 😉

__Wayne George__: LOL

__Ardocrat__: Live record desktop, focus on things
AI agents are getting smarter

**Technical Discussion: Node Performance and Database**

__Wayne George__: How much would you charge per annum for 37.5 hours per week, say 30 days holiday per annum?

__anonymous__: @ardocrat Would you like to work on a fixed basis, or some bounties. E,g, we are discussing within the GGC do create some bounties to fix those bottlenecks in Header Sync, fix the bug that cause the syncing to freeze up (requiring restart of grin).
Improving peer management.

__Ardocrat__: Yes, DB update is first priority now, lmdb lib outdated, trying with mozillas rkv
Pointer is problem for iterator now, needs some refactor

__Wayne George__: Sadly, I do need to leave the meeting, but I will catch up and respond at the next convenient time
👋

__anonymous__: Ok, so you think the writing to the lmdb is the bottleneck? I suspect it is something else, otherwise increasing the buffer size should have just fixed it.

__Ardocrat__: GN

__Wayne George__: GN

__anonymous__: See you 👋 @waynegeorgeh

__Ardocrat__: Android has problem in building with lmdb for example
Current crate is not maintained

__Wayne George__: Oh, I just quickly wanted to share this before I go https://www.youtube.com/watch?v=rFhqWkmktKI

__anonymous__: Ok, that is a pitty. lmdb is kind of nice, hard to corrupt.
Performance wise it is also great, so surprising that no one maintains it.
Did you discuss this with Yeastplume, whether he thinks it is a good idea to change? I always liked lmdb because of it not getting corrupted
😮

__Ardocrat__: Rkv uses same tech, also google has buffers
RAM speed matters only at all
I saw testnet cache rised to 4G
Mainnet was 2G
Testnet is good place to catch all bugs
Thx for testers
This is my next PR after test in GRIM
Need migration

__anonymous__: True, interestingly Testnet also more easily gets frozen in sync than main net it appears. Sometimes I am suspecting that forks might cause issues, why else would it occur more on Testnet 🤔
?
A ok. When it freezes during sync, I still have peers, just stuck. Perhaps because of peers being soft banned (e.g. different header tip due to forks), or waiting for header blocks new request, something like that.
In any case, it needs further debugging and testing indeed.
Also you have this issue:
https://github.com/mimblewimble/grin/pull/3807
I am surprised this is not tested and merged, looks like a plain attack vector.
I think we can finish this meeting.

__Ardocrat__: Testnet p2p
Idea to fix p2p server, sometimes can not get any peer
DB of peers syncs bad
PIBD sync issue with bad peers also, can stuck or take 24h sometimes

__anonymous__:

Also you have this issue:
https://github.com/mimblewimble/grin/pull/3807

I am surprised this is not tested and merged, looks like a plain attack vector.

I think we can finish this meeting.


TO DO List

* Pull requests are stuck because they need reviewing, explore solutions for review, merging and development.



🔨

Meeting adjourned