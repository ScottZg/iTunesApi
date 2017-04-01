#### 前言
iTunes也有开放的接口，它提供了搜索的API，然后我们可以使用这些API来进行搜索iTunes商店、App Store、iBooks Store和Mac App Store里面的内容。搜索的内容也是各种各样，包括音乐、电影、电视等等。我们还可以直接基于apple id进行搜索，搜索当前app的一些信息。
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
#### 查找某个app内容信息
通过appid也可以查找其信息，通过如下接口：
```http
https://itunes.apple.com/cn/lookup?id=
```
下面是一个查找的结果：
```
{
resultCount = 1;
results =     (
{
advisories =             (
);
appletvScreenshotUrls =             (
);
artistId = 1153372217;
artistName = "\U6df1\U5733\U6570\U8da3\U4fe1\U606f\U79d1\U6280\U6709\U9650\U516c\U53f8";
artistViewUrl = "https://itunes.apple.com/cn/developer/%E6%B7%B1%E5%9C%B3%E6%95%B0%E8%B6%A3%E4%BF%A1%E6%81%AF%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8/id1153372217?uo=4";
artworkUrl100 = "http://is3.mzstatic.com/image/thumb/Purple122/v4/0f/85/e9/0f85e993-0e0d-30e2-dfda-4f769e029ed2/source/100x100bb.jpg";
artworkUrl512 = "http://is3.mzstatic.com/image/thumb/Purple122/v4/0f/85/e9/0f85e993-0e0d-30e2-dfda-4f769e029ed2/source/512x512bb.jpg";
artworkUrl60 = "http://is3.mzstatic.com/image/thumb/Purple122/v4/0f/85/e9/0f85e993-0e0d-30e2-dfda-4f769e029ed2/source/60x60bb.jpg";
averageUserRating = 5;
averageUserRatingForCurrentVersion = 5;
bundleId = "com.shuqu.microcredit";
contentAdvisoryRating = "4+";
currency = CNY;
currentVersionReleaseDate = "2017-03-29T17:25:20Z";
description = "\U867e\U7403APP\U63cf\U8ff0\n\U3010\U4e00\U53e5\U8bdd\U7b80\U4ecb\U3011\U4e00\U7ad9\U5f0f\U4e92\U8054\U7f51\U91d1\U878d\U7efc\U5408\U670d\U52a1\U5e73\U53f0\n\U5e94\U7528\U63cf\U8ff0\Uff1a\n\U867e\U7403\U501f\U94b1\Uff0c\U4e3a\U4e92\U8054\U7f51\U91d1\U878d\U673a\U6784\U53ca\U4e2a\U4eba\U63d0\U4f9b\U66f4\U597d\U66f4\U5168\U7684\U4e92\U8054\U7f51\U91d1\U878d\U4e00\U7ad9\U5f0f\U670d\U52a1\U3002\n\U3010\U529f\U80fd\U7279\U70b9\U3011\n\U4e0d\U4e00\U6837\U7684\U9ed1\U79d1\U6280\Uff1a\U544a\U522b\U4eba\U5de5\U5ba1\U6838\Uff0c\U884c\U4e1a\U9996\U521b\U5168\U81ea\U52a8\U5ba1\U6279\U6280\U672f\Uff0c\U64cd\U4f5c\U66f4\U5feb\U6377\Uff1b\n\U4e0d\U4e00\U6837\U7684\U9ad8\U6548\U7387\Uff1a\U9886\U5148\U98ce\U63a7\U6a21\U578b\Uff0c\U4f18\U9009\U54c1\U8d28\U5ba2\U6237\Uff0c\U968f\U65f6\U968f\U5730\U54cd\U5e94\U4fe1\U606f\U9700\U6c42\Uff1b\n\U4e0d\U4e00\U6837\U7684\U4e13\U4e1a\U5ea6\Uff1a\U7cbe\U51c6\U5339\U914d\U9700\U6c42\Uff0c\U8054\U63a5\U673a\U6784\U4e0e\U4e2a\U4eba\Uff0c\U6253\U9020\U4e00\U7ad9\U5f0f\U670d\U52a1\U5e73\U53f0\Uff1b\n\U3010\U5173\U4e8e\U867e\U7403\U3011\n\U867e\U7403\U501f\U94b1\U96b6\U5c5e\U4e8e\U6df1\U5733\U6570\U8da3\U4fe1\U606f\U79d1\U6280\U6709\U9650\U516c\U53f8\Uff0c\U662f\U4e00\U7ad9\U5f0f\U4e92\U8054\U7f51\U91d1\U878d\U7efc\U5408\U670d\U52a1\U5e73\U53f0\U3002\U6570\U8da3\U79d1\U6280\U81f4\U529b\U4e8e\U4e3a\U5404\U7c7b\U91d1\U878d\U673a\U6784\U63d0\U4f9b\U7cbe\U51c6\U8425\U9500\U7b49\U4e00\U7ad9\U5f0f\U8054\U63a5\U670d\U52a1\Uff0c\U51ed\U501fB2B2C\U6a21\U5f0f\U7684\U7cfb\U7edf\U6574\U5408\Uff0c\U642d\U5efa\U8d77\U91d1\U878d\U673a\U6784\U4e0e\U4e2a\U4eba\U4e4b\U95f4\U7684\U4e92\U8054\U6865\U6881\Uff0c\U6253\U9020\U4e92\U8054\U7f51\U91d1\U878d\U7efc\U5408\U670d\U52a1\U5e73\U53f0\U3002\n\n\U3010\U516c\U53f8\U56e2\U961f\U3011\n\U867e\U7403\U501f\U94b1\U7684\U56e2\U961f\U6210\U5458\U6765\U81ea\U4e8e\U8c37\U6b4c\U3001\U963f\U91cc\U3001\U767e\U5ea6\U3001\U62db\U5546\U94f6\U884c\U3001\U4e2d\U56fd\U94f6\U884c\U7b49\U56fd\U5185\U5916\U77e5\U540d\U4e92\U8054\U7f51\U516c\U53f8\U548c\U91d1\U878d\U673a\U6784\Uff0c\U5177\U6709\U4e30\U5bcc\U7684\U4e92\U8054\U7f51\U3001\U91d1\U878d\U884c\U4e1a\U7ecf\U9a8c\Uff0c\U81f4\U529b\U4e8e\U7528\U91d1\U878d\U79d1\U6280\U521b\U65b0\U4e3a\U4f01\U4e1a\U53ca\U4e2a\U4eba\U63d0\U4f9b\U4f18\U8d28\U7684\U4e92\U8054\U7f51\U91d1\U878d\U670d\U52a1\Uff0c\U521b\U9020\U7f8e\U597d\U751f\U6d3b\U3002\n\U3010\U4ea7\U54c1\U6807\U7b7e\U3011 \n\U5feb\U901f\U8d37\U6b3e\U3001\U501f\U6b3e\U3001\U501f\U94b1\U3001\U501f\U8d37\U3001\U7f51\U8d37\U3001\U73b0\U91d1\U8d37\U6b3e\U3001\U5c0f\U989d\U8d37\U6b3e\U3001\U4fe1\U7528\U8d37\U6b3e\U670d\U52a1\U5e73\U53f0\Uff0c\U4e3a\U91d1\U878d\U673a\U6784\U53ca\U4e2a\U4eba\U63d0\U4f9b\U4e00\U7ad9\U5f0f\U8d37\U6b3e\U3001\U501f\U6b3e\U3001\U501f\U94b1\U3001\U501f\U8d37\U3001\U7f51\U8d37\U3001\U73b0\U91d1\U8d37\U6b3e\U3001\U5c0f\U989d\U8d37\U6b3e\U3001\U4fe1\U7528\U8d37\U6b3e\U670d\U52a1\U3002\n\U3010\U8054\U7cfb\U6211\U4eec\U3011\n\U5b98\U65b9\U7f51\U7ad9\Uff1awww.xiaqiu.cn\n\U5b98\U65b9\U5fae\U4fe1\Uff1axiaqiujieqian\n\U5b98\U65b9\U5ba2\U670d\Uff1akefu@xiaqiu.cn";
features =             (
);
fileSizeBytes = 36915200;
formattedPrice = "\U514d\U8d39";
genreIds =             (
6015
);
genres =             (
"\U8d22\U52a1"
);
ipadScreenshotUrls =             (
);
isGameCenterEnabled = 0;
isVppDeviceBasedLicensingEnabled = 1;
kind = software;
languageCodesISO2A =             (
EN,
ZH
);
minimumOsVersion = "8.0";
price = 0;
primaryGenreId = 6015;
primaryGenreName = Finance;
releaseDate = "2016-11-22T05:20:05Z";
releaseNotes = "1\U3001\U9633\U6625\U4e09\U6708\Uff0c\U6211\U4eec\U64ad\U79cd\U4e0b\U4e00\U4e9b\U65b0\U6280\U80fd\Uff0c\U671f\U5f85\U8ba9\U4f60\U62e5\U6709\U60ca\U559c\U7684\U6536\U83b7\U3002\U8d76\U7d27\U66f4\U65b0\Uff0c\U62a2\U7b2c\U4e00\U6ce2\U4f53\U9a8c\U540d\U989d\U3002\n2\U3001bug\U4fee\U590d";
screenshotUrls =             (
"http://a1.mzstatic.com/us/r30/Purple111/v4/c9/f6/a2/c9f6a2f1-10da-76f7-50ed-f84ea94ee98b/screen696x696.jpeg",
"http://a4.mzstatic.com/us/r30/Purple122/v4/c3/d4/a5/c3d4a5a5-90d4-cf77-6c54-c890b1c1ba0a/screen696x696.jpeg",
"http://a1.mzstatic.com/us/r30/Purple111/v4/7f/fd/f7/7ffdf77b-984b-3901-ad35-70ec3eb6b638/screen696x696.jpeg",
"http://a1.mzstatic.com/us/r30/Purple122/v4/8d/ee/4a/8dee4a94-84e2-2cb6-4fc6-082a5963496e/screen696x696.jpeg",
"http://a2.mzstatic.com/us/r30/Purple122/v4/9c/48/d0/9c48d061-2fe0-f3fe-45d9-2feb8d1ff31b/screen696x696.jpeg"
);
sellerName = "ShenZhen ShuQu Information Technology Co., Ltd";
supportedDevices =             (
"iPad2Wifi-iPad2Wifi",
"iPad23G-iPad23G",
"iPhone4S-iPhone4S",
"iPadThirdGen-iPadThirdGen",
"iPadThirdGen4G-iPadThirdGen4G",
"iPhone5-iPhone5",
"iPodTouchFifthGen-iPodTouchFifthGen",
"iPadFourthGen-iPadFourthGen",
"iPadFourthGen4G-iPadFourthGen4G",
"iPadMini-iPadMini",
"iPadMini4G-iPadMini4G",
"iPhone5c-iPhone5c",
"iPhone5s-iPhone5s",
"iPadAir-iPadAir",
"iPadAirCellular-iPadAirCellular",
"iPadMiniRetina-iPadMiniRetina",
"iPadMiniRetinaCellular-iPadMiniRetinaCellular",
"iPhone6-iPhone6",
"iPhone6Plus-iPhone6Plus",
"iPadAir2-iPadAir2",
"iPadAir2Cellular-iPadAir2Cellular",
"iPadMini3-iPadMini3",
"iPadMini3Cellular-iPadMini3Cellular",
"iPodTouchSixthGen-iPodTouchSixthGen",
"iPhone6s-iPhone6s",
"iPhone6sPlus-iPhone6sPlus",
"iPadMini4-iPadMini4",
"iPadMini4Cellular-iPadMini4Cellular",
"iPadPro-iPadPro",
"iPadProCellular-iPadProCellular",
"iPadPro97-iPadPro97",
"iPadPro97Cellular-iPadPro97Cellular",
"iPhoneSE-iPhoneSE",
"iPhone7-iPhone7",
"iPhone7Plus-iPhone7Plus",
"iPad611-iPad611",
"iPad612-iPad612"
);
trackCensoredName = "\U867e\U7403\U501f\U94b1-1\U5206\U949f\U5c0f\U989d\U6781\U901f\U73b0\U91d1\U8d37\U6b3e\U5e73\U53f0";
trackContentRating = "4+";
trackId = 1166475483;
trackName = "\U867e\U7403\U501f\U94b1-1\U5206\U949f\U5c0f\U989d\U6781\U901f\U73b0\U91d1\U8d37\U6b3e\U5e73\U53f0";
trackViewUrl = "https://itunes.apple.com/cn/app/%E8%99%BE%E7%90%83%E5%80%9F%E9%92%B1-1%E5%88%86%E9%92%9F%E5%B0%8F%E9%A2%9D%E6%9E%81%E9%80%9F%E7%8E%B0%E9%87%91%E8%B4%B7%E6%AC%BE%E5%B9%B3%E5%8F%B0/id1166475483?mt=8&uo=4";
userRatingCount = 2047;
userRatingCountForCurrentVersion = 38;
version = "1.4.1";
wrapperType = software;
}
);
}
```
demo里面有一个IAAppModel来盛放json字典。属性如下：
```
/**
电视截图地址
*/
@property (nonatomic,strong)NSArray *appletvScreenshotUrls;

/**
artist id
*/
@property (nonatomic,strong)NSString *artistId;
/**
app名称
*/
@property (nonatomic,strong)NSString *appName;

/**
app开发者名称
*/
@property (nonatomic,strong)NSString *artistName;

/**
app开发者产品页
*/
@property (nonatomic,strong)NSString *artistViewUrl;


/**
100大小的icon地址
*/
@property (nonatomic,strong)NSString *artworkUrl100;

/**
512大小的icon地址
*/
@property (nonatomic,strong)NSString *artworkUrl512;

/**
60大小的icon地址
*/
@property (nonatomic,strong)NSString *artworkUrl60;


/**
平均用户评分
*/
@property (nonatomic,strong)NSString *averageUserRating;

/**
当前版本平均用户评分
*/
@property (nonatomic,strong)NSString *averageUserRatingForCurrentVersion;


/**
bundle id
*/
@property (nonatomic,strong)NSString *bundleId;

/**
评级
*/
@property (nonatomic,strong)NSString *contentAdvisoryRating;

/**
货币
*/
@property (nonatomic,strong)NSString *currency;

/**
更新日期
*/
@property (nonatomic,strong)NSString *currentVersionReleaseDate;

/**
描述
*/
@property (nonatomic,strong)NSString *ddescription;

/**
特点   todo
*/
@property (nonatomic,strong)NSArray *features;
/**
文件大小
*/
@property (nonatomic,strong)NSString *fileSizeBytes;



/**
价格
*/
@property (nonatomic,strong)NSString *formattedPrice;


/**
未知
*/
@property (nonatomic,strong)NSArray *genreIds;


/**
未知
*/
@property (nonatomic,strong)NSArray *genres;


/**
ipad 屏幕截图地址们
*/
@property (nonatomic,strong)NSString *ipadScreenshotUrls;

/**
是否允许游戏中心
*/
@property (nonatomic,strong)NSString *isGameCenterEnabled;

/**
未知
*/
@property (nonatomic,strong)NSString *isVppDeviceBasedLicensingEnabled;


/**
类型
*/
@property (nonatomic,strong)NSString *kind;



/**
国家们
*/
@property (nonatomic,strong)NSArray *languageCodesISO2A;


/**
最小支持的系统版本号
*/
@property (nonatomic,strong)NSString *minimumOsVersion;




/**
价格
*/
@property (nonatomic,strong)NSString *price;


/**
分类id
*/
@property (nonatomic,strong)NSString *primaryGenreId;




/**
分类名称
*/
@property (nonatomic,strong)NSString *primaryGenreName;


/**
首发时间
*/
@property (nonatomic,strong)NSString *releaseDate;


/**
发布描述
*/
@property (nonatomic,strong)NSString *releaseNotes;



/**
截屏图片地址
*/
@property (nonatomic,strong)NSArray *screenshotUrls;



/**
卖家名称
*/
@property (nonatomic,strong)NSString *sellerName;




/**
支持设备们
*/
@property (nonatomic,strong)NSArray *supportedDevices;




/**
未知
*/
@property (nonatomic,strong)NSString *trackCensoredName;



/**
未知
*/
@property (nonatomic,strong)NSString *trackContentRating;


/**
apple id
*/
@property (nonatomic,strong)NSString *trackId;

/**
app名称，搜索看到的名称
*/
@property (nonatomic,strong)NSString *trackName;


/**
当前app展示页
*/
@property (nonatomic,strong)NSString *trackViewUrl;


/**
用户评分数
*/
@property (nonatomic,strong)NSString *userRatingCount;


/**
当前版本评分数
*/
@property (nonatomic,strong)NSString *userRatingCountForCurrentVersion;

/**
当前版本
*/
@property (nonatomic,strong)NSString *version;




/**
包装类型
*/
@property (nonatomic,strong)NSString *wrapperType;
```
