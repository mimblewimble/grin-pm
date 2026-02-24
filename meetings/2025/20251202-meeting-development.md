

**Community Meeting Notes December 2, 2025**

Grin Governance Council (GGC) Developer meeting held in the GGC channel at 19:30 UTC time.

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

*   Ckec
*   Wayne George
*   Ardocrat
*   Wiesche
*   rehrar

**Short Summary**

The meeting primarily focused on infrastructure improvements, node synchronization issues, and the ongoing discussion with Stack Wallet regarding integration. Wiesche provided an update on a new Grin++ test version aimed at fixing peer banning issues, and detailed potential improvements for PIBD and Header sync robustness. The UmbrelOS package integration for both Grin Rust and Grin++ nodes is nearing completion. Ardocrat announced plans to begin working full-time on Grin in January. The discussion with Stack Wallet's representative, rehrar, confirmed that they would run their own node but would not include Payment Proofs in the initial scope due to cost, pushing the GGC to finalize its funding decision (upfront vs. post-funding) at the next meeting.

**Agenda Points & Actions**

https://github.com/mimblewimble/grin-pm/issues/440

*   Node Sync Improvements (PIBD & Peer Management)
*   UmbrelOS Integration & Docker
*   Stack Wallet Integration Decision & Payment Proofs

## Follow Up.

