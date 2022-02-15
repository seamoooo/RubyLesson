module ApplicationHelper
  # helper.でアクセス moduleのincludeは不要
  def to_hankaku(str)
    str.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z')
  end
end
