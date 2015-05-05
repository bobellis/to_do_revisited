class Task

  attr_reader(:description, :list_id, :id)

  define_method(:initialize) do |attributes|
    @description = attributes.fetch(:description)
    @list_id = attributes.fetch(:list_id)
    @id = attributes.fetch(:id)
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO tasks (description, list_id) VALUES ('#{@description}', #{@list_id}) RETURNING ID;")
    @id = result.first().fetch("id").to_i
  end

  define_method(:==) do |other_task|
    self.name() == other_task.name() && (self.id() == other_task.id())
  end

end
