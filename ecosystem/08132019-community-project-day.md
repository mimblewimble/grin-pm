### Grin Community Project Day, grin/ecosystem, Aug 13 2019

ID | Speaker | Topic | Link |
|---|:---|:---|---|
1 | nijynot @nijynot | Grin wallet (Wimble) | https://www.figma.com/file/a1VuKCl7nG0b0zi6yypCi6/Wimble-Wallet-V2?node-id=84%3A24 |
2 | David Burkett @DavidBurkett | Coin Control | https://medium.com/@nopara73/coin-control-is-must-learn-if-you-care-about-your-privacy-in-bitcoin-33b9a5f224a2 |



Agenda 

5:00 PM : Nijynot on Wimble Wallet
5:10 PM : David on Coin Control


Noah Yeh @noahyeh_twitter 
Ok let’s kick off, @nijynot can you give us a quick update on Wimble Wallet?
Nijynot doesn’t seem to be online, let’s go to @DavidBurkett first


----------Coin Control----------

David Burkett @DavidBurkett 
Not a whole lot to share, but just wanted to point out a privacy feature added to Grin++ recently called Coin Control. Coin Control gives users complete control over what data goes into a transaction by allowing them to choose which outputs to spend.


Noah Yeh @noahyeh_twitter 
David can you give us an update on coin control?
￼

David Burkett @DavidBurkett 
So why is this useful? Let’s say you have a publicly known Grinbox address, and somebody wants to send some a tiny amount of grin (“dust”) to you, then they can identify the coins sent to you in the future, and with a non-zero probability identify other outputs of yours that are spent at the same time. This allows you to avoid spending that dust with sensitive outputs, and risk deanonymizing yourself.

When sending grins, there’s still a coin selection algorithm to choose inputs that will result in low fees and a lightweight chain, but power users now have the ability to override this.

Here's what it looks like:



Noah Yeh @noahyeh_twitter 
@DavidBurkett how does this work behind the scenes just wondering
￼

David Burkett @DavidBurkett 
Every transaction has inputs and outputs, just like in bitcoin. In grin, they're obscured more, but still there. This just lets you choose your inputs, so you don't risk linking outputs that are known to be yours, with outputs that you don't want known to be yours

You can read more about it here: https://medium.com/@nopara73/coin-control-is-must-learn-if-you-care-about-your-privacy-in-bitcoin-33b9a5f224a2

That's written by a Wasabi Wallet, but the same concept applies to Grin


Noah Yeh @noahyeh_twitter 
Noted, is the experience similar to wasabi wallet as well?
￼

David Burkett @DavidBurkett 
Idk, never used wasabi. Hopefully better! :0


Noah Yeh @noahyeh_twitter
hahaha cool, and this feature is live now?
￼

David Burkett @DavidBurkett 
Currently, in most other grin wallets, all inputs are spent with each transaction, essentially turning Grin into an easier to deanonymize accounts-based model.

Yep, live since 0.6.2, but everyone should download the latest, 0.6.4


Noah Yeh @noahyeh_twitter
do u mind sharing the download link again?
￼

David Burkett @DavidBurkett 
https://grinplusplus.github.io/

or https://github.com/GrinPlusPlus/GrinPlusPlus/releases/latest


Noah Yeh @noahyeh_twitter 
Great thanks a lot! How is usage recently
￼

ryanatpicchu @ryanatpicchu 
@DavidBurkett is there any docs about coin control that i could go deeper
￼

David Burkett @DavidBurkett
Of Grin++ in general? It's up quite a bit

Or the grin network? It's also up some
￼

Matt Lee @MattWeiHungLee_twitter
So A send 1 grin to me,and i need to send 1 grin to C.Now I can send the grin which is from A to B directly, am I right?
￼

David Burkett @DavidBurkett 
@ryanatpicchu That medium link I shared


Noah Yeh @noahyeh_twitter 
Of Grin++, do you know where growth is coming from?
￼

