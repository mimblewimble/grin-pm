### Grin Community Project Day, grin/ecosystem, May 7 2019

ID | Speaker | Topic | Link |
|---|:---|:---|---|
1 | hashmap @hashmap | Knockturn allee | https://cycle42.com/knockturn |
2 | xiaojay @xiaojay | Niffler | https://github.com/grinfans/niffler |
3 | cryptomainstream @cryptomainstream  | Grin Mainstream | https://grinmainstream.wordpress.com |
4 | lehnberg @lehnberg | Vault713 | https://github.com/vault713 |

Agenda 

5:00 PM : Knockturn allee update
5:10 PM : Niffler update
5:20 PM : Grin News aggregator
5:30 PM : Vault713 update

Noah Yeh @noahyeh_twitter 
this months Grin Community Project Meeting will have 4 teams giving updates and ask for help, schedule as below, the format will be a little different this time, each team will get 10 minutes to answer questions and talk to you, please ask any questions you have in mind
It’s time! May’s Grin Community Project Meeting is kicking off

———————————————————————————————————————————————————
Knockturn allee

Noah Yeh @noahyeh_twitter
@Hashmap ready? Can you give us a quick intro for Knockturn allee’s update?

hashmap @hashmap 
Sure https://cycle42.com/knockturn
It’s payment processor if you missed previous meeting
First real world deployment https://tmgox.com/ Grin payments get 33% discount! We processed first grin payments!

We support grin wallet 1.0 and 1.1 format

Binance Labs supports KA development

WooCommerce plugin https://github.com/cyclefortytwo/knockturn-woocommerce-gateway

Self-hosted version has been opensourced, should be production ready in 1-2 months https://github.com/cyclefortytwo/knockturn-allee

All we need is more merchants
Also we deployed a test store (on mainnet) https://store.cycle42.com/

Noah Yeh @noahyeh_twitter 
@hashmap So you made your first sale already I believe?

hashmap @hashmap 
Yeah, more than one even!

Noah Yeh @noahyeh_twitter 
congrats!

hashmap @hashmap 
On test store you can test the process by donating 7 cents (in grin) to us

Noah Yeh @noahyeh_twitter 
are they all on https://tmgox.com/ ?

hashmap @hashmap 
Yes, the only real merchant we have so far
Test store doesn’t sell tshirts, but takes your money
Fair deal I think

Noah Yeh @noahyeh_twitter 
Cool, any recent plans for merchant expansions?

Matt Lee @MattWeiHungLee_twitter 
" All we need is more merchants " What kinds of merchants do you prefer?

hashmap @hashmap
We are focused on technical developmennt in next 3 months
@MattWeiHungLee_twitter any, we are payment processor
We def need head of marketing

Matt Lee @MattWeiHungLee_twitter 
noted, we just wonder what sites would be using you first

hashmap @hashmap 
Tmgox was very special for us, that was the only preference

emptykeg @emptykeg 
Is there a specific chat for cycle42 / knockturn allee?

hashmap @hashmap
We have one for Ironbelly, I think I’ll create another one today or tomorrow

Noah Yeh @noahyeh_twitter
is there a criteria for this marketing hire?

hashmap @hashmap
Ah, we have integration with Ironbelly - one tap payment on KA

Noah Yeh @noahyeh_twitter 
yes please share the new chat with us here when ready

newtownf1 @newtownf1 
Is iron belly Mainet?

hashmap @hashmap 
Yeah, for a few weeks

Noah Yeh @noahyeh_twitter 
@hashmap 2 mins left

newtownf1 @newtownf1 
Attempts to reach out to Andreas antonopolous for writing mastering grin
And to have him firstly come to a grin dev conference

hashmap @hashmap 
Paying with Ironbelly on Knockturn Allee is very nice experience, I even feel an urge to spend more

newtownf1 @newtownf1 
Best ui ux grin wallet ?
Would you say iron belly?
Don’t feel@like using grin wallet anymore but something with a much better ui ux experience

