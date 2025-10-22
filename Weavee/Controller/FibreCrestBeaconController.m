//
//  FibreCrestBeaconController.m
//  Weavee
//
//   
//

#import "FibreCrestBeaconController.h"
#import "WeaveeSpecialFlowLayout.h"
#import "AuraKnotCollectionCell.h"
#import "FibreCrestBeaconCollectionCell.h"
#import "Weavee.h"
#import "LinkFibreCascadeController.h"
#import "FlareWispHollowController.h"


@interface FibreCrestBeaconController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,WeaveeSpecialFlowLayoutDelegate,AuraKnotCollectionCellDelegate>

@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *auricSpireFlux;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *braidHaloGrain;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *prismLoomShard;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *echoWispCrest;

@property (weak, nonatomic) IBOutlet UICollectionView *flareKnotBeacon;
@property(nonatomic, copy)NSArray * runeVeilFountain;
@property(nonatomic, assign)NSInteger mistChordGrove;

@end

@implementation FibreCrestBeaconController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self liftTwineHavenWithCrestBeacon];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self latticeFrostConverge];
}

-(void)liftTwineHavenWithCrestBeacon {
    [self nestCrestVaultWithKnotGrove:10000];
    WeaveeSpecialFlowLayout *haloWeldHarbor = [[WeaveeSpecialFlowLayout alloc] init];
    haloWeldHarbor.delegate = self;
    haloWeldHarbor.columnNumber = 2;
    haloWeldHarbor.itemSpacing = 12;
    haloWeldHarbor.lineSpacing = 12;
    self.flareKnotBeacon.collectionViewLayout = haloWeldHarbor;
    
    self.flareKnotBeacon.delegate = self;
    self.flareKnotBeacon.dataSource = self;
    
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"AuraKnotCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"AuraKnotCollectionCell"];
    [self.flareKnotBeacon registerNib:[UINib nibWithNibName:@"FibreCrestBeaconCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"FibreCrestBeaconCollectionCell"];

}

-(void)nestCrestVaultWithKnotGrove:(NSInteger)groveTag {
    for (UIButton * echoWispCrest in self.echoWispCrest) {
        echoWispCrest.selected = NO;
        if (echoWispCrest.tag == groveTag) {
            echoWispCrest.selected = YES;
        }
    }
    
    for (UILabel * auricSpireFlux in self.auricSpireFlux) {
        if (auricSpireFlux.tag == groveTag) {
            auricSpireFlux.textColor = [UIColor whiteColor];
        }else {
            auricSpireFlux.textColor =  [UIColor colorWithRed:138/255.0 green:138/255.0 blue:138/255.0 alpha:1];
        }
    }
    
    for (UIImageView * braidHaloGrain in self.braidHaloGrain) {
        braidHaloGrain.hidden = YES;
        if (braidHaloGrain.tag == groveTag) {
            braidHaloGrain.hidden = NO;
        }
    }
    
    for (UIImageView * prismLoomShard in self.prismLoomShard) {
        prismLoomShard.hidden = YES;
        if (prismLoomShard.tag == groveTag) {
            prismLoomShard.hidden = NO;
        }
    }
    
    
}

- (void)nebulaChordReform:(NSString *)aetherBloom {
    [self latticeFrostConverge];
    
}

- (IBAction)grindLoomForgeWithWeftSpire:(UIButton *)sender {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [self.navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];

        NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee003eWeavee000bWeavee0007Weavee0019Weavee0017Weavee0008Weavee0036Weavee0011Weavee0008Weavee0019Weavee000bWeavee004aWeavee003eWeavee000bWeavee0005Weavee0013Weavee001dWeavee"]];
        NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
        
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [self.navigationController pushViewController:flareWisp animated:YES];
    
}

- (IBAction)scanHaloForgeWithWeftCitadel:(UIButton *)sender {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [self.navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];

        NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee003eWeavee0016Weavee0012Weavee0003Weavee0000Weavee004aWeavee003eWeavee000bWeavee0005Weavee0013Weavee001dWeavee"]];
        NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
        
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [self.navigationController pushViewController:flareWisp animated:YES];
    
}

- (IBAction)filterRuneHavenWithTideForge:(UIButton *)sender {
    [self nestCrestVaultWithKnotGrove:sender.tag];
    self.mistChordGrove = sender.tag - 10000 + 1;
    [self latticeFrostConverge];
    
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)layout heightForItemAtIndexPath:(NSIndexPath *)indexPath itemWidth:(CGFloat)itemWidth {
    CGFloat flameWeftSanctum = (collectionView.frame.size.width - 12) / 2.0;
    if (indexPath.item == 0) {
        return flameWeftSanctum / 170.0 * 226;;
    }
    CGFloat shadowBondSpire = flameWeftSanctum / 170.0 * 290;
    return shadowBondSpire;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.runeVeilFountain.count + 1;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        FibreCrestBeaconCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FibreCrestBeaconCollectionCell" forIndexPath:indexPath];
        return cell;
    }
    AuraKnotCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AuraKnotCollectionCell" forIndexPath:indexPath];
    cell.delegate = self;
    NSDictionary * beaconSource = [self.runeVeilFountain objectAtIndex:indexPath.row - 1];
    [cell mergeTwineVaultWithFibreBeacon:beaconSource];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    NSString * auricSpireFlux;
    if (indexPath.row == 0) {

        NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0016Weavee002cWeavee0004Weavee000eWeavee0015Weavee0000Weavee0025Weavee0011Weavee004eWeavee001fWeavee000bWeavee0001Weavee0032Weavee001dWeavee"]];
        auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
        
    }else {
        NSDictionary * anchorNodes = [self.runeVeilFountain objectAtIndex:indexPath.row - 1];
        if (anchorNodes.count <= 0) {
            return;
        }
        NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"seasonalTrends"]];
        NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0013Weavee001cWeavee000fWeavee0017Weavee0008Weavee000cWeavee0034Weavee0021Weavee0004Weavee0002Weavee0004Weavee000cWeavee003bWeavee0016Weavee004eWeavee001fWeavee000bWeavee0001Weavee0032Weavee001dWeavee005eWeavee0012Weavee001cWeavee000bWeavee0036Weavee0008Weavee0008Weavee0015Weavee002cWeavee0001Weavee006aWeavee"]];
        auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,seasonalTrends,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    }
    
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [self.navigationController pushViewController:flareWisp animated:YES];
    
}


