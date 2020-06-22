# Meeting Notes: Development, October 16

Development meeting held Oct 16 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5bc5fd9cf659e67772c6494b). Meeting lasted ~ 1h.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* garyyu
* hashmap
* ignopeverell
* jaspervdm
* mcdallas
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 0. Retrospective
* _ignopeverell:_ Focus of last couple of weeks has mostly been around peer connectivity code, for some improvements and refactoring, sync, block header massaging and the dual PoW to get all of that ready for T4, which now is pretty much ready, plus or minus a couple minor things some further testing and fixing. @tromp has finished the mean miner on Cuckatoo as well and @yeastplume integrated all that so we're ready for mining on T4 as well.

### 1. Agenda review
[Proposed agenda](https://forum.grin.mw/t/agenda-development-oct-16-2018/917) accepted.

### 2. Testnet 4 
* A couple of things to iron out before T4 release:
   * last adjustment to PoW adjustments
   * header MMR validation
   * some more testing of mining and transacting
   * get read of MEAN_TIME_WINDOW
   * swapping of order and adding some header fields
* Discussion around monotonic timestamps - no need to get in pre-T4.
* Target to release wednesday or thursday. _(N.b. T4 ended up being released on the wednesday)_

### 3. [Security & Code audits](https://github.com/mimblewimble/grin/issues/1609)
Nothing to discuss.

### 4. [BetterHash mining protocol](https://forum.grin.mw/t/betterhash-mining-protocol/913)
* BIP: https://github.com/TheBlueMatt/bips/blob/betterhash/bip-XXXX.mediawiki
* Been raised a few times, but no one has cared enough to work on it.
* If anyone cares enough it wouldn't be a bad thing to have, mostly compatible with stratum
* Could be good first issue

### 5. Other questions

#### 5.1 DHT-style set up to replace IP-based tx building
* Needed for mainnet?
* _antioch:_ "personally I'm happy with IP/file based tx, other things can be layered in on top
and somewhat outside core grin"
   * _ignopeverell:_ "I agree, it can certainly be started on top of grin, I'd caveat it by adding that if it seems to provide a lot of value, we could sill decide to integrate it directly. On the other hand, if someone submits a PR, it's not too large and it's good, it may get merged too."
   * _quentinlesceller:_ "I like the minimal vision for Grin too but worried that IP/file tx add too much friction though, will discuss more with hashmap."

_N.b. since the meeting, hashmap raised https://github.com/mimblewimble/grin/issues/1797 and https://github.com/mimblewimble/grin/issues/1798 that are both related._
