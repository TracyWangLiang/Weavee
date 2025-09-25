//
//  WeaveeSpecialFlowLayout.m
//  Weavee
//
//   
//

#import "WeaveeSpecialFlowLayout.h"

@implementation WeaveeSpecialFlowLayout{
    NSMutableArray<UICollectionViewLayoutAttributes *> *_attributesArray;
    NSMutableArray<NSNumber *> *_columnHeights;
}

- (void)prepareLayout {
    [super prepareLayout];
    _attributesArray = [NSMutableArray array];
    _columnHeights = [NSMutableArray array];
    
    for (NSInteger i = 0; i < self.columnNumber; i++) {
        [_columnHeights addObject:@(self.sectionInset.top)];
    }
    
    NSInteger itemCount = [self.collectionView numberOfItemsInSection:0];
    CGFloat contentWidth = CGRectGetWidth(self.collectionView.bounds) - self.sectionInset.left - self.sectionInset.right;
    CGFloat itemWidth = (contentWidth - (self.columnNumber - 1) * self.itemSpacing) / self.columnNumber;
    
    for (NSInteger i = 0; i < itemCount; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        UICollectionViewLayoutAttributes *attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
        
        CGFloat itemHeight = [self.delegate collectionView:self.collectionView layout:self heightForItemAtIndexPath:indexPath itemWidth:itemWidth];
        
        NSInteger destColumn = 0;
        CGFloat minColumnHeight = [_columnHeights[0] floatValue];
        for (NSInteger col = 1; col < self.columnNumber; col++) {
            CGFloat colHeight = [_columnHeights[col] floatValue];
            if (colHeight < minColumnHeight) {
                minColumnHeight = colHeight;
                destColumn = col;
            }
        }
        
        CGFloat itemX = self.sectionInset.left + destColumn * (itemWidth + self.itemSpacing);
        CGFloat itemY = [_columnHeights[destColumn] floatValue];
        if (itemY != self.sectionInset.top) {
            itemY += self.lineSpacing;
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
    return CGSizeMake(CGRectGetWidth(self.collectionView.bounds), maxHeight + self.sectionInset.bottom);
}

@end
