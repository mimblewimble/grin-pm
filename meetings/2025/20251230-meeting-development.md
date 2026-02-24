

**Community Meeting Notes December 30, 2025**

Grin Governance Council (GGC) Developer meeting held in the  GGC Telegram channel at 19:30 UTC

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

* Cekic
* Ardocrat
* Wiesche
* anonymous
  
  

**Short Summary**

The meeting focused on code review requests, the finalization of UmbrelOS development work, and an in-depth discussion on improving privacy and accessibility via Tor/ARTI integration. Ardocrat submitted several Pull Requests, including a PIBD sync fix and a `no-tui` flag, and detailed his work on Windows CI for easy `.msi` builds that support `.slatepack` extension integration. Wiesche announced his UmbrelOS work is nearing completion for a January PR. The core of the discussion revolved around integrating ARTI for better Tor support, with a focus on simple setup (like QR code linking to Umbrel node) and circumventing restrictions using bridges like WebTunnel, which Ardocrat suggests building cross-platform support for directly into the app.



**Agenda Points & Actions**

* Code Review for Grin/Grin-Wallet
* Windows CI and Installer Improvements
* UmbrelOS App & QR Code Linking
* MultiSig Wallet  
  [Multisig-wallet RFC - #14 by wiesche - Development and Technical Discussion - Grin](https://forum.grin.mw/t/multisig-wallet-rfc/12316/14)

## Follow Up.

- [Payment proofs ](https://forum.grin.mw/t/grin-product-wishlist/9704/61) **fix**.
- [Grin MultiSig](https://forum.grin.mw/t/funding-proposal-grin-multisig/11837/1) 
- [ Grin Node meets UmbrelOs, EmbassyOs](https://forum.grin.mw/t/funding-request-grin-node-meets-umbrelos-embassyos/11928)
- [ Cuckatoo reference miner](https://forum.grin.mw/t/request-for-funding-cuckatoo-reference-miner/12033)
- [Stack Wallet integration.](https://forum.grin.mw/t/stack-wallet-integration/12217/23)



[Agenda: Development, 30 December 2025 · Issue #442 · mimblewimble/grin-pm · GitHub](https://github.com/mimblewimble/grin-pm/issues/442)

Meeting starts



**Code Review for Grin/Grin-Wallet**

__Ardocrat__: https://github.com/mimblewimble/grin/pull/3816 https://github.com/mimblewimble/grin/pull/3817 https://github.com/mimblewimble/grin/pull/3818. hello, I have only question who will review this? 😄


__Wiesche__: @johntromp or @DavidBurkett.


__Ardocrat__: first we can merge pibd sync fix, then no tui flag, then I will modify docker image to launch with no-tui.



**Windows CI and Installer Improvements**

__Ardocrat__: I almost finished to make windows runner to build .msi under windows for CI, using separate laptop for this 😄. .exe is not launching easy on last windows... also .msi allows to integrate support of .slatepack extension.


__anonymous__: I have never encountered issues with .exe on Windows.


__Ardocrat__: it says its not safe to launch .exe, need to disable protection... so we can also publish the app into AppStore for Desktop.



**UmbrelOS App & QR Code Linking**

__Wiesche__: I am currently working on the testnet and the Grin++ node (for the Umbrel environment)... I will then create a pull request at the beginning of January.


__Wiesche__: @ardocrat Let's design a QR code together with a wallet address and password. That way, you can scan the code into GRIM from the GRIN Umbrel node.


__anonymous__: Just a json right? What should be in it, IP+port, username and secret? Since it is a QR and not send over the internet, nice thing is that it can be plain. No encryption needed.


__Ardocrat__: another idea was to add installation of node from the app, when you just enter ssh key and server address, will be easy with docker.



**Tor/ARTI and Mwixnet Integration for Privacy**

__Ardocrat__: I can not imagine using Grin without VPN actually, for better privacy, also Tor is restricted at a lot countries, mwixnet requires Tor also.


__anonymous__: True, that is why probably we need to move to arty. Not sure how much work that actually is. Is that like swapping in and out a module?


__Wiesche__: I would probably try to offer Mwixnet on the testnet as an Umbrel app.


__Ardocrat__: current problem is we can not use just proxy for it, bridges are needed, so we can integrate them inside the app, as it requires separate binary, need to build it cross-platform... basically webtunnel bridge can be launched with node, so users will just need to use ip of node.

Grin Governance Council [public]:
So Arty should extend its functionality to support Bridges you mean?

__Ardocrat___:
ARTI

__anonymous__:
A, did not know you write it like that

__Ardocrat__:
we need to include bridges inside the build for simpler usage

**anonymous**:
Just thinking if it is something we can just put a bounty on for the makers of ARTI to extend their functionality

Bounties only work for very specific contained problems, this is one such examples.

But I have to little understanding of what is needed to formulate such a possible bounty.

**Ardocrat**:
build webtunnel or obfs, seems like webtunnel is less restricted

**anonymous**:
Just my thinking, perhaps other council members and community might not support this.

**Ardocrat**:
at least to be able to use proxy

it will help a lot

C++ tor allows it

now it uses NAT

**anonymous**:
According to AI:

"Arti,
The Tor Project's Rust implementation of Tor, fully supports Tor bridges (unlisted relays) for bypassing censorship, allowing you to get them via the official Telegram bot (@GetBridgesBot) or bridges.torproject.org website, manually configuring them in apps like Tor Browser or Orbot, with newer methods like WebTunnel available, helping users in censored regions connect anonymously"

So basically they say it is supported already.

**Ardocrat**:
basically webtunnel bridge can be launched with node, so users will just need to use ip of node

https://community.torproject.org/relay/setup/webtunnel/

it uses https, simulates TLS connection

__Wiesche___:
I have to go.
I wish you all a great start to the new year. 
And I look forward to our joint development in 2026.

A new GRIN Year

**Ardocrat**:
nice to have you all here, seems like next year will be more productive than ever 😄

**anonymous**:
Ok, I will also go now. Have a great new year @ardocrat. If I have time I will look at those pulls









**TO DO List**

* **Code Review:** @johntromp or @DavidBurkett to review Ardocrat's open Pull Requests, particularly the PIBD sync fix.
* **GRIM/Docker:** Ardocrat to modify the Docker image to launch with `no-tui` after the respective PR is merged.
* **UmbrelOS PR:** Wiesche to create a Pull Request for the finished UmbrelOS work at the beginning of January.
* **QR Code:** Wiesche and Ardocrat to design the QR code format for simple remote node connection (IP, port, secret).
* **ARTI/Bridges:** Continue investigating the feasibility and scope of integrating ARTI with cross-platform support for bridges (like WebTunnel) to simplify Tor usage.

Meeting adjourned.
---
