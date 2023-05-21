class Entity < ApplicationRecord
  has_many :entities_types
  has_many :types, through: :entities_types
  has_many :aliases

  validates :title, presence: true

  accepts_nested_attributes_for :aliases

  def update(params)
    type_ids = params[:type_ids].to_a.map(&:to_i)
    current_entities_types = entities_types
    (type_ids - current_entities_types.pluck(:type_id)).each { |type_id| EntitiesType.create!(type_id: type_id, entity_id: id) }
    current_entities_types.where.not(type_id: type_ids).destroy_all


    super(params)
  end
end
