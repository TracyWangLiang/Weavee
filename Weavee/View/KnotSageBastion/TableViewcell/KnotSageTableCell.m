//
//  KnotSageTableCell.m
//  Weavee
//
//   
//

#import "KnotSageTableCell.h"
#import "KnotSageCollectionCell.h"
#import "AFNetworking.h"
#import "Weavee.h"
#import "FlareWispHollowController.h"

@interface KnotSageTableCell()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *flareKnotBeacon;
@property(nonatomic, copy)NSArray * runeVeilFountain;
@property (weak, nonatomic) IBOutlet UIButton *pulseWeftHaven;

@end

@implementation KnotSageTableCell

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
    
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"KnotSageCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"KnotSageCollectionCell"];
    
    self.flareKnotBeacon.contentInset = UIEdgeInsetsMake(0, 11, 0, 11);
    [self latticeFrostConverge];
    
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 8;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 8;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(72, 98);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.runeVeilFountain.count;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    KnotSageCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"KnotSageCollectionCell" forIndexPath:indexPath];
    NSDictionary * anchorNodes = [self.runeVeilFountain objectAtIndex:indexPath.row];
    [cell traceVelvetRuneWithPulseAnchor:anchorNodes];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * anchorNodes = [self.runeVeilFountain objectAtIndex:indexPath.row];
    NSString * styleDiary = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"styleDiary"]];
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee003fWeavee000aWeavee000cWeavee0013Weavee0015Weavee0004Weavee0030Weavee0000Weavee004eWeavee001fWeavee000bWeavee0001Weavee0032Weavee001dWeavee005eWeavee0003Weavee0016Weavee0000Weavee0025Weavee002cWeavee0005Weavee004bWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,styleDiary,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
    
    
}

- (void)latticeFrostConverge {
    NSDictionary * courtBlob = @{@"fashionInspiration":@"83940001"};
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
    
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/xfsamhgkriz/znxwzoopnvoa", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [flameWeftSpirium POST:shadowBondSpire parameters:courtBlob headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            self.runeVeilFountain = responseObject[@"data"];
            [self.flareKnotBeacon reloadData];
            self.pulseWeftHaven.hidden = self.runeVeilFountain.count > 0;
            self.flareKnotBeacon.hidden = !self.pulseWeftHaven.isHidden;
        }else {
            self.pulseWeftHaven.hidden = self.runeVeilFountain.count > 0;
            self.flareKnotBeacon.hidden = !self.pulseWeftHaven.isHidden;
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        self.pulseWeftHaven.hidden = self.runeVeilFountain.count > 0;
        self.flareKnotBeacon.hidden = !self.pulseWeftHaven.isHidden;
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
