# Meeting Notes: Governance, Nov 19 2019

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5dd403c368ad1c4a0ff575ef
). Meeting lasted ~ 45 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* DavidBurkett
* hashmap
* jaspervdm
* j01tz
* lehnberg
* quentinlesceller
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/215) accepted.

### 2. Action point follow ups from previous meetings

* Write Q3 Financial Transparency report
   * _lehnberg:_ Not actioned, I first need to catch up with the income and spending log changes. Also worth telling everyone as well that the donation addresses have been changed after the big donation the other week.

* Define ZKP research problem
   * _quentinlesceller:_ [Actioned](https://github.com/mimblewimble/docs/wiki/Grin-Open-Research-Problems#10-research-on-zkps-recent-advances)

* Define Private Payment Channel Hub research problem       * _DavidBurkett:_ [Actioned](https://github.com/mimblewimble/docs/wiki/Grin-Open-Research-Problems#9-payment-channel-hubs)

### 3 [Open research problems](https://github.com/mimblewimble/docs/wiki/Grin-Open-Research-Problems)

* _lehnberg:_ How solid do we feel this is? 
   * _yeastplume:_ I think it's serves the purpose as an overview in its current form. 
   * _jaspervdm:_ It's good! I'm thinking if we should expand on # 10, its really generic now.
   * _quentinlesceller:_ Agreed, it's very general right now.
* _lehnberg:_ So we have these list of problems, we work a bit on their wording. And then we put on grin.mw? With some kind of call to action perhaps? What would the CTA be? To submit a request for funding? To put together a proposal? To "come and say hi on gitter"?
   * _yeastplume:_  I think we'd definitely be willing to fund more research into these with the right proposal, but I don't think that should be the only CTA.
   * _lehnberg:_ It would be nice to make it as easy as possible for any researchers reading to take action of some sort. So they don't just drop off and we lose them, so to speak.
   * _yeastplume:_ Indeed. On many of these we're mostly interested in how existing techs could possibly suit Grin, as opposed to just wanting more research on the topics themselves. Perhaps we can put them up with a more vague statement about 'get in touch with us if you're have an interest in these topics' for now?
   * _lehnberg:_ Sounds good. There's a straight forward Jekyll template we can use to turn a markdown doc into a webpage in current setup I believe. And since we're now linking to it elsewhere, we might just edit the wiki page with a URL to the website saying it's been moved. Does anyone want to take the action?
   * _quentinlesceller:_ I'll do it. 

### 4. Grin 2020 Roadmap

* _lehnberg:_ What's a good process for determining this roadmap? I've a draft that I've been working on, that I was thinking of proposing as an RFC, and then perhaps there could be iterations on that by others in the the community? Alternatively we could go to each sub-team and ask them to come up with proposals that then get rolled up into one, but I feel we kinda already have asked for proposals and received some.
   * _yeastplume:_ Good to start with anything rather than nothing, so if you put what you have so far up, the sub-teams can then take a look and iterate from there?
   * _jaspervdm:_ Yes sounds like a good approach.
   * _lehnberg:_ Ok, will do that, and also try to make it super clear that these are my own thoughts and not something that's "final" or whatnot.

### 5. Grin-forum.org

#### Decision: Migrate forum URL

* _lehnberg:_ The domain will be expiring some time shortly after v3.0.0 upgrade. Just as with grin-tech, this domain was owned by Igno (registered through nearlyfreespeech just like grin-tech) and we are likely not to be able to renew it. To add to this, the forum is hosted on discourse, which we are admins on, do not have access to the actual hosting account of. A community member (@madwax) reached out offering to help with this. They were supposed to join the meeting today but were unable to make it. Essentially we could redirect `grin.mw/forum` or `forum.grin.mw` to the discourse URL with some SSL and reverse proxy shenanigans and in this way (relatively) seamlessly "move" to a new domain. And for the actual expiration of the discourse payments, fortunately it appears to be still linked to Blockcypher's credit card (who paid for a year of hosting with proceeds from grincon.us). So we think we may be able to have Blockcypher continue paying for the forum hosting, despite us not having access to the discourse account itself. And then we reimburse blockcypher from the general fund for this. They have kindly agreed to this tentatively. That's what I've been able to suss out so far together with madwax and Quentin. Does anyone have any better idea here what we could do?
   * _tromp:_  Good idea to move all under the grin.mw umbrella.
   * _yeastplume:_ Yes, was thinking `forum.grin.mw` would be the best way to go.
   * _jaspervdm:_ We have some time now to tell everyone to use `forum.grin.mw`.
   * _lehnberg:_ Yeah we could technically move over to forum.grin.mw as soon as we'd get the reverse proxy up and see how it works. Shall I action this with the help of madwax and 0xb100d (the domain owner)?

_Support from Jaspervdm, no objection._

### 6. Grin.mw

* _lehnberg:_ If @0xb100d sees this we need to talk about grin.mw domain name mitigation paths again, as you're a Nym and if you disappear for whatever reason we're in the same boat once again. Please reach out and let's think of how we can make it more failsafe.

* _lehnberg:_ Further on the website side, @quentinlesceller has done some nice ground work for onboarding, grin downloads, and community wallet downloads:
   * https://grin.mw/get-started
   * https://grin.mw/download

   There was a slight brouhaha before about which wallets that were added and which were not - **pull requests are welcomed** and we're not adding your wallets for you unless you ask really nice.

   * _jaspervdm:_ Might be cool to have some comparison table with different features.

* _lehnberg:_ I've not been able to action better grin financials on the website, doubt I'll get to it this week.

### 7. Grincon1

* _lehnberg:_ The [schedule is packed](https://grincon.org). We'll have a great opportunity to discuss how broken Mimblewimble really is and other things. Roadmaps, Lelantus-mw, mining, lots of mining stuff.
* _lehnberg:_ We've got QTUM confirmed as headline sponsors of the event, and have also received support from Sparkpool. We thank them both.

### 8. RFC & Sub-teams update

* _antiochp:_ One week into final review period on at least a couple of RFCs for 3.0.0? Payment proofs, faster sync, and API v2.0.
   * _DavidBurkett:_ I plan on [removing the message field in payment proofs](https://github.com/mimblewimble/grin-rfcs/pull/31#issuecomment-554693533). Let me know if anyone has an issue with that.

### 9. Other questions

None.

**Meeting adjourned.**
