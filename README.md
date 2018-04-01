# marklogic-rest-configuration
Lightweight ReST API based view of MarkLogic Server configuration

NOTES:

SEC-PRIV: xdmp:security-assert("http://marklogic.com/xdmp/privileges/environment-ui", "execute") -- Need privilege: http://marklogic.com/xdmp/privileges/environment-ui

```xquery
xquery version "1.0-ml";

import module namespace sec = "http://marklogic.com/xdmp/security" at "/MarkLogic/security.xqy";
sec:create-role("rest-view", "Use the ReST API to view cluster status", (),(),(),(),())
```
