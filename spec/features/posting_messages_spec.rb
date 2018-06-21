feature 'posting messages' do
  scenario 'the user can post a message' do
    visit('/messages/new')
    fill_in('message', with: 'blah blah')
    click_button('Send')
    expect(page).to have_content('blah blah')
  end
end
