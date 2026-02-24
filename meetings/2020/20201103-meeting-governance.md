# Meeting Notes: Governance, Nov 03 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 40 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- joltz
- lehnberg
- phyro
- quentinlesceller
- tromp

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/360) was reviewed and accepted without any changes.

### 2. Action point follow ups from previous meeting

#### 2.1 QA Funding request clarification
_No update._

#### 2.2 @jaspervdm payment
_Actioned._

#### 2.3 Spending logs updated
_Actioned._

#### 2.4 Exchanges contacted
- _lehnberg:_ I see there's an action on @paouky but @joltz and I have been working on a list last week.
- _joltz:_ So far we have received acknowledgements from bitforex, hotbit, kucoin, mxc, grinmint.
   - 👍: _lehnberg_
   - _antiochp:_ Positive ones?
   - _joltz:_ Varying -grinmint is already done with adding support but some others are just "passing the info along to the right team".
   - _antiochp:_ Better than "don't do this" so 🚀.
   - _joltz:_ Will continue to follow up with everyone over the coming weeks to really push for actions.
      - 👍: _quentinlesceller_

### 3. Council discussion follow up
- _lehnberg:_ Next, is there any follow up to be had about the council accountability discussion from last meeting? Anyone had any more thoughts about it?.

- _joltz:_ I missed the meeting last week -is the general idea to find ways to improve accountability for council?
   - _lehnberg:_ I think the overall sentiment was that it felt like council members were "at risk" (gently put) to become self serving cronies, paying each other funds, with no accountability. That is, "overall sentiment" of those who were raising criticism, not overall sentiment of the entire meeting. I personally thought about it a bit more, and I don't know how valid that feedback really is.
   
      And here's why:
   
      Funding requests are open to anyone. By now it should be quite clear we're not only funding council members.
   
      I count 7 active council members. - 3 of those are paid by the fund, i.e. less than half. For most of yeastplume's paid tenure, hashmap was also there, so then there were 4 / 8.

      I think the question "how do we hold council members more accountable" is a valid one, but I'm more skeptical to claims that we're "just paying ourselves" as that's simply not true.
   - _tromp:_ Several council members have never received any of the funds.
- _joltz:_ I think the key there is transparency. Ultimately the council must exist because some humans are needed to make judgment calls. As appealing as it is to fully decentralize that, I don't think we have the technical means yet in general. So as long as we need humans to make judgment calls I'm not sure what can be done beyond full transparency.
   - _lehnberg:_ Yeah, and tbf that was a second remark, that some felt like "too much conversation is happening beyond closed doors". 
   
      Which is hard to prove/disprove, as there's no way to prevent people from creating private groups and not share the chat logs.
   - _antiochp:_ I feel like this happened _because_ we tried to introduce more transparency - the mention of "something was discussed" was immediately jumped on as "not in public, therefore in __secret__".

   - _joltz:_ Transparency becomes nebulous once you start trying to extend it beyond the basic decision making process (which as far as I know is done in public?).
   - _lehnberg:_ I agree, and yes afaik it's done in public:)
- _joltz:_ I think there is a distinction between a general conversation and a "decision making" conversation. And the scope of transparency can only really extend to the latter.
- _antiochp:_ But to your point - that is nebulous - where's the boundary there? Those discussions will always end up being input to a decision making process.
- _lehnberg:_ Does it matter?
- _antiochp:_ No I don't think it does. But I suspect we need to accept that it will always be used against us when convenient. Which is exhausting.
   - 👍: _quentinlesceller_
- _lehnberg:_ If parts of the council "colludes" by agreeing on a position before going into the governance meeting, they'd still need to defend that here, in public.
   - _antiochp:_ Yes - I hope we never have a situation where something is simply stated as "it has been decided".
- _lehnberg:_ It's up to the participants in the meeting to ask tough questions then I guess?
- _joltz:_ That's fair. There is a spectrum between "general private discusions", "discovery discussions" and "decision making discussions". I think we have fully transparent "decision making discussions" but can maybe improve on bringing more transparency (by having in public) "discovery discussions". The line between "discovery discussions" and "general private discussions" will always be a bit blurry so it will require some good faith on behalf of council members and community members.
- _lehnberg:_ I guess what I'm trying to say is: To as much as anyone is accountable here, it will be in these meetings where the decisions take place, and you need to express your position.
   - 👍: _antiochp, joltz_
- _lehnberg:_ It's quite clear now what the council's role is I think, after we simplified our governance structure. It's to manage funds. So should be quite easy to hold people accountable for that. Okay, let's move on, we can always discuss this more in a future meeting.

### 4. RFC & sub-teams update

#### 4.1 [deprecate http(s) transactions](https://github.com/mimblewimble/grin-rfcs/pull/54)

- _lehnberg:_ Looks like fcp expired oct 28. Shepherd @paouky is sleeping under the tree, all his sheep have run away.
   - 🐑: _lehnberg, quentinlesceller_

- _lehnberg:_ We have that discussion 20 days ago about the scope here, @yeastplume I think was to comment on the RFC but never did.

- _joltz:_ There may be a minor tweak or two based on implementation details but for the most part I think is ready. An important distinction here is that the scope of the deprecation can only cover grin-wallet (it seems grin++ is not deprecating other methods until exchAnges do).
- _tromp:_ I made config parameters for both fixdaa's future_time_limit and fixfees' accept_fee_base with global defaults, settable per thread. And used the latter feature in tests.
- _lehnberg:_ So how do we move forward with the https rfc?
- _joltz:_ I think it is ready to be merged, pending follow up comments from you and yeast.
- _lehnberg:_ Okay, will see if I can get yeast to comment on it. Other than that, I don't think there's sth more to discuss here in terms of rfcs.

### 5. Other questions
- _tromp:_ I welcome feedback on early payment proof rfc:)
   - 👍: _lehnberg, joltz_

**Meeting adjourned.**