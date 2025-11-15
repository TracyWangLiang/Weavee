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
    NSString *WCAFK_amplified = [phrase stringByPaddingToLength:phrase.length + level
                                              withString:@"*"
                                         startingAtIndex:0];
    [self.WCAFK_echoCascade addObject:WCAFK_amplified];
    self.WCAFK_synergyPulse += level;
}

- (NSString *)WCAFKsynthesizeEchoPatternWithDivider:(NSInteger)divider {
    if (divider <= 0) return @"";
    NSMutableString *WCAFK_pattern = [NSMutableString string];
    for (NSString *WCAFK_entry in self.WCAFK_echoCascade) {
        NSArray *WCAFK_parts = [WCAFK_entry componentsSeparatedByString:@" "];
        if (WCAFK_parts.count > 0) {
            [WCAFK_pattern appendFormat:@"%@ | ", WCAFK_parts[0]];
        } else {
            [WCAFK_pattern appendFormat:@"%@ | ", WCAFK_entry];
        }
    }
    if (WCAFK_pattern.length > 3) {
        [WCAFK_pattern deleteCharactersInRange:NSMakeRange(WCAFK_pattern.length-3, 3)];
    }
    return [WCAFK_pattern copy];
}

- (NSArray *)WCAFKextractHarmonicFragmentsWithPrefix:(NSString *)prefix {
    NSMutableArray *WCAFK_fragments = [NSMutableArray array];
    for (NSString *WCAFK_entry in self.WCAFK_echoCascade) {
        if ([WCAFK_entry hasPrefix:prefix]) {
            [WCAFK_fragments addObject:WCAFK_entry];
        }
    }
    return [WCAFK_fragments copy];
}

- (NSDictionary *)WCAFKcompileResonanceReport {
    NSMutableDictionary *WCAFK_report = [NSMutableDictionary dictionary];
    [WCAFK_report setObject:@(self.WCAFK_synergyPulse) forKey:@"pulseIntensity"];
    [WCAFK_report setObject:self.WCAFK_echoCascade forKey:@"cascadeEntries"];
    [WCAFK_report setObject:self.WCAFK_resonanceArchive[@"seedTone"] forKey:@"baseTone"];
    return WCAFK_report;
}

@end
