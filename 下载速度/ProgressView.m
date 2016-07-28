//
//  ProgressView.m
//  下载速度
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 刘怀轩. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    // 重新绘制圆弧
//    [self drawRect:self.bounds];
    
    // 重绘:系统会先创建与 View 相关联的上下文,然后在调drawRect
    [self setNeedsDisplay];
}

// 注意:drawRect不能手动调用,因为图形上下文我们创建不了,只能有系统帮我们创建,并且传递给我们
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat radius = rect.size.width * 0.5;
    CGPoint center = CGPointMake(radius, radius);
    CGFloat endA = -M_PI_2 + _progress * M_PI * 2;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius - 2 startAngle:-M_PI_2 endAngle:endA clockwise:YES];
    [path stroke];
}

@end
