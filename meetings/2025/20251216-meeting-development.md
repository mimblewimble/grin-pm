

**Community Meeting Notes December 16, 2025**

Grin Governance Council (GGC) Developer meeting held in the GGC Telegram channel at 19:30 UTC

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

* Wayne George
* Wiesche
* Cekic
* anonymous 

**Short Summary**

The meeting focused on testing the UmbrelOS integration, progress on synchronization improvements, and  debate about funding Stack Wallet for iOS integration. Wiesche confirmed testing synchronization on the testnet, finding only 5 peers, and received reimbursement approval for UmbrelOS testing hardware. The GGC discussed the philosophy for the Grin Umbrel app: making it easy to run a node and providing incentives like a network overview and mobile wallet QR code linking. A major discussion point was the Stack Wallet integration, with Wiesche and Ckec strongly advocating for funding the iOS wallet implementation due to community demand, while Wayne George expressed reservations about its value, leading to a contention about governance "stagnation."

**Agenda Points & Actions**

* UmbrelOS Implementation & Testing
* Testing Hardware Reimbursement
* UmbrelOS App Philosophy and Feature Roadmap
* Stack Wallet (iOS) Integration Debate
  
  ## Follow Up.
  - [Payment proofs ](https://forum.grin.mw/t/grin-product-wishlist/9704/61) **fix**.
  - Grin [Github organization](https://github.com/grincc/agenda/issues/177#issuecomment-2973518577).
  - [Grin MultiSig](https://forum.grin.mw/t/funding-proposal-grin-multisig/11837/1) 
  - [ Grin Node meets UmbrelOs, EmbassyOs](https://forum.grin.mw/t/funding-request-grin-node-meets-umbrelos-embassyos/11928)
  - [ Cuckatoo reference miner](https://forum.grin.mw/t/request-for-funding-cuckatoo-reference-miner/12033)
  - [Stack Wallet integration.](https://forum.grin.mw/t/stack-wallet-integration/12217/23)
    
    
  
  [Agenda: Development, 16 December 2025 · Issue #441 · mimblewimble/grin-pm · GitHub](https://github.com/mimblewimble/grin-pm/issues/441)
  
  

**UmbrelOS Implementation & Testing**

__Wiesche__: I am currently testing synchronization in the test network. I can only find 5 peers at the moment, which is quite few.


__anonymous__: My test on Umbrell with it are flawless, no issues.


__Wiesche__: Here you can see that I also offer an app for the test network. It's not yet PROD, but I think I'll release it this month. This means that the mainnet and the testnet can be operated simultaneously.


__anonymous__: I think that is an excellent idea.


__Wiesche__: In January, I will implement the following: - Break down capabilities - Update (automatic) - Break down synchronization steps in grin++ - Save transactions up to x pieces - Display chain inputs.


__Wiesche__: I don't think anyone is currently using Grin++ on the testnet, so I think I'll add new DnsSeeder entries. I'm happy to add these points to my agenda—great ideas.



**Testing Hardware Reimbursement**



__Wayne George__: Should we discuss the testing hardware? I think that it would be reasonable to claim reimbursement for an UmbrelOS machine.


__anonymous__: I think so, just add it to the second payment for Umbrell Grin Mesh.


__Wiesche__: Information for the community. I wanted to have 1/3 of the money paid out for the implementation of the Umbrel Os app. So I received $2,500. I have now ordered original Umbrel hardware. Okay, great, we can do that.





__anonymous__: My philosophy for Grin Umbrel is this: 1) Make it super easy 2) Give incentive to users to run a node... e.g. Network overview, optional build in block explorer, optional linked in price chart overview, absolute must make QR code linking of mobile wallet supported.


__Wiesche__: I saw your implementation with the CoinGecko API. Very nice development. Maybe I can build on that. My idea is more along the lines of developing an UmbrelOs wallet app. You could also access it via VPN.


__anonymous__: I think it is fine idea, but if I am honest, I think allowing easy linking of mobile wallet to Umbrell node is even more important. Probably it should work fine, API info and secret can be shared via QR code.

**Stack Wallet (iOS) Integration Debate**

__Wayne George__: Anything else we want to discuss? I see stack wallet was on your list Wiesche. Yes, but for that we need more presence here. If I'm honest, it's not a hell yeah for me at the moment (paying for Stack Wallet integration). Not sure about how much value it would bring.


__Ckec__: yes, lets talk about stack wallet. Many community members demaned a- IOS wallet, why GGC brushed it off for 20k money? put obstacles after one another. you are not sure abot necessity of an IOS wallet for Grin?


__Wiesche__: I agree with you that the majority of the community is in favor of this. And for this reason, we should also pay for its implementation.


__Ckec__: an ios mobile wallet is a necesssity. I got countless questions about it, after ironbelly.


__Wayne George__: That's fine, we'll always do what the majority decide but I'll never hide my views. I'm sorry for the negativity. If the community want Stack then I'll support it wholeheartedly.



**TO DO List**

* **UmbrelOS:** Wiesche to continue work on the UmbrelOS app, focusing on the January implementation points and adding new DnsSeeder entries for the testnet.
  
  
* **UmbrelOS:** Wiesche to integrate network overview, block explorer, price chart overview, and QR code linking of mobile wallets into the Umbrel app.
  
  
* **Testnet:** Wayne George to assist in running one or two testnet nodes to address the low peer count.

* **Stack Wallet:** Final decision on funding Stack Wallet integration (upfront payment vs. post-funding) needed for the next meeting.

Meeting adjourned.
---
