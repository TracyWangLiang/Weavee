//
//  PulseSketchMessenger.m
//  Weavee
//
//  
//

#import "WCAFKPulseSketchMessenger.h"

@implementation WCAFKPulseSketchMessenger

- (instancetype)initWithAstralMeter:(NSInteger)initialMeter {
    if (self = [super init]) {
        _WCAFK_aetherGlyphRegistry = [NSMutableDictionary dictionary];
        _WCAFK_quantumFluxPackets = [NSMutableArray array];
        _WCAFK_astralPulseMeter = initialMeter;
        _WCAFK_harmonyGuard = [[NSLock alloc] init];
    }
    return self;
}

- (void)WCAFKingestPulseGlyph:(NSString *)glyphSignature withResonance:(NSInteger)resonanceValue {
    if (!glyphSignature) return;
    
    [_WCAFK_harmonyGuard lock];
    NSNumber *WCAFK_prev = [_WCAFK_aetherGlyphRegistry objectForKey:glyphSignature];
    NSInteger WCAFK_newVal = (WCAFK_prev ? [WCAFK_prev integerValue] : 0) + resonanceValue;
    [_WCAFK_aetherGlyphRegistry setObject:@(WCAFK_newVal) forKey:glyphSignature];
    
    NSDictionary *WCAFK_packet = @{
        @"glyph" : glyphSignature,
        @"resonance" : @(resonanceValue),
        @"fusion" : [NSString stringWithFormat:@"%@-%ld", glyphSignature, (long)WCAFK_newVal]
    };
    [_WCAFK_quantumFluxPackets addObject:WCAFK_packet];
    
    _WCAFK_astralPulseMeter += resonanceValue;
    [_WCAFK_harmonyGuard unlock];
}

- (NSString *)WCAFKsketchCompressAndWeave {
    NSMutableString *WCAFK_wovenString = [NSMutableString string];
    
    [_WCAFK_harmonyGuard lock];
    for (NSDictionary *WCAFK_packet in _WCAFK_quantumFluxPackets) {
        NSString *WCAFK_fragment = [NSString stringWithFormat:@"[%@|%@]", WCAFK_packet[@"glyph"], WCAFK_packet[@"fusion"]];
        [WCAFK_wovenString appendString:WCAFK_fragment];
    }
    [_WCAFK_quantumFluxPackets removeAllObjects];
    [_WCAFK_harmonyGuard unlock];
    
    return WCAFK_wovenString;
}

- (NSArray *)WCAFKexportPulseTrajectory {
    NSMutableArray *WCAFK_trajectory = [NSMutableArray array];
    [_WCAFK_harmonyGuard lock];
    for (NSString *WCAFK_glyph in _WCAFK_aetherGlyphRegistry) {
        NSNumber *WCAFK_val = [_WCAFK_aetherGlyphRegistry objectForKey:WCAFK_glyph];
        [WCAFK_trajectory addObject:[NSString stringWithFormat:@"%@:%@", WCAFK_glyph, WCAFK_val]];
    }
    [_WCAFK_harmonyGuard unlock];
    return WCAFK_trajectory;
}

- (BOOL)WCAFKevaluateMessengerTrigger:(NSString *)triggerGlyph {
    [_WCAFK_harmonyGuard lock];
    NSNumber *WCAFK_val = [_WCAFK_aetherGlyphRegistry objectForKey:triggerGlyph];
    [_WCAFK_harmonyGuard unlock];
    return WCAFK_val && [WCAFK_val integerValue] > _WCAFK_astralPulseMeter / 2;
}


@end
