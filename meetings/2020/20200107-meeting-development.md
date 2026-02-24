# Meeting Notes: Development, Jan 07 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 60 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- dburkett
- hashmap
- hendi
- jaspervdm
- j01tz
- lehnberg
- yeastplume  
- zeroco0l

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective

* _yeastplume_:_ So as far as a reminisce, I hope everyone had a good break and managed to forget about this nonsense for a week or two over the holidays. And the break was significantly enhanced by an absence of reports of anything being severely broken, so we were able to launch 3.0.0 late last week. And all seems well, we're still in a state of no major reports of issues so hopefully that will continue.

### 2. Agenda review

[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/231) accepted.

### 3. Action point follow-up

#### 3.1 v3.0.0 changes doc

* _yeastplume:_ Actioned: https://forum.grin.mw/t/grin-grin-wallet-3-0-0-released/6853


#### 3.2 v3.0.0 comms to ecosystem?

* _jaspervdm:_  I think this has been actioned.

#### 3.3 Research linking commitments in grinscan.net

* _jaspervdm:_ Still a WIP, but have been spending some time on it. Not sure how to clearly show linked in/outputs yet, going to do some more experimentation.

### 4. Planning

#### 4.1 v3.0.0 status

* _hendi:_ I'm running 3.0.0 from git since a couple of weeks, with ~weekly updates. No issues, neither on arm nor on x64.
* _dburkett:_ Network stability has improved dramatically. I no longer deal with multiple daily syncing complaints.

#### 4.2 v3.1.0

* _hashmap:_ I think we need to focus on integration tests.
   * _quentinlesceller:_ Agree, clearly missing.
   * _jaspervdm:_ yeah, where would we put them? maybe in a separate crate, since they require both node and wallet code right?
   * _hashmap:_ smth like that, however it would make local workflow a bit more convoluted.
   * _yeastplume:_ Yes, I think so. It'll be quite a challenging thing to design properly. There's some code in the wallet crate that might be adapted to cover more general cases that runs a chain and allows for transactions against chain_data files directly so that tests don't need to rely on sockets, but that won't even begin to cover higher-level network/sync tests. And yeah, a separate create would of course make local testing a bit more confusing. I think this is very much something that needs to be designed. Perhaps we can all go away and think about options here then come back to discuss it in more detail in the next dev meeting? And also perhaps a greater roadmap discussion on the agenda for next time as well.
   * _jaspervdm:_ Sounds good.
   * _joltz:_ Relevant issue: https://github.com/mimblewimble/grin/issues/2957
   * _hashmap:_ Also we need to rewrite some test and create new ones, esp for sync.

### 5. /packaging repo status update

* _quentinlesceller:_ Okay so not much going on since 2 weeks. Homebrew is on 3.0.0 and snap too.
* _yeastplume:_ .deb would be the best to have, I'd think, and choco would be very helpful for windows users.
* _dburkett:_ As most are aware, I use Windows whenever I can. And yet I've only ever used Choco one time. So I personally wouldn't spend too much time trying to make that work, if you run into issues.
* _lehnberg:_ What do people think of going the rust route with shell scripts + sth similar to `rustup`?
   * _yeastplume:_ First reaction is that I think we're better off trying to stick with native package installers for each platform.
   * _lehnberg:_ How so?
   * _yeastplume:_ Need to think more to come up with arguments, that's my reaction. Rustup is a little unusual, it's governing a dev-environment with loads of things that need to be just-so. we're just installing built packages.
   * _antiochp:_ croaring comes to mind - would be nice to have prebuilt packages simply to get around that (just as an example).

### 6. Other questions 

None.

**Meeting adjourned.**
