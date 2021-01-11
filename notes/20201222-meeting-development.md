# Meeting Notes: Development, Dec 22 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#dev channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 120 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- cekickafa
- dburkett
- dtavarez
- jaspervdm
- joltz
- lehnberg
- paouky
- phyro
- privacybydefault
- tromp
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Retrospective
- _antiochp:_ `5.0.0-rc.1` is released:
   - https://github.com/mimblewimble/grin/releases/tag/v5.0.0-rc.1.
   -  https://github.com/mimblewimble/grin-wallet/releases/tag/v5.0.0-rc.1.

   I think everyone has been heads down making sure this went smoothly.


### 2. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/376) was reviewed with "wallet command aliases" added as a point.

### 3. Action point follow ups from previous meetings

#### 3.1 Slatepack comms
- _lehnberg:_ The tokio fix seemed to have helped the exchange.
   - 🚀: _antiochp_
- _jaspervdm:_ Did you ask them to test the latest beta? Since we had to make another change to it.
   - _lehnberg:_ I've not asked them to test rc1 yet, let me do that now.
   - _jaspervdm:_ Oh ok, thanks.
   - _lehnberg:_ Yup. It's wallet only right?
   - _jaspervdm:_ Yes.
   - _lehnberg:_ I suppose they should run both node + wallet rc1.
   - _antiochp:_ Would not hurt but not strictly necessary.
   - _lehnberg:_ Oki done.
- _joltz:_ Outside of the tokio fix I think the balls are in the courts of the exchanges. We have decent documentation and have been reaching out far in advance.
- _lehnberg:_ That was the only update I had. This exchange supports slatepack (text) so if the issue gets fixed, they may be able to turn the wallet back on again.
- _tromp:_ Only tradeogre kicked the ball out of their court?!
- _joltz:_ Grinmint has integrated slatepack as well (though they are not an exchange).
- _antiochp:_ I guess we actively push people toward exchanges that are known to support slatepack as/when questions come in via the forum.
- _paouky:_ Somebody mentioned that bitforex said they'll add slatepacks soon, not sure if true though (although I suspect it is).
- _lehnberg:_ There needs to be incentives for an exchange to do it, I think.
- _antiochp:_ Right.
- _lehnberg:_ Not sure current grin volume is a strong enough incentive on its own. But if enough exchanges delist, I suppose the few that do not will get more volume.
- _lehnberg:_ At some point there will be an equilibrium. Hopefully >1.
- _paouky:_ I'm not worried too much honestly. I think were good.
   - 👍: _phyro_
- _lehnberg:_ Yes, we'll see.
- _antiochp:_ Will be interesting to watch and see how exchanges handle this over time.
- _lehnberg:_ Shame we didn't have sth like slatepack at the point of mainnet launch, but having it at 5.0.0 is better than not having it at all.
   - 💯: _paouky_
- _phyro:_ I'm also not that worried. The text based flow shouldn't be too hard to do - probably much easier than it was the first integration.

### 4. Funding request: [David Tavarez Q1 2021](https://forum.grin.mw/t/request-for-funding-davidtavarez-q1-jan-mar-2021/8073/8)
- _dtavarez:_ I'm here to answer any question.
- _lehnberg:_ 
   ```
   jan, feb mar 2021
   3 x eur 6000
   28hrs/week
   ```
- _phyro:_ Has my support. 👍
- _tromp:_ My question: Do you really only spend 28h / week on this? Feels like so much more.
- _dtavarez:_ Yes I do.
- _lehnberg:_ Task list:
   ```
   - to keep the arm64 branch of grin++ up to date with master.
   - improve the tor interaction.
   - fix the found bugs during the beta period.
   - allow to initialize a transaction without requiring an Address.
   Add more detailed information of the transaction.
   - include translations to another languages.
   - work on improving the ui.
   ```

   > what changed regarding my previous request?
   >
   > the requested rate is greater than my previous request and the hours per week is slightly less, why? I was too optimistic with the estimation and totally underestimated the amount of work, which made me spent a huge amount of extra hours to meet the deadline. I have finished totally burned-out and I take all the responsibility. This time I want to keep a good pace during a longer period of time, because I plan to keep contributing during 2021.

- _dtavarez:_ Last 3 months I did a bit more than that, But I realized that is not sustainable over a long period of time. But it turned out to be work that I had anticipated.
- _tromp:_ Well, the last thing we want is to burn you out.
   - 👍: _dtavarez_
