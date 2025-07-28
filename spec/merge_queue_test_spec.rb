require 'spec_helper'

RSpec.describe 'Merge Queue Test' do
  it 'simulates a build with configurable wait time' do
    # Get wait time from environment variable (default to 30 seconds)
    wait_time = ENV.fetch('TEST_WAIT_TIME', '30').to_i
    
    puts "Starting test with #{wait_time} second wait time..."
    puts "Test started at: #{Time.now}"
    
    # Simulate work being done
    sleep(wait_time)
    
    puts "Test completed at: #{Time.now}"
    
    # This test will always pass - we'll control pass/fail via workflow
    expect(true).to be true
  end
end
