require 'rails_helper'

describe 'audit log feature' do	
	describe 'index' do
		before do
			admin_user = FactoryGirl.create(:admin_user)
			login_as(admin_user, :scope => :user)
			FactoryGirl.create(:audit_log)
		end
		it 'has an index page that can be reached' do
			visit audit_logs_path
			expect(page.status_code).to eq(200)
		end
		it 'renders audit log content' do
			FactoryGirl.create(:audit_log)
			visit audit_logs_path
			expect(page).to have_content(/BIRD, LARRY/)
		end
		xit 'cannot be accessed by non admin users' do
		end
	end
end
