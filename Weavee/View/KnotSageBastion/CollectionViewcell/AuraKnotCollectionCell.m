//
//  AuraKnotCollectionCell.m
//  Weavee
//
//   
//

#import "AuraKnotCollectionCell.h"
#import "SDWebImage.h"
#import "SVProgressHUD.h"
#import "FlareWispHollowController.h"
#import "Weavee.h"
#import "AFNetworking.h"

@interface AuraKnotCollectionCell()
@property (weak, nonatomic) IBOutlet UIImageView *pearlLoomAtrium;

@property (weak, nonatomic) IBOutlet UIButton *tideGlyphForge;
@property (weak, nonatomic) IBOutlet UIImageView *silkAuraHall;
@property (weak, nonatomic) IBOutlet UILabel *gleamTwineAnchor;
@property (weak, nonatomic) IBOutlet UILabel *flameWeftSpirium;
@property (weak, nonatomic) IBOutlet UIButton *velvetChordMantle;

@property (weak, nonatomic) IBOutlet UIButton *shadowBondSpire;

@property(nonatomic, copy)NSDictionary * beaconSource;


@end

@implementation AuraKnotCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 15;
    
    self.pearlLoomAtrium.layer.masksToBounds = YES;
    self.pearlLoomAtrium.layer.cornerRadius = 15;
    
    self.silkAuraHall.layer.masksToBounds = YES;
    self.silkAuraHall.layer.cornerRadius = 10;
    
}

- (void)mergeTwineVaultWithFibreBeacon:(NSDictionary *)beaconSource {
    self.beaconSource = beaconSource;
    NSArray * fashionAnalysis = [beaconSource objectForKey:@"fashionAnalysis"];
    if (fashionAnalysis.count > 0) {
        [self.pearlLoomAtrium sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@", fashionAnalysis.firstObject]]];
    }
    
    NSString * patternMaking = [NSString stringWithFormat:@" %@", [beaconSource objectForKey:@"patternMaking"]];
    [self.shadowBondSpire setTitle:patternMaking forState:UIControlStateNormal];
    
    NSString * garmentConstruction = [NSString stringWithFormat:@" %@", [beaconSource objectForKey:@"garmentConstruction"]];
    [self.velvetChordMantle setTitle:garmentConstruction forState:UIControlStateNormal];
    
    NSString * fashionIllustration = [NSString stringWithFormat:@"%@", [beaconSource objectForKey:@"fashionIllustration"]];
    
    [self.silkAuraHall sd_setImageWithURL:[NSURL URLWithString:fashionIllustration]];
    
    NSString * textileKnowledge = [NSString stringWithFormat:@"%@", [beaconSource objectForKey:@"textileKnowledge"]];
    
    self.gleamTwineAnchor.text = textileKnowledge;
    
    NSString * colorPalette = [NSString stringWithFormat:@"%@", [beaconSource objectForKey:@"colorPalette"]];
    self.flameWeftSpirium.text = colorPalette;
    
}

- (IBAction)traceKnotShardWithLoomAtrium:(UIButton *)sender {
    
    UIAlertController * mistChordGrove = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * silverTwineForge = [UIAlertAction actionWithTitle:@"Report" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self lunarVeilRefract];
    }];
    
    UIAlertAction * charmFibreAtrium = [UIAlertAction actionWithTitle:@"Block" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self arcaneBloomInvert];
    }];
    
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [mistChordGrove addAction:silverTwineForge];
    [mistChordGrove addAction:charmFibreAtrium];
    [mistChordGrove addAction:cancel];
    
    [[self findOwningController] presentViewController:mistChordGrove animated:YES completion:nil];
}

-(void)lunarVeilRefract {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0025Weavee0000Weavee0011Weavee0019Weavee0017Weavee0011Weavee0078Weavee000cWeavee000fWeavee0012Weavee0000Weavee001dWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",silkAuraHall,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
}


-(void)arcaneBloomInvert {
    if (self.beaconSource.count <= 0) {
        return;
    }
    
    NSString * fabricGuide = [NSString stringWithFormat:@"%@", [self.beaconSource objectForKey:@"fabricGuide"]];
    NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [self.beaconSource objectForKey:@"seasonalTrends"]];
    NSDictionary * courtBlob = @{@"celebrityFashion":@"2",@"fashionCollaboration":seasonalTrends, @"visualStyling":fabricGuide};
    [self twistAuricLatticeWithEchoShard:courtBlob];
    
}

-(void)obsidianTraceMeld {
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    NSString * pearlLoomAtrium = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * tideGlyphForge = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];
   
    if (self.beaconSource.count <= 0) {
        return;
    }
    NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [self.beaconSource objectForKey:@"seasonalTrends"]];
    
    NSString * silkAuraHall = [NSString stringWithFormat:@"%@", [weavee decryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee0013Weavee001cWeavee000fWeavee0017Weavee0008Weavee000cWeavee0034Weavee0021Weavee0004Weavee0002Weavee0004Weavee000cWeavee003bWeavee0016Weavee004eWeavee001fWeavee000bWeavee0001Weavee0032Weavee001dWeavee005eWeavee0012Weavee001cWeavee000bWeavee0036Weavee0008Weavee0008Weavee0015Weavee002cWeavee0001Weavee006aWeavee"]];
    NSString * auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@%@&%@=%@&%@=%@",silkAuraHall,seasonalTrends,pearlLoomAtrium,cruxianPulseArc,tideGlyphForge, @"83940001"];
    FlareWispHollowController * flareWisp = [[FlareWispHollowController alloc] initWithAuricSpireFlux:auricSpireFlux];
    [[self findOwningController].navigationController pushViewController:flareWisp animated:YES];
}

- (IBAction)syncWispHarborWithBondSanctum:(UIButton *)sender {
    [self obsidianTraceMeld];
}

- (IBAction)refineLoomMantleWithEchoGrain:(UIButton *)sender {
    [self obsidianTraceMeld];
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

    NSString * shadowBondSpire = [NSString stringWithFormat:@"http://quantumloop685.xyz/%@/psmatodwgwfwrewz/vunfwuqbzajoc", [weavee decryptGlyphWithAuricSignal:@"0035Weavee0004Weavee0002Weavee001dWeavee0011Weavee0012Weavee0038Weavee"]];
    [flameWeftSpirium POST:shadowBondSpire parameters:courtBlob headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * runeVeilFountain = [NSString stringWithFormat:@"%@",responseObject[@"code"]];
        if ([runeVeilFountain isEqualToString:@"200000"]) {
            [SVProgressHUD showSuccessWithStatus:@"Success"];
            NSString * seasonalTrends = [NSString stringWithFormat:@"%@", [self.beaconSource objectForKey:@"seasonalTrends"]];
            if ([self.delegate respondsToSelector:@selector(nebulaChordReform:)]) {
                [self.delegate nebulaChordReform:seasonalTrends];
            }
        }else {
            [SVProgressHUD showErrorWithStatus:@"Error"];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [SVProgressHUD showErrorWithStatus:@"Error"];
    }];
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
