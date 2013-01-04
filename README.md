SafariCookieBahnDE
==================

Raise expiration date on bahn.de cookies for settings

# Documentation

I'm very disappointed when using the services from .bahn.de after setting up my personal dashboard.

The dashboard is stored only in a cookie and this cookie expires after 10 days.
Therefore, if you don't use the service on a nearly weekly base, all your settings are gone.

This project will raise the expiration date of the cookies within Safari's cookie storage.

# Usage

Basically you just run the program.

A better way of course is to not run it manually but automatically - and regularly.
So you want to create a LaunchAgent that runs the script once you log in.
So head for installation...

# Installation

Clone the project, open it in xcode (my version 4.3.2) and Build it.

This should copy the executable to /usr/local/bin and the LaunchAgent property list the appropriate user's directory.

# Author

Karsten Silkenbäumer

[![endorse](http://api.coderwall.com/ksi/endorsecount.png)](http://coderwall.com/ksi)
