require "rails"
require "tkh_inline_editor/version"

module TkhInlineEditor
  module Rails
    if ::Rails.version < "3.1"
      require "tkh_inline_editor/railtie"
    else
      require "tkh_inline_editor/engine"
    end
  end
end