### Grin Community Project Day, grin/ecosystem, Apr 09 2019

ID | Speaker | Topic | Link |
|---|:---|:---|---|
1 | xiaojay @xiaojay | Niffler | https://github.com/grinfans/niffler |
2 | lehnberg @lehnberg | Vault713 | https://github.com/vault713 |
3 | David Burkett @DavidBurkett  | Grin++ | https://github.com/GrinPlusPlus/GrinPlusPlus/releases |
4 | Matt Lee @MattWeiHungLee_twitter | Giggle |  https://github.com/gigglewallet |

Meeting record is as below.

Agenda

Hi guys don’t forget to join us here after the governance meeting, we have 4 teams giving updates today, each will take 12 minutes to talk to us
5:00 PM - Niffler
5:12 PM - Vault713
5:24 PM - Grin++
5:36 PM - Giggle

———————————————————————————————————————————————————
Niffler

Noah Yeh @noahyeh_twitter: 
It’s time! April’s Grin Community Project Day is kicking off,
@xiaojay ready?

xiaojay @xiaojay:
yes, i am ready

Noah Yeh @noahyeh_twitter: 
the first team we have is a new project called Niffler, here’s a quick intro
Niffler is a user-friendly opensourced Grin GUI wallet.
Github page: https://github.com/grinfans/niffler
The name 'Niffler' comes from <<harry potter>>. https://harrypotter.fandom.com/wiki/Niffler
Currently, mac version was just realesed. (https://github.com/grinfans/niffler/releases/tag/v0.1.0-beta)
It use the original Grin binaries as back-end, and elctron-vue to build GUI.
It Will works on mac linux windows(now is for mac), and Will Support multiple languages(now is for English and 简体中文).
Anyone with questions, please ask away

lehnberg @lehnberg:
awesome logo!

xiaojay @xiaojay:
hello everyone, with my new logo :)

Matt Lee @MattWeiHungLee_twitter:
really like your logo :D

0xb100d @0xb100d:
Same

xiaojay @xiaojay:
i think the Noah's intro is good, any questions?

Noah Yeh @noahyeh_twitter:
@xiaojay how’s initial response after release?

Ignotus Peverell @ignopeverell:
@xiaojay at what stage are you at in development and what do you need help on?

xiaojay @xiaojay:
I have some response, but not as much as i expected

RyanHu1208 @RyanHu1208:
@xiaojay is it needed to build yourself a node to receive grin ?

bodrig @bodrig:
@xiaojay does the wallet support keybase send function?

xiaojay @xiaojay:
I think chinese grin user, use windows more

Gary Yu @garyyu:
I tried a sending with Niffler on mac this morning, it’s nice ! thanks @xiaojay

xiaojay @xiaojay:
@ignopeverell More details docs of wallet api v2, and the difference of between the v1 and v2;

Matt Lee @MattWeiHungLee_twitter:
@xiaojay is Niffler possible work on mobile in the future?

xiaojay @xiaojay:
and i wonder Is wallet api v2 backward compatible with v1?

Ignotus Peverell @ignopeverell:
@xiaojay looked at the Rust API docs?
no, but v1 should stay around for a bit

xiaojay @xiaojay:
@RyanHu1208 now you can use my node, in the next version, it will be configurable

RyanHu1208 @RyanHu1208:
@xiaojay got it, thanks man

xiaojay @xiaojay:
@bodrig not now, but will in next version
@garyyu :)

lehnberg @lehnberg:
@xiaojay have you seen https://docs.rs/grin_wallet_api/1.1.0-beta.1/grin_wallet_api/ ?

xiaojay @xiaojay:
@MattWeiHungLee_twitter it's in plan. however i will focus on windows version right now.
@ignopeverell sure, i will check out

Gary Yu @garyyu:
@xiaojay is Niffler possible work on mobile in the future?

