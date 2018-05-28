xquery version "1.0-ml";

declare variable $DATABASES := for $i in xdmp:databases() return xdmp:database-name($i);

xdmp:set-response-content-type("text/html; charset=utf-8"),
'<!DOCTYPE html>',
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous"/>

        <title>ReST Server</title>
    </head>
    <body>
        <main role="main" class="container">

            <div class="starter-template">
                <h1>ReST Server creator template</h1>
                <p class="lead">Build and configure an HTTP (ReST) Server to get started with application development.</p>
                <textarea rows="4" cols="50" class="d-none">
        <rest-api xmlns="http://marklogic.com/rest-api">
        <name>RESTstop</name>
        group
        <database>Documents</database>
        <port>8020</port>
        <forests-per-host>3</forests-per-host>
        modules-database
        xdbc-enabled
        
        </rest-api>
                </textarea>
            </div>

            <textarea>debug</textarea>

            <form>
                <div class="form-group">
                    <label for="appServerName">App Server Name</label>
                    <input type="text" class="form-control" id="appServerName" placeholder="Rest" required="true" />
                    <small id="appServerNameHelp" class="form-text text-muted">Required. The name of the instance.</small>
                </div>
                <div class="form-group">
                    <label for="groupName">Group</label>
                    <input type="text" class="form-control" id="appServerName" placeholder="Default"/>
                    <small id="groupNameHelp" class="form-text text-muted">Optional. The group in which to create the App Server.</small>
                </div>
                <div class="form-group">
                    <label for="databaseName">Database</label>
                    <select class="form-control">
                        <option>(none specified)</option>
                        {for $i in $DATABASES order by $i return element option{$i}}
                    </select>
                    <small id="databaseNameHelp" class="form-text text-muted">Optional. The name of the content database to associate with the instance. If the database does not exist, MarkLogic Server creates a new database with default settings and three forests. Use forests-per-host to change the number of forests.</small>
                </div>
                <div class="form-group">
                    <label for="portNumber">Port</label>
                    <input type="number" id="portNumber" min="8003" max="65534" step="1" data-bind="value:portNumber"/>
                    <!-- input type="text" class="form-control" id="port" placeholder="8020"/ -->
                    <small id="portHelp" class="form-text text-muted">Optional. The port number to associate with the App Server.  If this value is left blank, the next available port number, starting with 8003 will be used.</small>
                </div>
                <div class="form-group">
                    <label for="forests">Forests Per Host</label>
                    <input type="text" class="form-control" id="forests" placeholder="3"/>
                    <small id="portHelp" class="form-text text-muted">Optional. The number of forests to create per host for the content database.</small>
                </div>

                <div class="form-group">
                    <label for="xdbc">XDBC Enabled</label>
                    <input type="text" class="form-control" id="xdbc" placeholder="false"/>
                    <small id="xdbcHelp" class="form-text text-muted">Optional. Whether or not to enable XDBC services in the instance. XDBC services must be enabled to use the /eval and /invoke services.</small>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
      
        </main>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">{" "}</script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">{" "}</script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous">{" "}</script>
    </body>
</html>