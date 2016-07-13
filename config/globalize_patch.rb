module Globalize
  module ActiveRecord
    class Adapter
      protected

      def ensure_foreign_key_for(translation)
# Sometimes the translation is initialised before a foreign key can be set
        translation[translation.class.reflections[:globalized_model].foreign_key] = record.id
      end
    end

    module Migration
      class Migrator
        def create_translation_table
          connection.create_table(translations_table_name) do |t|
            t.send(id_column_type, foreign_column_name, :null => false)
            t.string :locale, :null => false
            t.timestamps
          end
        end

        def id_column_type
          model.columns_hash['id'].type
        end

        def foreign_column_name
          "#{table_name.sub(/^#{table_name_prefix}/, '').singularize}_id"
        end
      end
    end
  end
end