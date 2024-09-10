require 'rails_helper'

RSpec.feature "Books", type: :feature do
  scenario "Create a new book with all attributes" do
    visit new_book_path

    fill_in 'Title', with: 'New Book'
    fill_in 'Author', with: 'Jane Doe'
    fill_in 'Price', with: '19.99'
    select '2024', from: 'book_published_date_1i'
    select 'March', from: 'book_published_date_2i'
    select '25', from: 'book_published_date_3i'

    click_button 'Create Book'

    expect(page).to have_text('Book was successfully created.')
    expect(page).to have_text('Title: New Book')
    expect(page).to have_text('Author: Jane Doe')
    expect(page).to have_text('Price: $19.99')
  end
end
