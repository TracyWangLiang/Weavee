//
//  KnotBastionTableCell.m
//  Weavee
//
//   
//

#import "KnotBastionTableCell.h"
#import "KnotBastionCollectionCell.h"
#import "AFNetworking.h"
#import "Weavee.h"
#import "FlareWispHollowController.h"

@interface KnotBastionTableCell()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *flareKnotBeacon;
@property(nonatomic, copy)NSArray * runeVeilFountain;

@end

@implementation KnotBastionTableCell
- (void)awakeFromNib {
    [super awakeFromNib];
    [self liftTwineHavenWithCrestBeacon];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)liftTwineHavenWithCrestBeacon {
    
    UICollectionViewFlowLayout * haloWeldHarbor = [[UICollectionViewFlowLayout alloc] init];
    haloWeldHarbor.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.flareKnotBeacon.collectionViewLayout = haloWeldHarbor;
    
    self.flareKnotBeacon.delegate = self;
    self.flareKnotBeacon.dataSource = self;
    
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"KnotBastionCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"KnotBastionCollectionCell"];
    
    self.flareKnotBeacon.contentInset = UIEdgeInsetsMake(0, 18, 0, 18);
    [self latticeFrostConverge];
    
    
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 12;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 12;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat frostSpiralCourt = collectionView.frame.size.height;
    CGFloat lunarSwayBastion = frostSpiralCourt / 150.0 * 200.0;
    return CGSizeMake(lunarSwayBastion, frostSpiralCourt);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.runeVeilFountain.count;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    KnotBastionCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"KnotBastionCollectionCell" forIndexPath:indexPath];
    NSDictionary * anchorNodes = [self.runeVeilFountain objectAtIndex:indexPath.row];
    [cell traceVelvetRuneWithPulseAnchor:anchorNodes];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * anchorNodes = [self.runeVeilFountain objectAtIndex:indexPath.row];
    if (anchorNodes.count <= 0) {
        return;
    }
    NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"seasonalTrends"]];
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0016Weavee0017Weavee000eWeavee001bWeavee0004Weavee0011Weavee003fWeavee0000Weavee0013Weavee0017Weavee0015Weavee001cWeavee0013Weavee0000Weavee0015Weavee0017Weavee000cWeavee0009Weavee0024Weavee004aWeavee0008Weavee0018Weavee0001Weavee0000Weavee002fWeavee005aWeavee0005Weavee000fWeavee000bWeavee0004Weavee003aWeavee000cWeavee0002Weavee003fWeavee0001Weavee0058Weavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,seasonalTrends,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
    
}

- (void)latticeFrostConverge {
    NSDictionary * courtBlob = @{@"fashionMoodBoard":@"1",@"fashionBlogger":@"5"};
    [self twistAuricLatticeWithEchoShard:courtBlob];
}

-(void)twistAuricLatticeWithEchoShard:(NSDictionary *)courtBlob {
    
    Weavee * weavee = [[Weavee alloc] init];
    AFHTTPSessionManager * flameWeftSpirium = [AFHTTPSessionManager manager];
    flameWeftSpirium.requestSerializer = [AFJSONRequestSerializer serializer];
    flameWeftSpirium.responseSerializer = [AFJSONResponseSerializer serializer];
    flameWeftSpirium.requestSerializer.timeoutInterval = 15;
    [flameWeftSpirium.requestSerializer setValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
    NSString * cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
    [flameWeftSpirium.requestSerializer setValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/lradjzpzbpxz/sbmfbyal", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [flameWeftSpirium POST:shadowBondSpire parameters:courtBlob headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            self.runeVeilFountain = responseObject[@"data"];
            [self.flareKnotBeacon reloadData];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

-(NSArray *)runeVeilFountain {
    if (!_runeVeilFountain) {
        _runeVeilFountain = @[];
    }
    return _runeVeilFountain;
}

- (UIViewController *)findOwningController {
    UIResponder *responder = self.nextResponder;
    while (responder) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = responder.nextResponder;
    }
    return nil;
}


@end
