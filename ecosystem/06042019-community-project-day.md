### Grin Community Project Day, grin/ecosystem, Jun 4 2019

ID | Speaker | Topic | Link |
|---|:---|:---|---|
1 | hashmap @hashmap | Knockturn allee | https://github.com/cyclefortytwo/knockturn-allee/releases/tag/v0.1-beta.1 |
2 | Ivan Sorokin @i1skn | Ironbelly | https://cycle42.com/ironbelly |


Agenda 

5:00 PM : Knockturn allee update
5:10 PM : Ironbelly


Noah Yeh @noahyeh_twitter 
this months Grin Community Project Meeting will have 4 teams giving updates and ask for help, schedule as below, the format will be a little different this time, each team will get 10 minutes to answer questions and talk to you, please ask any questions you have in mind
It’s time! May’s Grin Community Project Meeting is kicking off

———————————————————————————————————————————————————
Knockturn allee

Noah Yeh @noahyeh_twitter:
It’s time! June’s Ecosystem Meeting is kicking off,

@Hashmap ready? Can you give us a quick intro for Knockturn allee’s update?

hashmap @hashmap: 
sure
Internal code refactoring was made

The first binary release of opensource self-hosted versions has been published

We implemented support of grin ween wallet 1.1

Sentry support has been implemented, now operators can receive reports about serious errors in their system (0 reports from our installation so far).

The service is available over Tor network http://knockedx4ifwhwwt.onion we will publish a guide how to do it for self-hosted solution. Grin wallet doesn’t support txs over Tor yet, we are about to send a PR to fix it (not a full Tor integration, just support of torsocks).

Few more orders from tmgox.com were processed.

We are under a constant bot attack (not a DDoS), they try to exploit PHP vulnerabilities. It may be a coincidence, but many people think that KA is a PHP code, but in reality only Wordpress plugin is written in PHP and it’s deployed on a merchant side, the service itself is 100% Rust, so good luck with PHP exploits.

https://github.com/cyclefortytwo/knockturn-allee/releases/tag/v0.1-beta.1
Just found a tiny bug which requires a manual update of db, we will fix it asap and publish howto

Noah Yeh @noahyeh_twitter:
@hashmap can you share the reason you guys make the decision to go for Tor?
did you see more usage popping up there?

hashmap @hashmap:
Many of us use Tor so it’s natural to support it

Matt Lee @MattWeiHungLee_twitter:
When will you publish the guide for self-hosted solutions?

Noah Yeh @noahyeh_twitter:
right of course, just wondering if there’s some other reason behind

hashmap @hashmap:
In 1-2 weeks for sure

Matt Lee @MattWeiHungLee_twitter:
👍🏻👍🏻

hashmap @hashmap:
Writing docs is the hardest problem in computer science

Matt Lee @MattWeiHungLee_twitter:
agree😂😂

emptykeg @emptykeg:
Will you later add UI/UX ?

ryanatpicchu @ryanatpicchu:
What kind of intimate knowledge of rust you guys encounter? can you describe it ?

hashmap @hashmap:
Reg tor we don’t have any information on dark net’s adoption of grins or any other currencies

Noah Yeh @noahyeh_twitter:
sorry I’m gna ask the same question from last time, how’s usage so far, gained traction?

hashmap @hashmap:
@ryanatpicchu currently you need to install diesel cmd tool to create db, we will remove this requirement soon

Noah Yeh @noahyeh_twitter:
Dark net is still 99% BTC, I can share a report later

hashmap @hashmap:
@noahyeh_twitter some of our supporters contacted couple charities, we think about implementing a flow for accepting donations

Noah Yeh @noahyeh_twitter:
hmm interesting

hashmap @hashmap Jun:
@emptykeg we do have some ui for merchants - like reports etc. or you mean installer?

Noah Yeh @noahyeh_twitter:
didn’t think this would come up first
@hashmap 1 min left

