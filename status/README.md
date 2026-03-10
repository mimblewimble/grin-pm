# Grin Project Status

Last updated: 2026-02-05

## Active Contributors

| Name | Role | Focus Areas |
|------|------|-------------|
| **Ardocrat** | Developer | GRIM wallet, PIBD sync, Android fixes, Windows CI, core bug fixes |
| **Wiesche** | Developer | UmbrelOS integration, Grin++ node, testnet, Docker builds, APIs/GUIs |
| **Anynomous** | PM/Developer | Config issues, contract flow, code review |
| **Marek** | Developer | mimblewimble-py, Python node, Python Wallet |
| **Wayne George** | PM/Developer | Coordination, governance, testnet nodes, iOS wallet |
| **Ckeci** | PM | Coordination, governance |
| **John Winter Murphy** | Developer | BTCPayServer Grin plugin |
| **John Tromp** | Reviewer | Code review |
| **David Burkett** | Developer/Reviewer | Code review, bug fixes |

## Current Projects

| Project | Status | Owner | Description |
|---------|--------|-------|-------------|
| GRIM Wallet | In Progress | @Ardocrat | Cross-platform GUI wallet (Desktop, Android) |
| PIBD Sync Fix | PR Submitted | @Ardocrat | Fix sync issues with bad peers ([PR #3816](https://github.com/mimblewimble/grin/pull/3816)) |
| UmbrelOS App | In Progress | @Wiesche | Grin/Grin++ node for UmbrelOS - PR expected January 2026 |
| Windows CI/Installer | In Progress | @Ardocrat | .msi builds with .slatepack extension support |
| Testnet Infrastructure | In Progress | @Wiesche | Multi-arch Docker, DnsSeeder entries |
| mimblewimble-py | In Progress | @Marek | Python implementation of the MimbleWimble protocol - wallet generation, slate transactions, cryptographic utilities ([repo](https://github.com/grinventions/mimblewimble-py)) |
| BTCPayServer Grin Plugin | In Progress | @jwinterm | Plugin to accept Grin payments via BTCPayServer using slatepack transactions ([repo](https://github.com/Such-Software/btcpayserver-grin-plugin)) |
| Grin Wallet iOS | In Progress | @waynegeorge | SwiftUI iOS wallet implementation for iPhone and iPad |
| Stack Wallet (iOS) | Under Discussion | TBD | iOS wallet integration - community requested |

## Blockers & Issues

- **PIBD sync issues** - Peers disconnecting during sync, needs debugging

## Roadmap

### Current Focus

- PIBD sync bug fixes (critical for stability)
- UmbrelOS integration finalisation
- Android camera/file sharing fixes in GRIM
- Windows .msi installer for easier installation

### Next

- QR code linking between mobile wallet and Umbrel node
- Payment proofs implementation
- MultiSig wallet ([RFC in progress](https://forum.grin.mw/t/multisig-wallet-rfc/12316))
- Stack Wallet iOS integration (pending funding decision)

### Future Considerations

- ARTI/Tor bridge integration for better privacy in restricted regions
- Mwixnet on testnet
- Cuckatoo reference miner ([funding request](https://forum.grin.mw/t/request-for-funding-cuckatoo-reference-miner/12033))

## Recent Decisions

See [Decision Log](../decision_log.md) for the full history.

## Meetings

- Meeting notes: [meetings/](../meetings/)
- Development/governance meetings held bi-weekly @ 19:30 UTC in the GGC Telegram channel https://t.me/Grin_Governance