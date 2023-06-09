####exchange rates from Oanda (currency convertor)

OANDA_CURRENCIES <- c(
  "ADF", "ADP", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "AON",
  "ARS", "ATS", "AUD", "AWG", "AZM", "AZN", "BAM", "BBD", "BDT",
  "BEF", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BRL", "BSD",
  "BTN", "BWP", "BYR", "BZD", "CAD", "CDF", "CHF", "CLP", "CNY",
  "COP", "CRC", "CUC", "CUP", "CVE", "CYP", "CZK", "DEM", "DJF",
  "DKK", "DOP", "DZD", "ECS", "EEK", "EGP", "ESP", "ETB", "EUR",
  "FIM", "FJD", "FKP", "FRF", "GBP", "GEL", "GHC", "GHS", "GIP",
  "GMD", "GNF", "GRD", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG",
  "HUF", "IDR", "IEP", "ILS", "INR", "IQD", "IRR", "ISK", "ITL",
  "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW",
  "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LTL",
  "LUF", "LVL", "LYD", "MAD", "MDL", "MGA", "MGF", "MKD", "MMK",
  "MNT", "MOP", "MRO", "MTL", "MUR", "MVR", "MWK", "MXN", "MYR",
  "MZM", "MZN", "NAD", "NGN", "NIO", "NLG", "NOK", "NPR", "NZD",
  "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PTE", "PYG",
  "QAR", "ROL", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR",
  "SDD", "SDG", "SDP", "SEK", "SGD", "SHP", "SIT", "SKK", "SLL",
  "SOS", "SRD", "SRG", "STD", "SVC", "SYP", "SZL", "THB", "TMM",
  "TND", "TOP", "TRL", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX",
  "USD", "UYU", "VEB", "VND", "VUV", "WST", "XAF", "XAG", "XAU",
  "XCD", "XEU", "XOF", "XPD", "XPF", "XPT", "YER", "YUN", "ZAR",
  "ZMK", "ZWD")

getSymbols(Symbols = 'EUR/TRY', src = "oanda")
