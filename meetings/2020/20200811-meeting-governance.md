# Meeting Notes: Governance, Aug 11 2020

Development meeting held @ 3PM [UTC](http://www.timebie.com/std/utc.php) in [grincoin#general channel on Keybase](https://keybase.io/team/grincoin). Meeting lasted ~ 150 min.

Notes are truncated, and conversations sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**
- antiochp
- anynomous
- bladedoyle
- eyeox
- garyyu
- goyle
- henry_epic
- joltz
- kurt2
- lehnberg
- mo5itoo
- paouky
- phyro
- quentinlesceller
- satoshocrat
- shobji
- smokeking80
- tromp
- vegycslol
- yeastplume

_(apologies if I missed someone - submit a PR or contact @lehnberg to add)_

## Agenda points & Actions

### 1. Agenda review
The [proposed agenda](https://github.com/mimblewimble/grin-pm/issues/328) was reviewed and accepted, with the ASIC AMA moved to the end of the meeting and replacing "Other Questions", as the guests were having connectivity issues with keybase. 

### 2. Action point follow ups from previous meeting

#### 2.1  Paouky funding processed
_Actioned._

#### 2.2 Spending logs updated?
_Actioned._

### 3. Documentation progress
- _lehnberg:_ I _think_ we now have complete [inventory of docs + wiki](https://docs.google.com/spreadsheets/d/1ygeqoig_rrwcvbiw-9xhqq89uwq4ukaefxn_qnrhkg4/edit). And it is looking messy, looking forward to coming up with ways to streamline this all into grindocs 2.0. See here for related discussion yesterday [keybase://chat/grincoin#dev/10046](keybase://chat/grincoin#dev/10046). You're welcome to join us in #dev where we tend to talk about it asynchronously.
   - 😂: _paouky_
- _paouky:_ Excited for grindocs 2.0.
   - 🎉: _antiochp_

### 4. Code of conduct progress
- _lehnberg:_ Relevant issue: https://github.com/mimblewimble/grin-pm/issues/309. I've started to look at this, and have the following update:
   1. I confirm we have shared access to grinmods@googlegroups.com now, yeastplume sorted us out.
   1. I've just realized that our existing coc is more or less a precise copy of rust's coc.
   1. I've compared that coc, which is based on the v1.3 contributor covenant code of conduct with the up-to-date v2.0 contributor covenant code of conduct (https://www.contributor-covenant.org) and guess what? I think v2.0 is an improvement over v1.3. But that might be very subjective.
   - _paouky:_ Ye I noticed that we copy Rust as well, I do not think it was meant to be a serious write up, just something "good to have". When added by igno.
   - _antiochp:_ It was a conscious effort to follow rust community wise.

- _lehnberg:_ I was going to suggest two possible routes we could take:
   1. Hands-off, don't touch at all, just put whatever we have on website more or less making minimal changes; or
   1. Replace with 2.0 contributor covenant with minimal changes where applicable. I don't think substance is changed in 2.0, I just think it's worded a bit better than what we have today, more to the point and more explicit, but that's just me.
   - _antiochp:_ I'm guessing there is unlikely to be any reason we want to remain on 1.3 and decide not to update to 2.0?
   - _lehnberg:_ I couldn't see any at least personally. If okay, I can make the proposal as a pr onto `/site` and then we can compare and discuss further in the pr?
      - 👍: _tromp, paouky, joltz, antiochp_
   - _antiochp:_ Personally - its less contentious to be on current official version of a widely published coc vs trying to customize one for us.

### 5. RFC & sub-teams update

- _lehnberg:_ We have a couple of new RFC proposals. In order of appearance. https://github.com/mimblewimble/grin-rfcs/pulls.

#### 5.1 [Fix daa](https://github.com/mimblewimble/grin-rfcs/pull/61)
- _lehnberg:_ Summary: 
   > change grin's daa (difficulty adjustment algorithm) from the current damped simple moving average (dsma) to a weighted-target exponential moving average (wtema). Optionally further restrict the future-time-limit window to 1 minute.
   
   Main motivation @tromp is to even out difficulty adjustments better over time, something like that?
   - _tromp:_ To get rid of the ringing behaviour (oscillations) in current daa. While adopting a simpler daa. With better responsiveness vs stability tradeoff. This is targeted for final hf. Also would no longer require us to keep last 60 headers around. Is ready for commenting on.
- _lehnberg:_ 👍 so those interested, head over, and comment!

#### 5.2 [wallet rules for (re)play protection](https://github.com/mimblewimble/grin-rfcs/pull/60)
- _yeastplume:_ Thanks @phyro , it's really food to see a proper RFC for this.
- _phyro:_ This is a wip. Has not been checked by anyone yet afaik and there are some different routes that can be taken at some places.
- _lehnberg:_ Good to see you join the RFC writing crew @phyro :)
   - 🚀: _joltz, vegycslol, quentinlesceller_
- _yeastplume:_ I'm just starting to look at it in detail.

#### 5.3 [creating 'eliminating finalize' rfc](https://github.com/mimblewimble/grin-rfcs/pull/59)
- _lehnberg:_ The review of that is underway. Lots of comments and discussion so far. Still in draft stage and not finished in writing. Has a lot of interesting qualities this idea, not sure it's exactly eliminating steps as it is changing flows. But it _might_ lead to easier transacting. Is @dburkett around?

#### 5.4 Others
- _lehnberg:_ Oki, those are the new rfcs. Then there's the three old ones. Deprecate http(s) we probably should start to fast track at this point. And then there's a [change pending in an existing RFC](https://github.com/mimblewimble/grin-rfcs/pull/58).
- _lehnberg:_ Can that be merged?
   - 👍: _joltz_
- _tromp:_ No objection.

- _paouky:_ Slightly out of topic but can this pr be merged? Https://github.com/mimblewimble/grin/pull/3281#pullrequestreview-459600142.
- _quentinlesceller:_ Will need to address tromp's comments.
- _quentinlesceller:_ But this can be fixed by anyone with commit access on the repo. I'll do it.
   - 👍: _paouky, lehnberg_


### 6. Grin & ASICs: AMA with Thomas and Kevin from Vidtoo / Canaan & Bitrise Capital 

_This Q&A took places at the [GrinHub telegram group](https://t.me/grincoin), and was relayed into the governance meeting through manual copy/pasting. For readability, it's written here as one log._

```
thomasvan hu, [11 aug 2020 at 11:57:14]:
I am In,now

daniel lehnberg, [11 aug 2020 at 11:58:02]:
Hello thomas! Thanks for taking the time to come and answer questions, I understand it's quite late for you

gary, [11 aug 2020 at 11:58:07]:
finally, welcome @thomasvanhug22

thomasvan hu, [11 aug 2020 at 11:58:52]:
Happy to be here,

i can do some introduce to the gone asic miner for grin.

daniel lehnberg, [11 aug 2020 at 11:59:43]:
Yes please that would be great!

thomasvan hu, [11 aug 2020 at 12:00:01]:
Thanks for every one.

john tromp, [11 aug 2020 at 12:00:30]:
G1 sounds better than gone

thomasvan hu, [11 aug 2020 at 12:01:10]:
First of all, please let me introduce some basic information.

gary, [11 aug 2020 at 12:01:11]:
Happy to introduce thomas hu here, so as to bring us some official news of G1 asic miner, and for them to join us this open community to buid better grin ecosystem:-) 
i believe thomas is the gm of vidtoo & microcomputer, or perhaps

thomasvan hu, [11 aug 2020 at 12:03:02]:
I am the gm from vidtoo, and also the company of nano.

gary, [11 aug 2020 at 12:04:10]:
About the name "gone",  thomas said before to me: "gone" is the model for this version of miner, it comes from g1.

thomasvan hu, [11 aug 2020 at 12:04:47]:
They are all private company and owned by person investors,
the first version of this miner have 40 ~ 42 graphs/s with c32

john tromp, [11 aug 2020 At 12:07:02]:
At what power use?

thomasvan hu, [11 aug 2020 At 12:07:29]:
We have sailed to some customers and by now as I know, they have put may be more then 1k to 2k online

average from  2800w to 3100 w

john tromp, [11 aug 2020 at 12:09:16]:
is that 1K-2K mining rigs?

or gps?

Must be latter or it would be very noticeable

thomasvan hu, [11 aug 2020 at 12:10:26]:
And we are keep production of this model in this year.

gps

thomasvan hu, [11 aug 2020 at 12:10:26]:
We are also be effected by the conv19, in the passed 6 month,

henry quan | epic blockchain, [11 aug 2020 at 12:11:54]:
Congrats on a successful bringup of your miner @thomasvanhug22. How many asics in the system?

thomasvan hu, [11 aug 2020 at 12:12:27]:
While it is get better now, We believe.

john tromp, [11 aug 2020 at 12:12:39]:
Specifically, How many boards, and How many asics per board?

satoshocrat, [11 aug 2020 at 12:14:58 (11 aug 2020 at 12:15:11)]:
Could be a dumb q, but any reason grin could not do like a ditches shield at first while beIng distributed? Cost of attack would stoll be lower but at least it might keep the balance initially

thomasvan hu, [11 aug 2020 at 12:15:08]:
I think I can sell one to you and you can look into it if you like...

gary, [11 aug 2020 at 12:17:39]:
> specifically, how many boards, and how many asics per board?

30 asics in one g1 box, but I don't know how many boards in one g1 box.

thomasvan hu, [11 aug 2020 at 12:18:32]:
Our engineer teams like the cokatoo very much, because it is a smart idea to build up a balance sillicon chip.

john tromp, [11 aug 2020 at 12:19:07]:
How much bandwidth of the hbm(2?) memory are you actually using?

thomasvan hu, [11 aug 2020 at 12:20:35]:
We now have the ability to provide the miner continues and  have designed better performance chips.
they all used hb memory, like the hbm

daniel lehnberg, [11 aug 2020 at 12:23:27]:
When will this miner be sold to the public? Is there a price set?

thomasvan hu, [11 aug 2020 at 12:23:52]:
We are also build up a small version,

k f2020, [11 aug 2020 at 12:23:53]:
Hello I'm kevinshao from bitrise capital

k f2020, [11 aug 2020 at 12:24:11]:
Good

gary, [11 aug 2020 at 12:24:21]:
@kf202020 Welcome 😊  finally see you here 👍

daniel lehnberg, [11 aug 2020 at 12:24:25]:
Hi kevin, thanks for taking the time to join us!

k f2020, [11 aug 2020 at 12:24:29]:
Yes.

thomasvan hu, [11 aug 2020 at 12:25:13]:
Mini one have only 100w and can be Mining in home. It will be finished soon, and we will sell it more.

quentin le sceller, [11 aug 2020 at 12:25:42]:
How many gps for the mini?

john tromp, [11 aug 2020 at 12:25:51 (11 aug 2020 at 12:26:06)]:
100w sounds great. Is that with only 1 asic chip?

john tromp, [11 aug 2020 at 12:28:29]:
I could never run the bIg loud one In my apt, but would defInItely run a small And quIet one

thomasvan hu, [11 aug 2020 at 12:28:43]:
And we hope more peoples to using grin, by using the small miners.

yeah, you know the customers And ourselves covered some problems after we using asic minming.

henry quan | epic blockchain, [11 aug 2020 at 12:30:29]:
@thomasvanhug22 @gringary so if I follow correctly, g1/gone is 40-42gps at 2800-3100w with 30 asics. That translates to 1.4gps/chip at 100w/chip

thomasvan hu, [11 aug 2020 at 12:30:38]:
Like the transfer between different trade site,

gary, [11 aug 2020 at 12:31:02]:
What's the price for g1 And the mini version? @kf202020 @thomasvanhug22

thomasvan hu, [11 aug 2020 at 12:31:15]:
There still many things in the chain to update.

justaresearcher, [11 aug 2020 at 12:31:52]:
Where are they being manufactured?

curious about tarrifs

thomasvan hu, [11 aug 2020 at 12:32:45]:
The price is detemined dynamicly by when The sets is shipped.

john tromp, [11 aug 2020 at 12:34:12]:
Are you willing to publish on your website the number of asic chips currently in operation (with say at most 1 week latency)?

gary, [11 aug 2020 at 12:34:13]:
Okay, and do you also sell the asic itself? So as the 3rd party can make their own brand miner?

thomasvan hu, [11 aug 2020 at 12:34:28]:
The wafer is taiwan , and sets is  made in china.

justaresearcher, [11 aug 2020 at 12:34:39]:
Thanks.

thomasvan hu, [11 aug 2020 at 12:36:36]:
Roi is totally calculated, I think

daniel lehnberg, [11 aug 2020 at 12:36:53]:
Could you tell us a bit about your launch plans:

will both versions be available to the general public?
When would they be expected to go on sale?
Where would they be sold, on your website?
What would the shipping time be approximately?

dxom, [11 aug 2020 at 12:40:19]:
G1 asics have only c32 supported on The software (even if it's compatible with c31)?

thomasvan hu, [11 aug 2020 at 12:40:32]:
The vollum now is not raised up soon, partially because The whole supplies chain is specail this year

it support c31

john tromp, [11 aug 2020 at 12:42:31]:
Does it support cuckoo29 as used...

thomasvan hu, [11 aug 2020 at 12:44:21]:?y

no 29

quentin le sceller, [11 aug 2020 at 12:45:05]:
Do you have a release date? Shipping estimation?

thomasvan hu, [11 aug 2020 at 12:47:04]:
We have finished parts of the deliver for the customers. And We hope We can release the infornation more accurately.

john tromp, [11 aug 2020 at 12:52:14]:
Could you start a new thread on the forum at https://forum.grin.mw/ where you list your planned miners (including mini) with  estimates of availability, and perhaps answer more questions that arise? Or is the forum not available to you?

for our campany we focus on tech, while we hope the grin community can grow better.

john davies, [11 aug 2020 at 12:53:54]:
I am a little confused, are the customers you are shipping to the people who build and sell the final product? Or customers with early access? Do you know when public sale will occur, more specifically when a little guy like me can buy a mini?

thomasvan hu, [11 aug 2020 at 12:55:20]:
We suggest our customers  and friends do some investment on digital wallets, trading site, or othe project around grin.

We also would like to do some contribution
i can not define what our customers do after they buy the miners,

john davies, [11 aug 2020 at 12:58:04]:
When can I be a customer? Lol

justaresearcher, [11 aug 2020 at 12:58:08]:
Doesn’t sound lIke we can buy them. It’s very confusIng

thomasvan hu, [11 aug 2020 at 12:58:08]:
I think it determined by the market.

mini is on developed, engineering test.

we hope it be a beautiful box

john tromp, [11 aug 2020 at 12:59:44]:
When do you expect to be able to send out the first mini miner?

could you make one available to the grin devs for testing?

thomasvan hu, [11 aug 2020 at 13:00:51]:
Before oct.  If we keep the plan

dxom, [11 aug 2020 at 13:01:35]:
Any estimation of the total quantity produced of g1 and mini one?

john davIes, [11 aug 2020 at 13:01:56]:
Maybe some admin can whitelist you, but you are new so it blocked your mention.  he said @johntromp sure

thomasvan hu, [11 aug 2020 at 13:02:08]:
It is good questIon,

about the volumes, it determined by the market.

but I believe we have be the most positive company already.

becase we can see there is lots of technical people do project around grin

david burkett, [11 aug 2020 at 19:06:16]:
Sure, who all needs unblocked?

john davies, [11 aug 2020 at 19:06:42]:
@thomasvanhug22 and @kf202020

thomasvan hu, [11 aug 2020 at 19:06:48]:
So we keep develop even the price get down of the grin coin

david burkett, [11 aug 2020 at 19:06:56]:
Done

john tromp, [11 aug 2020 at 19:07:43]:
Is your asic produced in a 28nm process? Or smaller one?

thomasvan hu, [11 aug 2020 at 19:10:35]:
We build several version, the key point is the bandwidth and poWer.

thomasvan hu, [11 aug 2020 at 19:10:35]:
We have build better design, while it will goto vollum production at list 1 year later or more.

It is expensIve.

john tromp, [11 aug 2020 at 19:14:52]:
I have one more very technical questIon. Maybe you cannot answer. How many edge trimming rounds do you do on each graph?

daniel lehnberg, [11 aug 2020 at 19:15:43]:
Does anyone else have any more questions to thomas and kevin at this point?

thomasvan hu, [11 aug 2020 at 19:16:20]:
You are right , I can not answer now

I prepare well it for you next time

john tromp, [11 aug 2020 at 19:17:06]:
I understand. Thanks for sharung Your product info and answering questions. appreciated

john tromp, [11 aug 2020 at 19:17:06]:
Hope you can use our forum and perhaps answer more questions people will come up with.

thomasvan hu, [11 aug 2020 at 19:18:35]:
We are focus on products, and we definitely server for all customers.

We will, Thanks

daniel lehnberg, [11 aug 2020 at 19:20:09]:
Thank you very much @thomasvanhug22 and @kf202020 for coming by and sharing this info and to @gringary for facilitating!

looking forward to learning more of these developments

gary, [11 aug 2020 at 19:21:21]:
Thanks thomas and kevin for your time to join this discussion, and sorry for the keybase problem there:-)
```

**Meeting adjourned.**
