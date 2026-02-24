# Meeting Notes: Development, Nov 13

Development meeting held Nov 13 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5beae70d6b9822140d23d2c7). Meeting lasted ~ 70min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* catheryne
* hashmap
* ignopeverell
* jaspervdm
* kargakis
* lehnberg
* mcdallas
* quentinlesceller
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 0. Retrospective
* _ignopeverell:_ Main two themes were preparation for grincon0 and consolidation. Beside traveling and presentation, there have been a lot of cleanup and small enhancements, for example @hashmap and @antiochp collaborated around removing a lot of the unsafe code we still had around. Also wallet fixes, refactoring, etc. I expect we'll see mostly that up to mainnet, the only other main thing to get there is Cuckaroo, our second PoW.

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/12) accepted, with an added point of "Wallet plugins", and moving POW to earlier in discussion.

### 2. Action point follow-up
* P2P tx building: No update

### 3. Wallet plugins
* mcdallas tool [Gringotts](https://github.com/mcdallas/gringotts-rust) keybase integration for tx building triggered thinking on supporting "transaction plugins" in the wallet, where http/s could be one such plugin, file-based could be one, gringotts could be another, etc.
* _yeastplume:_  'plugins' just means providing standard API entry points for different communication methods.
* _antiochp:_ might be best to get two or three impls done manually so we know what shape the plugins will likely be.
   * _yeastplume:_ I think getting the http and keybase 'plugins' together in a common format would go a long way towards shaping that.
* Things worth adding:
   * from/to in the JSON exchange format as well, to help normalize drop-off services like grinbox
   * a TTL expressed in block height
 * Open call to all people building wallet and transaction-building services to get  involved and shape this!

### 4. POW
* _tromp:_ I've been discussing cuckatoo32 feasibility with an asic designer, they say it looks impossible to make it run at 1 gps. So will start a discussion thread on forum (ed.note: [here](https://forum.grin.mw/t/cuckatoo32-feasibility/1199)), about required memory bandwidth and how to achieve that. 
* Anything <1 gps affects progress-freeness.
* Tromp working on Cuckaroo coding.
* Discussion around primary vs secondary POW terminology. Alternatives suggested: 
   * ar/af
   * GPU/ASIC
   * mean/lean
   * cuckaroo/cuckatoo
   * ari/afi
 * Decision to keep naming as is for now and change in the code once there's consistency.  

### 5. Hard fork
* With POW not ready it's too early to agree on a HF schedule.
* Decision to review again next week. 
* HF Contents will mainly be Cuckaroo POW.

### 6. Mainnet planning
* _ignopeverell:_ We're getting real close, if it was a normal software product, I'd be thinking about releasing already
* Mainnet milestone: https://github.com/mimblewimble/grin/milestone/4
* Igno to do another pass on triage of `must-have` for mainnet issues. 


### 7. Other questions

* Need to introduce a 'block size soft limit', i.e. a capacity limit to allow a miner to ignore txs exceeding the soft block limit. Purpose to allow miners to be able to mine smaller blocks than consensus value for economic/orphan related reasons, and prevent tx spam when fees are very low.

**Meeting adjourned.**