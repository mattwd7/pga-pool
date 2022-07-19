task release: :environment do
  Rails.logger.info("---- Running release phase migrations ----")
  Rake::Task["db:migrate"].invoke
end