emptykeg @emptykeg:
I meant on the payment page having colors,.... @hashmap

hashmap @hashmap:
again, we (grin) collect donations, so it’s natural for us
ah, sure, glad you saw this page!

Noah Yeh @noahyeh_twitter:
Perfect, thanks for the questions guys, @hashmap thanks again for joining us, @i1skn ready?

hashmap @hashmap:
thank you all!

Ivan Sorokin @i1skn: 
@noahyeh_twitter yeap

Matt Lee @MattWeiHungLee_twitter Jun 05 01:11
Thank you @hashmap

———————————————————————————————————————————————————
Ironbelly

Noah Yeh @noahyeh_twitter:
please go ahead and give an update of ironbelly

Ivan Sorokin @i1skn:
Ironbelly - mobile (currently only only iOS, but the first Android version should be available this summer) wallet for Grin. It uses code from the official CLI wallet. You can deposit funds using file exchange, withdraw funds using https and file exchange. Also it support Knockturn Allee payments - just scan the QR code. Currently, I am working/will soon start to work on: new design(ui/ux), integrating GronBox and Android version. Any help in these challeges are more then welcome!
Since the last update - mainnet launch, redone UI, interactive Restore, Touch/Face ID support and more small improvements.

Noah Yeh @noahyeh_twitter:
@i1skn what do you looking to achieve with the new UI?

Ivan Sorokin @i1skn:
It is rather UX challenges. How the transaction flow looks, how user send/receive coins.

Noah Yeh @noahyeh_twitter:
Understood, basically polishing sending receiving process

Ivan Sorokin @i1skn:
And obviously make a bit more like 2019 app :)

Noah Yeh @noahyeh_twitter:
haha for sure
are any designers helping you out at this point?

Ivan Sorokin @i1skn:
Not yet, but I’ve just started to rethink the UX, so that I can tell what I need to a designer.

Noah Yeh @noahyeh_twitter:
just wondering, what do you think the current UX problem is

Matt Lee @MattWeiHungLee_twitter:
Is there any way to replace paper key? I knew that is common in crypto.

Ivan Sorokin @i1skn:
But I’ve got the logo and website designs from the designers!
@MattWeiHungLee_twitter not sure how, so far the is the most convenient way to represent your key

Noah Yeh @noahyeh_twitter:
@i1skn 1 min left
Cool @i1skn thanks again for talking to us, today was a quick one, as usual we’ll put together a meeting minute and send a PR to @lehnberg , thanks guys for participating

Ivan Sorokin @i1skn:
Ok, thanks, guys!

ryanatpicchu @ryanatpicchu:
Hi @i1skn CLI wallet means users need to build a node to interact with others right? Is it possible to skip this step?

Noah Yeh @noahyeh_twitter:
If anyone has a new project who wants to share with the community next month, please PM me in advance, thanks

Matt Lee @MattWeiHungLee_twitter:
Thank you @noahyeh_twitter

emptykeg @emptykeg:
thx @noahyeh_twitter

Noah Yeh @noahyeh_twitter:
@hashmap here’s a darknet research paper, pretty general but gives you a general idea of how things are like
https://docs.google.com/document/d/1TJ_BOL4H-Y_yob0Rb6-TQtPTNRjRi6cqr69LV1LgIzw/edit
interestingly everyone still uses Bitcoin + CoinJoin at this point

Ivan Sorokin @i1skn:
@ryanatpicchu not yet, but there are thoughts how to make it possible. But this would “eat” a lot of battery and traffic. So no final solution to this problem yet.

ryanatpicchu @ryanatpicchu:
Got it thanks @i1skn

Noah Yeh @noahyeh_twitter:
and here’s a CoinJoin report, usage is gaining a lot of traction recently https://docs.google.com/document/d/1MOWpDKLlmmexb62pWSc6Mcj9xMhVcsYh2SWF2m5EYlI/edit
in case anyone’s interested
