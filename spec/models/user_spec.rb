require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validate presence of email' do
    user = build(:user, email: nil)
    user.save

    expect(user).to have(1).errors_on(:email)
  end
end