Noah Yeh @noahyeh_twitter:
@xiaojay where have you been promoting the wallet? I feel a lot of Chinese users have been asking for wallets on a couple telegram chatrooms

xiaojay @xiaojay:
@lehnberg useful :)

Michalis Kargakis @kargakis:
@lehnberg @ignopeverell hrm, does the rustdoc document the endpoints or is it only rust primitives that are documented?

Matt Lee @MattWeiHungLee_twitter:
@xiaojay Got it. When is the windows version released?

xiaojay @xiaojay:
@noahyeh_twitter i have a wechat group , have not promoted in telegram
@MattWeiHungLee_twitter as soon as possible

Matt Lee @MattWeiHungLee_twitter:
Is there a time table ?

xiaojay @xiaojay:
@garyyu i will plan to do a mobile with flutter, maybe

Noah Yeh @noahyeh_twitter:
@xiaojay do you need any help from the community? Now is a good time to ask

xiaojay @xiaojay:
Code pull request bug report is always welcome.
Translate to other languages is wanted, too.

Noah Yeh @noahyeh_twitter:
also 2 mins left before we get to the other team

Ignotus Peverell @ignopeverell:
@kargakis jsonrpc, so should be real close

xiaojay @xiaojay:
i want to support much more lang. like russia, janpese

Matt Lee @MattWeiHungLee_twitter:
@xiaojay Which language do you need?

xiaojay @xiaojay:
繁体中文 :) @MattWeiHungLee_twitter

Gary Yu @garyyu:
I’m thinking we need some public node API services / servers for Grin community
free and open

Michalis Kargakis:
@ignopeverell I am struggling to find those jsonrpc endpoints documented in https://docs.rs/grin_wallet_api/1.1.0-beta.1/grin_wallet_api/

xiaojay @xiaojay:
@garyyu yes, i think i could build one first

lehnberg @lehnberg:
@kargakis better to raise with yeast or in an issue

Matt Lee @MattWeiHungLee_twitter:
@xiaojay No problem haha

———————————————————————————————————————————————————
Vault713

Noah Yeh @noahyeh_twitter:
Perfect, thanks for the questions guys, @xiaojay thanks again for joining us, next up is community’s favorite Vault713, @lehnberg ready?

xiaojay @xiaojay:
thanks :)

lehnberg @lehnberg:
Yes thanks Noah!
Hello all 
￼
Doing a quick statement and then let’s do Q&A


Noah Yeh @noahyeh_twitter:
Cool

lehnberg @lehnberg:
vault713
vault713 is building solutions that make it easy to store, send, and swap Grin. We’re behind:

grinbox: An open source transaction protocol that is federated, and free for anyone to use, giving every user an off-chain address derived from their private seed and an ability to send/receive grins while offline; and
wallet713: an open source wallet that integrates grinbox and enables functionality such as transaction proofs.
The team consists of @jaspervdm, @ravidio and myself.

Today, I'm pleased to announce our third product: GrinSwap

GrinSwap: Grin atomic swaps
GrinSwap makes it easy for anyone to tade in and out of Grin trustlessly and without the need for a centralized trusted third party. It makes OTC deals a breeze and introduces a privacy preserving method for buying and selling Grin.

This is an open source project led by @jaspervdm, the creator of the first atomic swaps for Grin <-> ETH and Grin <-> BTC. Beacuse the nature of what is being built, it's hard to monetize this directly. Though we believe it adds a lot of value to the wider Grin community. So we're planning to ask the community for their support to finance this effort through a fundraise in the coming weeks.

MVP will be lightweight and minimal - functional for a technical person, but not polished, think command line interface.

We'll be ready to announce more about this shortly, stay tuned!


David Burkett @DavidBurkett:
That's exciting!

Noah Yeh @noahyeh_twitter:
indeed

Michalis Kargakis @kargakis:
nice!

Matt Lee @MattWeiHungLee_twitter:
Awesome!

