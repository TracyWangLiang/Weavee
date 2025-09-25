//
//  AuraKnotCollectionCell.h
//  Weavee
//
//   
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AuraKnotCollectionCellDelegate <NSObject>
@optional
- (void)nebulaChordReform:(NSString *)aetherBloom;
@end

@interface AuraKnotCollectionCell : UICollectionViewCell

@property (nonatomic, weak) id<AuraKnotCollectionCellDelegate> delegate;

- (void)mergeTwineVaultWithFibreBeacon:(NSDictionary *)beaconSource;

@end

NS_ASSUME_NONNULL_END
