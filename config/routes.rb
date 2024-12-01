Rails.application.routes.draw do
  post "/extract", to: "extractor#extract"
end