Ignotus Peverell @ignopeverell:
shiny

xiaojay @xiaojay:
:clap:

Noah Yeh @noahyeh_twitter:
@lehnberg how much funding are you guys looking at?

lehnberg @lehnberg:
it’s relatively fluid, more raised means Jasper will have more time to spend on the project
we haven’t set a target yet

Noah Yeh @noahyeh_twitter:
Noted, and I guess the release date would also depend on that?

lehnberg @lehnberg:
but are looking at it in the context of ~3 months

Noah Yeh @noahyeh_twitter:
I see I see

RyanHu1208 @RyanHu1208:
@lehnberg about the trading speed, may you have a estimated time of speed of it

Michalis Kargakis @kargakis:
~10m?

David Burkett @DavidBurkett:
A drunk VC once told me ask for at least a million, and say you're halfway to your goal. Apparently it's more appealing to donate to a half-funded project.

lehnberg @lehnberg:
@DavidBurkett that’s pretty good advice haha
@RyanHu1208 we don’t have any times yet, but it will be a fairly manual process to begin with for sure

Matt Lee @MattWeiHungLee_twitter :
@lehnberg Why is ETH and BTC first? Why not some stable coins like usdt?

lehnberg @lehnberg:
@MattWeiHungLee_twitter why not ETH and ERC-20 and then you can do DAI?

Gary Yu @garyyu:
@MattWeiHungLee_twitter wait, usdt has a chain now?

Matt Lee @MattWeiHungLee_twitter:
@garyyu you got me. I miss it.

Gianluca Mazza @gianlucamazza:
USDT uses both omni/erc-20 protocols

lehnberg @lehnberg:
Key here will be fundraising - even if you will not be able to contribute directly, we would really like your help with spreading the word

Gianluca Mazza @gianlucamazza :
recently they started contributing on rgb protocol to transfer assets on bitcoin

lehnberg @lehnberg :
Hopefully it could reach some privacy minded invidivudals on the BTC and ETH sides that might find such a feature useful for them as well. :)

Noah Yeh @noahyeh_twitter :
@lehnberg we’ll help spread the words to our communities

lehnberg @lehnberg :
Longer term, we’ll be looking to grow this into a full fledged product that is streamlined and accessible to a wider audience

David Burkett @DavidBurkett :
I failed to find funding for Grin++, but I know a few folks that are worth talking to. Maybe you'll have better luck than me. I'll chat with you later

lehnberg @lehnberg :
Appreciated @DavidBurkett
And yes @kbielecki__twitter we’ll put up a grinbox address for sure that people can donate to

Noah Yeh @noahyeh_twitter :
@DavidBurkett have you been talking to VCs or individuals? I’m curious what their thoughts are too
@lehnberg reminder, 1 min left

Michalis Kargakis @kargakis :
@lehnberg not sure it was mentioned anywhere, are you planning on open-sourcing the tool once you reach your funding target and the MVP is out of the door?

David Burkett @DavidBurkett :
@noahyeh_twitter Little of both. But I suck at that stuff, so not sure what their thoughts are either.

Noah Yeh @noahyeh_twitter :
Noted

lehnberg @lehnberg :
@kargakis yes, open source, I think it would be a requisite for it to be used

David Burkett @DavidBurkett :
@lehnberg When gui?
For wallet713

lehnberg @lehnberg:
and that’s why we’re doing a fund raiser
@DavidBurkett Soon (tm)

David Burkett @DavidBurkett :
:)

lehnberg @lehnberg :
any designer that wants to help on the GUI side please DM!

———————————————————————————————————————————————————
Grin++

Noah Yeh @noahyeh_twitter :
Thanks @lehnberg , looking forward to what’s coming next, next up is @DavidBurkett ’s Grin++ , @DavidBurkett ready?

David Burkett @DavidBurkett :
Sure

Noah Yeh @noahyeh_twitter :
Great, here’s a quick intro of Grin++’s update

