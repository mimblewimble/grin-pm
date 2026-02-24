### Grin Community Project Day, grin/ecosystem, July 2 2019

ID | Speaker | Topic | Link |
|---|:---|:---|---|
1 | nijynot @nijynot | Grin wallet (Wimble) | https://www.figma.com/file/a1VuKCl7nG0b0zi6yypCi6/Wimble-Wallet-V2?node-id=84%3A24 |
2 | Rheza Pahlevi @rheza | SuperGrin | https://github.com/rheza/SuperGrin |
3 | lehnberg @lehnberg | vault713 | https://github.com/vault713 |
4 | David Burkett @DavidBurkett | Grin++ | https://forum.grin.mw/t/yo-dawg-i-heard-you-like-coinjoins/5296 |
5 | hashmap @hashmap | Knockturn Allee | https://cycle42.com/knockturn |


Agenda 

5:00 PM : Grin wallet (Wimble) by Nijynot
5:10 PM : Wallet project by Rheza
5:20 PM : Vault713 by Lehnberg
5:30 PM : The Future Of Grin++ by David
5:40 PM : Update for Knockturn Allee by Hashmap (Only a quick announcement)


Noah Yeh @noahyeh_twitter 
this month’s Ecosystem Meeting will have 4 teams giving updates and ask for help, schedule as below, each team will get 10 minutes to answer questions and talk to you, please ask any questions you have in mind


———————————————————————————————————————————————————
Grin wallet

Noah Yeh @noahyeh_twitter
It’s time! July’s Grin Community Project Meeting is kicking off,
@nijynot ready? Can you give us a quick update?

nijynot @nijynot 
Hey, this will be a small update from me on the Grin wallet that I'm working on.
Mostly design related updates, here's a link to the figma: https://www.figma.com/file/a1VuKCl7nG0b0zi6yypCi6/Wimble-Wallet-V2?node-id=84%3A24

Noah Yeh @noahyeh_twitter 
@nijynot is this for iOS or Android?

nijynot @nijynot 
Been thinking about how to reduce the friction of sending Grin around
It'll first be on desktop
But might create an iOS app later on with React Native

Rheza Pahlevi @rheza 
is it react native or electron ?

nijynot @nijynot 
On desktop it'll be electron

Noah Yeh @noahyeh_twitter 
wonderful do you have a timeline on this?

nijynot @nijynot 
Not really, just trying to get the wallet's design in a good shape
Beta coming soon (tm)

ryanatpicchu @ryanatpicchu 
hi @nijynot is that slate be stored on centralized server or somewhere else until finalizing?

nijynot @nijynot 
Hey, nope, there will not be any centralized servers

Noah Yeh @noahyeh_twitter 
looking forward to it, are u doing this all by yourself?

nijynot @nijynot 
It'll be an electron app wrapped around the grin-wallet

lehnberg @lehnberg 
very cool @nijynot

nijynot @nijynot 
Yeah, solo atm
@lehnberg Thx!

Noah Yeh @noahyeh_twitter 
Desktop as in windows?

nijynot @nijynot 
Yeah, for windows, mac and linux.
Electron should ship to all desktop platforms.

Noah Yeh @noahyeh_twitter 
wonderful, looking forward to beta

nijynot @nijynot 
@noahyeh_twitter :ok_hand:

b33rkeg @b33rkeg 
Will you integrate grinbox?

nijynot @nijynot 
Not much more to report on my side, could probably move on if Rheza is ready
Hmm, not sure yet

Noah Yeh @noahyeh_twitter 
do you need any help with the project that we can ask around?

nijynot @nijynot 
Yeah, design feedback would be nice
On usability, and if it's obvious on what's happening on each screen

Noah Yeh @noahyeh_twitter 
sounds good, this meeting notes will go on to Github for people to explore

nijynot @nijynot 
Grin txs are more tricky to handle as you can't just enter an address and send your coins, so designing it with less friction is what takes more time

