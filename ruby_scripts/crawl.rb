# URLにアクセスするためのライブラリの読み込み
require 'pp'
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

# スクレイピング先のURL
url = 'https://gunosy.com/articles/aZSyI'

charset = nil
html = open(url) do |f|
  charset = f.charset # 文字種別を取得
  f.read # htmlを読み込んで変数htmlに渡す
end

# htmlをパース(解析)してオブジェクトを生成
doc = Nokogiri::HTML.parse(html, nil, charset)

# タイトルを表示 
doc.xpath('html/body/div/div/div/div/p').each do |node|
  puts node.text
end 

