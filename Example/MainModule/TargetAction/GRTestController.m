//
//  GRTestController.m
//  MainModule_Example
//
//  Created by 东哥 on 17/3/2020.
//  Copyright © 2020 1049646716@qq.com. All rights reserved.
//

#import "GRTestController.h"
#import "GRTest2Controller.h"

@interface GRTestController ()

@end

@implementation GRTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"点击跳转" forState:UIControlStateNormal];
    button.frame = CGRectMake(150, 300, 100, 40);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    self.navigationItem.title = @"阿基听";
}

- (void)buttonClick {
    GRTest2Controller *test2 = [[GRTest2Controller alloc]init];
    [self.navigationController pushViewController:test2 animated:YES];
    
}

@end
