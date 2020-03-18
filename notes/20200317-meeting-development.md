# Meeting Notes: Development, Mar 17 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dtavarez
- jaspervdm
- johndavies24
- joltz
- lancelot_n
- lehnberg
- mcmmike
- seddd
- tenthousandlakes
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

- _yeastplume:_ Hope everyone is remaning safe and calm. We might just have everyone sound off briefly on what they've been up to the past little while. We've been prioritising breaking changes for 4.0.0, so to that end I've mostly been looking a more compact slate format, (which I've just got working).
   - 🚀: _lehnberg, yeastplume, antiochp, joltz, jaspervdm_
- _jaspervdm:_ From my side I've mostly been working on moving p2p to async. Managed to do a full sync from scratch and maintain a connection with ~100 nodes for mutiple days, but there's still a bunch of things to be improved/fixed.
   - 🚀: _yeastplume, lehnberg, antiochp, joltz, tenthousandlakes_
- _antiochp:_ We have a revised nskr proposal based on _duplicate_ kernels "no recent duplicates" (nrd) that potentially gives us a simple way of implementing relative locks against kernels. 
   - 🚀: _lehnberg, jaspervdm, joltz, yeastplume, tromp_
- _antiochp:_ And potentially shifting focus to investigate relaxing our "no duplicate outputs" consensus rule (for 4.0.0)
   - _jaspervdm:_ We would have to think also what removing the duplicate output rule means for wallets.
   - _yeastplume:_ The duplicate changes were mostly to avoid arbitrary data, is that right?
   - _antiochp:_ Yes but nrd also lets us do the same thing with very little changes to the current kernel code. Both are feeding back into a soon to be done rewrite of the "relative kernels" RFC.
   - _yeastplume:_ Wallets already have a degree of support for duplicate outputs as a measure to deal with multiple wallets using the same seed. Wallets already store mmr postion when it's available.
   - _antiochp:_ (and nice side effect is no room for arbitrary data).
   - _jaspervdm:_ Yeah but I do not think that solves all cases.
       - 👍: _antiochp_
   - _yeastplume:_ No, but it's a start at least
- _antiochp:_ Ok so we need to take a look over wallet impl for duplicate outputs. Kernels with references to prior kernels was a big invasive change. Kernels that reference the _same_ kernel implicitly is a far smaller change. To be clear - both changes are non-trivial.
   - 👍: _yeastplume_

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/261) reviewed, with points added based on comments in the issue. Testing, packaging & releasing, and how to handle network upgrades past v5.0.0 points were tabled until next meeting due to the number of topics on agenda.

### 3. Action point follow-up

#### 3.1 Triaging research

- _lehnberg:_ I've not made any progress on triaging. You can shame me. Thinking maybe I should just move it to an issue under grin-pm? It's defo not a priority (I think).
   - 🔔: _jaspervdm_
- _yeastplume:_ I think moving it to a grin-pm issue would be fine

#### 3.2 Sample project

- _yeastplume:_ That was to be moved to an actual separate 'executable' respository to include all grin projects and unit tests, which is still on my mind but will likely be a post hf thing, this should just be an issue in the grin repo for the time being.
   - 👍: _lehnberg, antiochp, jaspervdm_

### 4. Basic auth behavior

- _mcmmike:_ Some wallets are using basic auth to query their local or remote node, so I tested it with our apis which not require and basic-auth and it worked even the wallet did send an string for basic-auth.
- _antiochp:_ Sounds like this should be an issue on grin itself.
- _jaspervdm:_ Not sure if it needs to be an issue. auth header is just completely ignored if auth is disabled. Which imo is fine.
- _yeastplume:_ Sure, I think an issue in the grin repo should suffice, and we can think about and respond to it properly there.
- _antiochp:_ @mcmmike want to open an issue on grin repo for this?
- _mcmmike:_ Can do it, in general I just wanted an answer during the dev meeting. But I got confused by the date of the dev meeting, because @lehnberg did the summary on the 17th but dev meeting is tomorrow. :)
   - _lehnberg:_ The dev meeting is happening this very moment :) Right here, right now.
   - _mcmmike:_ Now I am really confused ! :) sorry for the mixup 
   - _jaspervdm:_ No worries, create an issue in grin repo and we will discuss there.
   - _yeastplume:_ @mcmmike no worries, we need to move on a bit because we still have quite a few things to discuss, but if you create an issue we can respond from there.

### 5. Planning, v4.0.0

- _yeastplume:_ So on the planning front, I was thinking that given the unpredictable nature of the times, we should really be aiming to try and limit the 4.0.0 release to what's already done + consensus / breaking changes we've already discussed, and not much more. Though some of the points still need to be decided, I'd say we should probably be very close to having a complete list of what we're looking to include?
- _lehnberg:_ https://github.com/mimblewimble/grin-pm/issues/248. These 6 items was what I gathered from last meeting. If you can help me iron out the question marks / update etc would be great.
  
