ActiveRecord::Schema.define(version: 2019_09_19_162728) do

  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "title"
  end

end