Noah Yeh @noahyeh_twitter 
1 min left

ryanatpicchu @ryanatpicchu 
@nijynot but if you do not store the slate in somewhere temporary, how can the slate be used when recipient online?

nijynot @nijynot 
Slates will need to be sent through e.g. messaging apps or other services
As a string, or as a file

ryanatpicchu @ryanatpicchu 
@nijynot oh got it thanks man, great work again :)

———————————————————————————————————————————————————
SuperGrin

Noah Yeh @noahyeh_twitter 
Thanks @nijynot ! great update, let’s move on to @rheza

nijynot @nijynot 
:pray:

Noah Yeh @noahyeh_twitter 
@rheza can you give us an introduction on what you’re working on?
or update

Rheza Pahlevi @rheza 
Hi All
I'm Rheza, I developed SuperGrin in february, its just a quick GUI wrapper to work on top of the node and wallet.
I do some simple hacking to release it as fast as possible, I do parsing the wallet output to interact with it.
It's not the right approach, but it handle all the job during my use.
for the next version of SuperGrin, I would like to work on it seriously, like fully rewrite it, and interact it with the correct API.
especially with the upgrade we have in Grin 2.0. it's been a long time since i work on SuperGrin, the last version embended on it is 1.0.2.
and hopefully now, the node and the wallet working natively on windows, I hope i can release windows version also.

Noah Yeh @noahyeh_twitter 
@rheza is there a link for the current version you can share with everyone?

Rheza Pahlevi @rheza 
The plan is now, fully rewrite, and work directly with the API, instead of parsing the output.
@noahyeh_twitter here you go, https://github.com/rheza/SuperGrin

Noah Yeh @noahyeh_twitter 
perfect

Matt Lee @MattWeiHungLee_twitter 
Do you have timeline on this?

Rheza Pahlevi @rheza 
still waiting for my spare time to do this, hopefully by this two weeks, i can release the beta version

Noah Yeh @noahyeh_twitter 
@rheza what’s not good enough for you with the current version?
I remember hearing people talking about Grin has more windows users, do you think that’s the case? How’s adoption so far?

kurt coolman @coolman_kurt_twitter 
It’s cool to have a simple wallet that interacts very closely with « official » wallet. Will find its public for sure. great job

Rheza Pahlevi @rheza 
the current version, more like hacking app, so not really working great, most of the function is just a hack to the grin-wallet directly hahaha

Noah Yeh @noahyeh_twitter 
I see

Rheza Pahlevi @rheza 
I remember hearing people talking about Grin has more windows users, do you think that’s the case? How’s adoption so far?

yeah, after the grin launch they are asking for windows wallet. but that time the node and wallet only run on linux and mac, so not other way to have windows wallet


Noah Yeh @noahyeh_twitter 
yes I see

Rheza Pahlevi @rheza 
now the node and wallet already working flawlessly I think, so to develop wallet on top of the native node and wallet will be more easy

Noah Yeh @noahyeh_twitter 
good timing now then
any help needed for your project? Are you working on this alone?

Rheza Pahlevi @rheza 
yeah, with the node and wallet, and also the grin version 2, seems like perfect time to redevelop it
i think i just need some help to do the test on the next release i think

Noah Yeh @noahyeh_twitter 
1 min left

Rheza Pahlevi @rheza 
so i can fix any problem ASAP

Noah Yeh @noahyeh_twitter 
Will be here to help for sure

Rheza Pahlevi @rheza 
but the grin community grow much bigger in the past few months, so should be no problem to find the user
yess @noahyeh_twitter

Noah Yeh @noahyeh_twitter 
sounds good
ok thanks a lot @rheza looking forward to testing, @lehnberg you’re up

———————————————————————————————————————————————————
vault713

lehnberg @lehnberg 
hello all!
my brain is a bit fried after a 2hr governance meeting and an exhausting day in general so please bear with me here :)

