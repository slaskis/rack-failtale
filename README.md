Rack::Failtale
==============

A very simple Rack Middleware for reporting errors to the Failtale Service.

Usage:
------

	require "rack/failtale"
	use Rack::Failtale, "API KEY HERE"
	
TODO:
-----

Allow for reporting to a Failtale service on other domains than the official.