- _lehnberg:_ #3 on the list @yeastplume `minimal slates / serialisation (?) / meta-data support (?) / qr code standard (?)`. In the issue you're asking for an rfc potentially.
   - _yeastplume:_ There will definitely be an rfc for minimal slates.
   - _lehnberg:_ If so I'm happy to try to put a draft together this week, maybe I can work on it with you?
   - _yeastplume:_ You might have stronger opinions on qr code standards, sure I think co-authoring will work.
   - _lehnberg:_ Not sure I do tbh, I'm just trying to wrap my head around the scope. Do all these things come together with that? `/ serialisation (?) / meta-data support (?) / qr code standard (?)`
   - _yeastplume:_ If we have a mini-mini slate format they might.
   - _lehnberg:_ I started thinking about creating separate issues for all those, but realised they are all interconnected in terms of why and how.
   - _yeastplume:_ Yes, we can discuss all of these things starting with the experimental pr I have.
   - _lehnberg:_ But it _does_ need an rfc, we're all agreed there?
      - 👍: _joltz_
   - _yeastplume:_ Yes, definitely. At the very least we're looking at the minimal transaction init, in which initator only sends excess without revealing change outputs and inputs. Which is a slate change, obviously.
   - _lehnberg:_ Oki. Let's begin iterating on that then. If you want to write it, I'm happy for you to. otherwise I'm happy to begin on it and take a general approach on it.
   - _yeastplume:_ Sure, if you want to begin the rfc itself it might give a more broad perspective than if I were to do it, I'm already kind of working on it from the technical side anyhow so we should be able to meet in the middle.
      - 👍: _lehnberg_

- _jaspervdm:_ Do we want to add https://github.com/mimblewimble/grin/pull/3206 to the list? It would require a lot of testing before I am confident enough it can be merged, but not sure on the timeline.
   - _yeastplume:_ Would be happy to leave it until after the release, it could be good for a 4.1.0.
   - _jaspervdm:_ Ok

- _yeastplume:_ It would look like item 2 is now 2 separate question mark items (for @antiochp) - I think duplicate outputs should probably be treated separately from nkotb/nkvd/rbmk whatever it is these days.
   - _lehnberg:_ The former blocks the latter?
   - _antiochp:_ Yes separate thing. We need both to do anything useful with the kernel locks - and both are consensus breaking changes. But neither blocks the other directly
      - 👍: _lehnberg_

