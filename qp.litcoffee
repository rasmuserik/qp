# Setup

    if Meteor.isServer
        root = global
    else
        root = window

    qp = root.qp = root.qp || {}
    qp.hello = true
