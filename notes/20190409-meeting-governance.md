# Meeting Notes: Governance, Apr 09 2019

Governance meeting held Apr 09 2019 @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grin/Lobby on Gitter](https://gitter.im/grin_community/Lobby), full chat transcript [here](https://gitter.im/grin_community/Lobby?at=5cacb3ad016a930a458e1d65). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact. 

**Community attendance:**
* antiochp
* crazymonkyyy
* davidburkett
* garyyu
* hashmap
* ignopeverell
* kargakis
* lehnberg
* yeastplume
* quentinlesceller
* tromp

_(apologies if I missed someone - open a PR or contact @lehnberg to add)_


## Agenda points & Actions

### 1. Agenda review
[Proposed agenda](https://github.com/mimblewimble/grin-pm/issues/93) accepted, but with Grin Improvement Proposals moved to point 4 ahead of Proof of Work.

### 2. Action point follow ups from previous meetings

Both were actioned:
* There's now an ETH donation address set up by @ignopeverell.
* Tromp [posted in the forum](https://forum.grin.mw/t/grin-improvement-proposal-1-put-later-phase-outs-on-hold-and-rephrase-primary-pow-commitment/4653) his proof of work proposal.

### 3. [Security audits](https://github.com/mimblewimble/grin/issues/1609)

* _ignopeverell:_ We received a new update yesterday. From my standpoint I think it's going well, we have a good list of findings, several of which have been tackled already. Coinspect is progressing through the codebase, both auditing the code and trying to break things. They've already gone through core and most of the peer-to-peer protocol I believe, currently on the chain consensus code and will be moving on to the wallet. We have weekly reports and once they're done will have a final one that we'll publish once all critical and major issues have been addressed. There will also be a quick re-review of the fixes to update the status of the findings and fixes.
 
### 4. Grin Improvement Proposals

* _lehnberg:_ What’s the current motivation for formalizing an improvement proposal process?
   * _ignopeverell:_ To make sure these things stay up on a place that's easy to find, and to ensure the correct versioning of proposals as they change.
   * _kargakis:_ Proposals that do not stay in issues make it clearer that they need more attention from the community.
*  _lehnberg:_ What’s the definition of a proposal?
   * _ignopeverell:_ Things that break backward compatibility, at least for now.
   * _kargakis:_ Protocol changes mostly.
   * _tromp:_ I would expect a proposal for any consensus changes; either by hard or soft-fork.
 * _lehnberg:_ I’m wondering about the timing, why do we need to formalize things at this moment?
   * _tromp:_ I think GRIP formalization can wait until later, when we have a more impactful proposal.
   * _ignopeverell:_ I'd agree with that too, I enjoy informality.
   * _quentinlesceller:_ Maybe not right now but later I think this would be a great addition to the governance process.

_No meeting participant argued for an immediate need to formalize the process, so no action was taken. Once there are more proposals that merit a formalized process, this will be revisited._


### 5. Proof of Work: 

* Current phase out schedule (estimated):

   Cuckatoo | Start of <br> phase out | Expected to be <br> fully phased out
   ---|---|---| 
   AT31 |Jan 15 2020 | Aug 19 2020
   AT32 | Jan 15 2021 | Aug 27 2021
   AT33 | Jan 15 2023 | Sep 3 2023
   AT34 | Jan 15 2027 | Sep 10 2027

* [AT Phase Out thread](https://forum.grin.mw/t/obelisk-grn1-chip-details/4571)
* [Tromp proposal](https://forum.grin.mw/t/grin-improvement-proposal-1-put-later-phase-outs-on-hold-and-rephrase-primary-pow-commitment/4653)
   1. Should we define "foreseeable future" as 18 months?
   2. Should we put phaseouts beyond AT32 on hold?

* _lehnberg:_ We never really got feedback from ASIC mfgs about whether 18 months was the right timeline. Arguably “18 months” is better as a statement than “in the foreseeable future”, no matter what, as the latter is very vague and arbitrary. If we get feedback that 18 months is too short, it could always be extended later. But it can’t be worse than what we have today, as it’s undefined.
   *  _tromp:_ We got no objection at least.
* _ignopeverell:_ We still have time to make this decision and another ASIC is planned for (supposedly) June. So why not wait until we have more information? Rather than rushing and be surprised again by new information.
   * _lehnberg:_ From my side, I’m happy to wait with making a decision on phaseouts.
   * _tromp:_ Ok, we can delay the decision. but not beyond June... 

_This decision has been tabled until June._

### 6. [Request for funding, @lehnberg](https://forum.grin.mw/t/request-for-funding-lehnberg/4715/)

* _ignopeverell:_ My only question would be about the 1 year part, it's maybe a bit long in grin-world?
   *  _lehnberg:_ The original request is for 3 months renewable, but for funds to be ‘earmarked’ for 12, and the rationale is that the total amount is low and that it’s not a full time role so I need to make other arrangements to sustain myself and my family. Happy to just roll 3 months for now if required.
   *  _tromp:_ If we need renewal every 3mo, then there can be no earmarking for longer.
   *  _ignopeverell:_  I'd be ok extending for a longer prepay acknowledging it's a smaller amount and part time. Would everyone be ok with 6 months paid up front?
*  _garyyu:_ I'd like to raise the request to $2,000/month, see arguments [here](https://forum.grin.mw/t/request-for-funding-lehnberg/4715/5). This is the 1st time for Grin funding a part-time contribution, I just want to give a model to avoid confusion that any short term contribution deserve a funding request.
   * _ignopeverell:_ Ah, happy to clarify that, the contribution has definitely not been short term and would not be either (especially given that it started at a year). I'd be happy to increase the amount depending on the time commitment, but if @lehnberg is happy with $1.5k I'm ok with that.
   * _lehnberg:_ I think it’s a marginal call. I’d be happy to start like this ($1,500), and perhaps start logging my hours a bit more detailed. If I start seeing time spent rampantly increasing in the future, it’s good to know there might be room for a raise in six months time. :)

#### Decision: lehnberg funding

Meeting unanimously voted in favour of the proposal, i.e. 6 months x $1,500 contribution, payable up front.

### 7. Funding specific projects

* _antiochp:_ There was comment posted somewhere to the effect of "if grin builds X then I would consider funding it" from an external source.
   * _kargakis:_ Yes, someone was interested in funding confidential assets but wasn't keen on sending to the general fund. 
* _yeastplume:_ I'd be against the notion of funding specific causes for several reasons, can elaborate if it turns out I'm in the minority (TLDR: companies can hire developers towards specific goals if they like, the existing developers have a good sense of what's needed so why put straight jackets on them, opens us up to manipulation by those funding).
* _quentinlesceller:_ So maybe we could create grants for specific features? But I don’t see why it’s up to the Grin team to do so. Anyone can create such grant/bounty.
   * _ignopeverell:_ More around the lines of Monero's community funding? I don't think we can prevent that in any case and I'd personally welcome it.
   * _lehnberg:_ Yeah, why not let the community set this up. You can donate to the general fund, and then it will indeed just be a donation, free to be spent which ever way the project pleases. Or you can make an effort to fund whatever specific project you believe is important, but then that’s up to you. Someone could launch a grin foundation and start doling out stipends for whatever cause they find important.
   * _kargakis:_ As long as it's clear that what is funded is a) a donation b) in line with the project's direction and c) it makes people donate then why not?
      * _lehnberg:_  I don’t think we should promise that. Donating to the dev fund is a donation, no strings attached. It’s not quid pro quo.
   * _quentinlesceller:_ I’d prefer keeping the current funding as it is and anyone is welcome to create grant/bounty for whatever features they'd like.

_There was no decision to allow dev fund donations for specific causes, with strings attached._

### 8. Promotion of other projects

No update, an ecosystem meeting is scheduled after this meeting.

### 9. Other questions

None.

**Meeting adjourned.**
