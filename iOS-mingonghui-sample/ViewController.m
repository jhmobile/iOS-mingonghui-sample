//
//  ViewController.m
//  iOS-mingonghui-sample
//
//  Created by mshqiu on 2018/11/8.
//  Copyright © 2018年 jinhui. All rights reserved.
//

#import "ViewController.h"
#import "MGHModuleManager.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"云码通";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"智慧劳务" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.btn = btn;
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
     
    [self.btn sizeToFit];
    self.btn.center = self.view.center;
}

- (void)onButtonClick {
    [MGHModuleManager startModuleWithServiceProduction:NO fromViewController:self];
}

@end