- _tromp:_ I'm in full support.
- _dtavarez:_ I will try to make a better balance this time.
- _antiochp:_ I'm 👍 on this. Great to see the mobile impl progress.
- _jaspervdm:_ Yeah, 👍
- _joltz:_ 👍 from me, very happy to have you here @dtavarez it has been great watching the progress. I can't wait to see what comes next from you, the full node on android is amazing to see.
   - 👍: _privacybydefault, yeastplume_
- _lehnberg:_ @dtavarez first of all outstanding work in the last funding period. I actually had relatively high expectations, but you completely managed to blow them away nevertheless.
   - 🙈: _dtavarez_
- _lehnberg:_ Second: I'm very much in support of you continuing on your path in the next quarter. So:+1: From me. Excited to see what will come out of it.
   - 💯: _privacybydefault_
- _dtavarez:_ Thanks.
- _lehnberg:_ Third, and this leads into a wider question for us all here. How do you see this evolving in 2021, have you had any thoughts about it?
   - _dtavarez:_ Could you be more specific?
   - _lehnberg:_ What happens after q1?
   - _tromp:_ We have several wallet rfcs lined up... That could result in some more tasks.
      - 👍: _dtavarez_
   - _dtavarez:_ Ah ok, for 2021 I plan to keep collaborating as much as I can. I also want to learn as much as I can about all the technical details of grin, so that I can tackle more tasks..
      - 💪: _joltz, phyro_
   - _lehnberg:_ Nice.

- _antiochp:_ As @tromp said - there is going to be a lot of opportunity for wallet RFC related work.
   - 💯: _dtavarez_

- _lehnberg:_ Let's see if by the time the next funding request expires, we can have something figured out that allows you to continue to make meaningful contributions on a longer term to the project.
   - 💯: _dtavarez, privacybydefault_
   - _dtavarez:_ Looking forward to it!
      - 🚀: _lehnberg, paouky, joltz, privacybydefault, tromp, cekickafa_
- _paouky:_ Looking forward to seeing what you'll accomplish.

#### Decision: Approve @dtavarez funding request
- _lehnberg:_ Anyone here **against** this funding request, speak now. In the meanwhile, given the sentiment voiced by everyone as being in support, we consider this **approved** and move on with the meeting!
   - 🚀: _antiochp, jaspervdm, phyro_
- _lehnberg:_ Congrats @dtavarez. 🍾
   - _dtavarez:_ Thanks! 😊
   - _paouky:_ Cheers.

### 5. v5.0.0 status
- _antiochp:_ Ok 5.0.0 status: https://github.com/mimblewimble/grin-pm/issues/287
   
   Rc.1 is out. Next step is final release scheduled for jan 5.
- _jaspervdm:_ Yeah so unfortunately looks like we are going to need another beta and/or rc for the node.
- _antiochp:_ Want to give a quick summary?
- _jaspervdm:_ Yeah I have been testing with real testnet nodes and unfortunately a bug slipped in.
- _tromp:_ Glad to hear you found in time.
   - 👍: _joltz_
- _jaspervdm:_ I'm doing additional testing. Will have a pr up by tomorrow.
- _antiochp:_ This is limited to pibd related code (which is effectively opt-in right now)? "opt-in" as in not actively used or exposed.
- _jaspervdm:_ Yeah, but its on the side that generates the segments. So important we get it in 5.0.0.
- _antiochp:_ Yeah agreed - I think assuming the fix is relatively small there should be no issue re-releasing rc.2.
- _jaspervdm:_ Yeah it is small.
- _antiochp:_ (and limited in scope).
- _tromp:_ Btw, is there a setting to sync only by pibd (and fail if no peers support it)?
- _antiochp:_ There will be I think, but not yet, no way to actually sync via pibd.
- _jaspervdm:_ 5.0.0 can only generate and send the required pibd data, not actually sync from it.
- _tromp:_ Oh, thought there might be a way to test sync on testnet.
- _jaspervdm:_ Not yet. But the idea is that once that is built, we can do so without requiring all nodes to upgrade again.
- _tromp:_ Ok, so all 5.0.0 nodes will respond to pidb requests.
- _jaspervdm:_ Yes.
- _antiochp:_ Ok so assuming everything goes smoothly today and tomorrow we can aim to tag and release `rc.2` tomorrow? Is that reasonable?
- _jaspervdm:_ Yes I think so.
- _antiochp:_ Which I guess is a good segue into my comment on the agenda. We don't necessarily need to wait until the last minute for the final release - there is no ar tweak to go in.
- _antiochp:_ So does jan 5 make sense to final release?
- _antiochp:_ Why not earlier?
- _jaspervdm:_ We could, but given the discussion above I'd like to wait a bit after releasing rc.2. So would have to be after christmas?
- _antiochp:_ Yes that makes sense. So maybe jan 5 is still most convenient time to do this.
- _antiochp:_ To maximise time for last minute testing. Without needing to do a 5.0.1 patch before we even reach the hf.
- _antiochp:_ Anybody else have thoughts on this?
- _jaspervdm:_ I think jan 5 is fine.
   - 👍: _antiochp, joltz, lehnberg_