hashmap @hashmap 
SElf-hosted version will get a lot of love in next 3 months, but so far we need more merchant on our custodial platform - to discover issues and fix them

Noah Yeh @noahyeh_twitter 
Perfect, thanks for the questions guys, @hashmap thanks again for joining us, next up is one of the newest project Niffler, @xiaojay ready?

hashmap @hashmap 
thanks @noahyeh_twitter !

———————————————————————————————————————————————————
Niffler

xiaojay @xiaojay 
sure

Noah Yeh @noahyeh_twitter 
Here’s a quick intro of Niffler

In the last month， using offical grin-wallet v1.1.0-win-beta as backend, with a little struggle with slate file version issue, Niffller finally support windows/linux/mac。
Another function in Niffler worth to mention is hedwig(v1), which is a relay service for user without public ip to receive grin. It like a simplified ngrok(https://ngrok.com/), provide user a temporary address to receive grin. When someone send grin to the address, hedwig(v1) server will forward the send request to user's local wallet, and finally user could get his grin. Despite its ease and simplicity, hedwig(v1）is just a workaround solution for now. Because you need trust our server first. And we will open source this solution after carefully check the code.

xiaojay @xiaojay 
Niffler is an out-of-the box user-friendly gui Grin wallet，support mac/linux/windows. https://github.com/grinfans/niffler
if you missed previous meeting

Noah Yeh @noahyeh_twitter 
guys please let @xiaojay know if you have any questions for him

LokarBOA @LokarBOA 
I assume this wallet includes the node?

Noah Yeh @noahyeh_twitter 
@xiaojay can you elaborate on the temporary address?

xiaojay @xiaojay 
No, it not included node right now
it use a public node i built
because it seems take long time to sync

LokarBOA @LokarBOA 
having it included in the package goes a long way toward making it easy to setup but I'm sure you are aware.

Matt Lee @MattWeiHungLee_twitter 
How is the adoption so far?

xiaojay @xiaojay 
not very much @MattWeiHungLee_twitter just hunders of user

Noah Yeh @noahyeh_twitter 
@xiaojay I remember you saying Windows has more Grin users last time yes? are new users all coming from Windows?

Matt Lee @MattWeiHungLee_twitter 
Awesome!

xiaojay @xiaojay 
@noahyeh_twitter yes, windows user is much more

Noah Yeh @noahyeh_twitter 
Interesting, never really understood why that is
do you have an idea where your users are coming from?

xiaojay @xiaojay 
windows user base is much larger, i think

Noah Yeh @noahyeh_twitter 
true

Matt Lee @MattWeiHungLee_twitter 
What is Niffler’s next step?

xiaojay @xiaojay 
hedwig(v2) maybe
hedwig(v2) is much like a simplified openpgp mail system
which is more sercurity compared hedwig(v1)

Matt Lee @MattWeiHungLee_twitter 
Expected!

xiaojay @xiaojay 
@cryptomainstream thank you :)

Noah Yeh @noahyeh_twitter 
@xiaojay 1 min left
anything you want to ask the community for help with?

xiaojay @xiaojay 
i will propose the more details idea of hedwig v2 in grin-forum to see community oppions

Noah Yeh @noahyeh_twitter 
sounds good

Noah Yeh @noahyeh_twitter 
Thanks @xiaojay , looking forward to what’s coming next, next up is @Cryptomainstream ’s Grin Mainstream, I believe @Cryptomainstream is ready

xiaojay @xiaojay 
it's ok
thanks

———————————————————————————————————————————————————
Grin Mainstream

Noah Yeh @noahyeh_twitter 
Grin Mainstream’s goal is to concentrate all the Grin-related information on a single website and try to translate it into as many languages ​​as possible, in order to make Grin more Mainstream and help it spread.

cryptomainstream @cryptomainstream 
Our website will be developed at the URL https://grinmainstream.wordpress.com

