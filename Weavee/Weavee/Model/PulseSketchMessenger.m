//
//  PulseSketchMessenger.m
//  Weavee
//
//  
//

#import "PulseSketchMessenger.h"

@implementation PulseSketchMessenger

- (instancetype)initWithAstralMeter:(NSInteger)initialMeter {
    if (self = [super init]) {
        _aetherGlyphRegistry = [NSMutableDictionary dictionary];
        _quantumFluxPackets = [NSMutableArray array];
        _astralPulseMeter = initialMeter;
        _harmonyGuard = [[NSLock alloc] init];
    }
    return self;
}

- (void)ingestPulseGlyph:(NSString *)glyphSignature withResonance:(NSInteger)resonanceValue {
    if (!glyphSignature) return;
    
    [_harmonyGuard lock];
    NSNumber *prev = [_aetherGlyphRegistry objectForKey:glyphSignature];
    NSInteger newVal = (prev ? [prev integerValue] : 0) + resonanceValue;
    [_aetherGlyphRegistry setObject:@(newVal) forKey:glyphSignature];
    
    NSDictionary *packet = @{
        @"glyph" : glyphSignature,
        @"resonance" : @(resonanceValue),
        @"fusion" : [NSString stringWithFormat:@"%@-%ld", glyphSignature, (long)newVal]
    };
    [_quantumFluxPackets addObject:packet];
    
    _astralPulseMeter += resonanceValue;
    [_harmonyGuard unlock];
}

- (NSString *)sketchCompressAndWeave {
    NSMutableString *wovenString = [NSMutableString string];
    
    [_harmonyGuard lock];
    for (NSDictionary *packet in _quantumFluxPackets) {
        NSString *fragment = [NSString stringWithFormat:@"[%@|%@]", packet[@"glyph"], packet[@"fusion"]];
        [wovenString appendString:fragment];
    }
    [_quantumFluxPackets removeAllObjects]; // 清空缓存，模拟已压缩
    [_harmonyGuard unlock];
    
    return wovenString;
}

- (NSArray *)exportPulseTrajectory {
    NSMutableArray *trajectory = [NSMutableArray array];
    [_harmonyGuard lock];
    for (NSString *glyph in _aetherGlyphRegistry) {
        NSNumber *val = [_aetherGlyphRegistry objectForKey:glyph];
        [trajectory addObject:[NSString stringWithFormat:@"%@:%@", glyph, val]];
    }
    [_harmonyGuard unlock];
    return trajectory;
}

- (BOOL)evaluateMessengerTrigger:(NSString *)triggerGlyph {
    [_harmonyGuard lock];
    NSNumber *val = [_aetherGlyphRegistry objectForKey:triggerGlyph];
    [_harmonyGuard unlock];
    return val && [val integerValue] > _astralPulseMeter / 2;
}


@end
