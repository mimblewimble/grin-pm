# Grin Project Status

Last updated: 2026-02-05

## Active Contributors

| Name | Role | Focus Areas |
|------|------|-------------|
| **Ardocrat** | Developer | GRIM wallet, PIBD sync, Android fixes, Windows CI, core bug fixes |
| **Wiesche** | Developer | UmbrelOS integration, Grin++ node, testnet, Docker builds, APIs/GUIs |
| **Anynomous** | Part-time Developer | Config issues, contract flow, code review |
| **Marek** | Part-time Developer | mimblewimble-py, Python node, Python Wallet |
| **Wayne George** | Project Management | Coordination, governance, testnet nodes |
| **Ckeci** | Project Management | Coordination, governance |
| **John Tromp** | Part-time Reviewer | Code review |
| **David Burkett** | Part-time Reviewer | Code review |

## Current Projects

| Project | Status | Owner | Description |
|---------|--------|-------|-------------|
| GRIM Wallet | In Progress | @Ardocrat | Cross-platform GUI wallet (Desktop, Android) |
| PIBD Sync Fix | PR Submitted | @Ardocrat | Fix sync issues with bad peers ([PR #3816](https://github.com/mimblewimble/grin/pull/3816)) |
| UmbrelOS App | In Progress | @Wiesche | Grin/Grin++ node for UmbrelOS - PR expected January 2026 |
| Windows CI/Installer | In Progress | @Ardocrat | .msi builds with .slatepack extension support |
| Testnet Infrastructure | In Progress | @Wiesche | Multi-arch Docker, DnsSeeder entries |
| mimblewimble-py | In Progress | @Marek | Python implementation of the MimbleWimble protocol - wallet generation, slate transactions, cryptographic utilities ([repo](https://github.com/grinventions/mimblewimble-py)) |
| Stack Wallet (iOS) | Under Discussion | TBD | iOS wallet integration - community requested |

## Blockers & Issues

- **Lack of reviewers** - Need more developers with merge access
- **PIBD sync issues** - Peers disconnecting during sync, needs debugging
- **Low testnet peer count** - Only ~5 peers available

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
- Development meetings held bi-weekly in the GGC Telegram channel
