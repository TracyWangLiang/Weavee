//
//  WeaveeSpecialFlowLayout.m
//  Weavee
//
//   
//

#import "WCAFKWeaveeSpecialFlowLayout.h"

@implementation WCAFKWeaveeSpecialFlowLayout{
    NSMutableArray<UICollectionViewLayoutAttributes *> *_attributesArray;
    NSMutableArray<NSNumber *> *_columnHeights;
}

- (void)prepareLayout {
    [super prepareLayout];
    _attributesArray = [NSMutableArray array];
    _columnHeights = [NSMutableArray array];
    
    for (NSInteger i = 0; i < self.WCAFK_columnNumber; i++) {
        [_columnHeights addObject:@(self.WCAFK_sectionInset.top)];
    }
    
    NSInteger itemCount = [self.collectionView numberOfItemsInSection:0];
    CGFloat contentWidth = CGRectGetWidth(self.collectionView.bounds) - self.WCAFK_sectionInset.left - self.WCAFK_sectionInset.right;
    CGFloat itemWidth = (contentWidth - (self.WCAFK_columnNumber - 1) * self.WCAFK_itemSpacing) / self.WCAFK_columnNumber;
    
    for (NSInteger i = 0; i < itemCount; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        UICollectionViewLayoutAttributes *attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
        
        CGFloat itemHeight = [self.delegate WCAFKcollectionView:self.collectionView layout:self heightForItemAtIndexPath:indexPath itemWidth:itemWidth];
        
        NSInteger destColumn = 0;
        CGFloat minColumnHeight = [_columnHeights[0] floatValue];
        for (NSInteger col = 1; col < self.WCAFK_columnNumber; col++) {
            CGFloat colHeight = [_columnHeights[col] floatValue];
            if (colHeight < minColumnHeight) {
                minColumnHeight = colHeight;
                destColumn = col;
            }
        }
        
        CGFloat itemX = self.WCAFK_sectionInset.left + destColumn * (itemWidth + self.WCAFK_itemSpacing);
        CGFloat itemY = [_columnHeights[destColumn] floatValue];
        if (itemY != self.WCAFK_sectionInset.top) {
            itemY += self.WCAFK_lineSpacing;
        }
        
        attr.frame = CGRectMake(itemX, itemY, itemWidth, itemHeight);
        [_attributesArray addObject:attr];
        
        _columnHeights[destColumn] = @(CGRectGetMaxY(attr.frame));
    }
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return _attributesArray;
}

- (CGSize)collectionViewContentSize {
    CGFloat maxHeight = [[_columnHeights valueForKeyPath:@"@max.floatValue"] floatValue];
    return CGSizeMake(CGRectGetWidth(self.collectionView.bounds), maxHeight + self.WCAFK_sectionInset.bottom);
}

@end