- _Fixing peers_, [grin++ node bans Rust nodes](https://forum.grin.mw/t/funding-proposal-pibd-implementation-in-grin/11583/2).
   * https://github.com/mimblewimble/grin/pull/3811 PR
   * Checking grin++ seed nodes.
- [Payment proofs ](https://forum.grin.mw/t/grin-product-wishlist/9704/61) **fix**.
- Grin [Github organization](https://github.com/grincc/agenda/issues/177#issuecomment-2973518577).
-  [Grin MultiSig](https://forum.grin.mw/t/funding-proposal-grin-multisig/11837/1) 
- [ Grin Node meets UmbrelOs, EmbassyOs](https://forum.grin.mw/t/funding-request-grin-node-meets-umbrelos-embassyos/11928)
- [ Cuckatoo reference miner](https://forum.grin.mw/t/request-for-funding-cuckatoo-reference-miner/12033)

Meeting starts..

Ckec:

https://github.com/mimblewimble/grin-pm/issues/440

Wayne George:
No agenda so we can have free discussions on ongoing matters

Ardocrat:

News of week is https://t.me/grindevelopment/17/295

Wayne George:
WOW that's freekin epic!

Wiesche any specifics about that node? Hardware, network, etc

**Node Sync Improvements**

Wiesche:
On this point, 
fixing peers, grin++ node bans, Rust nodes, I provided Anon with a Grin++ test version.

Raspi 5 NVME USB3 arm64

Full sync 3,5h

@ardocrat It would be cool if you or others could test this too.

@syntaxjak

Wayne George:
Cool. I have many more questions so perhaps we can discuss the technicals in the dev channel

Wiesche:
I took a look at the following three points because I see potential for improvement there to make the entire sync process 
more robust.

PIBD sync
- For each segment request, the peer that last received it is saved
- If a timeout expires, the next attempt is actively performed on a different peer (log)
- Sync no longer gets stuck on a single peer

Header sync worker
- Incoming header batches are first placed in a queue and processed by a separate thread
- SyncState keeps track of how many headers are still pending and what level has already been reached
- Batches that are not needed are discarded

Peer management
- New peer addresses are first placed in a limited pending queue
- Obviously unsuitable addresses (already known or banned) are not stored at all
- Relief for the peer database

Ardocrat:
I will integrate PIBD changes to GUI after migrating to new hardware

Wiesche:
Many thanks

Ardocrat:
Problem was compiling Android on ARM

Google is not providing build tools

Wiesche:
hmm.. Unfortunately, I don't have any experience with that.
Android Studio?

Ardocrat:
At Linux server (CI)

Only macos they support as ARM

Macos has x86 compatibility

Wayne George:
I don't think that there are actually any outstanding governance matters

Ardocrat:
So I build natve libs with NDK fork and .apk at separate VM with x86 emulation on qemu

Wayne George:
Just the general need to organise GitHub further

**UmbrelOS Integration & Docker**

Wiesche:
Grin Node meets UmbrelOS

You are welcome to test the first version. 
You can then uninstall it again when I release a new version.
I haven't looked into updates yet.
I don't know how to control this via the community app stores.

The installation is very simple.
Currently, the DockerFile contains the two nodes (rust, grin++) with my extensions.
I'm curious to see how long the sync will take for you.
All APIs are propagated to umbrel.local:3416

This allows you to use the Postman Collection to retrieve data. The whole thing runs without a password and is provided via the nginx proxy. This means there are no CORS problems either ;)

I have also saved various languages.
However, I cannot guarantee its accuracy, as it was created by AI.

FYI:
I am currently still working on the Chain and Transaction tabs.

I will also share it again in the forum.

Ardocrat:
Docker is needed 100%, we can make build at Github and push to ghcr.io every release

https://dev.to/madhucheran/using-github-container-registry-ghcr-to-host-your-docker-images-1bh4

Wiesche:
https://hub.docker.com/repositories/wiesche89

Nice, I didn't know about that.
Thanks for the info.
I've just uploaded it to Docker Hub (arm and amd).

Wayne George:
One thing that I had the idea about was building a test lab. A dedicated area with enough kit to run multiple nodes in multiple states. It could be used to test code changes and more. A test suite could be built that can automate tests including transaction sends. It could easily switch between testnet and mainnet testing

Ardocrat:
Github will show package at repo grin page, so everyone will see

Yes, docker will help a lot at this

Wiesche:
I think it's a great idea. Currently, I run full syncs automatically with the Docker containers mentioned.
I wrote a controller that can be used to control Grin Rust and Grin++. The whole thing is in a Docker image.

That's a very good idea.
And it makes it directly accessible.

Wayne George:
I'd love to explore what you've done so far. Do you think you'd be in a place to have a video call that we could record so you can demo current state and discuss next steps?

Wiesche:
Sure, we can do that.
But as you know, English isn't my native language ;)

Dev calls are generally a good idea.

Wayne George:
I could understand you very well the last time we spoke

I could spare an hour sometime this week if you could

**Full-time Development and maintain Ardocrat**

Wiesche:
We should be able to manage that. That time would suit me fine.



@ardocrat When do you want to start the full-time position?

Wayne George:
Great, lets arrange that after

Ardocrat: @wiesche
since January

now I need to finish all GUI things and CI to not depend from external services

Wiesche:
Happy new GRIN Year

Ardocrat:
7 years since launch and almost 10 years since start

also @vlad_gelfer started to explore Grin code, so we can work together soon, I hope 🙂

Wiesche:
Until then, I would also like to have finished the UmbrelOs topic.
Then I can gladly take on Rust tasks, with your help.

That sounds very good.

@waynegeorge Are you currently working on your app?

Wayne George:
How much time is left for the UmbrelOS work would you say?

Wiesche:
1-2 weeks.

Then I need 2-3 people to test it.

Wayne George:
That's on hold but not forgotten

Wiesche:
I have presented my current work here so far. I am pleased that we are making progress.

Wayne George:
Pretty quiet here today, maybe people are Christmas shopping

Wiesche:
Yes, everyone is busy. We can certainly advertise the next meeting more widely.

I'm signing off for the day. 
Thanks for the chat.

**Stack Wallet Integration Decision**

rehrar:
Are we waiting on anything from my side for stack decision?

Not trying to rush. We have plenty to do in the meantime. Things take time in monero land too

Wayne George:
Not sure, I'll check the forum in case there were any pending questions.

Wiesche:
I will gladly take note of the point that we will come to a decision at the next meeting.

My offer to help still stands!

rehrar:
Your help is welcome. But I never got an answer of whether you want to reduce the asking price (you with "for free" to help grin) or whether you want me to pay you out of the asking price (which I'm absolutely willing to do)

Wayne George:
One thing that was brought up was regarding documentation for existing implementations and whether they are accessible

rehrar:
Happy to do either.

Wayne George:
Particularly the MW coins

rehrar:
All of those libs are FOSS and on our GitHub yes

Ardocrat:
hello, will you launch your own node for external connection of wallet?

like "grin.stack.com"

rehrar:
Yes

Wayne George:
There was something discussed about payment proofs. I'm just reading now

John Tromp asked: Will it support payment proofs [1] or even some forms of early payment proofs [2] ?

[1] https://github.com/mimblewimble/grin-rfcs/blob/master/text/0006-payment-proofs.md

[2] https://github.com/tromp/grin-rfcs/blob/early-payment-proofs/text/0000-early-payment-proofs.md

Ardocrat:
for early proofs we need contracts, they are experimental and can be used with risk of losing funds as @oryhp said

rehrar:
So no because of above. :P

Ardocrat:
so [1] can be done without risk

Wiesche:
First and foremost, I want to help.

Depending on decision, we will find a solution.

Personally, I would like to see grin in your wallet.

rehrar:
So definitively no, payment proofs are not in scope

Ardocrat:
we have [1] at grin-wallet, planning to add them at GUI as text/file https://docs.grin.mw/getting-started/wallet-handbook/#proof

requested by Anon and @aglkm

it can be needed for exchanges

or some p2p automation

rehrar:
Anything can be done obviously, but would increase price.

In addition, it seems the loose consensus is not to do the marketing thing for the discount.

Ardocrat:
grin price is low, a lot space for development 😄

Wayne George:
I'd say so

Official meeting now ended but as usual, the floor is still open for conversation. Good night all!



**TO DO List**

*   **Testing:** @ardocrat or other members to test Wiesche's new Grin++ test version.
*   **UmbrelOS:** Wiesche to finalize UmbrelOS integration (1-2 weeks) and prepare for testing.
*   **Stack Wallet:** GGC to make a final decision on the funding approach (upfront vs. post-funding) for Stack Wallet integration at the next meeting.

Meeting adjourned.


