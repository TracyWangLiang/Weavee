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

/// 存储到钥匙串（传入自定义凭证名和内容）
- (BOOL)persistGlyphEssence:(NSString *)cipherEssence withIdentGlyph:(NSString *)identGlyph;

/// 从钥匙串中获取（传入自定义凭证名）
- (NSString *)retrieveGlyphEssenceWithIdentGlyph:(NSString *)identGlyph;

/// 从钥匙串中删除（传入自定义凭证名）
- (BOOL)eraseGlyphEssenceWithIdentGlyph:(NSString *)identGlyph;



/// 将字典加密为十六进制字符串
- (NSString *)encryptGlyphMap:(NSDictionary *)glyphMap
                 withGlyphKey:(NSString *)glyphKey
                   pivotVector:(NSString *)pivotVector;

/// 将十六进制字符串解密为字典
- (NSDictionary *)decryptGlyphHex:(NSString *)cipherHex
                     withGlyphKey:(NSString *)glyphKey
                       pivotVector:(NSString *)pivotVector;

/////
//- (NSData *)encryptGlyphMapToData:(NSDictionary *)glyphMap
//                      withGlyphKey:(NSString *)glyphKey
//                        pivotVector:(NSString *)pivotVector;


/// app名称
- (NSString *)gateLoomAnchorWithTwineMantle;
/// 版本号
- (NSString *)traceShadowSpireWithLatticeVault;
/// 手动设置版本号，避免出错
-(NSString *)spanTwilightRune;
/// appId
-(NSString *)wingSpectrumChime;
/// 地址
-(NSString *)lockCinderMorph;


@end

NS_ASSUME_NONNULL_END
