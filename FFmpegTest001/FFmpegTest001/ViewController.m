//
//  ViewController.m
//  FFmpegTest001
//
//  Created by 李平宽 on 2019/12/30.
//  Copyright © 2019 linkface.cn. All rights reserved.
//

#import "ViewController.h"
#import "FfmpegTest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [FfmpegTest configureTest];
    // Do any additional setup after loading the view.
    NSString *stringFile = [[NSBundle mainBundle] pathForResource:@"1.课程简介" ofType:@"mp4"];
    [FfmpegTest openFileName:stringFile];
}


@end
