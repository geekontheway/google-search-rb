###Usage:

Ensure your have ruby installed.

open your shell then run `git clone git@github.com:geekontheway/google-search-rb.git && cd google-search-rb`

#### Using nokogori

run `gem install nokogiri` if you have no nokogori installed.

Then run `ruby with_nokogiri.rb`

#### exmaple

<pre>
[~/google-search-rb] (master) 0h7m $ ruby with_nokogiri.rb 汤

You are searching    汤    , please wait.


共64,200,000个记录，前三条记录为：


汤粥_汤粥菜谱_汤粥做法,菜谱大全 - 美食杰
www.meishij.net/chufang/diy/tangbaocaipu/


汤的做法大全,汤怎么做好吃【图】_好豆网
www.haodou.com/recipe/all/304


汤煲菜谱_美食厨房-美食天下
www.meishichina.com/Eat/TMenu/
</pre>

<pre>

[~/google-search-rb] (master) 0h7m $ ruby with_nokogiri.rb

Please input your searching keyword: matz

You are searching    matz    , please wait.


共7,660,000个记录，前三条记录为：


Yukihiro Matsumoto - Wikipedia, the free encyclopedia
en.wikipedia.org/wiki/Yukihiro_Matsumoto


Yukihiro Matz [en] (@matz_translated) | Twitter
https://twitter.com/matz_translated


Jennifer Matz, San Francisco development chief, dies of cancer at 45
blog.sfgate.com/.../jennifer-matz-san-francisco-development-chief-dies-of- cancer-at-45/



</pre>