invertedcrosss @invertedcrosss_twitter 
:wave:

lehnberg @lehnberg 
I’m 1/3rd of vault713
we’re creators of wallet713, grinbox, and grinswap
on the wallet side, we’ve been busy doing refactoring and getting ready for the 2.0.0
getting rid of a lot of technical debt
and this will make it easier for us to add new features in the future
integrating atomic swaps and also support a GUI
we’re going to have OSX and linux binaries ready for the wallet before the hard fork

Noah Yeh @noahyeh_twitter 
@lehnberg did you guys run into any challenge preparing for 2.0 that you can share with us developers?

lehnberg @lehnberg 
we’re also windows compatible but won’t have a binary ready as we’ve not set up azure pipelines
but you can build from source and it will work
@noahyeh_twitter nothing comes to mind in particular

Noah Yeh @noahyeh_twitter 
no problem, just wondering ha

lehnberg @lehnberg 
in general the transition to the new slate version has been messy as been raised many times
but with 2.0.0 we’re starting from a clean… wait for it… slate
and hopefully things will be smoother
on the grinswap side, @jaspervdm’s been busy

invertedcrosss @invertedcrosss_twitter 
Will grinswap (atomic swap between grin and bitcoin) be integrated in the GUI 713 wallet?

Matt Lee @MattWeiHungLee_twitter 
When will grinswap support BTC?

lehnberg @lehnberg 
@invertedcrosss_twitter grinswap will be integrated

invertedcrosss @invertedcrosss_twitter 
Thank you

lehnberg @lehnberg 
grinswap will be supporting btc
but not sure if GUI will support it out of the door
we’ll start with CLI to begin with most likely
on the swap side @jaspervdm managed to reduce number of round trips required but there’s still a lot of work to do.
on the grinbox side @ravidio has been working on a refactoring but has been swamped with his day job
in general we’re friendly toward pull requests on wallet, and merge contributions
hoping to have more to update on in the future
a lot of my time has been spent on other projects and on grin governance

Noah Yeh @noahyeh_twitter 
this may be unrelated, @lehnberg do you have any guidance for other projects on working together when everyone has a day job?

lehnberg @lehnberg 
Ha! good question
I would say set small achievable goals

Noah Yeh @noahyeh_twitter 
just thought to get some tips from you, vault713 seems to be working well as a team
noted
1 min

lehnberg @lehnberg 
and even getting like one hour or 30 mins focused work per day does wonders

Noah Yeh @noahyeh_twitter 
for sure, how often do you guys meet?

lehnberg @lehnberg 
weekends are helpful
and just stop hanging out with your friends and partners :)
how often do you guys meet

We try to meet once every other month or so


Noah Yeh @noahyeh_twitter 
Noted, thanks @lehnberg ! @DavidBurkett ready?

lehnberg @lehnberg 
next one will be in July in London for the grin meetup, come and say hi!
:)
Thanks all!

David Burkett @DavidBurkett 
ready

Noah Yeh @noahyeh_twitter 
thanks!

———————————————————————————————————————————————————
Grin++

David Burkett @DavidBurkett 
Didn’t get much chance to prepare, unfortunately, but here’s a quick summary of where Grin++ is going over the next few months:
Grin++ is starting to be used by a significant number of users, which opens up a lot of doors. We can now finally begin to take full advantage of an alternative implementation by experimenting with new features. There are 2 new features that I’m most excited about trying out:

1 - GrinJoin: You can read the details of the proposal here: https://forum.grin.mw/t/yo-dawg-i-heard-you-like-coinjoins/5296
TL;DR: Grin++ will be integrating with a service I’m developing that will allow users to optionally send their transaction to a CoinJoin-like service, which should help further break tx linkability

