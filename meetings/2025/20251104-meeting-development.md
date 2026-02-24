

**Community Meeting Notes November 04, 2025**

Grin Governance Council (GGC) Developer meeting held in the GGC channel 19:30 UTC time. Meeting last 60 min.

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

* Протагонист
* Defistaker 
* Ardocrat
* Wiesche
* anonymous 
* Ckec
* DoorayakI
* Wayne George

**Short Summary**

The meeting focused on development priorities, the GGC Post-Funding bounty system, and a proposal for STACK Wallet (third-party wallet) integration.

- Ardocrat announced CI setup completion and listed current priorities as fixing sync bugs and completing tx contracts method. 

- -The GGC proposed a Post-Funding bounty system, granting significant donations to Ardocrat, Nicolasflamel, and Scilio. 

-  $20k request from Stack Wallet for Grin integration, with the GGC showing a preference for a long-term, post-funding reward model (e.g., after 4 + more years. 





**Agenda Points & Actions**

 https://github.com/mimblewimble/grin-pm/issues/438
## Follow Up.
- _Fixing peers_, [grin++ node bans Rust nodes](https://forum.grin.mw/t/funding-proposal-pibd-implementation-in-grin/11583/2).
   * https://github.com/mimblewimble/grin/pull/3811 PR
   * Checking grin++ seed nodes.
- [Payment proofs ](https://forum.grin.mw/t/grin-product-wishlist/9704/61) **fix**.
- Grin [Github organization](https://github.com/grincc/agenda/issues/177#issuecomment-2973518577).
-  [Grin MultiSig](https://forum.grin.mw/t/funding-proposal-grin-multisig/11837/1) 
- [ Grin Node meets UmbrelOs, EmbassyOs](https://forum.grin.mw/t/funding-request-grin-node-meets-umbrelos-embassyos/11928)
- [ Cuckatoo reference miner](https://forum.grin.mw/t/request-for-funding-cuckatoo-reference-miner/12033)

 ## Proposed Agenda
* MultiSig Funding Proposal Discussion
* Development Priorities @ardocrat
*  Post-Funding Bounty System & Donations to @ardocrat,@nicoalsflamel, @scilio
* Third-Party Wallet Integrations (Stack wallet- 20k)



__Ardocrat__: Thank you for mentioning, CI setup is finished, it took longer than expected, I actually want to work on Grin full-time. The only problem is old hardware now, to make builds faster and launch several nodes to debug and emulate some things at different sync steps, current priorities are fix of sync bugs, complete @oryhp contracts with payment proofs and maintaining grin/grin-wallet.

__Ardocrat__: Originally tor was not included into grin, but mwixnet branch has arti lib already... can we bring some known scientists or email/call blockchain firm to make RFC/MVP, I suggested Ethereum Foundation as it has biggest community now.


__Wiesche__: How much money do you need for the hardware?


__Ardocrat__: I am looking at AmpereOne A192-32X, used was near $4k.



**MultiSig Funding Proposal & Implementation**

__Ckec__: https://forum.grin.mw/t/funding-proposal-grin-multisig/11837 The first topic is multisig Funding proposal.

__Wiesche__: @oryhp Could you imagine carrying out this task?


__DoorayakI__: how can I possible help you guys? either development/ bounty / bug bounty / tutorials / github stuff such as actions or / issue solving, clearing?


__Wiesche__: We are looking for someone to implement multisig and atomic swaps.

__DoorayakI__: is there any sort of detailed proposal?


__Wiesche__: An rfc should be defined in advance.


__anonymous__: Regarding work on MultiSig, discussions on specific topics are best had at the grin forum.

**Post-Funding Bounties & Donations**

__anonymous__: Grin Governance Council will officially embrace a Post funding bounty system. First round of post funding bounties/donations:

 ➡️A Donation to Ardocrat for Grim development 

➡️A donation to @NicolasFlamel1 for his work on the Rust Cuckatoo Reference miner + lost funds in past payments 

➡️A donation to @scilio for funds lost due to BTC price drop for his work on MWixnet ➡️Payment to @quentinlesceller for domain and forum servers 

➡️Payment to @johntromp for domain renewal costs.

__anonymous__: Bounties: 

• Ardocrat 40k$ donation for Grim development 

• Nicolasflamel 15k$ post funding for Rust reference miner + 10k$ in post funding lost in past payments due to BTC price drop = 25k$ in total in post funding bounties. 

• 10$k in post funding for Scilio due to his work on MWixnet and funds lost due to BTC price drop and late payments.

__Протагонист__: ardocrat deserves an award, but I'd like to specify a few conditions. for example, fulltime work on projects with grin.


__Ardocrat__: thank you, its about Grin contribution, not only GUI, at Grim we can test all things before merge into mimblewimble organization repos.

__Wiesche__: @ardocrat you Can buy Hardware 🫶. Thank you for your work. You came at just the right time with Grim.



**Third-Party Wallet Integration (Stack wallet)**

https://forum.grin.mw/t/stack-wallet-integration/12217

__anonymous__: 3) Stack wallet Grin implementation (via wrapper), 20k$ request.

__anonymous__: It is more like Stack Wallet offers, hey if you want integration, we can do so, it will take 20k

__anonymous__: Personally I am not against funding Stack Wallet, but I do not like paying upfront. I like long term commitment to the project. Hence my proposal would be, we encourage Stack Wallet to integrate Grin. If it turns out well and is still working after 4 years, we will consider a "Post Funding Donation," just like we did to many others today.

__Протагонист__: Better unstopobble...than stack. it's very important to check if this person is who they claim to be.

__Ckec__: why 4 years? why not 6 years?

__anonymous__: For me the same holds for Unstopable wallet. If they implement Grin and show long term support and commitment to Grin as a project, I would not mind us making a post Funding donation after a few years. But that is just my opinion.

__Ckec__: Post funding is = people will contribute and 4 years later GGC will reward if they want to 😁.

__DoorayakI__: my proposal for MUCH WORK, would be post funding with small payee very small upfront to several proven / trusted dev's.

__anonymous__: True, javascript is easy way to make something fancy. But if you like performance, and I do, Javascript is a horror.

__anonymous__: I think we will not find much answers here on whether or not to fund Stack Wallet or Unstoppable wallet. There are not many GGC members online at the moment to discuss it.

I just shared my idea of post funding for them, but I am 

1) not sure GGC members support it
2) not sure if Stack Wallet or Unstoppable are interested in it or only want upfront payment 
3) it still not clear if community supports it, also not many online to discuss it today

__DoorayakI__:just presented my proposal.it's always a grin pleasure

__Wiesche:__  @anonymous Please excuse my absence for the last half hour. 
But in principle, I agree with your opinion. 
I thought it would be a good alternative to enter the iOS market. 

👍anonymous


**TO DO List**

* Define a RFC for MultiSig implementation.
* Ardocrat to contact Ckec regarding BTC address for donation
  
  

Meeting adjourned.

