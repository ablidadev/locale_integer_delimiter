require File.expand_path('../lib/locale_integer_delimiter_patch.rb', __FILE__)

Redmine::Plugin.register :locale_integer_delimiter do
  name 'Locale Integer Delimiter plugin'
  author 'bokos'
  description 'Displays integers with delimiter from selected locale'
  version '0.0.2'
  url 'https://github.com/bokos/locale_integer_delimiter'
  author_url 'https://github.com/bokos/locale_integer_delimiter'

  RedmineApp::Application.config.after_initialize do
    ApplicationHelper.include LocaleIntegerDelimiterPatch
  end
end
