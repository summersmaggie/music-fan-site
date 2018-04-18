require 'rails_helper'

describe Review do
  it { should validate_presence_of :username }
  it { should validate_presence_of :content }
  it { should validate_presence_of :album_id }
  it { should validate_presence_of :rating }
end
