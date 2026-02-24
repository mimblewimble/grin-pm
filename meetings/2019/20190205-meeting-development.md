# Meeting Notes: Development, Feb 05 2019

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Dev channel on Gitter](https://gitter.im/grin_community/dev), full chat transcript [here](https://gitter.im/grin_community/dev?at=5c59a5c241775971a0defe97). Meeting  lasted ~ 90 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* bladedoyle
* davidburkett
* garyyu
* hashmap
* hendi
* ignopeverell
* jaspervdm
* kargakis
* mcdallas
* quentinlesceller
* raghavsood
* rentenmark
* tromp
* yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Retrospective
_igno:_  We're three weeks into mainnet. It's been mostly smaller issues and fixes which have been released in 1.0.1. The larger development that people will be the most interested in will be that @yeastplume is working on getting Grin to run on Windows.

### 2. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/56) accepted, added "Wallet discussion" under other questions on @garyyu's request.

### 3. Action point follow-up

#### 3.1 Update CONTRIBUTING.md with new requirements
* _yeastplume:_ not done, been sick and in transit, will have it for next meeting.

#### 3.2 File Import/export issue 
Actioned.

### 4. Grin v1.0.x

* _igno:_ v1.0.1 released a few days ago, rather uneventful. No consensus breaking features were introduced.

* _tromp:_ How can we prevent testnet code from being used on mainnet? Does bitcoin do this?
   * _raghavsood:_ They don't - consensus breaking stuff is behind block height/enable vote locks on Bitcoin and Ethereum, but you should generally be able to run master for geth or bitcoind on mainnet and be okay, if you are willing to deal with unstable code.
   * _ignopeverell:_ anyway, we can adjust what we're doing if we want to, but I think what we've been doing isn't working too bad right now.
   * _tromp:_ shouldn't we check then that exchanges and pools don't run master?
      * _rentenmark:_ they're very much interested in being on the main chain, no exchange or pool in their right mind would run master


### 5. Grin v1.1.0

* _igno:_ Everyone, don't forget to tag your PRs
* _yeastplume:_ wallet split from node will most likely be in v1.1.0.
* _mcdallas:_ should we add invoicing and Grin for Windows for this release?
* _garyyu:_ For v1.1.0 we should define a "soak" time window, to have for example 1 or 2 weeks for it to be tested on floonet. And after that, make a mainnet release based on last floonet version.
   * _igno:_ Yes, we'll have to run that branch for some time and we'll do basically what we did for mainnet with slowing down new code to only cosmetic stuff before release.

### 6. [Enforce https in grin wallet](https://github.com/mimblewimble/grin/issues/2523)

* _igno:_ I'm torn, it's likely the Right Thing To Do, but will kill http receive for any end user.
   * _mcdallas:_ Or use something like https://ngrok.com/.
* _hashmap:_ To deprecate http we would need smth like [mimblewimble/grin#2532](https://github.com/mimblewimble/grin/issues/2532)
* _antiochp:_ I don't think "creating/signing certs" flies for majority of users. What about pushing people toward keybase?
   _igno:_ this forces keybase account creation.
* _raghavsood:_ As an exchange, the vast majority of withdrawals are going to other exchanges for us. Most sane exchanges are at least proxying behind https endpoints. All of our withdrawals going to a non-exchange address are using http.

#### Decision: Approach for http transactions in grin wallet
* Http command line send/receive to fail with a big warning and instruction to add `--unsafe` in the command.
* `Send --unsafe -d http://..` executes, but also has a warning added.
* Fully deprecate http once there's a sensible path to do so.  


### 7. Other questions

#### 7.1 Wallets

* _garyyu:_ [Related comment](https://github.com/mimblewimble/grin-pm/issues/56#issuecomment-460519767)
* _ignopeverell:_ I believe we agreed, within the grin project, to mostly focus on wallet libraries and facilitating general transaction building, exchange and management without going into GUI-land. There are a number of wallet projects in the work and they're getting there, efforts would be better directed to contribute to those projects (which are for the most part open source).
   * _yeastplume:_ Agreed. We should focus on supporting the community and on what we do best. We won't be able to complete with others focused on building decent gui wallets.
   * _antiochp:_ Even if wallet713 involves grin core devs, there's no need to ask to pull it into the main github org.
* _tromp:_ We can keep polishing the wallet API.
   * _igno:_ Yes, we should keep making integration easier. There's a lot of engineering work in the wallet API that GUIs won't have to do anymore, hopefully that helps a lot.
* _raghavsood:_ As someone developing a blockchain.info style hosted, shared custody wallet, the main thing I'd like right now is better APIs - The current set works if you are running a few individual wallets. For one seed per user, I'm writing out a ton of scaffolding just to get it to work at scale. Having a proper wallet library from grin devs would be a huge boost for productivity, along with http v2 APIs.
   * A very simple example - Right now, for n users, I need n owner APIs. Would be nice to be able to have a single wallet daemon capable of using multiple backend wallet seeds (similar to Bitcoin's multiwallet support).
   * _igno:_ Describe what you'd like to have or the changes you'd like to see and we'll definitely look at it.
   * _raghavsood:_ Absolutely. I'll comment on the http v2 issue for APIs, and open new issues for other stuff.
* _mcdallas:_ Are 32-bit releases on the roadmap? Grin is kind of perfect on a rpi being lightweight and all. 
   * _ignopeverell:_ It can definitely be put on the roadmap.

**Meeting adjourned.**