Noah Yeh @noahyeh_twitter 
anyone has questions for @cryptomainstream ?

cryptomainstream @cryptomainstream 
Actually it isn't online

Noah Yeh @noahyeh_twitter 
No problem
@cryptomainstream what are your first choice of languages you’re gna be translating to

Matt Lee @MattWeiHungLee_twitter 
Which language will you need?
😂😂

emptykeg @emptykeg 
and who will translate it?

cryptomainstream @cryptomainstream 
We do the same job for another cryptocurrency, called IoTeX, but let's focus on Grin today.

Noah Yeh @noahyeh_twitter 
of course

xiaojay @xiaojay 
what's workflow to tanslate?

Noah Yeh @noahyeh_twitter 
@cryptomainstream also when will it launch?
@cryptomainstream if you have specific languages you need help with, the community might be able to help, this meeting is a place to ask for an extra hand as well

cryptomainstream @cryptomainstream 
we are putting together a team of people to translate everything, initially it will be free but then it will be rewarded

Noah Yeh @noahyeh_twitter 
interesting, can I ask how the reward system works?

cryptomainstream @cryptomainstream 
I hope for maximum 1th June it will be online
help in any language is welcome, but we only accept native speakers

Noah Yeh @noahyeh_twitter 
we’ll be looking forward to it, if so please join our next Community Project meeting to showcase your work as well
which languages are u looking for help?

cryptomainstream @cryptomainstream 
like Grin, we do not make any official fundraising, but we do collect donations. Every time we receive a donation, we divide the proceeds based on the effort of our team

Matt Lee @MattWeiHungLee_twitter 
Next community project meeting will be on 6/4 FYI

Noah Yeh @noahyeh_twitter 
noted, that makes sense
@cryptomainstream 2 mins left for you

cryptomainstream @cryptomainstream 
we are looking for native speakers in English, French and Spanish
we raise funds in more than 10 cryptocurrencies, including Grin

Noah Yeh @noahyeh_twitter 
Cool, please PM @cryptomainstream if you feel like helping out with translation guys

cryptomainstream @cryptomainstream 
This is our telegram group : https://t.me/cryptmainstream
Thank you so much

Matt Lee @MattWeiHungLee_twitter 
👍🏻

Noah Yeh @noahyeh_twitter 
Perfect, thanks again @Cryptomainstream , next up is Vault713 from @lehnberg , @lehnberg ready?

———————————————————————————————————————————————————
Vault713

lehnberg @lehnberg 
Hi all! o/
@ravidio, @jaspervdm and myself are vault713, creators of wallet713 and grinbox.
we’re focused on making it easy to store, send and swap grin

Matt Lee @MattWeiHungLee_twitter 
Hi @lehnberg 👋

lehnberg @lehnberg 
Last month I mentioned that we’d be doing a fund raising effort to kick start work on Grin Swap - cross chain atomic swaps
We did that - https://gitcoin.co/grants/96/grinswap-cross-chain-atomic-swaps-with-grin
We got a lot of support from the community, including some grin donations
Thanks to all who contributed

Noah Yeh @noahyeh_twitter 
awesome!

Matt Lee @MattWeiHungLee_twitter 
Nice!

Noah Yeh @noahyeh_twitter 
and I believe adoption for grinbox has been growing?

lehnberg @lehnberg 
Among those who did was Binance Labs, who have kindly been supporting other open source projects in the Grin space

newtownf1 @newtownf1 
When will we be able to do the atomic swaps

lehnberg @lehnberg 
And I’ll be in Berlin on Thursday evening giving a talk at a Binance meetup at Full node

Noah Yeh @noahyeh_twitter 
@lehnberg are u guys incubated by Binance Labs?

lehnberg @lehnberg 
I’ll send event details here in this chat when I have them, those of you who are in berlin feel free to come and say hi!

xiaojay @xiaojay 
how many exchanges support grinbox?

