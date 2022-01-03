require_relative "gyoumu"

describe Gyoumu do
  let(:gyoumu) { Gyoumu.new }

  example "起立させる" do
    expect(gyoumu.standup).to eq '社員はとりあえず立ち上がる'
  end
end

describe TantoGyoumu do
  let(:gyoumu) { TantoGyoumu.new }

  example '担当は起立する' do
    expect(gyoumu.standup).to eq '担当は立ち上がります。'
  end
end

describe ShuninGyoumu do
  let(:gyoumu) { ShuninGyoumu.new }

  example '主任は起立します。' do
    expect(gyoumu.standup).to eq '主任は立ち上がります。'
  end
end