2 - Decentralized Addressing: Similar to vault713’s Grinbox and Beam’s SBBS, I plan on experimenting with schemes for adding “offline” transactions using bitcoin-like addresses to Grin, without the need for central server’s that could be used to compromise users’ privacy. I plan on working closely with vault713 devs, and with a few Beam devs to learn from their experiences. The goal is to make this work seamlessly with i2p once we make the transition.

If you’re interested in helping out with any of these projects, don’t hesitate to reach out!


Noah Yeh @noahyeh_twitter 
@DavidBurkett congrats on the user growth, can you walk us through why GrinJoin is needed?

David Burkett @DavidBurkett 
Oh, also, I’d like to make the Mac version of Grin++ suck less (TM), so any mac devs out there that are interested in helping out, I could use the help!
@noahyeh_twitter Sure! Right now, Grin is new, and blocks are very small. Because of this, you can still learn quite a bit from tx graphs

b33rkeg @b33rkeg 
How is the funding campaign going?

David Burkett @DavidBurkett 
Beam tries to solve this using “Decoy outputs”, but there’s a limit to what they can accomplish, and they affect scalability
@b33rkeg Terrible. Thanks for asking!
I had one really big donation, as most are aware, thanks to @vcorem. But aside from that, I received 1 Zec and 1.5 grin
I haven’t checked in the past few days though, so that could’ve changed

Noah Yeh @noahyeh_twitter 
I see, just wondering, does this problem GrinJoin is trying to solve go away in the longer term?

David Burkett @DavidBurkett 
Link for those interested in donating: https://forum.grin.mw/t/funding-campaign-grin/5277

chisana @chisa0a 
@DavidBurkett interested in the offline capabilities, and helping with I2P integration.
congrats on user growth!

David Burkett @DavidBurkett 
@noahyeh_twitter Nope, it still has the advantage of being combined with other transactions before being “fluffed” to the network. In other words, even with full blocks, transactions are usually broadcast as-is before being included in the block. I can explain that in more detail to anyone interested if they DM me.
@chisa0a Thanks. I definitely will be reaching out when I start diving deeper into the addressing portion. And of course, when I integrate with i2p

Noah Yeh @noahyeh_twitter 
Got it, David do you mind sharing the number with user growth? Just wondering the traction level Grin is getting

David Burkett @DavidBurkett 
I don’t keep metrics on downloads or users or anything. But a few long-running nodes I have access to indicate that roughly 30% of all IP addresses that have ever connected to the Grin network use Grin++

Noah Yeh @noahyeh_twitter 
perfect, congrats again

David Burkett @DavidBurkett 
I will likely never have better metrics than that, because I don’t want better metrics. I respect others’ privacy, and won’t intentionally do anything to compromise that

Noah Yeh @noahyeh_twitter 
that’s no problem, just curious
1 min

David Burkett @DavidBurkett 

As mentioned, if anyone at all is interested in helping in any way, I’d be happy to work with you!

Noah Yeh @noahyeh_twitter 
GrinJoin gna beta soon?

David Burkett @DavidBurkett 
After the hardfork. Maybe late August?

Noah Yeh @noahyeh_twitter 
sounds good, thanks again

David Burkett @DavidBurkett 
Np. Thank you, @noahyeh_twitter

———————————————————————————————————————————————————
Knockturn Allee

Noah Yeh @noahyeh_twitter
Thanks David, last project is Knockturn Allee from @hashmap , unfortunately he couldn’t join us this time, here are his project update to keep us in the loop
We migrated to actix 1.0
Second store may join beta program
If question, please DM @hashmap directly
thank you all for participating, like always we’ll put this meeting note on Github, best of luck to all the projects, and thanks for being here again

Matt Lee @MattWeiHungLee_twitter 
Thank you @noahyeh_twitter

lehnberg @lehnberg 
thanks for organizing @noahyeh_twitter!!

Noah Yeh @noahyeh_twitter 
My pleasure as always

b33rkeg @b33rkeg 
Thanks!
