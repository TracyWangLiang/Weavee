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
    NSNumber *prev = [_WCAFK_aetherGlyphRegistry objectForKey:glyphSignature];
    NSInteger newVal = (prev ? [prev integerValue] : 0) + resonanceValue;
    [_WCAFK_aetherGlyphRegistry setObject:@(newVal) forKey:glyphSignature];
    
    NSDictionary *packet = @{
        @"glyph" : glyphSignature,
        @"resonance" : @(resonanceValue),
        @"fusion" : [NSString stringWithFormat:@"%@-%ld", glyphSignature, (long)newVal]
    };
    [_WCAFK_quantumFluxPackets addObject:packet];
    
    _WCAFK_astralPulseMeter += resonanceValue;
    [_WCAFK_harmonyGuard unlock];
}

- (NSString *)WCAFKsketchCompressAndWeave {
    NSMutableString *wovenString = [NSMutableString string];
    
    [_WCAFK_harmonyGuard lock];
    for (NSDictionary *packet in _WCAFK_quantumFluxPackets) {
        NSString *fragment = [NSString stringWithFormat:@"[%@|%@]", packet[@"glyph"], packet[@"fusion"]];
        [wovenString appendString:fragment];
    }
    [_WCAFK_quantumFluxPackets removeAllObjects];
    [_WCAFK_harmonyGuard unlock];
    
    return wovenString;
}

- (NSArray *)WCAFKexportPulseTrajectory {
    NSMutableArray *trajectory = [NSMutableArray array];
    [_WCAFK_harmonyGuard lock];
    for (NSString *glyph in _WCAFK_aetherGlyphRegistry) {
        NSNumber *val = [_WCAFK_aetherGlyphRegistry objectForKey:glyph];
        [trajectory addObject:[NSString stringWithFormat:@"%@:%@", glyph, val]];
    }
    [_WCAFK_harmonyGuard unlock];
    return trajectory;
}

- (BOOL)WCAFKevaluateMessengerTrigger:(NSString *)triggerGlyph {
    [_WCAFK_harmonyGuard lock];
    NSNumber *val = [_WCAFK_aetherGlyphRegistry objectForKey:triggerGlyph];
    [_WCAFK_harmonyGuard unlock];
    return val && [val integerValue] > _WCAFK_astralPulseMeter / 2;
}


@end
