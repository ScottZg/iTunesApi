//
//  IASearchViewController.m
//  ItunesApi
//
//  Created by zhanggui on 2017/3/22.
//  Copyright © 2017年 shuquwangluo. All rights reserved.
//

#import "IASearchViewController.h"

@interface IASearchViewController ()<UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITextField *termTextField;
@property (weak, nonatomic) IBOutlet UITextField *countryTextField;
@property (weak, nonatomic) IBOutlet UITextField *mediaTextField;
@property (weak, nonatomic) IBOutlet UITextField *entityTextField;
@property (weak, nonatomic) IBOutlet UITextField *attributeTextField;
@property (weak, nonatomic) IBOutlet UITextField *callBackTextField;
@property (weak, nonatomic) IBOutlet UITextField *limitTextField;
@property (weak, nonatomic) IBOutlet UITextField *langTextField;
@property (weak, nonatomic) IBOutlet UITextField *versionTextField;
@property (weak, nonatomic) IBOutlet UITextField *explicitTextField;
@end

@implementation IASearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.urlTextField.text = @"https://itunes.apple.com/search?";
}
- (IBAction)sayAction:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"想了解更多可以参见https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/#overview" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"去查看", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
         [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/#overview"]];
    }
}
#pragma mark -
- (IBAction)serachAction:(id)sender {
    NSString *params = [self getParams];
    NSString *urlStr = [NSString stringWithFormat:@"%@%@",self.urlTextField.text,params];
    NSURL *url = [NSURL URLWithString:urlStr];  //这里的id是appid
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    [self.searchButton setTitle:@"搜索中" forState:UIControlStateNormal];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.searchButton setTitle:@"搜索" forState:UIControlStateNormal];
            if (!data) {
                NSLog(@"请求数据为空");
                return ;
            }
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
            NSLog(@"请求过来的数据:%@",dict);
            NSArray *array = dict[@"results"];
            if (array.count>0) {
                NSDictionary *dic = array[0];
                NSString *appStoreVersion = dic[@"version"];
                NSString *message = [NSString stringWithFormat:@"当前线上版本为%@",appStoreVersion];
                NSLog(@"网络最新版本为:%@",message);

            }
            
        });
        
        
    }];
    [dataTask resume];

}
- (NSString *)getParams {
    NSMutableDictionary *requestParames = [[NSMutableDictionary alloc] initWithCapacity:10];
    
    [requestParames setObject:_termTextField.text? _termTextField.text: @"" forKey:@"term"];
    
    [requestParames setObject:_countryTextField.text? _countryTextField.text: @"" forKey:@"country"];
    
    [requestParames setObject:_mediaTextField.text? _mediaTextField.text: @"" forKey:@"media"];
    
    [requestParames setObject:_entityTextField.text? _entityTextField.text: @"" forKey:@"entity"];
    
    [requestParames setObject:_attributeTextField.text? _attributeTextField.text: @"" forKey:@"attribute"];
    
    [requestParames setObject:_callBackTextField.text? _callBackTextField.text: @"" forKey:@"callback"];
    
    [requestParames setObject:_limitTextField.text? _limitTextField.text: @"" forKey:@"limit"];
    
    [requestParames setObject:_langTextField.text? _langTextField.text: @"" forKey:@"lang"];
    
    [requestParames setObject:_versionTextField.text? _versionTextField.text: @"" forKey:@"version"];
    
    [requestParames setObject:_explicitTextField.text? _explicitTextField.text: @"" forKey:@"explicit"];
    
    NSMutableString *str = [[NSMutableString alloc] init];
    [requestParames enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if (obj && [obj isKindOfClass:[NSString class]] && [(NSString *)obj length]>0) {
            NSString *tempStr = [NSString stringWithFormat:@"%@=%@&",key,obj];
            [str appendString:tempStr];

        }
        
    }];
    NSString *resultStr = @"";
    if (str.length>0) {
        resultStr = [str substringWithRange:NSMakeRange(0, str.length-1)];
    }
    return resultStr;
 }
#pragma mark -
- (NSString *)getUrlParamesStr {
    return nil;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

@end