David Burkett @DavidBurkett 
@noahyeh_twitter Well the fork killed many of the other GUIs, and Grin++ is the most full-featured GUI, since it's a natural choice for those switching. Also, there's a mac and linux version, and they're becoming more stable


Noah Yeh @noahyeh_twitter 
Noted thank you, 1 min left


kurt coolman @coolman_kurt_twitter
Hello - How do you mitigate the fact that coin control may bloat chain a bit more than default ? Is coin control giving full control to user or there is still stuff under the wood that prevent to bloat chain too much ? Not having much idea on how much it could bloat chain more
￼

David Burkett @DavidBurkett 
@MattWeiHungLee_twitter Yea, you can choose that 1 grin to send, or choose not to send it if you don't want it linked in that transaction
￼

Matt Lee @MattWeiHungLee_twitter 
@DavidBurkett got it!


Noah Yeh @noahyeh_twitter 
@DavidBurkett I’ll wait for you to answer Kurt’s problem then move on to Nijynot
￼

David Burkett @DavidBurkett 
@coolman_kurt_twitter Well those who use coin control in a "chain-bloating" way would pay a slightly higher fee. But first and foremost, grin is a privacy coin, so this is most important


Noah Yeh @noahyeh_twitter 
Perfect, thanks @DavidBurkett


kurt coolman @coolman_kurt_twitter 
Thanks
￼

David Burkett @DavidBurkett 
Thank you, Noah


Noah Yeh @noahyeh_twitter 
@nijynot ready to share some update on Wimble wallet?


----------Wimble wallet￼----------

nijynot @nijynot 
Yes I'm ready!


Noah Yeh @noahyeh_twitter 
wonderful, let’s hear it
￼

nijynot @nijynot 
Wimble is a desktop wallet for Grin

https://github.com/nijynot/wimble

First beta release was about some weeks ago, and only for MacOS for now

The goal is to have a solid wallet that does as little as possible, no fancy features, just intuitive UI and UX for the user


Noah Yeh @noahyeh_twitter 
that’s what we’re all looking for
￼

nijynot @nijynot 
This is because Grin transactions are kind of hard to reason about, especially if you compare with other coins


Noah Yeh @noahyeh_twitter 
Why start with MacOS? I remember in a ecosystem meeting some were saying Grin has more Windows users
￼

nijynot @nijynot 
No big reason tbh, mostly because I was developing on MacOS

But will expand to other platforms with time


Noah Yeh @noahyeh_twitter 
for sure, makes sense

are you mainly going to push adoption inside this community?
￼

nijynot @nijynot 
Hmm, not sure how to push for adoption yet, but will try to get as many as possible.
￼

David Burkett @DavidBurkett 
Is the intentional to have this on mobile, as well? The photos seem very mobile-esque
￼

nijynot @nijynot 
Yeah, was planning to design for mobile from the beginning so that it'll be easier to port it later on
design wise￼


Noah Yeh @noahyeh_twitter 
@nijynot have you tested user flow with people in the community? How was their feedback if you have?
￼

nijynot @nijynot 
Not yet, haven't had much feedback yet


Noah Yeh @noahyeh_twitter 
got it, anyone has questions for Nijynot?
￼

David Burkett @DavidBurkett 
Any plans to submit an RFC for base64 slates?
￼

nijynot @nijynot 
Yeah that would be a good idea

I think @mcdallas was interested in that too


Noah Yeh @noahyeh_twitter 
1 min left
￼

David Burkett @DavidBurkett 
Yep, he started working on that some already, I know. Would be good for you two to work together, maybe
￼

nijynot @nijynot 
Yeah, that'd be cool


Noah Yeh @noahyeh_twitter 
Cool, I believe that wraps it up, today’s ecosystem meeting was a quick one, if anyone has a project that they hope to participate in the next one please let me know

thanks again to @DavidBurkett and @nijynot , best of luck with your project

as always we’ll post this meeting notes on Github
￼

nijynot @nijynot 
Thanks @noahyeh_twitter!


Noah Yeh @noahyeh_twitter 
Thanks guys
