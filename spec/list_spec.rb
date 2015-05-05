require('spec_helper')

describe(List) do
  describe('#save') do
    it('will save a list into the database') do
      test_list = List.new({:name => 'my to do list', :id => nil})
      test_list.save()
      expect(List.all()).to(eq([test_list]))
    end
  end
  describe('#==') do
    it('is the same list if it has the same name and id') do
      list1 = List.new({:name => "my test list", :id => nil})
      list2 = List.new({:name => "my test list", :id => nil})
      expect(list1).to(eq(list2))
    end

  end


end
