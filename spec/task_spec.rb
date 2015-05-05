require('spec_helper')

describe (Task) do

  describe('#save') do
    test_task = Task.new({:description => "Wash the pig", :list_id => 1, :id => nil})
    test_task.save()
    expect(DB.exec("SELECT * FROM tasks;")).to(eq([test_task]))
  end

end
