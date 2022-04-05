class UpdateJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "-----------------------------------------------------------------------------"
    puts "inside updadte job"
  end
end