### 6. API listening on 0.0.0.0
- _antiochp:_ I think I naively thought this was a simple fix - but there is some tension between a couple of different issues here. We disabled http(s) by disabling listening on 0.0.0.0. Which I had not fully realised.
- _antiochp:_ So its not trivial to re-enable this. At least that is my understanding now.
- _jaspervdm:_ Yeah, its complicated. We would need another type of foreign api that only exposes the coinbase generator. Because otherwise we expose the receive tx endpoint, effectively enabling http again.
- _antiochp:_ So short term I think we are stuck with the api on 127.0.0.1 (with all the hassle this comes with in a container). But something we want to revisit in q1 I think.
- _dburkett:_ Honest question. How hard is it to just expose a new foreign api? We have 2 full-time devs, and 3 weeks until hardfork.
   - _dtavarez:_ But I think, maybe I'm wrong, the idea is to expose also the owner api.
- _joltz:_ It's definitely worth putting some thought into. I was naive as well with this impact from disabling https. Want to make sure we get it right.
- _dtavarez:_ I want to better understand this topic; the main goal of binding on 0.0.0.0 is to be able to connect to the node from any terminal inside a network (virtual or physical), right?.
- _antiochp:_ Main rationale is for docker/containerized deploys. So 0.0.0.0 can be used across containers. Workaround currently is to run an in-container reverse proxy or similar.
   - 👍: _dtavarez_
- _antiochp:_ Which is perfectly fine, if not ideal. Api is currently split across owner/foreign. If we are considering splitting it 3 ways then I think we should take a step back and work out exactly what the split should be. And how different aspects are secured.
- _jaspervdm:_ Right, the container argument also holds for the owner api.
- _antiochp:_ So would definitely prefer not to rush anything in next few weeks.
- _jaspervdm:_ That is something to consider, yes. But I do not think we should do this last second.
- _antiochp:_ We should think about what an ideal api would look like. And we should prioritize this but its not worth rushing.
   - 👍: _dtavarez_

### 7. Aliases for [wallet transaction rounds](https://forum.grin.mw/t/transaction-round-naming-challenge/7886/48)
- _tromp:_ I propose adding aliases to existing tx step names. Which are arguably somewhat arbitrary, and even overlapping. So the aliases in https://forum.grin.mw/t/transaction-round-naming-challenge/7886/48. Are all of the form step-flow. Where step = 1. Request 2. Offer 3. Accept.
   - 👍: _privacybydefault_
- _tromp:_ And flow is bill or payment.
- _antiochp:_ I need to think about these a bit more but personally find `offer-bill` confusing.
- _tromp:_ That's what happens in restaurant after you ask for the bill. They come bring it by your table.
- _antiochp:_ Yeah - then you make a payment.
- _tromp:_ By accepting their bill.
- _antiochp:_ Personally I think of it in terms of the bill simply stating what I need to pay.
- _tromp:_ The offer is the party signing first. And accept is the 2nd party signing, completing the tx.
- _jaspervdm:_ Hm I am not sure If "request bill" is more clear to me than just "send". If I want to send money I use "send".
- _dburkett:_ Real-world transactions are a 2-step process. Trying to come up with 3 steps will always result in disappointing wording. Imho, what we have now is probably about as good as it gets.
   - 👍: _dtavarez_
- _dburkett:_ Despite the many problems with it.
- _tromp:_ But request-offer-accept is maybe best wording possible for 3 steps we're stuck with for now.
   - _dburkett:_ O, I just read this.
- _jaspervdm:_ But using "request" to send money seems counter intuitive...

[...]

_The meeting continued to further discuss transaction round naming, without arriving to any particular conclusion or consensus about the most appropriate naming._

### 8. Other questions

_None._

**Meeting adjourned.**