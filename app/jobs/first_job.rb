class FirstJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "-----------------------------------------------------------------------------"
    puts "inside job function"
    # Do something later
  end

  private
  def callback_action
     puts "-------------------------------------------before------------------------------"
     yield
     puts "-------------------------------------------after--------------------------------"
  end

end
