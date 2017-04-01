#### 前言
iTunes也有开放的接口哦，作为iOS开发的你知道么？它提供了搜索的API，然后我们可以使用这些API来进行搜索iTunes商店、App Store、iBooks Store和Mac App Store里面的内容。搜索的内容也是各种各样，包括音乐、电影、电视等等。我们还可以直接基于apple id进行搜索，搜索当前app的一些信息。
#### 搜索
如果你是做的网站，类似于百度一样的，你可以通过iTunes API来进行搜索，然后将搜索的结果放到你的网站上面。也就是说，我们完全可以通过点击搜索(网站上面的按钮)来请求一个URL地址，这个URL地址以及传入参数就是iTunes规定好的，只要我们按照它的要求来，就会得到我们想要的数据。而这个URL的格式如下：
```http
https://itunes.apple.com/search?parameterkeyvalue
```
这里的parameterkeyvalue就不用多说了这里简单举个例子：
```http
https://itunes.apple.com/search?country=US&term=jack
```
这个和我们平时的请求一样key=value，如果多个的话就用&分开。
具体的key值解释和value解析可以参见[这里](https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/#overview)。
