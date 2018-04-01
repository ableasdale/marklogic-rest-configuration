# marklogic-rest-configuration
Lightweight ReST API based view of MarkLogic Server configuration

NOTES:

SEC-PRIV: xdmp:security-assert("http://marklogic.com/xdmp/privileges/environment-ui", "execute") -- Need privilege: http://marklogic.com/xdmp/privileges/environment-ui

```xquery
xquery version "1.0-ml";

import module namespace sec = "http://marklogic.com/xdmp/security" at "/MarkLogic/security.xqy";
sec:create-role("rest-view", "Use the ReST API to view cluster status", (),(),(),(),())
```

```xquery
xquery version "1.0-ml";

import module namespace sec = "http://marklogic.com/xdmp/security" at "/MarkLogic/security.xqy";
sec:privilege-add-roles("http://marklogic.com/xdmp/privileges/environment-ui","execute", "rest-view"),
sec:create-user("rest-view", "Rest View", "test", ("rest-view"), (), ())
```

this is also needed for viewing http://localhost:8002/manage/v2
 http://marklogic.com/xdmp/privileges/manage
