RSpec.describe ISO_639_DATA do
  it "has a version number" do
    expect(ISO_639_DATA::VERSION).not_to be nil
  end

  it "has codes of ISO-639-X" do
    expect(ISO_639_DATA.codes.length).to be > 0
  end

  it "should be uniq" do
    expect(ISO_639_DATA.codes.length).to be ISO_639_DATA.codes.uniq.length
  end
end
