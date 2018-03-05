RSpec.describe Aviation14CFR do
  it "has a version number" do
    expect(Aviation14CFR::VERSION).not_to be nil
  end

  it "gets volume nums" do
    expect(Aviation14CFR.volumes).to be_a(Array)
    expect(Aviation14CFR.volumes[0]).to eq("1")
  end

end