Grin++ has come a long way since the last Grin ecosystem day. The wallet is still in beta, but it is now on mainnet, and supports sending and receiving via file or http(s). Grinbox support should be ready for release late this weekend, and work has also begun on adding support for transacting via i2p to avoid having to configure router port forwarding (this replaces the plan to use magic wormhole, which was dropped for various reasons). The next big task, which is currently planned for mid-May, will be to add Mac & Linux support.
Latest version available here: https://github.com/GrinPlusPlus/GrinPlusPlus/releases
Usage instructions are in progress, and will be posted here as they’re finished: https://github.com/GrinPlusPlus/GrinPlusPlus/wiki

Guys any questions for David?

xiaojay @xiaojay :
yes, i could include wallet713 in my wallet maybe @lehnberg

chisana @chisa0a :
for i2p support, do you need/want any help with dev/testing?

David Burkett @DavidBurkett :
@chisa0a Absolutely, have you worked on i2p before?

chisana @chisa0a :
yeah, currently working on some i2p stuffs

David Burkett @DavidBurkett :
Would be awesome. I'll DM you after

chisana @chisa0a :
:) great

Noah Yeh @noahyeh_twitter :
Love seeing things come together like this guys

lehnberg @lehnberg :
@xiaojay would be awesome anything you need from us - let me know

Gary Yu @garyyu :
@chisa0a mimblewimble/grin#2712

chisana @chisa0a :
bookmarked @garyyu

David Burkett @DavidBurkett :
So, places other folks can contribute:
Documentation is a big one
Mac & linux support
Code review and/or unit-tests

Noah Yeh @noahyeh_twitter :
@DavidBurkett when will usage instructions be ready?

David Burkett @DavidBurkett :
And testing is another big one. It'd be great to have a few testers try out releases before they go live

Gary Yu @garyyu :
Does the Linux build passed now? @DavidBurkett

David Burkett @DavidBurkett :
@noahyeh_twitter Tomorrow probably, but I'm very busy, so not sure exactly

Noah Yeh @noahyeh_twitter :
and do you need help on instruction translations?

David Burkett @DavidBurkett :
@garyyu I got through the dependencies. Just need to port over the socket and file stuff in my own code

Gary Yu @garyyu :
okay, nice!

David Burkett @DavidBurkett :
@noahyeh_twitter I only know english, and not very well. So yes
:)

Noah Yeh @noahyeh_twitter :
ok I’ll DM u later for this

David Burkett @DavidBurkett :
Great!

Noah Yeh @noahyeh_twitter :
@DavidBurkett what’s your take on Windows vs Mac and Linux, @xiaojay seems to feel windows users are more dominant here

David Burkett @DavidBurkett :
I'm also trying to figure out how to change our bulletproofs to support multisigs, but I'm not very smart, so help wanted there, as well.
@noahyeh_twitter Windows has way more users. Linux & mac has a much better chance at getting help with the code

chisana @chisa0a :
musig seems popular
< also no wizard

David Burkett @DavidBurkett :
Grin++ has been open source for 4-6 months now. I'm still the only one to touch it. It's possible nobody likes me or my code, or it's possible nobody likes windows. Or maybe all 3 :)
Lots have reviewed it, and many have tested it, ftr (very appreciative of them). Just no PRs submitted yet. So stick with linux/mac if you want help with the code

Noah Yeh @noahyeh_twitter :
reminder 2 mins left

bodrig @bodrig Apr 10 01:34
Don't get discouraged, alternative implementations are important for a healthy ecosystem in the long run

David Burkett @DavidBurkett :
Thanks @bodrig
Any other questions?

Noah Yeh @noahyeh_twitter :
Guys any more questions for David?

David Burkett @DavidBurkett :
Anything anyone hates about Grin++? I take criticism well, so I'd love to hear it

bodrig @bodrig :
Does it support keybase send?

