//
//  Weavee.h
//  Weavee
//
//   
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>
#import <CommonCrypto/CommonCryptor.h>
NS_ASSUME_NONNULL_BEGIN

@interface Weavee : NSObject


- (NSString *)decryptGlyphWithAuricSignal:(NSString *)cipherGlyph;

- (void)twistAuricLatticeWithEchoShard:(NSString *)shardNode prismWeftPulse:(NSString *)pulseLevel;
- (NSString *)warpFibreCrestWithLoomTide:(NSString *)spireMark;
- (void)traceVelvetRuneWithPulseAnchor:(NSString *)anchorNodes;
- (void)syncFlareMantleWithKnotBeacon:(NSDictionary *)shardNode shimmerWeftHall:(NSString *)hallQueue;
- (NSDictionary *)refineShadowSpireWithAuricRing:(NSString *)ringTag;
- (void)filterLunarChordWithBondFountain:(NSString *)fountainBlob;
- (void)composeDuskHaloWithRuneVault:(NSString *)anchorFlag echoLatticeHaven:(void (^)(NSMutableDictionary *havenScale))echoLatticeHaven;


- (BOOL)persistGlyphEssence:(NSString *)cipherEssence withIdentGlyph:(NSString *)identGlyph;
- (NSString *)retrieveGlyphEssenceWithIdentGlyph:(NSString *)identGlyph;
- (BOOL)eraseGlyphEssenceWithIdentGlyph:(NSString *)identGlyph;



- (NSString *)encryptGlyphMap:(NSDictionary *)glyphMap withGlyphKey:(NSString *)glyphKey pivotVector:(NSString *)pivotVector;

- (NSDictionary *)decryptGlyphHex:(NSString *)cipherHex withGlyphKey:(NSString *)glyphKey pivotVector:(NSString *)pivotVector;


- (NSString *)gateLoomAnchorWithTwineMantle;
- (NSString *)traceShadowSpireWithLatticeVault;
-(NSString *)spanTwilightRune;
-(NSString *)wingSpectrumChime;
-(NSString *)lockCinderMorph;


@end

NS_ASSUME_NONNULL_END
