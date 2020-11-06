RSpec.describe Iso639Data do
  it "has a version number" do
    expect(Iso639Data::VERSION).not_to be nil
  end

  it "has codes of ISO-639-X" do
    expect(Iso639Data.codes.length).to be > 0
  end

  it "should be uniq" do
    expect(Iso639Data.codes.length).to be Iso639Data.codes.uniq.length
  end

  it "should be immutable" do
    expect { Iso639Data.iso_639_2["aar"] = {"iso_639_1": "custom"} }.to raise_error(FrozenError)
    expect { Iso639Data.iso_639_2["aar"]["iso_639_1"] = "custom" }.to raise_error(FrozenError)
    expect { Iso639Data.iso_639_3["aaa"] = {"Part2B": "custom"} }.to raise_error(FrozenError)
    expect { Iso639Data.iso_639_3["aaa"]["Ref_Name"] = "custom" }.to raise_error(FrozenError)
  end

  it "validate code" do
    expect(Iso639Data.valid?("aar")).to be true
    expect(Iso639Data.valid?("***")).to be false
  end
end