lehnberg @lehnberg 
@noahyeh_twitter
and I believe adoption for grinbox has been growing?

Correct, we have teams reaching out to set up their own grin relay nodes


Noah Yeh @noahyeh_twitter 
that’s a good move for sure

lehnberg @lehnberg 
We have been working with (yet to be announced) mining pools to handle their payment processing

xiaojay @xiaojay 
congrats

newtownf1 @newtownf1 
So there is support by binance?

Matt Lee @MattWeiHungLee_twitter 
Good news!

0x986 @p19T86q_twitter 
nice

lehnberg @lehnberg 
And we use grinbox in our cold storage solutions that we’re also discussing to integrate with big investors

Matt Lee @MattWeiHungLee_twitter 
Like institutions?

lehnberg @lehnberg 
The grin price and the quantities available at the moment doesn’t make cold storage and multisig a big priority for teams at the moment, but it will be over time for sure
@MattWeiHungLee_twitter investment vehicles

newtownf1 @newtownf1 
Hardware wallet support outreach ?

lehnberg @lehnberg 
We have solutions ready to go when the time is right

Matt Lee @MattWeiHungLee_twitter 
Cool!

lehnberg @lehnberg 
@newtownf1 I believe @hashmap has been looking into hardware wallets he might be able to update

chisana @chisa0a 
I would love to be involved with hardware wallet support

lehnberg @lehnberg 
I believe there’s a blocker issue that needs to be fixed

emptykeg @emptykeg 
It's possible for vault713 to develop multisignature wallets?

newtownf1 @newtownf1 
He wallet equals big adoption. People want an easy and secure place to store their coins

lehnberg @lehnberg 
@emptykeg we have it ready, but not for wider public release yet

newtownf1 @newtownf1 
Hd wallet

emptykeg @emptykeg 
oh ok

Noah Yeh @noahyeh_twitter 
@lehnberg I’m still a little fuzzy on vault713’s relationship with Binance Labs, can you tell us more?

lehnberg @lehnberg 
just been a matter of priority and we’ve been focused on b2b solutions

newtownf1 @newtownf1 
K

hashmap @hashmap 
Yeah, at least for tresor, we are in the same boat with Blockstream

emptykeg @emptykeg 


newtownf1 @newtownf1 
Good to see ui and ux being built out. Worked for apple should work for us if we are focused on the end user

Noah Yeh @noahyeh_twitter 
@lehnberg 2 mins left

lehnberg @lehnberg
Back to GrinSwap and Atomic Swaps

Noah Yeh @noahyeh_twitter 
right hahaha

lehnberg @lehnberg 
The grin atomic swap pioneer @jaspervdm is leading the effort, hard at work, and we’ve got a three month plan in which we hope to deliver this

Noah Yeh @noahyeh_twitter 
when is the set launch date so far

lehnberg @lehnberg 
Open source, free for anyone to use, and we hope it will make OTC trading and private acquisiton of grin much easier

Noah Yeh @noahyeh_twitter 
wonderful

lehnberg @lehnberg 
Target is somewhere mid July

Noah Yeh @noahyeh_twitter
got it
ok thanks @lehnberg , I think that wraps up our meeting

lehnberg @lehnberg 
work on grinbox and wallet713 is moving forward as well, GrinSwap will be contingent on functionality in these products
great! thanks all for listening!
:wave:

Noah Yeh @noahyeh_twitter 
Thanks guys, if your project wishes to join the next Grin Community Project Day, it will be after the first June governance meeting 5PM UTC, PM me if you feel like joining
we’ll have the meeting note on Github tomorrow

Matt Lee @MattWeiHungLee_twitter 
Thank you @noahyeh_twitter

Noah Yeh @noahyeh_twitter 
Guys thanks again for taking part, will see you guys next month

newtownf1 @newtownf1 
Thx

emptykeg @emptykeg 
thanks @noahyeh_twitter

Noah Yeh @noahyeh_twitter 
my pleasure guys