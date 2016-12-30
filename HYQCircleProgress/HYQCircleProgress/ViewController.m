//
//  ViewController.m
//  HYQCircleProgress
//
//  Created by bc-mac-黄永强 on 2016/12/27.
//  Copyright © 2016年 com.ubestchoice. All rights reserved.
//

#import "ViewController.h"
#import "HYQCircleProgress.h"

#define HYQRGB(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController
{
    HYQCircleProgress *_circle1;
    HYQCircleProgress *_circle2;
    HYQCircleProgress *_circle3;
    HYQCircleProgress *_circle4;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initCircles];
}

- (void)initCircles
{
    CGFloat xCrack = ([UIScreen mainScreen].bounds.size.width - 150 * 2) / 3.0;
    CGFloat yCrack = ([UIScreen mainScreen].bounds.size.height - 150 * 2) / 3.0;
    CGFloat itemWidth = 150;
    
    //默认状态
    _circle1 = [[HYQCircleProgress alloc] initWithFrame:CGRectMake(xCrack, yCrack, itemWidth, itemWidth) pathBackColor:nil pathFillColor:HYQRGB(arc4random() % 255, arc4random() % 255, arc4random() % 255) startAngle:0 strokeWidth:10];
    _circle1.progress = 0.6;
    [self.view addSubview:_circle1];
    
    //无小圆点、同动画时间
    _circle2 = [[HYQCircleProgress alloc] initWithFrame:CGRectMake(xCrack * 2 + itemWidth, yCrack, itemWidth, itemWidth) pathBackColor:nil pathFillColor:HYQRGB(arc4random() % 255, arc4random() % 255, arc4random() % 255) startAngle:0 strokeWidth:10];
    _circle2.progress = 0.6;
    _circle2.showPoint = NO;
    _circle2.animationModel = CircleIncreaseSameTime;
    [self.view addSubview:_circle2];
    
    //自定义起始角度
    _circle3 = [[HYQCircleProgress alloc] initWithFrame:CGRectMake(xCrack, yCrack * 2 + itemWidth, itemWidth, itemWidth) pathBackColor:nil pathFillColor:HYQRGB(arc4random() % 255, arc4random() % 255, arc4random() % 255) startAngle:-255 strokeWidth:10];
    _circle3.progress = 0.6;
    _circle3.reduceValue = 30;
    [self.view addSubview:_circle3];
    
    //同动画时间、隐藏文字
    _circle4 = [[HYQCircleProgress alloc] initWithFrame:CGRectMake(xCrack * 2 + itemWidth, yCrack * 2 + itemWidth, itemWidth, itemWidth) pathBackColor:nil pathFillColor:HYQRGB(arc4random() % 255, arc4random() % 255, arc4random() % 255) startAngle:0 strokeWidth:10];
    _circle4.progress = 0.3;
    _circle4.animationModel = CircleIncreaseSameTime;
    _circle4.showProgressText = NO;
    [self.view addSubview:_circle4];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _circle1.progress = 0.6;
    _circle2.progress = 0.6;
    _circle3.progress = 0.6;
    _circle4.progress = 0.3;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
