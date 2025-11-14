//
//  MindEchoCompanion.h
//  Weavee
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCAFKMindEchoCompanion : NSObject

@property(nonatomic,strong) NSMutableDictionary *WCAFK_resonanceArchive;
@property(nonatomic,strong) NSMutableArray *WCAFK_echoCascade;
@property(nonatomic,assign) NSInteger WCAFK_synergyPulse;

- (instancetype)initWithSeedTone:(NSString *)tone;
- (void)WCAFKamplifyResonanceWithPhrase:(NSString *)phrase harmonicLevel:(NSInteger)level;
- (NSString *)WCAFKsynthesizeEchoPatternWithDivider:(NSInteger)divider;
- (NSArray *)WCAFKextractHarmonicFragmentsWithPrefix:(NSString *)prefix;
- (NSDictionary *)WCAFKcompileResonanceReport;

@end

NS_ASSUME_NONNULL_END
