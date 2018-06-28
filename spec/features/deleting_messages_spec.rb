feature 'deleting messages' do
  scenario 'the user can delete a message' do
    Chitter.create(message: "The Cure were fantastic last night")
    visit('/')
    within "#chit-1" do
      click_button('Delete')
    end
    expect(current_path).to eq '/chit-1/delete'
    expect(page).not_to have_content "The Cure were fantastic last night"
  end
end
