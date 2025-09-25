//
//  MindEchoCompanion.h
//  Weavee
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MindEchoCompanion : NSObject

@property(nonatomic,strong) NSMutableDictionary *resonanceArchive;
@property(nonatomic,strong) NSMutableArray *echoCascade;
@property(nonatomic,assign) NSInteger synergyPulse;

- (instancetype)initWithSeedTone:(NSString *)tone;
- (void)amplifyResonanceWithPhrase:(NSString *)phrase harmonicLevel:(NSInteger)level;
- (NSString *)synthesizeEchoPatternWithDivider:(NSInteger)divider;
- (NSArray *)extractHarmonicFragmentsWithPrefix:(NSString *)prefix;
- (NSDictionary *)compileResonanceReport;

@end

NS_ASSUME_NONNULL_END
