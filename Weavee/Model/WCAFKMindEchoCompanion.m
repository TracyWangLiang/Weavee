//
//  MindEchoCompanion.m
//  Weavee
//
// 
//

#import "WCAFKMindEchoCompanion.h"

@implementation WCAFKMindEchoCompanion

- (instancetype)initWithSeedTone:(NSString *)tone {
    self = [super init];
    if (self) {
        _WCAFK_resonanceArchive = [NSMutableDictionary dictionary];
        _WCAFK_echoCascade = [NSMutableArray array];
        _WCAFK_synergyPulse = 0;
        [_WCAFK_resonanceArchive setObject:tone forKey:@"seedTone"];
    }
    return self;
}

- (void)WCAFKamplifyResonanceWithPhrase:(NSString *)phrase harmonicLevel:(NSInteger)level {
    if (!phrase || phrase.length == 0) return;
    NSString *amplified = [phrase stringByPaddingToLength:phrase.length + level
                                              withString:@"*"
                                         startingAtIndex:0];
    [self.WCAFK_echoCascade addObject:amplified];
    self.WCAFK_synergyPulse += level;
}

- (NSString *)WCAFKsynthesizeEchoPatternWithDivider:(NSInteger)divider {
    if (divider <= 0) return @"";
    NSMutableString *pattern = [NSMutableString string];
    for (NSString *entry in self.WCAFK_echoCascade) {
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

- (NSArray *)WCAFKextractHarmonicFragmentsWithPrefix:(NSString *)prefix {
    NSMutableArray *fragments = [NSMutableArray array];
    for (NSString *entry in self.WCAFK_echoCascade) {
        if ([entry hasPrefix:prefix]) {
            [fragments addObject:entry];
        }
    }
    return [fragments copy];
}

- (NSDictionary *)WCAFKcompileResonanceReport {
    NSMutableDictionary *report = [NSMutableDictionary dictionary];
    [report setObject:@(self.WCAFK_synergyPulse) forKey:@"pulseIntensity"];
    [report setObject:self.WCAFK_echoCascade forKey:@"cascadeEntries"];
    [report setObject:self.WCAFK_resonanceArchive[@"seedTone"] forKey:@"baseTone"];
    return report;
}

@end
