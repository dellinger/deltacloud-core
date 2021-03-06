require_relative '../../test_helper'

module Deltacloud
  module DatabaseTestHelper

    def check_entity_base_attrs(entity, entity_klass, provider)
      entity.must_be_kind_of entity_klass
      entity.id.wont_be_nil
      entity.created_at.wont_be_nil
      entity.name.wont_be_empty
      entity.description.wont_be_empty
      entity.provider.must_equal provider
      entity.model.must_equal entity_klass
      entity.to_hash[:name].must_equal entity.name
      entity.to_hash[:description].must_equal entity.description
      entity.to_hash[:property].must_be_kind_of Hash
      entity.to_hash[:property].wont_be_empty
    end

  end
end
