Bundler.require(:default, :development)

RSpec.configure do |c|
  # filter_run is short-form alias for filter_run_including
  c.filter_run :focus => true
end

