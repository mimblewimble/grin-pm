# Meeting Notes: Governance, Jul 16 2019

Governance meeting held Jul 16 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5d2de68001621760bcc5b6bb). Meeting lasted ~ 30 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* davidburkett
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
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/161) accepted.

### 2. Action point follow ups from previous meetings

#### 2.1 Status of misc. /site improvements

* _quentinlesceller:_ I'm waiting for the redesign to be done to tackle the wallet binaries downloading flow.
* _nijynot:_ https://forum.grin.mw/t/grin-website-redesign/5533, I'm a bit split on how much cypherpunk to go on the design. 
   * _lehnberg:_ I would like to second grin.ninja’s comment in the forum thread:
      > This is so awesome, I really like the thought you put into expressing the cypherpunk vibe back into the website.

       Not much point in design by committee, once there’s something that @nijynot feels good about we can compare PR against `/site` and see nothing too crucial is broken/missing and then just get on with it. Improving is infinite, and anyone who wants it badly enough can always make suggestions later in PRs.

#### 2.2 @jo1tz added to SECURITY.MD
Actioned.

#### 2.3 ETH & Grin donation addresses removed from grin-tech
Actioned.


### 3. RFC Process proposal

* _lehnberg:_ Since the last meeting, I merged the PR I had open
Other than that, there's not been any other activity on [the RFC repo](https://github.com/mimblewimble/grin-rfcs), I believe. With 2 weeks of “Final Comment Period”, there’s been no comments basically. 

#### Decision: Introduce RFC process
So shall we consider [RFC-0001](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0001-rfc-process.md) adopted then?

_Support from tromp, yeastplume, quentinlesceller, j01tz, hashmap, lehnberg, with no objections._

### 4. Governance process proposal

* _lehnberg:_ Since the last meeting, two sub-teams have been spun up on keybase.io:
      * `grincoin.team.wallet-dev`
      * `grincoin.team.node-dev`
   Those interested can join the keybase teams to participate in the discussion, which so far is sporadic, asynchronous, but quite nice I must say. How do others feel about these teams and the discussion so far?
   * _quentinlesceller:_ It's a nice improvement, it's a start. I have the feeling that right now it's the calm before the storm (hf)...
   * _yeastplume:_ I think it's at least producing conversations and syncronisations that we otherwise might not be having, so good so far.
   * _DavidBurkett:_ Yep, wallet-dev discussion has been good so far. node-dev has been a little slower to get started.

#### Decision: Establish sub-teams
* _lehnberg:_ We have [RFC-0002](https://github.com/mimblewimble/grin-rfcs/blob/master/text/0002-grin-governance.md) that outlines the subteams vs core thing and how it’s all supposed to work with the RFCs and so on. There's not been any additional comments there either. It might be hard to give feedback before it's been tried more in action.
Any objections to adopting RFC 0002 as well? and then encourage more sub teams to start spinning up?

_Support from tromp, yeastplume, quentinlesceller, lehnberg, with no objections._


### 5. Security

* _j01tz:_ Started tracking all reported issues since last meeting. Currently about half are ready to be reviewed for remediation verification. The other half have fixes proposed but need further review from the core team (and likely some adjustments) before submitting for remediation verification.
   I expect this to wrap up in the next week or so (assuming hardfork is calm) so that we can complete the verification process. My goal by the next meeting is to have all fixes verified by coinspect and have target dates set for blog post/pr stuff.
   More review is always welcomed and appreciated :) I'm still learning the codebase (and rust) so I'm not sure the fixes i proposed are exactly what we want but hopefully they help move us in the right direction
   * _lehnberg:_ Awesome, you're doing a great job at this.
   * _quentinlesceller:_ I agree. 

### 6. Funding status

* _lehnberg:_ No updates since last.


### 7. Other questions

None.

**Meeting adjourned.**