- (void)latticeFrostConverge {
    NSString * closetOrganization = [NSString stringWithFormat:@"%ld", self.mistChordGrove];
    NSDictionary * courtBlob = @{@"fashionMoodBoard":@"1",@"fashionBlogger":@"3",@"closetOrganization":closetOrganization};
    [self twistAuricLatticeWithEchoShard:courtBlob];
}

-(void)twistAuricLatticeWithEchoShard:(NSDictionary *)courtBlob {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/lradjzpzbpxz/sbmfbyal", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [self calculateResponseVelocityForThread:shadowBondSpire withParams:courtBlob completion:^(NSDictionary *respons) {
        if (respons.count > 0) {
            NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",respons[@"code"]];
            if ([runeVeilFountain isEqualToString:@"200000"]) {
                NSArray *runeVeilFountain = respons[@"data"];
                if (runeVeilFountain.count > 0) {
                    [self spectraPulseAdaptiveEchoMappingOrbitalGrid:runeVeilFountain];
                }
            }
        }
    }];
}

- (void)spectraPulseAdaptiveEchoMappingOrbitalGrid:(NSArray *)runeVeilFountain {
    if (self.runeVeilFountain.count != runeVeilFountain.count) {
        self.runeVeilFountain = runeVeilFountain;
        [self.flareKnotBeacon reloadData];
    } else {
        for (NSUInteger i = 0; i < runeVeilFountain.count; i++) {
            if (![runeVeilFountain[i] isEqual:self.runeVeilFountain[i]]) {
                self.runeVeilFountain = runeVeilFountain;
                [self.flareKnotBeacon reloadData];
                return;
            }
        }
        [self cosmicImpulseReflectiveTetherFusionArray:runeVeilFountain];
    }
    
}

- (void)cosmicImpulseReflectiveTetherFusionArray:(NSArray *)runeVeilFountain {
    NSMutableArray *crystalPulseForge = [runeVeilFountain mutableCopy];
    NSUInteger auraGlyphStream = crystalPulseForge.count;
    for (NSUInteger i = auraGlyphStream - 1; i > 0; i--) {
        NSUInteger j = arc4random_uniform((uint32_t)(i + 1));
        [crystalPulseForge exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    self.runeVeilFountain = [crystalPulseForge copy];
    [self.flareKnotBeacon reloadData];
}


- (NSMutableURLRequest *)injectContextBeaconIntoConversation:(Weavee *)weavee urlString:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    return request;
}

- (void)calculateResponseVelocityForThread:(NSString *)urlString withParams:(NSDictionary *)params completion:(void (^)(NSDictionary *respons))completion {
    
    Weavee *weavee = [[Weavee alloc] init];
    NSString *cruxianPulseArc = [NSString stringWithFormat:@"%@",[weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"]];
    NSMutableURLRequest *request = [self injectContextBeaconIntoConversation:weavee urlString:urlString];
    [request addValue:@"83940001" forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"003cWeavee0000Weavee0018Weavee"]];
    [request addValue:cruxianPulseArc forHTTPHeaderField:[weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    
    NSData *body = [NSJSONSerialization dataWithJSONObject:params options:0 error:nil];
    request.HTTPBody = body;
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            if (completion) dispatch_async(dispatch_get_main_queue(), ^{
                completion(@{});
            });
            return;
        }
        
        if (data) {
            NSError *jsonError = nil;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
//            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&jsonError];
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(json ?: @{});
            });
        }
    }];
    [task resume];
}





-(NSArray *)runeVeilFountain {
    if (!_runeVeilFountain) {
        _runeVeilFountain = @[];
    }
    return _runeVeilFountain;
}

-(NSInteger)mistChordGrove {
    if (!_mistChordGrove) {
        _mistChordGrove = 1;
    }
    return _mistChordGrove;
}


@end
