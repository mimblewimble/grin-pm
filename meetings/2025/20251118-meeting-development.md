



**Community Meeting Notes November 18, 2025**

Grin Governance Council (GGC) Developer meeting held in the GGC channel at 19:30 UTC.

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

*   Wayne George
*   Ckec
*   Ardocrat
*   anonymous 
*   John Tromp
*   Wiesche

**Short Summary**

The meeting primarily focused on the critical lack of maintainers and reviewers for Grin development, discussions around bug fixing (especially PIBD sync issues), and governance matters regarding access rights and a "Core" dev team structure. A key discussion point was Ardocrat's demonstrated commitment and a proposal to grant him maintainer privileges. 

**Agenda Points & Actions**

https://github.com/mimblewimble/grin-pm/issues/439

*   ### Proposed Agenda
- [Grin project maintaining offer](https://forum.grin.mw/t/grin-project-maintaining-offer/12232).
*   Development Priorities & Bug Fixing (GUI, PIBD, Config)
*   Governance & Access Rights
*   Stack Wallet Integration

### Follow Up.
- _Fixing peers_, [grin++ node bans Rust nodes](https://forum.grin.mw/t/funding-proposal-pibd-implementation-in-grin/11583/2).
   * https://github.com/mimblewimble/grin/pull/3811 PR
   * Checking grin++ seed nodes.
- [Payment proofs ](https://forum.grin.mw/t/grin-product-wishlist/9704/61) **fix**.
- Grin [Github organization](https://github.com/grincc/agenda/issues/177#issuecomment-2973518577).
-  [Grin MultiSig](https://forum.grin.mw/t/funding-proposal-grin-multisig/11837/1) 
- [ Grin Node meets UmbrelOs, EmbassyOs](https://forum.grin.mw/t/funding-request-grin-node-meets-umbrelos-embassyos/11928)
- [ Cuckatoo reference miner](https://forum.grin.mw/t/request-for-funding-cuckatoo-reference-miner/12033)






1) Topic **Ardocrat- Grin project Maintaining offer**

Wayne George:
Anynomous will be late today. Ckeci are you ok to chair?

Ckec:
fine. There is only 1 topic tough we dont have much people.

https://forum.grin.mw/t/grin-project-maintaining-offer/12232

Wayne George:
I'm good to get started and anyone late can catch up

Ardocrat:
yeah. after I will finish fixing bugs at GUI, last egui update broke input on Android, so I fork and contribute here

1st priority is payment proofs to add at GUI as Anynomous and @aglkm said

Wayne George:
I see that there was some response to the offer on the forum. In terms of Council conversations, there hasn't been much yet

Ckec:
it looks like there is a big community support on forum.

Wayne George:
I think there still needs to be work done to decide on access rights to the grin and grin-wallet repos

Ardocrat:
problem is lack of reviewers as I understood

Wayne George:
At the moment, there's limited access. This can be good for safety, but bad for progress. But yes, there does need to be good reviewing of work done regardless

Ardocrat:
@oryhp said hes busy with other project, when you will come back?

Wayne George:
We almost need to have a pay-as-you-go approach, where we pay for reviews. Rate can depend on review complexity. If we just wait for voluntary work, it may never happen.

Ckec:

why do you keep asking it, you know the drill @ardocrat  https://forum.grin.mw/t/suggestion-return-cc-funds-to-oc/10619/10

Wayne George:
What does this mean?

## Development Priorities & Bug Fixing (GUI, PIBD, Config)##

Ardocrat:
for now we can only fork and test

some critical things must be reviewed quickly

Ckec:
Ardocrat demonstrated his commitment and talent, granting him maintainer with priviliges is no brainer. It is  good for Grin development and stability.

Ardocrat:
actually I have a lot things to fix at GUI now, so there is no rush, only some bugs needed to be fixed, like sync

Ckec:
it means stop tagging phyro for review since 2023

Ardocrat:
I still dont know 100% why PIBD got stuck, bad peers or ISP problem, debug is needed here

Ckec:
he is busy, he declared multiple times.

Ardocrat:
@syntaxjak was banned, he tried

question is when, maybe at January

I closed my PR after waiting, cause it needed to deploy at GUI back at 2023, I tried to avoid any grin lib fork

https://github.com/mimblewimble/grin/pull/3747

so I just copy pasted some code from grin-wallet

anonymous:
I could probably review that if it is still relevant.

Ardocrat:
already not

but its must have

cause people can not use grin config at 3rd party apps

problem is review that lead to this crash was made and was made bad

we can check history

https://github.com/mimblewimble/grin/pull/3634

antiochp and phyro reviewed this

Wayne George:
We certainly need to setup a "Core" dev team. There just needs to be a process

anonymous:

I feel reasonably comfortable with any config stuff. Let me know if there is something I must review, e.g tage me.

I do wonder how many actually need to migrate from the old version, probably very few. So I wonder if it is worth the time investment

Like they say in the pull. "Avoid over engineering."

Ardocrat:

you can insert my fix into your config branch

https://github.com/mimblewimble/grin/blob/69152f9ef37989e79707008c631e2b6f8f51f926/config/src/config.rs

anonymous:
I will have a look at it. 👍

Ardocrat:
there is 33 lines changed (actually less with formatting)

program will not panic, just will return error on parse if .toml has wrong format

John Tromp:
that could have been reviewed quickly


Wayne George:
Going back to governance matters, it seems that there are some other matters unresolved such as Stack and Unstoppable Wallets development

I know there were some unanswered questions from Tromp about Stack

Ckec:

I gotta go. My final opinoin.What we need is now a maintainer with commitment, review and merge capabilities. Ardocrat has volunteered. So GGC vote and give him grant,community majority had already supported. Any further delay is a deliberate choice reinforce the Status Quo. Nothing actually changes otherwise. Grin needs to decentralize.

Wayne George:

I'm all for growing the dev team but at this stage I feel that the foundation isn't strong enough to build on. I think that we need to spend time on process. Else we risk introducing bugs or worse

anonymous:

I do agree we should try to solve the "no maintainer" issue. 
But if no one is available, no is available. I asked Michael if he knows if any old devs are available, but have not got his reply yet.

Ideally we get an  old dev who can work part time to review and merge request and get @ardocrat to work on bug fixes and adding features. If that is possible, I do not know. Lets see.

Perhaps it does not even need to be now, but I do think we need to have some perspective/planning of when pull requests can start getting final reviews and merged and perhaps even a new alpha version for a wallet to test.
At the moment is is just completely unclear if, how and when we can move grin forward.

Wayne George:
I see that there are two main criteria for the dev team, trust and competence. I believe that we don't currently have the tools to determine either to the level that I think we need

For example, if a dev showed up tomorrow who demonstrated great coding skills, at what point would we trust them with source code access?

Ardocrat:
they have more priority for sure, new features must be tested carefully, sync is just more complex process and requries a lot time for testing in community, like we did with PIBD in the 2023

John Tromp:
anyone can access source code. the big question is who takes responsibility to review and merge?

anonymous:
It takes one to know one. And that is the problem, I/we would mostly rely on the old senior devs to judge if someone is ready for such a responsibility.

Wayne George:
Sorry, yeah I mean merge access

John Tromp:
i can review and merge some grin core code that i feel comfortable with

Ardocrat:
there is nothing to push yet 😄

John Tromp:
but i'm less confortable with IO, peer, and wallet stuff

anonymous:
Perhaps that would be good to put in our "personal overview", list parts of the code that we feel sort of comfortable with. I feel for example ok now with grin-wallet config related issues, with some work I might be able to fix bugs in contract flow, I do not feel comfortable with core code and peer to peer messages.

John Tromp:
which is where Yeastplume was most competent and trusted

Grin Governance Council [public]:
Already having this information ☝️and writing it down would be good. Especially for new people on the team. Part of project management, knowing the people and their capabilities.

Wayne George:
It would be ideal if we could get him back even if only part time

Ardocrat:
for now we need to realize why PIBD is slowing down and getting stuck time to time, need to deal with such peers somehow

this is critical

increasing header size not helped at this, but good for the future

Wayne George:
Yes having a good record of skills, roles, access to websites, etc, is a must

anonymous:
@waynegeorge I think we can do this part of project management together.

@ardocrat Regarding header sync, why not just make it parallel.

Ardocrat:
there is no problem with headers yet, so dont rush to move it to PIBD
anonymous:
I think even dumb paralysation would work, just one peer one thread etc.

Ardocrat:
lets fix previous bug 😄

Wayne George:
Even if we create a page on the site with team member's profiles

anonymous:
Yaa, that PIBD bug is high priority. Pity that yeasplume is not around since this is really his forte.

Ardocrat:
yeah, I liked to work with him

anonymous:
Maybe when the AI bubble pops he can free some time 😉



Ardocrat:
there's tons of experimental and untested code in the contracts branch, so we can't merge it anytime soon without a lot of effort and testing. I've just been working right out of that branch for the gui wallet I was working on, you should be able to just switch the branch you use.

we can cherry pick changes as we spoke

like early proofs

they were not finished

can we use them without contracts, there is a question

anonymous:
Probably just some problems with parameters from the contract that are not properly managed. I wanted to work on that for a long while but I first need to a) look at the config migration code b) review the API changes from Wiesche

And also my work is not allowing me much grin time lately.

Ardocrat:
Wiesche made good work for Stack and did it quickly, I think he is good dev

anonymous:
What do you mean he made good work for Stack, you mean forum post or code?

Ardocrat:
made gui prototype and bridge

for some days

anoynmous:
A, yes. I forgot. Yaa, he can work surprisingly fast, good dev indeed.

Ardocrat:
A minimal wallet based on the rust grin-wallet with a Flutter GUI.
The interface is a Flutter Rust bridge.

I still have to do a review, but I was able to test most of the features.
So far, I've done this without TOR and only on Windows.
I'll be happy to release the repo then.

anoynomous:
So Wiesche, is basically very good with API's and GUI's, @waynegeorge we can add that to our project overview.

Wayne George:
That's great!

anonymous:
@ardocrat Are there particular parts of grin, grin-wallet, GUI's that you feel most comfortable working with? Lets make an overview of all the developers we have and which things they are good at | comfortable working with.

Wayne George:
We really need to create a project in the grin-pm repo though

I don't currently have access rights to do so

anonymous:
For now we can do it in CC repo until everyone has access to such a project in grin-pm. I have access but I cannot colleborate with you there.

Ardocrat:
everything not related to critical protocol things for now I guess, also I am not comfortable with Mwixnet (yet)

payment proofs is something needs time to check, as we have RFC

not sure whats missing here now

https://www.reddit.com/r/Bitcoin/comments/d3lffo/technical_paytocontract_and_signtocontract/

seems like they can not work without contracts, so will stay experimental

Wayne George:
Okay guys goodnight and catch you later. Anynomous we can catch up about updating projects

John Tromp:
gn

anonymous:
gn 👋

Wiesche:
Sorry, guys, but wouldn't we normally have the meeting now? 
I was still playing with the kids.

First of all, thank you, @ardocrat , for wanting to work full-time on Grin. I can only support that, and I look forward to working with you

What have I accomplished in the last few days?

I'm still working on the umbrelOs topic. 
I bought a Raspi 5 a few weeks ago.
Then I built grin Node and grin++ Node for amd64, only to realize that I need arm64 😂

Now I've built a multi-arch Docker for Rust Grin and grin++.

The nodes (with adjustments) and the node controller look good so far. I was also able to perform the first tests with the Umbrel environment.

Ardocrat:
hey, what if we will introduce bug bounty? seems like someone is constantly exploring bugs in Grin infrastructure, it could be motivation for him/them

Wiesche:
Now it's time for the GUI. I've noticed that the website works quite well in the browser, but the scaling on mobile phones isn't quite right yet.
I'm currently working on this.
I have a Docker Hub account where I make the images available.

I'm making good progress and have gained valuable insights into Grin++ and Rust Grin.

Interesting idea. That's how you attract attention.

Ardocrat:
I want to motivate this "hacker" somehow 😄

maybe it was @syntaxjak, who knows

Wiesche:
It would be great if 2-3 people could be found in 3-4 weeks to test it.

Is he still making videos? I think the idea of a dev session is pretty cool.

Ardocrat:
last was demo of his desktop

also txs delay when there is a lot incoming peers connections, just reproduced at my public node, broadcast is getting stuck for a lot blocks, at summer first time I met this and it was 2-4 blocks delay https://t.me/grim_app/8565

@MCM_Mike hey, have you experienced this problem at grinnode.live before?

we have dev channel btw @grindevelopment

Wiesche:
Hmm, grincoin sometimes has 60-70 connections. 
That's not the problem here.

Ardocrat:
there is something special just for me, my node is archive, 5.4.0 as well

release from github

Wiesche:
Run in docker or native?

Ardocrat:
native

Wiesche:
Proxy?

Ardocrat:
no

as linux service on cloud

same happened on summer

and it was proxy before

Wiesche:
Hmm...I made this observation on testnet in the summer with testnet.grincoin.org.

Do we even have any miners left on the testnet? @transatoshi_grinmw

Ardocrat:
@transatoshi_grinmw is not responding anymore

ok, moving to sleep now, more bugs to fix

**TO DO List**

*   Define an RFC for MultiSig implementation (carried over from previous notes).
*   Wayne George and anonymous to work on project management overview.
*   anonymous to review Ardocrat's config fix.

Meeting adjourned.