Gary Yu @garyyu :
Don't get discouraged

second


David Burkett @DavidBurkett :
No keybase support, and no plan to anytime soon

bodrig @bodrig :
Any reason why?

David Burkett @DavidBurkett :
Most of the Grin++ users aren't keybase users, in my experience.

David Burkett @DavidBurkett :
Plus, huge roadmap, and I'm only one person. I try, but I've found that for every piece of functionality I add, everyone asks for 2 more

David Burkett @DavidBurkett :
Thanks guys!

bodrig @bodrig :
Thanks @DavidBurkett

———————————————————————————————————————————————————
Giggle

Noah Yeh @noahyeh_twitter :
Perfect, thanks again @DavidBurkett , next up is Giggle from @MattWeiHungLee_twitter , @MattWeiHungLee_twitter ready?

Matt Lee @MattWeiHungLee_twitter :
Yes. Thank you Noah.

Noah Yeh @noahyeh_twitter :
Here’s a quick intro from Giggle’s update

Giggle for the last month has made some progress in design, here’s a quick look of our new UI experience
https://sketch.cloud/s/zqk74/7yM44Pw/play
For those who haven’t seen Giggle before, it is a Grin wallet who implement a unique username system, you can create multiple avatars, and delete them at anytime without worrying it would affect your balance, check it out in the link.

we’re looking for an engineer who’s familiar with RUST to build part of our backend, please let us know if you are interested.

Noah Yeh @noahyeh_twitter:
Guys any questions for Giggle?

Matt Lee @MattWeiHungLee_twitter :
Hi guys as mentioned we're looking for a RUST developer to help us out on the backend

RyanHu1208 @RyanHu1208 :
@MattWeiHungLee_twitter i like giggle's logo as well

Matt Lee @MattWeiHungLee_twitter :
Also please play around with the mockup let us know what you think
we'd love to get some feedback from the community

Gary Yu @garyyu :
Hi guys as mentioned we're looking for a RUST developer to help us out on the backend

Can you share the same backend from Ironbelly?


Matt Lee @MattWeiHungLee_twitter :
@garyyu yes but at the mean time, it should be modified by Rust

Noah Yeh @noahyeh_twitter :
@MattWeiHungLee_twitter What is Giggje’s next steps?

Matt Lee @MattWeiHungLee_twitter :
@garyyu sorry I misunderstood

Gary Yu @garyyu :
and where’s your source in
GitHub

Matt Lee @MattWeiHungLee_twitter :
We're not using file shares for now , we transact thru peer to peer if you use your own node or use ours

Gary Yu @garyyu :
https://github.com/cyclefortytwo/ironbelly/tree/master/rust

Matt Lee @MattWeiHungLee_twitter :
@garyyu its a private repo right now, will be revealed soon
@noahyeh_twitter we're just focusing on making this version work, next month we should have it ready for the community to test

Noah Yeh @noahyeh_twitter :
Got it. thanks. reminder 2 mins left

xiaojay @xiaojay :
in architecture, it's more like a instant message system?

Matt Lee @MattWeiHungLee_twitter :
@garyyu we'll think it over for sure, thanks for the reminder
Yes on the same line, we simply think transaction is a form of communication, and that's most intuitive

Noah Yeh @noahyeh_twitter :
Wonderful, thanks @MattWeiHungLee_twitter , I believe this has been a productive meeting, thanks guys, if your project wishes to join the next Grin Community Project Day, it will be after the first May governance meeting on May 7th 5PM UTC, PM me if you feel like joining

Matt Lee @MattWeiHungLee_twitter :
Thank you @noahyeh_twitter

———————————————————————————————————————————————————

Noah Yeh @noahyeh_twitter :
Thanks @xiaojay @lehnberg @DavidBurkett @MattWeiHungLee_twitter again for participating!
And we’ll have a PR for this for you later as well @lehnberg