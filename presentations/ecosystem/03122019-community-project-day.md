### Grin Community Project Day, grin/ecosystem, Mar 12 2019

ID | Speaker | Topic | Link |
|---|:---|:---|---|
1 | David Burkett@DavidBurkett | Grin++ | https://youtu.be/c5qvmqgrWyo?list=PLvgCPbagiHgqOe0z_xgrIsGq-ayVZcNjy&t=1110 |
2 | Ivan Sorokin @i1skn | Ironbelly | https://cycle42.com/ironbelly |
3 | Matt Lee @MattWeiHungLee_twitter  | Giggle Wallet | https://sketch.cloud/s/eoK9W/3Op2W0m/play |
4 | nijynot @nijynot | Grin Wallet GUI project |  https://static-mpeq1w9vd.now.sh/ |
5 | hashmap @hashmap | Knockturn Allee | https://cycle42.com/knockturn |
6 | lehnberg @lehnberg | Wallet 713 | https://github.com/vault713/wallet713 |



Meeting record is as below.

Hi guys! Welcome to the first “Grin Community Project Day”! This meeting was started by @gavinmcdermott and I am honored to be the host here, this meeting will be conducted on monthly basis after the first governance meeting every month, to keep us informed on what’s happening around the community, and for the projects to ask for your help. We’ll kick this thing off in 5 minutes with the following groups.
5:00 PM UTC - Grin++
5:08 PM UTC - Ironbelly
5:16 PM UTC - Giggle Wallet
5:24 PM UTC - Grin Wallet GUI project
5:32 PM UTC - Knockturn Allee
5:40 PM UTC - Wallet 713
5:48 PM UTC - Wrap up and ask for community feedback
Every group will give a short introduction of their products and latest updates, the rest of the time they’ll be taking questions, please let them know if you have any!

---------- Grin++ ----------

Noah Yeh@noahyeh_twitter : It’s time! let’s start with Grin++ by @DavidBurkett !!
Noah Yeh@noahyeh_twitter :  Here’s the project introduction provided.
Grin++[1] is the only alternative implementation of the Grin protocol. It’s written in C++ with a windows-first attitude, with the hope that Grin can be made more accessible to the less technically adept common folk. I’m hoping to meet this goal by offering a variety of ways to send and receive transactions without the need to configure port forwarding on routers - something the average individual isn’t capable of doing. Just a few of the many ways I’m looking at doing this is through Magic Wormhole[2], integration with Grinbox[3] (or equivalent), or some form of overlay network on top of the existing p2p protocol.
You can hear more about it here:
https://youtu.be/c5qvmqgrWyo?list=PLvgCPbagiHgqOe0z_xgrIsGq-ayVZcNjy&t=1110
[1] https://github.com/GrinPlusPlus/GrinPlusPlus
[2] https://github.com/warner/magic-wormhole
[3] https://grinbox.io/

Noah Yeh@noahyeh_twitter : 
@DavidBurkett what’s the status of the project?

David Burkett@DavidBurkett : 
The node was beta released ~3 weeks ago, with many users thrilled about how much faster the syncing process was, and how resource efficient it was. There is still a lot more work to be done here, but the current code provided enough of a foundation to start working on the wallet, which will be beta-released any day now. I was hoping to release it this past weekend, but a few roadblocks delayed the release. This Friday at the latest though.
The wallet currently has a (very) minimal electron UI built using react. It interacts with the C++ node and wallet using Rest APIs.

And it’s super-fast! Just today I was able to completely restore a wallet with outputs from seed words in 2.4seconds. The rust client took 26s.

Matt Lee @MattWeiHungLee_twitter : 
Will Grin++ wallet support mobile in the future?

David Burkett@DavidBurkett : 
Maybe, but it’s not my immediate goal. IronBelly is in a much better position to fill that need

Noah Yeh@noahyeh_twitter : 
What kind of help are you looking for?

David Burkett@DavidBurkett : 
It is currently only me working on it, aside from a basic electron/react template that was provided to me by an old friend.
The last UI development I did was in college when I used JQuery and Struts, so it’s obvious I have no real experience as a modern UI developer. This is where you guys come in!
I’d be fine with never touching HTML, CSS, or JS again, and would gladly hand off UI development to one or many of you. I’m certain anything UI you guys build would be far superior to anything I could piece together, and not having to worry about the UI would allow me to focus on where I could add the most value: the wallet and node logic.

jaspervdm @jaspervdm
any plans to port speed improvements into regular grin node?

David Burkett@DavidBurkett : 
Yes, definitely!! Once I get everything released, and have some breathing room, I have a big list of improvements to make to the rust client

