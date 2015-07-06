#about
* グノシーwebサイトからテクノロジー分野の記事をvimで見る。
* OSx 10.10でテスト済み
* rubyスクリプトのpathがイマイチわかんないので調節してください。

#install
* ruby 2.0.0をinstall
* sudo gem install nokogiriする
* 自由ですが
* 以下のようにしてurlの上でgxするとブラウザopenするようにすると便利かも 
<pre>
NeoBundle 'tyru/open-browser.vim'
nmap gx <Plug>(openbrowser-smart-search)
</pre>


#using
* 目次を取得
<pre>
:GetGunosy
</pre>

*　記事の内容を取得(見たい記事のurlの上にカーソルを置いて実行）
<pre>
:GetBody
</pre>
