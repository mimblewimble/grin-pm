# Meeting Notes: Governance, Jul 30 2019

Governance meeting held Jul 30 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5d405b7584536e27e0768a6b). Meeting lasted ~ 75 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* b33rkeg
* davidburkett
* grinngots
* hashmap
* jaspervdm
* j01tz
* lehnberg
* nijynot
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/165) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Status of misc. /site improvements

* _lehnberg:_ Any progress on the [site redesign](https://forum.grin.mw/t/grin-website-redesign/5533) front?
   * _lehnberg:_ 

#### 2.2 Funding transparency report II
* _lehnberg:_ The report for Q2 2019 is due, action is on me to do that, and I haven’t yet. I’ll try to have this up by end of week, bar any mini-thormunds disrupting my plans.

### 3. Funding status

#### 3.1 Grin/ETH Donation addresses
* _lehnberg:_ We took down the $ETH and $GRIN donation addresses after Igno’s absence. It’s now imperative that we get them up as we’ve got donors who have reached out wanting to donate to us and they can’t at the moment. Neither ETH nor GRIN handle mu-sig particularly well at the moment unfortunately, so the question is how to best handle this in a distributed, trust-minimizing fashion.
  
##### Decision: Grin/ETH donation setup
* _lehnberg:_ Some of us discussed earlier and wanted to propose the following approach:
   1. We have Yeastplume generate the private key/seed for an ETH and Grin wallet.
   2. Yeastplume then uses Samir’s Secret Sharing to split the private key into pieces that he shares with core members, as backup against catastrophic failure.
   3. All the Grin we receive, we keep. All the ETH we receive, [are converted into BTC and sent to the dev fund](https://github.com/mimblewimble/grin-pm/blob/master/notes/20190326-meeting-governance.md#decision-treasury-management-of-eth).

   With this approach, we have to trust @yeastplume not to exit scam us, but if @yeastplume’s computer is stolen, we can use our key shards to recover the keys.

   * _grinngots:_ why even accept anything outside of BTC & GRIN ? Let the donator handle that - easier from every perspective.
   * _lehnberg:_ We have had multiple big donors in the past ask for ETH, and we don’t feel we’re in a position to turn away money.
      * _grinngots:_ Ok, if there is demand, agreed.
   * _quentinlesceller:_ I'm okay with this approach and trust @yeastplume.
   * _jaspervdm:_ I'm not in love with the approach, but it's better than nothing and we cant to better until we have a full threshold multi-sig implementation. I would also suggest @yeastplume publishes the view key of the grin wallet. I could write a simple tool that scans the chain for outputs so we can audit the balance of the wallet.
   * _yeastplume:_ I'm okay with this as well, so long as everyone is agreed I'll get the addresses up ASAP. All okay to proceed here
   * _j01tz:_ Sounds like the best option available for now.
   * _lehnberg:_ Great. Clubbed!

#### 3.2 Yeastplume campaign

* _yeastplume:_ Just a quick question for the community re: funding campaigns. Do you think it would be odd to see another Yeastplume campaign at this point, given we have money in the fund? We were discussing whether to use the opportunity for another yeast campaign to boost the coffers a bit. There are merits to doing it and not doing it. In favour, it gives us a bit of an excuse to campaign for funds that might not otherwise be coming in (perhaps). On the downside, given there's a general fund for development already, it might just be confusing to people.
   * _j01tz:_ Not necessarily. That seems reasonable for a project like this to not expect all funds to be allocated to all places. Nonprofits do it all of the time. I think it would be more responsible than drawing down on the development budget until it is potentially gone with no other guaranteed revenue streams.
   * _yeastplume:_ @j01tz thanks, perhaps we might ask this elsewhere as well
   * _quentinlesceller:_ Perhaps a grin-forum post?
   * _yeastplume:_ Sure

### 4. RFC & sub-teams update

* _lehnberg:_ Seems like wallet and node teams are working well, with some good discussion. RFCs are being proposed, evaluated, we had one moving to FCP yesterday
I’ve heard from some fellow RFC writers that the template is a bit rich and as a prospective RFC author who’s started on an RFC, I tend to agree. So there might be room for streamlining that if someone has good ideas. No biggie if not, I think we’re finding our way slowly.
   * _yeastplume:_ I think for the time being, we can advise that it's okay for RFC writers to chop sections out of the template if they seem irrelevant/of little value to getting the point across.
   * _DavidBurkett:_ Yes, as long as there's sufficient detail to understand and implement the proposal (if agreed on).
   * _j01tz:_ Yes ideally more complex RFCs would maintain that level of detail but for smaller RFCs providing them all can be redundant and tedious.
* _lehnberg:_ On the matter of the sub-teams yet to be formed, one that’s been popping up frequent in the conversation is the **moderation sub-team**. There’s been two volunteers so far to start this up. Would be good if we could get more. Between github, gitter, forum, and now keybase there’s a lot to keep track on, and it’s good if that’s not the core team’s duties, as it’s easy to assume censorship or bias. So please, those of you who been in the community for a while, and feel you can be ethical, just, and act as Grin’s wise King Solomon, feel free to ping and let’s get that sub-team rolling!
   * _DavidBurkett:_ I could help if needed.
   * _lehnberg:_ Great! I'll be in touch.

### 5. Security

#### 5.1 Security Process Improvement
* _j01tz:_ The security process RFC has been up for a little while with minimal comments, I encourage everyone to take a look in any spare time [mimblewimble/grin-rfcs#13](https://github.com/mimblewimble/grin-rfcs/pull/13). It's pretty straightforward, it adopts a disclosure standard that some zcash and bitcoin folks helped create. It also adds more clarity around how vulnerability disclosures should work for Grin. The standard itself has some details around ethical behavior etc.
though in adopting it we are free to set whatever deviations from the standard we want as a community. The hope is that it better prepares us to handle a critical consensus or otherwise vulnerability in the ecosystem in the future across multiple implementations and forks, while providing more transparency to the community around the process. It may be too heavy for what we need right now so it may be too soon. it is more of a precautionary measure.
   * _lehnberg:_  I’ll give this a detailed review this week, and comment with thoughts on the PR itself. Others, please get involved as well, and we can look to move it into FCP after.
   * _quentinlesceller:_ I'll take a look this week too with comments.
   * _j01tz:_ Great. I'm also asking for review from some other security folks hopefully it allows Grin to avoid some of the turmoil/drama around how other projects without clear policies have handled disclosures in the past.

#### 5.2 Audit

* _j01tz:_ Core developers have now been assigned to all issues and are making nice progress. There are still 2 or 3 issues that need some more attention this week. My goal is to have a preliminary remediation verification report to the auditor asap. Really appreciate everyone who gave some time over the last week, let's carry that through to this week and wrap it up.

### 6. Applications

#### 6.1 Binance

* _yeastplume:_ We haven't actively made any applications to any exchange, why would we treat any in particular differently?
   * _jaspervdm:_ I don't think we should.
   * _lehnberg:_ I agree, and there are many practical question marks around it, i.e. who would apply, in what capacity, and why they would sign and be personally liable. And then there are more philosophical questions, like “who submitted the binance application for bitcoin" and so on. As far as I know, Binance are well aware of the grin community, some of the grin open source projects are funded by Binance Labs. I don’t think the application is blocking a listing, and if they want to list us, they will. For what it’s worth, we’ve been encouraged by Binance to try to add support for Grin on their Binance DEX, so anyone who’s interested in tinkering with that, please go ahead and do so!
   * _j01tz:_ Binance likes to have names on file to reach out to directly in case of any issues etc. Their process seems to be geared more toward centralized projects. I'm not quite sure how a project like Grin would be able to apply in that manner without putting some centralized actors "on the hook".
   * _quentinlesceller:_ I think it's not that hard to get in touch with a Grin dev.
* _grinngots:_ I think it would be helpful if any active grin dev / person on techno council submitted an application. Is there a general email? Managing a general acct like that for biz dev (e.g. exchange listings, mkting stuff) seems like it'd be useful
with the informal consent that grin devs would help out w big issues like a Binance wallet integration. It could make it easier for them to internally sign off on a listing.
   * _lehnberg:_ How so? They listed bitcoin without it having a biz dev contact?
   * _grinngots:_ See [here](https://www.linkedin.com/pulse/binance-listing-tips-changpeng-zhao/. 
      > Tip 3: We require the project founder or CEO to fill out the form. Why? If there ever is a bug with your wallet, a fork or double-spend in your blockchain, we need to talk to a key person.
   If this is some like check box they absolutely need, why not give them something. There are exceptions, they've listed dogecoin they understand decentralized currencies. Just saying I don't think it would hurt. Appreciate everyone's consideration, I understand it seems weird, just trying to accelerate adoption. 
   * _lehnberg:_ Understood. We don’t have a CEO, and our project founder is not here. there doesn’t seem to be much support here. I personally would not apply or sign any Grin document using my own name and person, I wouldn’t be comfortable doing that. If someone else wants to do so, they are free to.
   * _jaspervdm:_ I dont think it makes sense for the core to apply, we should remain exchange agnostic. People from core could apply on personal name, but i doubt anyone would be willing to do so. I certainly wouldn't.
  
#### 6.2 Ledger

* _jaspervdm:_  It is not a form that has to be filled in, it is a piece of software that has to be developed. There is nothing blocking it except dev time. There's a bunch of smart things you could do re the bulletproof, if anyone is actively working on it you can message me and I will explain it.
   * _quentinlesceller:_ Yes, if someone feels comfortable developing a [ledger app](https://ledger.readthedocs.io/en/latest/additional/publishing_an_app.html), that would be awesome.
   * _b33rkeg:_ Cycle42 added ledger/trezor integration on their roadmap https://cycle42.com/.
* _gringotts:_ This would take maybe a couple mo's of dev work by a dev or 2?
Can people directly fund projects like that?
   * _lehnberg:_ Yes. A first step might be to see if you can find someone willing to do the work. And then, see if they can estimate what it would take them. Once you have that, it would be easier to set up a funding campaign for the effort.
   * _gringotts:_ Ok cool!

### 7. Other questions

None.

**Meeting adjourned.**
