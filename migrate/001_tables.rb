Sequel.migration do
  change do
    create_table(:monsters) do
      primary_key :id
      String :name, null: false
      Integer :hit_points, null: false
    end
  end
end
