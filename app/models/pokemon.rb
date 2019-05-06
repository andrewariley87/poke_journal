class Pokemon < ApplicationRecord
  self.table_name = 'pokemon'

  serialize :configuration, Hash
  include HasConfig::ActiveRecord::ModelAdapter
  self.has_config_configuration_column = 'stats'

  has_config :hp, config: { type: :integer }
  has_config :speed, config: { type: :integer }
  has_config :attack, config: { type: :integer }
  has_config :defense, config: { type: :integer }
  has_config :special_attack, config: { type: :integer }
  has_config :special_defense, config: { type: :integer }
end
