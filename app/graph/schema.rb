# Declare a type...
ConfigType = GraphQL::ObjectType.define do
  name 'Config'
  description 'A configuration object'

  field :id, !types.ID
  field :app_name, !types.String
  field :brand, !types.String
  field :company, !types.String
end

# ...and a query root
QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root of this schema'

  field :config do
    type ConfigType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { Config.find(args['id']) }
  end
end

# Then create your schema
Schema = GraphQL::Schema.new(query: QueryType)
