//
//  FfmpegTest.m
//  FFmpegTest001
//
//  Created by 李平宽 on 2019/12/30.
//  Copyright © 2019 linkface.cn. All rights reserved.
//

#import "FfmpegTest.h"
#import <libavcodec/avcodec.h>
#import <libavformat/avformat.h>
@implementation FfmpegTest
+ (void)configureTest{
    const char * config = avcodec_configuration();
    NSLog(@"%s",config);
}
+  (void)openFileName:(NSString *)fileName{
    av_register_all();
    AVFormatContext *context = avformat_alloc_context();
    const char *url = [fileName UTF8String];
    int number = avformat_open_input(&context, url, NULL, NULL);
    if (number != 0){
        NSLog(@"打开失败");
        char *error =NULL;
        av_strerror(number, error, 1024);
    }
}
@end
