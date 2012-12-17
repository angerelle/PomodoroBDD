When /^I start a pomodoro$/ do
  button = Melomel.find('spark.components.Button', :label => "Start")
  button.should_not be_nil
  Melomel.click(button)
end

Then /^the time left should show "(.*?)"$/ do |timeRemaining|
  time_remaining_label = Melomel.find('spark.components.Label', :id => "timeRemainingLabel")
  time_remaining_label.should_not be_nil
  time_remaining_label.text.should == timeRemaining
end

Given /^I have started a pomodoro$/ do
  button = Melomel.find('spark.components.Button', :label => "Start")
  button.should_not be_nil
  Melomel.click(button)
end

When /^One second has gone by$/ do
 sleep 1.1
end

When /^One minute has gone by$/ do
  sleep 60.1
end
