# Setup

    @qp ||= {}
    qp.hello = true

# Test

Run internal tests of the qp library. The `done` parameter is a function that will be called with the number of errors, when all tests are done.

    qp.selfTest = (done) ->
        done 0
