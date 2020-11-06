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

  it "should be immutable" do
    expect { ISO_639_DATA.iso_639_2["aar"] = {"iso_639_1": "custom"} }.to raise_error(FrozenError)
    expect { ISO_639_DATA.iso_639_2["aar"]["iso_639_1"] = "custom" }.to raise_error(FrozenError)
    expect { ISO_639_DATA.iso_639_3["aaa"] = {"Part2B": "custom"} }.to raise_error(FrozenError)
    expect { ISO_639_DATA.iso_639_3["aaa"]["Ref_Name"] = "custom" }.to raise_error(FrozenError)
  end
end
