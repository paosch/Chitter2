feature 'updating messages' do
  scenario 'the user can edit a message' do
    Chitter.create(message: 'blah blah')
    visit('/')
    within "#1" do
      click_button('Edit')
    end
    expect(current_path).to eq '/update/1'
    fill_in('message', with: 'bla bla bla')
    click_button('Commit')
    expect(page).not_to have_content 'blah blah'
  end
end
