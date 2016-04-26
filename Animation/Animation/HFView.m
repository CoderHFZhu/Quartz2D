//
//  HFView.m
//  Animation
//
//  Created by zack on 16/4/21.
//  Copyright © 2016年 ZACK. All rights reserved.
//

#import "HFView.h"

@implementation HFView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path moveToPoint:CGPointMake(20, 20)];
//    [path addLineToPoint:CGPointMake(200, 200)];
//    
//    [[UIColor redColor] setStroke];
//    [path stroke];
//    
//    UIBezierPath *path1 = [UIBezierPath bezierPath];
//    [path1 moveToPoint:CGPointMake(30, 30)];
//    [path1 addLineToPoint:CGPointMake(300, 300)];
//    path1.lineWidth = 10;
//    [[UIColor blueColor] setStroke];
//    [path1 stroke];
    
//    CGContextRef contert = UIGraphicsGetCurrentContext();
//    
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, nil, 20, 20);
//    CGPathAddLineToPoint(path, nil, 200, 200);
//    CGPathAddLineToPoint(path, nil, 100, 200);
  
//    CGContextAddPath(contert, path);
//    CGContextStrokePath(contert);

//    CGContextRef con = UIGraphicsGetCurrentContext();
//    CGContextMoveToPoint(con, 20, 20);
//    CGContextAddLineToPoint(con, 200, 200);
//    CGContextAddLineToPoint(con, 100, 50);
//    
//    [[UIColor redColor] setStroke];
//    CGContextSetLineWidth(con, 0.5);
//    
//    CGContextStrokePath(con);
    
    /** 曲线*/
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(con, 20, 20);
    CGContextAddQuadCurveToPoint(con, 110, 0, 200, 20);
    CGContextSetLineWidth(con, 20);
    CGContextStrokePath(con);
    
   
}


@end
