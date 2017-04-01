//
//  IASearchByAppleIdViewController.m
//  ItunesApi
//
//  Created by zhanggui on 2017/3/22.
//  Copyright © 2017年 shuquwangluo. All rights reserved.
//

#import "IASearchByAppleIdViewController.h"
#import "IAAppModel.h"
#import "NSObject+MJKeyValue.h"

static NSString *const LOOKUPURLSTR = @"https://itunes.apple.com/cn/lookup?id=";

@interface IASearchByAppleIdViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *appleIdTextFiled;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;
@end

@implementation IASearchByAppleIdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.appleIdTextFiled.text = @"1166475483";
}
- (IBAction)searchAction:(UIButton *)sender {
    if (self.appleIdTextFiled.isFirstResponder) {
        [self.appleIdTextFiled resignFirstResponder];
    }
    
    if (self.appleIdTextFiled.text.length<=0) {
        self.appleIdTextFiled.text = @"请输入内容";
    
    }
    [self.searchButton setTitle:@"搜索中" forState:UIControlStateNormal];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *urlStr = [NSString stringWithFormat:@"%@%@",LOOKUPURLSTR,self.appleIdTextFiled.text];
        NSURL *url = [NSURL URLWithString:urlStr];  //这里的id是appid
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSURLSession *session = [NSURLSession sharedSession];
        NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.searchButton setTitle:@"搜索" forState:UIControlStateNormal];
                NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                IAAppModel *model = [IAAppModel mj_objectWithKeyValues:dict[@"results"][0]];
                self.resultTextView.text = model.ddescription;
//                NSArray *array = dict[@"results"];
//                NSDictionary *dic = array[0];
//                NSString *appStoreVersion = dic[@"version"];
//                NSString *message = [NSString stringWithFormat:@"当前线上版本为%@",appStoreVersion];
//                NSLog(@"网络最新版本为:%@",message);
            });
            
            
        }];
        [dataTask resume];
    });
}
- (IBAction)moreInfoAction:(UIBarButtonItem *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"更多信息参见源码中的IAAppModel" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        

    }];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}
#pragma mark - UITextFieldDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    textField.text = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
