# Current burn-rate & runway report

Last updated: May 18 2020

## Introduction
This report provides a back of the envelope estimation of Grin's current _burn-rate_, i.e. how much of the General Fund is being spent each month, and _runway_, i.e. how many months the project can afford to spend at this level before running out of funds, everything else being equal.

The results are highly dependent on USD/crypto exchange rate fluctuations, and are therefore expected to vary significantly over time.

**It is therefore unlikely to be an accurate prediction.** Instead it should be considered an estimated forecast, driven by the motivation to add more transparency to Grin's finances.

The intention is to keep this document updated monthly, the historical state is tracked in the bottom section.

## Current burn-rate

Amounts are converted to USD based on x-rates provided by Google on May 18 2020.

| # | Item | Local Monthly rate | Approximate USD Monthly rate |
|---|:---|---:|---:|
1 | forum.grin.mw discourse hosting | N/A | $50 |
2 | @yeastplume funding | EUR 10,000 | $10,814.37 |
3 | @jaspervdm funding | EUR 10,000 | $10,814.37 |
4 | @antiochp funding | EUR 10,000 | $10,814.37 |
5 | @lehnberg funding | GBP 2,500 | $3,034.56 |
| | | **Total:** | **$35,527.67** |

## Current runway

### Assumptions

1. All USD exchange rates remain fixed, with crypto specifically locked at:
   * BTC/USD $9,610.89
   * GRIN/USD $0.471161
2. All current spend items remain (new funding requests are perpetually raised and approved) and no new spend is added.
3. No new income, no new donations to the fund.
4. @yeastplume, @antiochp, and @lehnberg are funded until June 30, @jaspervdm is funded until May 31.

### Available disposable assets

---
*Disclaimer: Below is a rough estimation, amounts are not final.*

---

As per the [Q1 2020 financial transparency report](https://github.com/mimblewimble/grin-pm/pull/279), Grin had the following assets disposable on Mar 31:
   * BTC: 116.94381179 
   * GRIN: 3,647.21555489

Since then, the following spends [have been logged](../spending_log.csv):
   * **BTC:** -(1.50 + 4.37 + 4.51) = -10.38

The updated assets available as of today's date, converted into USD are therefore:
   * BTC: 106.56381179 * 9,610.89 = $1,024,173.07 
   * GRIN: 3,647.21555489 * 0.471161 = $1,718.43
 
**TOTAL USD:** $1,025,891.50 

### Runway calculation

According to the above burn-rate, available assets and assumptions about runway, the General Fund would run out of funds in **December 2022**, i.e. there is **31 months** worth of runway.

Source: [Detailed calculation (Google Spreadsheet)](https://docs.google.com/spreadsheets/d/1JrZ1rlsQjzVHlbih4TLRi-iWRJHFGcMF7bpPLrr5rB8/edit?usp=sharing)

---

## Appendix: Historical calculations

| Date of calculation | Monthly burn-rate (USD) | Disposable assets (USD) | Runway (months) | Until |
|:---|---:|---:|---:|:---|
May 18 2020 | $35,527.67 | $1,025,891.50 | 31 | Dec 2022 
Apr 13 2020 | $35,866.65 | $718,739.54 | 22 | Feb 2022
