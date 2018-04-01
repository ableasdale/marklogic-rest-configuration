# marklogic-rest-configuration
Lightweight ReST API based view of MarkLogic Server configuration

Basic user/role requirements for viewing http://localhost:8002/manage/v2

Create a new role (rest-view):

```xquery
xquery version "1.0-ml";

import module namespace sec = "http://marklogic.com/xdmp/security" at "/MarkLogic/security.xqy";
sec:create-role("rest-view", "Use the ReST API to view cluster status", (),(),(),(),())
```

Create rest-view user with the necessary privileges:

```xquery
xquery version "1.0-ml";

import module namespace sec = "http://marklogic.com/xdmp/security" at "/MarkLogic/security.xqy";
sec:privilege-add-roles("http://marklogic.com/xdmp/privileges/environment-ui","execute", "rest-view"),
sec:privilege-add-roles("http://marklogic.com/xdmp/privileges/manage","execute", "rest-view"),
sec:create-user("rest-view", "Rest View", "test", ("rest-view"), (), ())
```
