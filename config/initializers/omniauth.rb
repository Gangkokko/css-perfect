Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "462946983557-k86e13sic77jhfcggc3ti31uku9tq39g.apps.googleusercontent.com",   "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"
end
