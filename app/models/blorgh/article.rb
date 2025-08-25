module Blorgh
  class Article < ApplicationRecord
    has_many :comments
    # Add the author association to the model
    attr_accessor :author_name
    belongs_to :author, class_name: Blorgh.author_class_name

    before_validation :set_author

    private
      def set_author
        self.author = Blorgh.author_class.find_or_create_by(name: author_name)
      end
  end
end
