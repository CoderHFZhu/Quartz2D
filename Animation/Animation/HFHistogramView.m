//
//  HFHistogramView.m
//  Animation
//
//  Created by zack on 16/4/22.
//  Copyright © 2016年 ZACK. All rights reserved.
//

#import "HFHistogramView.h"
@interface HFHistogramView ()
@end
@implementation HFHistogramView

-(NSArray *)dataArr {

    
    int totoal = 100;
    
    NSMutableArray *arrM = [NSMutableArray array];
    
    int temp = 0; // 30 40 30
    for (int i = 0; i < arc4random_uniform(10) + 1; i++) {
        temp = arc4random_uniform(totoal) + 1;
        // 100 1~100
        
        // 随机出来的临时值等于总值，直接退出循环，因为已经把总数分配完毕，没必要在分配。
        
        [arrM addObject:@(temp)];
        
        // 解决方式：当随机出来的数等于总数直接退出循环。
        if (temp == totoal) {
            totoal -= temp;

            break;
        }
        totoal -= temp;
        
    }
    
    if (totoal) {
        [arrM addObject:@(totoal)];
    }
    
    return arrM;
    
    
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self setNeedsDisplay];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSArray *arr = [self dataArr];
    for (int i = 0 ; i < arr.count; i++) {
        CGFloat w = self.bounds.size.width /(arr.count * 2 -1);
        
        CGFloat x = i * 2 * w;
        CGFloat h = [arr[i] doubleValue]/100.0 * self.bounds.size.height;
        
        CGFloat y = self.bounds.size.height - h;
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, w, h)];
        [[self colorRandom] set];
        [path fill];
    }
   
}
- (UIColor *)colorRandom {
    CGFloat red = arc4random_uniform(256)/255.0;
    CGFloat green = arc4random_uniform(256)/255.0;
    CGFloat blue = arc4random_uniform(256)/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}

@end
