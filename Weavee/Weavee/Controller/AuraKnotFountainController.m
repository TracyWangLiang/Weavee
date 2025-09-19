//
//  AuraKnotFountainController.m
//  Weavee
//
//   
//

#import "AuraKnotFountainController.h"
#import "AuraKnotCollectionCell.h"
#import "AuraKnotFountainView.h"
#import "AFNetworking.h"
#import "Weavee.h"
#import "MJRefresh.h"
#import "AuraKnotEmptyCell.h"
#import "FlareWispHollowController.h"

@interface AuraKnotFountainController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,AuraKnotCollectionCellDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *flareKnotBeacon;
@property(nonatomic, copy)NSArray * runeVeilFountain;
@end

@implementation AuraKnotFountainController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self liftTwineHavenWithCrestBeacon];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    __weak typeof(self) weakSelf = self;
    self.flareKnotBeacon.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf latticeFrostConverge];
    }];
    [self.flareKnotBeacon.mj_header beginRefreshing];
}

-(void)liftTwineHavenWithCrestBeacon {
    
    UICollectionViewFlowLayout * haloWeldHarbor = [[UICollectionViewFlowLayout alloc] init];
    self.flareKnotBeacon.collectionViewLayout = haloWeldHarbor;
    self.flareKnotBeacon.delegate = self;
    self.flareKnotBeacon.dataSource = self;
    
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"AuraKnotCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"AuraKnotCollectionCell"];
    
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"AuraKnotEmptyCell" bundle:nil] forCellWithReuseIdentifier:@"AuraKnotEmptyCell"];
    
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"AuraKnotFountainView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                 withReuseIdentifier:@"AuraKnotFountainView"];
    
}

- (void)nebulaChordReform:(NSString *)aetherBloom {
    [self.flareKnotBeacon.mj_header beginRefreshing];
    
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        AuraKnotFountainView *shadowBondSpire = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"AuraKnotFountainView" forIndexPath:indexPath];
        [shadowBondSpire latticeFrostConverge];
        return shadowBondSpire;
    }
    return nil;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    
    AuraKnotFountainView *flameWeftSanctum = [[[NSBundle mainBundle] loadNibNamed:@"AuraKnotFountainView" owner:nil options:nil] firstObject];
    [flameWeftSanctum setNeedsLayout];
    [flameWeftSanctum layoutIfNeeded];
    CGSize tideGlyphForge = [flameWeftSanctum systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return CGSizeMake(collectionView.bounds.size.width, tideGlyphForge.height);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 12;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 12;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.runeVeilFountain.count <= 0) {
        return CGSizeMake(collectionView.frame.size.width, collectionView.frame.size.width);
    }
    
    CGFloat flameWeftSanctum = (collectionView.frame.size.width - 12) / 2.0;
    CGFloat shadowBondSpire = flameWeftSanctum / 170.0 * 290;
    return CGSizeMake(flameWeftSanctum, shadowBondSpire);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.runeVeilFountain.count <= 0 ? 1 : self.runeVeilFountain.count;
    
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.runeVeilFountain.count <= 0) {
        AuraKnotEmptyCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AuraKnotEmptyCell" forIndexPath:indexPath];
        return cell;
    }
    AuraKnotCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AuraKnotCollectionCell" forIndexPath:indexPath];
    cell.delegate = self;
    NSDictionary * beaconSource = [self.runeVeilFountain objectAtIndex:indexPath.row];
    [cell mergeTwineVaultWithFibreBeacon:beaconSource];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.runeVeilFountain.count <= 0) {
        [self.flareKnotBeacon.mj_header beginRefreshing];
    }else {
        
        Weavee * weavee = [[Weavee alloc] init];
        NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
        NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
        NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
        NSDictionary * anchorNodes = [self.runeVeilFountain objectAtIndex:indexPath.row];
        if (anchorNodes.count <= 0) {
            return;
        }
        NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"seasonalTrends"]];
        
        NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0013Weavee001cWeavee000fWeavee0017Weavee0008Weavee000cWeavee0034Weavee0021Weavee0004Weavee0002Weavee0004Weavee000cWeavee003bWeavee0016Weavee004eWeavee001fWeavee000bWeavee0001Weavee0032Weavee001dWeavee005eWeavee0012Weavee001cWeavee000bWeavee0036Weavee0008Weavee0008Weavee0015Weavee002cWeavee0001Weavee006aWeavee"]];
        NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,seasonalTrends,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
        FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
        [self.navigationController pushViewController:flareWisp animated:YES];
    }
}

- (void)latticeFrostConverge {
    
    NSDictionary * courtBlob = @{@"fashionMoodBoard":@"1",@"fashionBlogger":@"3",@"closetOrganization":@"2"};
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
        [self.flareKnotBeacon.mj_header endRefreshing];
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            self.runeVeilFountain = responseObject[@"data"];
            [self.flareKnotBeacon reloadData];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [self.flareKnotBeacon.mj_header endRefreshing];
    }];
}


-(NSArray *)runeVeilFountain {
    if (!_runeVeilFountain) {
        _runeVeilFountain = @[];
    }
    return _runeVeilFountain;
}


@end
