require 'csv'
require 'yaml'
states_csv = CSV.read('states.csv')

def ary_to_hash(state)
  {
    'name' => state[1],
    'country_id' => state[3],
    'abbr' => state[2],
  }
end

ary = states_csv.map { |state| ary_to_hash(state) }
puts YAML.dump(ary)
