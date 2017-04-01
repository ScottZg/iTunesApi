//
//  IAAppModel.h
//  ItunesApi
//
//  Created by zhanggui on 2017/3/22.
//  Copyright © 2017年 shuquwangluo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IAAppModel : NSObject

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
@end
