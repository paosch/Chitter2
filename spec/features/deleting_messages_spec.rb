feature 'deleting messages' do
  scenario 'the user can delete a message' do
    Chitter.create(message: 'gig tonight')
    visit('/')
    within "#1" do
      click_button('Delete')
    end
    expect(current_path).to eq '/'
    expect(page).not_to have_content 'gig tonight'
  end
end
