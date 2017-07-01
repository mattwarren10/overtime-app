require 'rails_helper'

describe 'navigate' do
  let(:user) { FactoryGirl.create(:user) }
  let(:post) do
    Post.create(date: Date.today, work_performed: "WorkPerformed", user_id: user.id, daily_hours: 3.2)
  end
  before do
    login_as(user, :scope => :user)
  end
  describe 'index' do 
    before do
      visit posts_path
    end
  	it 'can be reached successfully' do  		
  		expect(page.status_code).to eq(200)
  	end

  	it 'has a title of Posts' do  	
  		expect(page).to have_content(/Posts/)
  	end

    it 'has a list of posts' do
      post
      second_post = FactoryGirl.create(:second_post)
      second_post.update(user_id: user.id)
      visit posts_path
      expect(page).to have_text(post.work_performed)
      expect(page).to have_text(second_post.work_performed)
    end
    it 'has a scope so that only post creators can see their posts' do      
      other_user = FactoryGirl.create(:other_user)
      post_from_other_user = Post.create(date: Date.today, work_performed: "This post shouldn't be seen", user_id: other_user.id)
      visit posts_path
      expect(page).to_not have_content(/This post shouldn't be seen/)
    end
  end

  describe 'new' do
    it 'has a link from the homepage' do
      employee = FactoryGirl.create(:employee)
      login_as(employee, :scope => :user)
      visit root_path
      click_link("new_post_from_nav")
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do    
    it 'can be deleted' do
      logout(:user)
      delete_user = FactoryGirl.create(:user)
      login_as(delete_user, :scope => :user)
      post_to_delete = Post.create(date: Date.today, work_performed: 'asdf', user_id: delete_user.id, daily_hours: 3.2)
      visit posts_path
      click_link("delete_post_#{post_to_delete.id}_from_index")
      expect(page.status_code).to eq(200)
    end
  end

  describe 'creation' do
    before do      
      visit new_post_path
    end
    it 'has a form that can be reached' do  
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do      
      fill_in 'post[date]', with: Date.today
      fill_in 'post[work_performed]', with: "Some work_performed"
      fill_in 'post[daily_hours]', with: 14.5
      expect { click_on 'Save' }.to change(Post, :count).by(1)
    end

    it 'will have a user associated with it' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[work_performed]', with: "User_Association"
      fill_in 'post[daily_hours]', with: 14.5
      click_on "Save"

      expect(User.last.posts.last.work_performed).to eq("User_Association")
    end
  end

  describe 'edit' do

    it 'can be edited' do
      visit edit_post_path(post)
      fill_in 'post[date]', with: Date.today
      fill_in 'post[work_performed]', with: "Edited content"
      click_on "Save"
      expect(page).to have_content("Edited content")
    end

    it 'cannot be edited by a non authorized user' do
      logout(:user)
      other_user = FactoryGirl.create(:other_user)
      login_as(other_user, :scope => :user)
      visit edit_post_path(post)
      expect(current_path).to eq(root_path)
    end
  end
end