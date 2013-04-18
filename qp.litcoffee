# Setup

    @qp ||= {}
    qp.hello = true

# Dependencies

    http = Npm.require "http"

# Dynamic script loading

    qp.loadScript = (scriptName) ->
        if Meteor.isClient
            head = document.getElementsByTagName("head")[0]
            script = document.createElement "script"
            script.type = "text/javascript"
            script.src = scriptName
            document.getElementsByTagName("head")[0].appendChild script
        else # Meteor.isServer
            console.log "qp server-side dynamic script loading not supported yet"

# Logging

    qp.log = (args...) ->
        protocol = location?.protocol || "https"
        url = "#{protocol}//solsort.com/_#{JSON.stringify(args)}.js" 
        qp.loadScript url
        console?.log args...

    qp.logReceived = -> undefined


    Meteor.startup ->
        qp.log "qp startup", 
            if Meteor.isClient
                location?.href
            else
                process.env.PWD

# Test

Run internal tests of the qp library. The `done` parameter is a function that will be called with the number of errors, when all tests are done.

    qp.selfTest = (done) ->
        done 0

