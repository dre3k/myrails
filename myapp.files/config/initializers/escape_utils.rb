require 'escape_utils/html/rack' # to patch Rack::Utils
require 'escape_utils/html/erb' # to patch ERB::Util
require 'escape_utils/html/cgi' # to patch CGI
require 'escape_utils/html/haml' # to patch Haml::Helpers

require 'escape_utils/url/rack' # to patch Rack::Utils
require 'escape_utils/url/erb' # to patch ERB::Util
require 'escape_utils/url/cgi' # to patch CGI
require 'escape_utils/url/uri' # to patch URI

require 'escape_utils/javascript/action_view' # to patch ActionView::Helpers::JavaScriptHelper