- _yeastplume:_ (and you might as well add 'removal of insecure v2 wallet api as an explicit point, because that's done: https://github.com/mimblewimble/grin-wallet/pull/351
   - 👍: _lehnberg_

- _lehnberg:_ ` deprecate node api v1` ? Is that going in? (quentin is not here though).
   
- _lehnberg:_ `parallell ibd`? 
   - _yeastplume:_ I think the plan is to remove (not just deprecate) node api v1 ?
   - _lehnberg:_ Can we do that? Without announcing its deprecation first?
   - _yeastplume:_ Right, thought it had been announced, but I might be mistaken.
   - _jaspervdm:_ My impression we would only deprecate at v4.0, but I could be wrong
      - 👍: _mcmmike_
      - _lehnberg:_ Same
   - _yeastplume:_ Okay, let's leave it as is for now, and ensure there's at least a deprecation warning in the code from 4.0 on, (and announce, of course).

- _lehnberg:_ `announce deprecation for running http listener for external addresses?` ? If it's to be gone by 5.0.0, that needs to then happen. In 4.0.0.
   - _yeastplume:_ I think we need to know what the alternative is first
   - _joltz:_ That's related to the next point.Maybe that discussion will help inform this one.
   - _yeastplume:_ Yep, which I'd really like to hear about.. so on planning... do we need to do more than just update the list right now? I think any further refinements will come from discussion the individual issues, which we're about to do anyhow.

- _lehnberg:_ In terms of scope freeze, how about we say that we close on scope by end of next dev meeting? And that we don't plan to add any work beyond what's in the list after that point?
   - _yeastplume:_ Yep, I think that makes sense. and I think we should refrain from adding too much else to what's already there unless there's very good reason.
   - _lehnberg:_ Cool - so all here, note that you can make scope addition proposals in the ticket, https://github.com/mimblewimble/grin-pm/issues/248, until next dev meeting. And you might need to show up at next dev meeting to defend your item, depending on what it is and what support there is for it
   - 👍: _yeastplume, seddd, antiochp_

### 6. Censorship resistance for Tor-based grin txs when Tor is blocked

- _joltz:_ I compiled a short analysis looking at viability for a default tor-based transaction method (and deprecated http(s) method) for grin users where tor is actively censored: https://github.com/j01tz/network-protocol-obfuscation/blob/master/grin_obfuscation.md

   Tl;dr due to the nature of network obfuscation, the need to stay ahead of the latest dpi techniques and the benefits/complexity tradeoff of native integrations that could be done in grin today, it probably makes the most sense to provide strong documentation and community provided "bridges" to ensure that users where tor is actively censored can continue to connect. this should be tested thoroughly with affected users before http(s) is deprecated. it is also important to have a robust and secure file-based transfer method as a backup before completely deprecating http(s) to ensure that in cases where users are unwilling/unable to use tor, they can still easily transact.
   
   If this sounds good, I'll begin working with @xiaojay to build and test documentation to support this process including standing up bridges for testing that support multiple transport protocols. In particular we hope to determine the viability of this method for users in china before fully supporting deprecating http(s). In parallel, if possible, we should look at the file-based transfer method and determine what changes, if any, are required to support file-based transactions as a solid backup to tor (sounds like we are already going this direction by looking at slate changes).

- _lehnberg:_ But so, in practice, how would this work? Chinese exchange x comes and wants to integrate grin. What is the best advice to them? run a tor hidden service? I think this will be a cultural/political no go for them.
   - _joltz:_ I suspect in practice most chinese exchanges would use file-based exchange method.

- _seddd:_ I like the general approach, especially providing unlisted tor bridges. big win for both communities.

- _yeastplume:_ How is running a bridge different from a new tor node to the network? can it not just end up blocked then end up in a continual cat and mouse game? Or are we talking about something like @dburkett's current transaction relaying service?
   - _joltz:_ Correct @yeastplume the advantage of the bridge is that when those packets are inspected they look differently than tor packets so require more effort to block. So if I'm a nationstate blocking all tor packets these would still get through until I actively seek out the bridge ips or can also dpi to stop all available pts.
   - _seddd:_ Bridges aren't listed in directory authority. And Tor team is constantly working on improving bridge ecosystem and breaking dpi.

- _yeastplume:_ Right, I'd just wonder if people running bridges would also be exposing themselves politically or legally in some cases
   - _joltz:_ Fortunately the tor project maintains many bridges. I suggest grin community run bridges as an addition to those, not substitute
      - 🤩: _seddd_

- _joltz:_ We don't want to leech tor resources without making a contribution back. in practice, our own bridge distribution channel probably just looks like community members providing obfs4/meek bridges and sharing them in keybase if someone asks.
   - 👍: _seddd, antiochp_

- _seddd:_ Has anyone brought up decoy bgp routing? Having a pluggable overlay network api could also be helpful. For backup networks when one is blocked.

- _joltz:_ It requires a nontrivial amount of effort on the user part to do all of this. Which is why a solid backup is so important.

- _yeastplume:_ In any case, even if nothing else changes I think file exchange is much preferable to expecting users to run http services to recieve their grin off of exchanges
   - 👎: _mcmmike, johndavies24_
   - _joltz:_ Agreed, it is much more secure, private etc.
   - _seddd:_ File transfer could also be automated to go over tor.

- _yeastplume:_ Have to admit, I was actually surprised that exchanges even implemented http withdrawals.
   - _lehnberg:_ Path of least resistance.
   - _johndavies24:_ Unencrypted files? that can be signed and returned by an unintended 3rd party?

- _yeastplume:_ So, @joltz once again, thanks for a really insightful and professional proposal. I think we still need a bit of time to read it over and think about the details
   - 👍: _joltz, seddd, antiochp_

- _joltz:_ I think it is a really important issue that could have a lasting impact for grin so we should take as much time as needed for a thoughtful action
   - 👍: _johndavies24_
  
- _seddd:_ Will discussion continue on the linked doc?

- _yeastplume:_ Do we want to rfc it?
   - 👍: _seddd, mcmmike_
   - _joltz:_ Probably so, I'm on it
   - _yeastplume:_ Great. there's a lot to think about there, will definitely be going over it in detail.
   - _joltz:_ I'll compile a skeleton to work from and everyone interested can contribute
      - 👍: _yeastplume, seddd_

- _seddd:_ Tangential question: can dandelion++ relay txs from multiple cryptocurrencies?
   - _antiochp:_ The grin impl is grin specific, so not easily no. Its not a general purpose relay.
   - _seddd:_ How much work do you think it would take to make it general?
   - _antiochp:_ That's kind of analogous to asking if bitcoin tx relay can be used for grin txs - the question does not make that much sense.
   - _joltz:_ @seddd here is a bip for dandelion in bitcoin https://github.com/bitcoin/bips/blob/master/bip-0156.mediawiki
      - 🙏: _seddd_
   - _seddd:_ Right, was just looking to dandelion++ as a purpose-built overlay for crypto txs. Sounds like that may be for a different project tho. Anyway, sorry for tangent
   - _lehnberg:_ @seddd yeah something like nym might be more relevant here, https://t.me/nymchan.
      - 🙏: _seddd_

### 7. Other questions

None.

**Meeting adjourned.**
