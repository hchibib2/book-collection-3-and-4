require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      book = Book.new(title: 'Sample Book', author: 'John Doe', price: 19.99, published_date: Date.today)
      expect(book).to be_valid
    end

    it 'is not valid without an author' do
      book = Book.new(title: 'Sample Book', author: nil)
      expect(book).not_to be_valid
    end

    it 'is not valid without a price' do
      book = Book.new(title: 'Sample Book', price: nil)
      expect(book).not_to be_valid
    end

    it 'is not valid without a published date' do
      book = Book.new(title: 'Sample Book', published_date: nil)
      expect(book).not_to be_valid
    end
  end
end