Gary Yu @garyyu :
Are you working alone for this wonderful C++ project?

David Burkett@DavidBurkett : 
For now, but it doesn’t have to stay that way. I’ll gladly accept any help I can get. I don’t want to be the guy who writes all the code, and then hands the testing off to others, but getting some solid tests around everything is really where I need the most help with the C++.

RyanHu1208@RyanHu1208 :
great work again :) may u give us a scenario that we could imagine what GRIN++'s major focus right now?

David Burkett@DavidBurkett : 
I’m ADHD. Lots of major focuses. Usability, performance, scalability.

Gary Yu @garyyu :
After a formal release, I strongly propose you to have a funding campaign for a Security Audit fund, we can discuss later.

David Burkett@DavidBurkett : 
Agreed

Gavin McDermott@gavinmcdermott :
Thanks for the notes about where people can help @DavidBurkett - so if folks are open to supporting your project, what's a preferred way for them to get in touch with you?

David Burkett@DavidBurkett : 
Gitter, email (davidburkett38@gmail.com)

Noah Yeh@noahyeh_twitter : 
Ok thank you @DavidBurkett, next up is Ironbelly by @i1skn

---------- Ironbelly ----------

Ivan Sorokin @i1skn : 
Hi everyone! I want to present Ironbelly - open-source Grin mobile wallet. All the source code is available under Apache2. Currently only iOS is supported and the wallet operates only in floonet. Soon, I plan to open it for mainnet and start to work on Android implementation. It uses rust code from grin-wallet and React-Native for the UI layer. Your seed lives only on the device and never leaves it. Think of it as CLI Grin wallet, but just with the UI interface. You can get from https://cycle42.com/ironbelly

crazymonkyyy @crazymonkyyy :
eta android

Ivan Sorokin @i1skn : 
I have not started on it yet. I plan to do it after opening iOS versiob for mainnet

RyanHu1208 @RyanHu1208 : 
Except file exchanging, do you guys have any idea on that everybody want a mobile wallet which is more convenient to use?

Ivan Sorokin @i1skn : 
We plan to add https transactions (actually working on it right now) and relay solutions (aka Wallet713)

Gary Yu @garyyu :
you mean a wallet call another wallet service?

Ivan Sorokin @i1skn : 
no, I meant Grinbox support for the beginning

RyanHu1208 @RyanHu1208 : 
noted, and is it possible have an isolated wallet installation on mobile ? without building a node.

Ivan Sorokin @i1skn : 
Yes, but that's not on my priority list right now. There far more needed things for the users :)

Matt Lee @MattWeiHungLee_twitter :
Lots of exchanges use grinbox, how to transfer grin from exchange to Ironbelly?

Ivan Sorokin @i1skn : 
I plan to add Grinbox to Ironbelly as well

Noah Yeh @noahyeh_twitter :
do you guys need any help from the community? I believe the logo project went well for you?

Ivan Sorokin @i1skn : 
Yeah, I think if somebody would help with Android version (there is already started by @liamaharon) - that would be perfect!

Gavin McDermott @gavinmcdermott :
what's the best way for people to reach you if they are interested in supporting you?

Ivan Sorokin @i1skn : 
https://gitter.im/ironbelly-wallet/community

Noah Yeh @noahyeh_twitter :
Thanks @i1skn ! this is great, next up is Giggle from @mattlee0406
A short note, this spot was originally for SuperGrin, but there were some last minute changes so Giggle is filling in for SuperGrin, I think we’ll see SuperGrin next time.

---------- Giggle Wallet ----------

Here’s the introduction provided
Giggle is an iOS/Android Grin wallet under development, we try to build an intuitive user interface, and a different username system, first of all we replace public keys with a 6-digit username (because it’s easy for human beings to remember), and give wallet users the ability to add and delete avatars as they like, without affecting wallet balance. Simply put, you can create different avatars for your wallet when transacting with people, making privacy first priority. Here’s a very early look of the UI https://sketch.cloud/s/eoK9W/3Op2W0m/play

Matt Lee @MattWeiHungLee_twitter :
we’re currently still very early, just filling in for SuperGrin’s spot.
But we’ve been testing with our user experience.
Seems to be working for some of the testers

Ivan Sorokin @i1skn : 
Do you write Swift/Java implementation of Grin or using original Rust code?

Matt Lee @MattWeiHungLee_twitter :
we’re using react on UI.

Ivan Sorokin @i1skn : 
do you use relay service behind this 6 digit like Grinbox?

Matt Lee @MattWeiHungLee_twitter :
our wallet address is using Gribox, and every 6-digit code is based on a grinbox address.

