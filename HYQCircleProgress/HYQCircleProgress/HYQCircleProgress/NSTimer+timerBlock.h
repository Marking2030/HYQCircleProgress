//
//  NSTimer+timerBlock.h
//  HYQCircleProgress
//
//  Created by bc-mac-黄永强 on 2016/12/27.
//  Copyright © 2016年 com.ubestchoice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (timerBlock)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      block:(void(^)())block
                                    repeats:(BOOL)repeats;

@end
