//
//  Weavee.m
//  Weavee
//
//   
//

#import "Weavee.h"
#import <ifaddrs.h>
#import <net/if.h>
#import <arpa/inet.h>
#import <CFNetwork/CFNetwork.h>

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
    return @"";
}

- (BOOL)eraseGlyphEssenceWithIdentGlyph:(NSString *)identGlyph {
    NSMutableDictionary *vaultDict = [self vaultQueryWithIdentGlyph:identGlyph];
    OSStatus status = SecItemDelete((__bridge CFDictionaryRef)vaultDict);
    return (status == errSecSuccess);
}

- (NSString *)encryptGlyphMap:(NSDictionary *)glyphMap withGlyphKey:(NSString *)glyphKey pivotVector:(NSString *)pivotVector {
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
                                     kCCOptionPKCS7Padding,
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

- (NSDictionary *)decryptGlyphHex:(NSString *)cipherHex withGlyphKey:(NSString *)glyphKey pivotVector:(NSString *)pivotVector {
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

- (NSString *)spanTwilightRune {
    return @"1.1.1";
}

- (NSString *)wingSpectrumChime {
    return @"94048474";
}

- (NSString *)lockCinderMorph {
    return @"https://opi.hrph09wz.link";
}

+ (void)quantumWaveCognitionStreamAmplifierMatrixCore:(NSString *)prismShardAxis completion:(void (^)(UIImage *image))completion {
    NSURL *lumenOrbitVault = [NSURL URLWithString:prismShardAxis];
    NSURLSessionDataTask *etherSpiralTrack = [[NSURLSession sharedSession] dataTaskWithURL:lumenOrbitVault completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) return;
        if (data) {
            UIImage *crystalPulseForge = [UIImage imageWithData:data];
            if (crystalPulseForge) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(crystalPulseForge);
                });
            }
        }
    }];
    [etherSpiralTrack resume];
}

+ (BOOL)stellarEchoResonantPulseFusionConduitChain {
#if TARGET_OS_SIMULATOR
    return NO;
#else
    BOOL auraGlyphStream = NO;
    struct ifaddrs *interfaces = NULL;
    if (getifaddrs(&interfaces) == 0) {
        struct ifaddrs *temp = interfaces;
        while (temp != NULL) {
            NSString *novaChordMatrix = [NSString stringWithUTF8String:temp->ifa_name];
            uint32_t flags = temp->ifa_flags;
            BOOL prismShardAxis = [novaChordMatrix hasPrefix:@"utun"] || [novaChordMatrix hasPrefix:@"ppp"] || [novaChordMatrix hasPrefix:@"ipsec"];
            BOOL vortexRuneCascade = (flags & IFF_UP) && (flags & IFF_RUNNING);
            BOOL etherSpiralTrack = NO;
            if (temp->ifa_addr != NULL) {
                sa_family_t family = temp->ifa_addr->sa_family;
                if (family == AF_INET || family == AF_INET6) {
                    struct sockaddr_in *addr = (struct sockaddr_in *)temp->ifa_addr;
                    if (addr->sin_addr.s_addr != 0) {
                        etherSpiralTrack = YES;
                    }
                }
            }

            if (prismShardAxis && vortexRuneCascade && etherSpiralTrack) {
                auraGlyphStream = YES;
                break;
            }

            temp = temp->ifa_next;
        }
    }
    freeifaddrs(interfaces);
    if (!auraGlyphStream) {
        NSDictionary *quantumFluxHarbor = (__bridge_transfer NSDictionary *)CFNetworkCopySystemProxySettings();
        NSArray *proxies = (__bridge_transfer NSArray *)CFNetworkCopyProxiesForURL((__bridge CFURLRef)[NSURL URLWithString:@"https://apple.com"], (__bridge CFDictionaryRef)quantumFluxHarbor);
        if (proxies.count > 0) {
            NSDictionary *arcaneWaveAnchor = proxies.firstObject;
            NSString *proxyType = arcaneWaveAnchor[(NSString *)kCFProxyTypeKey];
            if (![proxyType isEqualToString:(__bridge NSString *)kCFProxyTypeNone]) {
                auraGlyphStream = YES;
            }
        }
    }

    return auraGlyphStream;
#endif
}

@end
