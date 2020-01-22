# CCPAStringBuilder
The Open Source CCPA String Builder, which is compliant with IAB 1.0 final doc:
https://iabtechlab.com/wp-content/uploads/2019/11/U.S.-Privacy-String-v1.0-IAB-Tech-Lab.pdf

#
The CCPAStringBuilder consists from the `Source/CCPAStringBuilder.swift` class.
The usage example:
```
let privacyString = CCPAStringBuilder()
    .set(explicitOptOut: true)
    .set(optOutSale: true)
    .set(limitedServiceProviderAgreement: true)
    .build()
```
such usage will result in: `1YYY` `us_privacy` string.
Each param could be set to `true` or `false`, which will result in `Y` or `N`, accordingly. The unset param will generate the `-` char. The first char is always `1`, which is the IAB version specification.
