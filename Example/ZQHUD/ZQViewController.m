//
//  ZQViewController.m
//  ZQHUD
//
//  Created by tzq20070604 on 01/16/2019.
//  Copyright (c) 2019 tzq20070604. All rights reserved.
//

#import "ZQViewController.h"
#import "MFVLabel.h"
@interface ZQViewController ()

@end

@implementation ZQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addIV1];
    [self addLB];
}
-(void)addLB{
    MFVLabel *lable = [[MFVLabel alloc] init];
    lable.verticalAlignment = VerticalAlignmentMiddle;
    lable.textColor = [UIColor blueColor];
    lable.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:lable];
    lable.backgroundColor = [UIColor grayColor];
    lable.frame = CGRectMake(50, 400, 300, 100);
    lable.numberOfLines = 0;
    lable.text = @"爱你不会变的爱你不会变的爱你不会变的";
}
-(void)addIV1{
    UIImageView *iv = [[UIImageView alloc] init];
    iv.backgroundColor = [UIColor redColor];
    //    NSString *imgName = [NSString stringWithFormat:@"%@/%@", @"ZQHUD.bundle",@"loading_01.png"];
    //    UIImage *image = [UIImage imageNamed:imgName];
    //    iv.image = image;
    NSURL *bundleURL = [[NSBundle mainBundle]  URLForResource:@"Frameworks/ZQHUD.framework/ZQHUD" withExtension:@"bundle"];
    if (bundleURL) {
        NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
        NSString *imgName = @"loading_01.png";
        iv.image = [UIImage imageWithContentsOfFile:[bundle pathForResource:imgName ofType:nil]];
    }
    iv.frame = CGRectMake(100, 200, 60, 60);
    [self.view addSubview:iv];
}

-(void)addIV2{
    UIImageView *iv = [[UIImageView alloc] init];
    iv.backgroundColor = [UIColor redColor];
    //    NSString *imgName = [NSString stringWithFormat:@"%@/%@", @"ZQHUD.bundle",@"loading_01.png"];
    //    UIImage *image = [UIImage imageNamed:imgName];
    //    iv.image = image;
    NSURL *bundleURL = [[NSBundle mainBundle]  URLForResource:@"Frameworks/ZQHUD.framework" withExtension:nil];
    if (bundleURL) {
        NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
        NSString *imgName = @"loading_01.png";
        iv.image = [UIImage imageWithContentsOfFile:[bundle pathForResource:imgName ofType:nil]];
    }
    iv.frame = CGRectMake(100, 200, 60, 60);
    [self.view addSubview:iv];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
