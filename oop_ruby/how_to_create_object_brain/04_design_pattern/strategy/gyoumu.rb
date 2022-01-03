class Gyoumu
  def standup
    '社員はとりあえず立ち上がる'
  end
end

class TantoGyoumu < Gyoumu
  def standup
    '担当は立ち上がります。'
  end
end

class ShuninGyoumu < Gyoumu
  def standup
    '主任は立ち上がります。'
  end
end