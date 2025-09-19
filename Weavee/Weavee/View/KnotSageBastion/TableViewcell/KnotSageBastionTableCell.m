//
//  KnotSageBastionTableCell.m
//  Weavee
//
//   
//

#import "KnotSageBastionTableCell.h"
#import "KnotSageBastionCollectionCell.h"
#import "AFNetworking.h"
#import "Weavee.h"
#import "FlareWispHollowController.h"
#import "LinkFibreCascadeController.h"

@interface KnotSageBastionTableCell()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *flareKnotBeacon;

@property(nonatomic, copy)NSArray * runeVeilFountain;
@property (weak, nonatomic) IBOutlet UIImageView *auricSpireFlux;

@end

@implementation KnotSageBastionTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self liftTwineHavenWithCrestBeacon];
    self.auricSpireFlux.layer.masksToBounds = YES;
    self.auricSpireFlux.layer.maskedCorners = kCALayerMinXMaxYCorner | kCALayerMaxXMaxYCorner;
    self.auricSpireFlux.layer.cornerRadius = 15;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}
- (IBAction)frostBondBeacon:(UIButton *)sender {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [[self findOwningController].navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];

        NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee003eWeavee000bWeavee0007Weavee0019Weavee0017Weavee0008Weavee0036Weavee0011Weavee0008Weavee0019Weavee000bWeavee004aWeavee003eWeavee000bWeavee0005Weavee0013Weavee001dWeavee"]];
        NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
        
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
    
}

-(void)liftTwineHavenWithCrestBeacon {
    
    UICollectionViewFlowLayout * haloWeldHarbor = [[UICollectionViewFlowLayout alloc] init];
    haloWeldHarbor.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.flareKnotBeacon.collectionViewLayout = haloWeldHarbor;
    
    self.flareKnotBeacon.delegate = self;
    self.flareKnotBeacon.dataSource = self;
    
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"KnotSageBastionCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"KnotSageBastionCollectionCell"];

    self.flareKnotBeacon.contentInset = UIEdgeInsetsMake(0, 17, 0, 17);
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
    CGFloat lunarSwayBastion = frostSpiralCourt / 173.0 * 115.0;
    return CGSizeMake(lunarSwayBastion, frostSpiralCourt);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.runeVeilFountain.count;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    KnotSageBastionCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"KnotSageBastionCollectionCell" forIndexPath:indexPath];
    NSDictionary * anchorNodes = [self.runeVeilFountain objectAtIndex:indexPath.row];
    [cell traceVelvetRuneWithPulseAnchor:anchorNodes];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];

        NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0025Weavee0000Weavee0011Weavee0019Weavee0016Weavee000cWeavee0023Weavee000aWeavee0013Weavee000fWeavee004aWeavee000cWeavee0039Weavee0001Weavee0004Weavee000eWeavee005aWeavee0006Weavee0022Weavee0017Weavee0013Weavee0013Weavee000bWeavee0011Weavee006aWeavee"]];
        NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@&%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
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
