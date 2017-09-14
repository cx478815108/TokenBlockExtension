//
//  UIColor+Token.m
//  掌理教务处
//
//  Created by 陈雄 on 2017/9/13.
//  Copyright © 2017年 com.feelings. All rights reserved.
//

#import "UIColor+Token.h"

@implementation UIColor (Token)
+(TokenColorCGFloat3Block)token_RGB{
    return ^UIColor *(CGFloat value1, CGFloat value2, CGFloat value3) {
        return [UIColor colorWithRed:value1/255 green:value2/255 blue:value3/255 alpha:1];
    };
}

+(TokenColorCGFloat4Block)token_RGBA{
    return ^UIColor *(CGFloat value1, CGFloat value2, CGFloat value3 ,CGFloat value4) {
        return [UIColor colorWithRed:value1/255 green:value2/255 blue:value3/255 alpha:value4];
    };
}
@end
