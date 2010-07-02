Rack::Failtale
==============

A very simple Rack Middleware for reporting errors to the Failtale Service.

Install:
--------

	gem install rack-failtale

Usage:
------

	require "rack/failtale"
	use Rack::Failtale, "API KEY HERE"
	
TODO:
-----

* Allow for reporting to a Failtale service on other domains than failtale.be. (see FailtaleReporter::base_uri)
* Allow for filtering of the exceptions and environment variables (so we won't show passwords and such in plain text)