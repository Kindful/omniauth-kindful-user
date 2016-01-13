require 'spec_helper'

describe OmniAuth::Strategies::KindfulUser do
  subject do
    OmniAuth::Strategies::KindfulUser.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct kindful site' do
      expect(subject.client.site).to eq("https://client-subdomain.kindful.com")
    end

    it 'should have the correct authorization url' do
      expect(subject.client.options[:authorize_url]).to eq("/oauth2/authorize")
    end

    it 'should have the correct token url' do
      expect(subject.client.options[:token_url]).to eq('/oauth2/token')
    end

    #TODO find a way to set :provider_ignores_state to true by default
    # and add a test for it. -masukomi
  end


end

