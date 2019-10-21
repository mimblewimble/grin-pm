# Meeting Notes: Governance, Oct 08 2019

Governance meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5d9ca486eac5612d22d852d1). Meeting lasted ~ 65 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* Paouky
* DavidBurkett
* hashmap
* jaspervdm
* j01tz
* lehnberg
* newtownf1
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/196) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 [Site redesign](https://www.grin-forum.org/t/grin-website-redesign/5533)

* _lehnberg:_ @nijynot just submitted a [pull request for the website redesign](https://github.com/mimblewimble/site/pull/147), with a live example at https://nijynot.github.io/site. I haven’t played around with it, but it looks very nice at a quick glance.
   * _jaspervdm:_ Yep looks really good.
   * _Paouky:_ Fonts are meh, but great job overall.
   * _newtownf1:_ Great job on website.
   * _yeastplume:_ Looks really good, thanks for all your work on it
   * _DavidBurkett:_ Cool, but community is incomplete. Also, we should probably dynamically update council fund USD conversion.
      * _hashmap:_ I think we should denominate in grin, not in usd.
   * _lehnberg:_ Nice work @nijynot, I would suggest all reviewers jump onto the pull request and submit feedback and if anyone sees something that blocks a merge, raise there

### 3. Website

* _yeastplume:_ Can we not just declare grin.mw the site from now on, make sure this won’t happen again and just redirect grin-tech.org if we get it back?
   * _jaspervdm:_ Sounds reasonable, in that case we should contact coinmarketcap, coingecko etc.
   * _lehnberg:_  I wouldn’t mind, but I wonder how we can “make sure it won’t happen again”. If there are some good measures to take there, I’d be all for it.
   * _yeastplume:_ I think most registrars will let you assign multiple accounts as well. Or we could shamir split the login details.
  
##### Decision: New grin website URL

   * _lehnberg:_ OK - I can follow up with @0xb100d and see if we can make sth like that work. And try to get the site up again. Anyone against the idea of permanently retiring grin-tech.org in favour of grin.mw, even if we regain control?

_Explicit support from newtownf1, hashmap, yeastplume, DavidBurkett._

### 4. Security

#### 4.1 Audit

* _j01tz:_ Heard back from Coinspect yesterday, they still need some time on their end. Trying to set a hard release date with them ASAP. They also asked about which website to use for their report after noticing grin-tech.org was down so I need to get back to them to use  grin.mw once back up again.

#### 4.2 Security process

* _j01tz:_ Regarding the security-policy RFC it should now be fully implemented at [mimblewimble/grin#3009](https://github.com/mimblewimble/grin/pull/3009).
   * _lehnberg:_  Yep, reviewed and approved yesterday from my end. I’ll go ahead and merge that. The [grin-security repo](https://github.com/mimblewimble/grin-security) is also up and running now.

### 5. grincon1

* _lehnberg:_ @hashmap and @i1skn have managed to get the venue, it’s 22nd of Nov in Berlin at c-base wohooo! Crossposting @hashmap’s questions from the #grincon1 channel on community subteam of Keybase (join it!):
>   *  Should we announce Call for Participation? Last time only the core team gave talks, let’s make it more inclusive?
>   * Also announce sponsorship packages?
>   * And last but not least we need to figure out how to manage number of participants (we have a cap around 100) without selling tickets.

* _hashmap:_ Re call for participation, where to post it? Forum? Perhaps we can ask to post applications also there, fully transparent process. 
   * _lehnberg:_ Who writes the call for speakers? I’m happy to do a draft tmrw if nobody else wants to.

* _lehnberg:_ Sponsorship packages, we can start planning that as well then I guess. Maybe similar style as last, and just take it from there 
   * _hashmap:_ Do we cover expenses for speakers?
      * _lehnberg:_ So it’s one evening, right? We will be able to have what, 6-8 speakers max? And a panel?
      * _hashmap:_ Right, thinking retrospectively we could be more ambitious.
      * _lehnberg:_ Maybe we could do a session on saturday as well?  A space where those still in town and interested could join up and work together? 
      * _hashmap:_ Sounds like a plan, let me try to find a place. Not just coding, could be everything - design, brainstorming etc. And grin key signing party!

* _hashmap:_ Regarding how to manage number of participants, last time it was meetup.com rsvp. But it’s not a binding commitment.
   * _lehnberg:_ A 42 grin deposit - if you show up you get it back, if you don’t, it goes to the dev fund. Right, we can discuss more brilliant ideas in the keybase chat.

### 6. RFC & Sub-teams update

* _lehnberg:_ The moderation team work has been progressing, but @lavalulu has been busy with other things recently. Sent me some stuff that I haven’t reviewed yet, but I will. We’re making progress though. Other news on the sub-team front? Not so much. not sure how well these things are working so far?

   RFC wise, we have 4 drafts and one open in [the queue](https://github.com/mimblewimble/grin-rfcs/pulls), that seems to be working okay at least, as there’s good activity on some of them.

* _j01tz:_ Things seem to be progressing nicely in the keybase chats for node and wallet subteams.
   * _yeastplume:_ Agreed
   * _lehnberg:_ As do I.

 
### 7. Decision: Approve lehnberg [Request for Funding](https://www.grin-forum.org/t/request-for-funding-lehnberg-oct-jan-2019-20/6165)

* _yeastplume:_ Fund @lehnberg. I find the worthiness of this modest funding request to be self-evident. He has gone above and beyond for this project multiple times, and I would very much like to see him continue in his current vein for as long as possible.
   * _jaspervdm:_ Agreed. 
* _j01tz:_@lehnberg's efforts and contributions are essential for a project like Grin. I hope we can do what we can to continue to encourage his contributions. 
* _tromp:_ I think we're getting a bargain here with Dan's dedication and attention to detail.
   * _DavidBurkett:_ ☝️

_Additional explicit support from quentinlesceller, j01tz._

### 8. Other questions

None.

**Meeting adjourned.**
