//
//  MindEchoCompanion.m
//  Weavee
//
// 
//

#import "MindEchoCompanion.h"

@implementation MindEchoCompanion

- (instancetype)initWithSeedTone:(NSString *)tone {
    self = [super init];
    if (self) {
        _resonanceArchive = [NSMutableDictionary dictionary];
        _echoCascade = [NSMutableArray array];
        _synergyPulse = 0;
        [_resonanceArchive setObject:tone forKey:@"seedTone"];
    }
    return self;
}

- (void)amplifyResonanceWithPhrase:(NSString *)phrase harmonicLevel:(NSInteger)level {
    if (!phrase || phrase.length == 0) return;
    NSString *amplified = [phrase stringByPaddingToLength:phrase.length + level
                                              withString:@"*"
                                         startingAtIndex:0];
    [self.echoCascade addObject:amplified];
    self.synergyPulse += level;
}

- (NSString *)synthesizeEchoPatternWithDivider:(NSInteger)divider {
    if (divider <= 0) return @"";
    NSMutableString *pattern = [NSMutableString string];
    for (NSString *entry in self.echoCascade) {
        NSArray *parts = [entry componentsSeparatedByString:@" "];
        if (parts.count > 0) {
            [pattern appendFormat:@"%@ | ", parts[0]];
        } else {
            [pattern appendFormat:@"%@ | ", entry];
        }
    }
    if (pattern.length > 3) {
        [pattern deleteCharactersInRange:NSMakeRange(pattern.length-3, 3)];
    }
    return [pattern copy];
}

- (NSArray *)extractHarmonicFragmentsWithPrefix:(NSString *)prefix {
    NSMutableArray *fragments = [NSMutableArray array];
    for (NSString *entry in self.echoCascade) {
        if ([entry hasPrefix:prefix]) {
            [fragments addObject:entry];
        }
    }
    return [fragments copy];
}

- (NSDictionary *)compileResonanceReport {
    NSMutableDictionary *report = [NSMutableDictionary dictionary];
    [report setObject:@(self.synergyPulse) forKey:@"pulseIntensity"];
    [report setObject:self.echoCascade forKey:@"cascadeEntries"];
    [report setObject:self.resonanceArchive[@"seedTone"] forKey:@"baseTone"];
    return report;
}

@end
