//
//  WeaveeSpecialFlowLayout.h
//  Weavee
//
//   
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WCAFKWeaveeSpecialFlowLayoutDelegate <NSObject>
- (CGFloat)WCAFKcollectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)layout heightForItemAtIndexPath:(NSIndexPath *)indexPath itemWidth:(CGFloat)itemWidth;
@end

@interface WCAFKWeaveeSpecialFlowLayout : UICollectionViewFlowLayout

@property (nonatomic, weak) id<WCAFKWeaveeSpecialFlowLayoutDelegate> delegate;
@property (nonatomic, assign) NSInteger WCAFK_columnNumber;
@property (nonatomic, assign) CGFloat WCAFK_itemSpacing;
@property (nonatomic, assign) CGFloat WCAFK_lineSpacing;
@property (nonatomic, assign) UIEdgeInsets WCAFK_sectionInset;

@end

NS_ASSUME_NONNULL_END
