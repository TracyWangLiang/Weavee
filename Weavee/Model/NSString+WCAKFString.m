//
//  NSString+WCAKFString.m
//  Weavee
//
// 
//

#import "NSString+WCAKFString.h"

@implementation NSString (WCAKFString)

- (NSString *)WCAKFchangeToString {
    NSString *str = [self stringByReplacingOccurrencesOfString:@"WCAFK_" withString:@""];
    return str;
}

@end