Ivan Sorokin @i1skn : 
So, do you use only React Native? How are you signing the transactions?

Matt Lee @MattWeiHungLee_twitter :
we use Java to sign transactions

Ivan Sorokin @i1skn : 
I see, thanks!

crazymonkyyy @crazymonkyyy :
Security model on the whatever username to secret key system?

Matt Lee @MattWeiHungLee_twitter :
the avatars can be added and deleted at anytime.

crazymonkyyy @crazymonkyyy :
are the 6 code related spending the coins at all or is it just a layer on grinbox

Matt Lee @MattWeiHungLee_twitter :
just a layer of grinbox

hashmap @hashmap :
do you have a presence service - a central directory of users?

Matt Lee @MattWeiHungLee_twitter :
so far yes

hashmap @hashmap :
does 6 digits mean you are not very agressive in terms of user growth?:)

Matt Lee @MattWeiHungLee_twitter :
we’re sticking to 6 digit for now with both english characters and numbers, we think this is enough for the short term

Noah Yeh @noahyeh_twitter :
Great, this is wonderful, next up is Grin Wallet GUI project from @nijynot.

---------- Grin Wallet GUI project ----------

Here’s the introduction provided.
grin-wallet-gui(temporary name) is a wallet for Grin built with React Hooks and Electron. It supports file transactions, http transactions and base58 string transaction.

what is the current status of the project?

nijynot @nijynot : 
The project is still in it's early days, still working on the beta. Have made some progress and will paste them here. Site: https://static-mpeq1w9vd.now.sh/

jaspervdm @jaspervdm ：
nice, is it basically a GUI wrapper around the grin wallet owner API?

nijynot @nijynot : 
https://files.gitter.im/grin_community/ecosystem/wpAs/wimble-send-tx-1.gif
Yup, correct. It's just a wrapper, and will be that way. The project will be very minimal, and not add too many features.

Noah Yeh @noahyeh_twitter :
how did you make the choice choosing between file transfer and grinbox, just curious

nijynot @nijynot : 
Grinbox support is not there yet, i'm mostly focusing on the basics, file, base58/64 string, and http。
I'm thinking that base58 string might be a good way to transfer, as saving and picking files is pretty hard. Files requires at least 4 clicks, while copy pasting is way faster on desktop.

RyanHu1208 @RyanHu1208 ：
this gui installation still need a grin node prerequisive?

nijynot @nijynot : 
The GUi will need a grin node, yes。

lehnberg @lehnberg ：
yep - super useful. we really need as many people as possible taking different stabs at desktop & mobile GUIs so we as a community can see what works and what doesn’t.

Gavin McDermott @gavinmcdermott :
@nijynot - are you looking for help in any areas of the product?
And @lehnberg - you're so right.

nijynot @nijynot : 
Hmm, not sure yet. Mostly experimenting and trying things out atm, will let the community know when I'm ready to take on help!

Gavin McDermott @gavinmcdermott :
as this advances, might be nice to figure out the best way to bundle up a node; I'll reach out offline

nijynot @nijynot : 
True. Will ponder on that.

lehnberg @lehnberg :
just a question for any aspiring wallet designers lurking out there - how messy is it to work with the wallet owner API today?

nijynot @nijynot : 
The owner api is alright. I think the V2 api will be very easy to work with though and better.

Noah Yeh @noahyeh_twitter :
Thanks @nijynot ! The next one is quite interesting, Knockturn Allee from @hashmap

---------- Knockturn Allee ----------

Here’s the introduction provided
Knockturn Allee is a grin payment processor named after Knockturn Alley, the word Allee is tribute to Berlin when the project was started. It allows merchants to easily accept grins. Currently it’s implemented as a centralized custodial service which requires no technical skills from a merchant.
Also there will be a self-hosted (single-tenant) version of the service, which will deliver all required components in an easy to install package.
At the moment we have an opensource plugin for WooCommerce/WordPress and API which allows to develop plugins for other e-commerce platforms.
Next version will support not just e-commerce use case, but also donation campaigns, making easy to start one and deliver transparency reports. https://cycle42.com/knockturn
direct video link https://vimeo.com/322912245

Noah Yeh @noahyeh_twitter :
do you guys have a specific market now? maybe dark net or somewhere else?

hashmap @hashmap :
any business. We may start with tmgox.com

RyanHu1208 @RyanHu1208 :
People have to switch between terminal and browser to complete this online shopping, it's a bit complicated for non-engineering background users, do you have any plan to go thru it?

hashmap @hashmap :
they may use all those great wallets.

