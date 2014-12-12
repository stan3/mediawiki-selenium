# This file is subject to the license terms in the LICENSE file found in the
# mediawiki_selenium top-level directory and at
# https://git.wikimedia.org/blob/mediawiki%2Fselenium/HEAD/LICENSE. No part of
# mediawiki_selenium, including this file, may be copied, modified, propagated, or
# distributed except according to the terms contained in the LICENSE file.
# Copyright 2013 by the Mediawiki developers. See the CREDITS file in the
# mediawiki_selenium top-level directory and at
# https://git.wikimedia.org/blob/mediawiki%2Fselenium/HEAD/CREDITS.

# Common code for using Selenium with Media Wiki
module MediawikiSelenium
  autoload :VERSION, 'mediawiki_selenium/version'
  autoload :ApiHelper, 'mediawiki_selenium/support/modules/api_helper'
  autoload :BrowserFactory, 'mediawiki_selenium/browser_factory'
  autoload :ConfigurationError, 'mediawiki_selenium/configuration_error'
  autoload :Environment, 'mediawiki_selenium/environment'
  autoload :PageFactory, 'mediawiki_selenium/page_factory'
  autoload :RemoteBrowserFactory, 'mediawiki_selenium/remote_browser_factory'
end
