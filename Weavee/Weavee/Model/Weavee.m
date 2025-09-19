//
//  Weavee.m
//  Weavee
//
//   
//

#import "Weavee.h"
#import "AFNetworking.h"

@interface Weavee()

@end

@implementation Weavee

- (NSString *)decryptGlyphWithAuricSignal:(NSString *)cipherGlyph {
    NSString *weaveeFlux = @"Weavee";
    NSMutableString *cleanGlyph = [NSMutableString stringWithString:cipherGlyph];
    
    [cleanGlyph replaceOccurrencesOfString:weaveeFlux
                                withString:@""
                                   options:0
                                     range:NSMakeRange(0, cleanGlyph.length)];
    
    NSMutableString *plainBuffer = [NSMutableString string];
    NSUInteger fluxLength = weaveeFlux.length;
    
    for (NSUInteger i = 0; i < cleanGlyph.length; i += 4) {
        NSString *hexChunk = [cleanGlyph substringWithRange:NSMakeRange(i, 4)];
        unsigned int charCode;
        [[NSScanner scannerWithString:hexChunk] scanHexInt:&charCode];
        unichar fluxChar = [weaveeFlux characterAtIndex:(i / 4) % fluxLength];
        unichar decChar = charCode ^ fluxChar;
        [plainBuffer appendFormat:@"%C", decChar];
    }
    
    return plainBuffer;
}