Noah Yeh @noahyeh_twitter :
when is the next version coming out?

hashmap @hashmap :
Self hosted? April looks doable, need to solve many usability issues aroun installation of all grin components.

Matt Lee @MattWeiHungLee_twitter :
what kinds of e-commerce platforms will Knockturn Allee aim to?

hashmap @hashmap :
So far we support WooCommerce, but it was just a starting point
Plugin took 1-2 days including learning php (last time I used it in 1999)

Noah Yeh @noahyeh_twitter :
any plans on boosting usage?

hashmap @hashmap :
not yet

Gavin McDermott @gavinmcdermott :
Are you comfortable sharing what's on your immediate roadmap.
And are there any places you could use help from devs / designers / writers / creators in the community?

hashmap @hashmap :
beta test, payouts.
after we opensource code, in a month or so.

Noah Yeh @noahyeh_twitter :
OK thanks @hashmap this is awesome, Love it, last project we’re all very familiar with, wallet 713 by @lehnberg

---------- Wallet 713 ----------

lehnberg @lehnberg :
vault713
vault713 is a team consisting of @ravidio @jaspervdm and myself. We want to make it easy to send, store, and swap Grin. We're developers of wallet713 and grinbox transaction protocol.
For those not familiar, grinbox is an open transaction protocol that gives every user an address to send and receive transactions with. All communication is kept off-chain and is not related to the grin protocol, it's end-to-end encrypted, and supports asynch communication, i.e. users do not need to be online at the same time to send transactions to each other. It's free for anyone to use and integrate. The relays are designed to not store any persistent data.
Here are a couple of recent updates and what we're focused on next for our open source efforts:
Updates
Grinbox now supports full federation and the relay is open source. Any user, business, or other organisation is encouraged to run their own relays and handle their own transactions.
By using wallet713 in combination with Grinbox, it's easy to create and verify transaction proofs, essentially proving that you are the recipient or sender of a particular transaction. This is useful as you interact in business transactions for example.
Next up
Streamlining the wallet713 onboarding to make it easier to download, install, set up, and keep your wallet up to date
Windows support
MVP of a desktop GUI. We're working with people in /design but welcome others to contribute as well!
Contributions / Get in touch
We welcome contributions! Please check out our repos or come to our Gitter channel and say hello. We're also on keybase where you can reach out to me (@lehnberg) and I can invite to you to chat.

Noah Yeh @noahyeh_twitter :
@lehnberg that’s very detailed hahahaha
Having trouble coming up with a question now

Noah Yeh @noahyeh_twitter :
how’s usage and do you guys have any plans for growth? @lehnberg
I think a lot of exchanges already started adopting your solutions.

lehnberg @lehnberg :
yes - generally speaking there’s interest from mining pools, exchanges, and custody providers. We’ve got solutions for integrating Grin at scale, on production. Anyone interested is welcome to reach out. :)

Noah Yeh @noahyeh_twitter :
makes perfect sense

lehnberg @lehnberg 01:45
@noahyeh_twitter indeed, exchanges are using grinbox and wallet713, and we have a bunch of tricks that can make it really easy to handle high volume loads.

jaspervdm @jaspervdm
no ETA unfortunately

lehnberg @lehnberg :
it’s coming soon.

lehnberg @lehnberg :
Welcoming anyone who wants to work on gui flows, we have an MVP fairly defined, I’ve got an action to spec out what should be in each interaction, but most of it is already in the CLI wallet.
https://www.figma.com/file/MnAxjlR5xZb26nnpzeQ09Q3R/wallet713?node-id=1%3A50

Michalis Kargakis @kargakis :
am I right to think beam's bbs is similar to grinbox ?

lehnberg @lehnberg :
not really. grinbox is done through relay servers (like how email works), beam’s bbs is different.
--------------------------------------------------------------------------------------------------------------

Noah Yeh @noahyeh_twitter :
First of all thanks everyone for coming, and thanks @gavinmcdermott for kicking this thing off, we’ll continue to optimize this format as we go, the next one will also be after the first governance meeting of next month.

Gavin McDermott @gavinmcdermott :
So we are definitely in the early days, but it is great to have people in this still small-ish community gathering to share what's being developed and ask for help. It'll be great to see adoption start to move in the next few months as things continue to evolve!
Thanks @noahyeh_twitter for keeping this running smoothly.

Noah Yeh @noahyeh_twitter :
For projects who feel like presenting in the next project day, please PM me.

Ignotus Peverell @ignopeverell :
Thanks @noahyeh_twitter for organizing and thanks to all the the projects that presented, very excited to try all of them when ready! :-)

