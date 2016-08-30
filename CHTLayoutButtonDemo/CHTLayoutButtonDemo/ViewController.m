//
//  ViewController.m
//  CHTLayoutButtonDemo
//
//  Created by mac on 16/8/30.
//  Copyright © 2016年 Roy Chan. All rights reserved.
//

#import "ViewController.h"
#import "CHTLayoutButton.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CHTLayoutButton *leftBtn = [[CHTLayoutButton alloc]initWithFrame:CGRectMake(0, 0, 90, 90)
                                                           subMargin:2
                                                    layoutButtonType:CHTLayoutButtonTypeLeft];
    leftBtn.center = CGPointMake(SCREEN_WIDTH / 4, SCREEN_HEIGHT / 4);
    [leftBtn setTitle:@"搜索" forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    [self.view addSubview:leftBtn];
    
    CHTLayoutButton *rightBtn = [[CHTLayoutButton alloc]initWithFrame:CGRectMake(0, 0, 90, 90)
                                                            subMargin:2
                                                     layoutButtonType:CHTLayoutButtonTypeRight];
    rightBtn.center = CGPointMake(SCREEN_WIDTH * 3/4, SCREEN_HEIGHT /4);
    [rightBtn setTitle:@"搜索" forState:UIControlStateNormal];
    [rightBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    [self.view addSubview:rightBtn];
    
    CHTLayoutButton *topBtn = [[CHTLayoutButton alloc]initWithFrame:CGRectMake(0, 0, 90, 90)
                                                          subMargin:2
                                                   layoutButtonType:CHTLayoutButtonTypeTop];
    topBtn.center = CGPointMake(SCREEN_WIDTH / 4, SCREEN_HEIGHT * 3/4);
    [topBtn setTitle:@"搜索" forState:UIControlStateNormal];
    [topBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    [self.view addSubview:topBtn];
    
    CHTLayoutButton *bottomBtn = [[CHTLayoutButton alloc]initWithFrame:CGRectMake(0, 0, 90, 90)
                                                             subMargin:2
                                                      layoutButtonType:CHTLayoutButtonTypeBottom];
    bottomBtn.center = CGPointMake(SCREEN_WIDTH * 3/4, SCREEN_HEIGHT * 3/4);
    [bottomBtn setTitle:@"搜索" forState:UIControlStateNormal];
    [bottomBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    [self.view addSubview:bottomBtn];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