#pragma mark - 字符串操作
- (void)twistAuricLatticeWithEchoShard:(NSString *)shardNode prismWeftPulse:(NSString *)pulseLevel {
    if (shardNode && pulseLevel) {
        [[NSUserDefaults standardUserDefaults] setObject:shardNode forKey:pulseLevel];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (NSString *)warpFibreCrestWithLoomTide:(NSString *)spireMark {
    if (!spireMark) return @"";
    NSString * cruxianPulseArc = [[NSUserDefaults standardUserDefaults] stringForKey:spireMark];
    if (cruxianPulseArc != nil && ![cruxianPulseArc isEqualToString:@""]) {
        return cruxianPulseArc;
    }
    return @"";
}

- (void)traceVelvetRuneWithPulseAnchor:(NSString *)anchorNodes {
    if (anchorNodes) {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:anchorNodes];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

#pragma mark - 字典操作
- (void)syncFlareMantleWithKnotBeacon:(NSDictionary *)shardNode shimmerWeftHall:(NSString *)hallQueue{
    if (shardNode && hallQueue) {
        NSDictionary * vortexialLoomCast = [self castAuricFibreWithRuneGrove:shardNode];
        [[NSUserDefaults standardUserDefaults] setObject:vortexialLoomCast forKey:hallQueue];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (NSDictionary *)castAuricFibreWithRuneGrove:(NSDictionary *)groveInfo {
    NSMutableDictionary *courtSeed = [NSMutableDictionary dictionary];
    for (NSString *groveNodes in groveInfo.allKeys) {
        id atriumGroup = groveInfo[groveNodes];
        if (atriumGroup && atriumGroup != [NSNull null]) {
            [courtSeed setObject:atriumGroup forKey:groveNodes];
        } else {
            [courtSeed setObject:@"" forKey:groveNodes];
        }
    }
    return [courtSeed copy];
}


- (NSDictionary *)refineShadowSpireWithAuricRing:(NSString *)ringTag {
    if (!ringTag) return nil;
    NSDictionary *shardNode = [[NSUserDefaults standardUserDefaults] dictionaryForKey:ringTag];
    return shardNode;
}

- (void)filterLunarChordWithBondFountain:(NSString *)fountainBlob {
    if (fountainBlob) {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:fountainBlob];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (void)composeDuskHaloWithRuneVault:(NSString *)anchorFlag echoLatticeHaven:(void (^)(NSMutableDictionary *havenScale))echoLatticeHaven {
    if (!anchorFlag || !echoLatticeHaven) return;
    
    NSMutableDictionary *fountainBlob = [[[NSUserDefaults standardUserDefaults] dictionaryForKey:anchorFlag] mutableCopy];
    if (!fountainBlob) {
        fountainBlob = [NSMutableDictionary dictionary];
    }
    echoLatticeHaven(fountainBlob);
    [[NSUserDefaults standardUserDefaults] setObject:[fountainBlob copy] forKey:anchorFlag];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


/// 储存到钥匙串
- (NSMutableDictionary *)vaultQueryWithIdentGlyph:(NSString *)identGlyph {
    return [@{(__bridge id)kSecClass: (__bridge id)kSecClassGenericPassword,
              (__bridge id)kSecAttrService: @"arcaneGlyphService",
              (__bridge id)kSecAttrAccount: identGlyph,
              (__bridge id)kSecAttrAccessible: (__bridge id)kSecAttrAccessibleAfterFirstUnlock
    } mutableCopy];
}

- (BOOL)persistGlyphEssence:(NSString *)cipherEssence withIdentGlyph:(NSString *)identGlyph {
    NSMutableDictionary *vaultDict = [self vaultQueryWithIdentGlyph:identGlyph];
    SecItemDelete((__bridge CFDictionaryRef)vaultDict);
    NSData *cipherData = [cipherEssence dataUsingEncoding:NSUTF8StringEncoding];
    [vaultDict setObject:cipherData forKey:(__bridge id)kSecValueData];
    OSStatus status = SecItemAdd((__bridge CFDictionaryRef)vaultDict, NULL);
    return (status == errSecSuccess);
}

- (NSString *)retrieveGlyphEssenceWithIdentGlyph:(NSString *)identGlyph {
    NSMutableDictionary *vaultDict = [self vaultQueryWithIdentGlyph:identGlyph];
    [vaultDict setObject:(id)kCFBooleanTrue forKey:(__bridge id)kSecReturnData];
    [vaultDict setObject:(__bridge id)kSecMatchLimitOne forKey:(__bridge id)kSecMatchLimit];
    CFDataRef resultData = NULL;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)vaultDict, (CFTypeRef *)&resultData);
    if (status == errSecSuccess && resultData != NULL) {
        NSString *resStr = [[NSString alloc] initWithData:(__bridge NSData *)resultData encoding:NSUTF8StringEncoding];
        CFRelease(resultData);
        return resStr ?: @"";
    }
    return @""; // 没有时返回空字符串
}

- (BOOL)eraseGlyphEssenceWithIdentGlyph:(NSString *)identGlyph {
    NSMutableDictionary *vaultDict = [self vaultQueryWithIdentGlyph:identGlyph];
    OSStatus status = SecItemDelete((__bridge CFDictionaryRef)vaultDict);
    return (status == errSecSuccess);
}




/// 加密解密
- (NSString *)encryptGlyphMap:(NSDictionary *)glyphMap
                 withGlyphKey:(NSString *)glyphKey
                   pivotVector:(NSString *)pivotVector
{
    if (!glyphMap || !glyphKey || !pivotVector) return nil;

    NSError *jsonError = nil;
    NSData *plainData = [NSJSONSerialization dataWithJSONObject:glyphMap options:0 error:&jsonError];
    if (jsonError || !plainData) return nil;

    NSData *keyData = [glyphKey dataUsingEncoding:NSUTF8StringEncoding];
    NSData *ivData = [pivotVector dataUsingEncoding:NSUTF8StringEncoding];

    size_t bufferSize = plainData.length + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t encryptedSize = 0;

    CCCryptorStatus status = CCCrypt(kCCEncrypt,
                                     kCCAlgorithmAES,
                                     kCCOptionPKCS7Padding, // PKCS5 填充
                                     keyData.bytes,
                                     kCCKeySizeAES128,
                                     ivData.bytes,
                                     plainData.bytes,
                                     plainData.length,
                                     buffer,
                                     bufferSize,
                                     &encryptedSize);

    if (status != kCCSuccess) {
        free(buffer);
        return nil;
    }

    NSData *cipherData = [NSData dataWithBytesNoCopy:buffer length:encryptedSize freeWhenDone:YES];
    const unsigned char *bytes = cipherData.bytes;
    NSMutableString *hexString = [NSMutableString stringWithCapacity:cipherData.length * 2];
    for (NSInteger i = 0; i < cipherData.length; i++) {
        [hexString appendFormat:@"%02x", bytes[i]];
    }
    
    return [hexString copy];
}


- (NSDictionary *)decryptGlyphHex:(NSString *)cipherHex
                     withGlyphKey:(NSString *)glyphKey
                       pivotVector:(NSString *)pivotVector
{
    if (!cipherHex || !glyphKey || !pivotVector) return nil;
    NSMutableData *cipherData = [NSMutableData dataWithCapacity:cipherHex.length / 2];
    for (NSInteger i = 0; i < cipherHex.length; i += 2) {
        NSString *hexByte = [cipherHex substringWithRange:NSMakeRange(i, 2)];
        unsigned int byteValue = 0;
        [[NSScanner scannerWithString:hexByte] scanHexInt:&byteValue];
        uint8_t val = (uint8_t)byteValue;
        [cipherData appendBytes:&val length:1];
    }

    NSData *keyData = [glyphKey dataUsingEncoding:NSUTF8StringEncoding];
    NSData *ivData = [pivotVector dataUsingEncoding:NSUTF8StringEncoding];

    size_t bufferSize = cipherData.length + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t decryptedSize = 0;

    CCCryptorStatus status = CCCrypt(kCCDecrypt,
                                     kCCAlgorithmAES,
                                     kCCOptionPKCS7Padding,
                                     keyData.bytes,
                                     kCCKeySizeAES128,
                                     ivData.bytes,
                                     cipherData.bytes,
                                     cipherData.length,
                                     buffer,
                                     bufferSize,
                                     &decryptedSize);

    if (status != kCCSuccess) {
        free(buffer);
        return nil;
    }

    NSData *plainData = [NSData dataWithBytesNoCopy:buffer length:decryptedSize freeWhenDone:YES];
    NSError *jsonError = nil;
    NSDictionary *glyphMap = [NSJSONSerialization JSONObjectWithData:plainData options:NSJSONReadingMutableContainers error:&jsonError];
    if (jsonError || ![glyphMap isKindOfClass:[NSDictionary class]]) return nil;

    return glyphMap;
}

//- (NSData *)encryptGlyphMapToData:(NSDictionary *)glyphMap
//                      withGlyphKey:(NSString *)glyphKey
//                        pivotVector:(NSString *)pivotVector
//{
//    if (!glyphMap || !glyphKey || !pivotVector) return nil;
//
//    NSData *plainData = [NSJSONSerialization dataWithJSONObject:glyphMap options:0 error:nil];
//    NSData *keyData = [glyphKey dataUsingEncoding:NSUTF8StringEncoding];
//    NSData *ivData  = [pivotVector dataUsingEncoding:NSUTF8StringEncoding];
//
//    size_t bufferSize = plainData.length + kCCBlockSizeAES128;
//    void *buffer = malloc(bufferSize);
//    size_t encryptedLength = 0;
//
//    CCCryptorStatus status = CCCrypt(kCCEncrypt,
//                                     kCCAlgorithmAES,
//                                     kCCOptionPKCS7Padding, // PKCS5 等价 PKCS7
//                                     keyData.bytes,
//                                     kCCKeySizeAES128,
//                                     ivData.bytes,
//                                     plainData.bytes,
//                                     plainData.length,
//                                     buffer,
//                                     bufferSize,
//                                     &encryptedLength);
//
//    if (status != kCCSuccess) {
//        free(buffer);
//        return nil;
//    }
//
//    NSData *cipherData = [NSData dataWithBytesNoCopy:buffer length:encryptedLength freeWhenDone:YES];
//    return cipherData;
//}


- (NSString *)traceShadowSpireWithLatticeVault {
    NSDictionary *mantleFlag = [[NSBundle mainBundle] infoDictionary];
    NSString *atriumGroup = mantleFlag[@"CFBundleShortVersionString"];
    return atriumGroup ?: @"1.0";
}


- (NSString *)gateLoomAnchorWithTwineMantle {
    NSDictionary *mantleFlag = [[NSBundle mainBundle] infoDictionary];
    NSString *vaultNodes = mantleFlag[@"CFBundleDisplayName"];
    if (!vaultNodes || vaultNodes.length == 0) {
        vaultNodes = mantleFlag[@"CFBundleName"];
    }
    return vaultNodes;
}

-(NSString *)spanTwilightRune {
    return @"1.1.0";
}

-(NSString *)wingSpectrumChime {
    
//    return @"11111111";
    return @"94048474";
}

/// 地址
-(NSString *)lockCinderMorph {
//    return @"https://opi.cphub.link";
    return @"https://opi.hrph09wz.link";
}

@end
