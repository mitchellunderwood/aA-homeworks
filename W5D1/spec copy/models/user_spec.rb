require 'rails_helper'

describe User do
  subject(:user) do
    FactoryBot.build(:user,
      email: 'email@email.com',
      password: 'good_password'
    )
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  it "create a password digest" do
    expect(user.password_digest).to_not be_nil
  end

  it "creates a session token before validation" do
    expect(user.session_token).to_not be_nil
  end

  describe "#reset_session_token!" do
    it 'sets a new session token on the user' do
      user.valid?
      old_session_token = user.session_token
      user.reset_session_token

    expect(user.session_token).to_not eq(old_session_token)
    end

    it 'returns the new session token' do
      expect(user.reset_session_token).to eq(user.session_token)
    end
  end

  describe "#is_password" do
    it 'verifies a password is correct' do
      expect(user.is_password?('good_password')).to be true
    end

    it 'verifies a password is incorrect' do
      expect(user.is_password?('bad_password')).to be false
    end

    describe ".find_by_credentials"
      before {user.save!}

      it 'returns user given good credentials' do
        expect(User.find_by_credentials('email@email.com', 'good_password')).to eq(user)
      end

      it 'returns nil for given bad credentials' do
        expect(User.find_by_credentials('email@email.com', 'bad_password')).to eq(user)
      end
    end
  end
