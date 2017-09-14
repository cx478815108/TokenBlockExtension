//
//  NSString+Token.m
//  掌理教务处
//
//  Created by 陈雄 on 2017/9/14.
//  Copyright © 2017年 com.feelings. All rights reserved.
//

#import "NSString+Token.h"

@implementation NSString (Token)

-(TokenStringReplaceBlock)token_replace{
    return ^NSString *(NSString *originString, NSString *newString) {
        NSString *temp = [self copy];
        return [temp stringByReplacingOccurrencesOfString:originString withString:newString];
    };
}

+(TokenStringBlock)token_stringfy{
    return  ^NSString *(id obj) {
        return [NSString stringWithFormat:@"%@",obj];
    };
}

-(TokenStringParameterBlock)token_append{
    return  ^NSString *(NSString *obj) {
        return [NSString stringWithFormat:@"%@%@",self,obj];
    };
}

-(TokenStringRangeBlock)token_rangeOfString{
    return ^NSRange(NSString *sting) {
        return [self rangeOfString:sting];
    };
}

-(TokenStringBOOLBlock)token_hasPrefix{
    return ^BOOL(NSString *string) {
        return [self hasPrefix:string];
    };
}

-(TokenStringBOOLBlock)token_hasSuffix{
    return ^BOOL(NSString *string) {
        return [self hasSuffix:string];
    };
}

-(TokenStringBOOLBlock)token_containsString{
    return ^BOOL(NSString *string) {
        return [self containsString:string];
    };
}

-(TokenStringDataBlock)token_dataUsingEncoding{
    return ^NSData *(NSStringEncoding encodingType) {
        return [self dataUsingEncoding:encodingType];
    };
}

-(TokenStringSeparatorBlock)token_separator{
    return ^NSArray *(NSString *separator) {
        return [self componentsSeparatedByString:separator];
    };
}

-(TokenStringSeparator2Block)token_separatorUsingSet{
    return ^NSArray *(NSCharacterSet *separatorSet) {
        return [self componentsSeparatedByCharactersInSet:separatorSet];
    };
}

@end
