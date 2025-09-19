//
//  KnotSageCollectionCell.m
//  Weavee
//
//   
//

#import "KnotSageCollectionCell.h"
#import "AFNetworking.h"
#import "Weavee.h"
#import "SDWebImage.h"
#import "SVProgressHUD.h"
#import "LinkFibreCascadeController.h"

@interface KnotSageCollectionCell()

@property (weak, nonatomic) IBOutlet UIView *auricSpireFlux;
@property (weak, nonatomic) IBOutlet UIView *braidHaloGrain;
@property (weak, nonatomic) IBOutlet UIImageView *prismLoomShard;
@property (weak, nonatomic) IBOutlet UILabel *echoWispCrest;
@property (weak, nonatomic) IBOutlet UIButton *glyphTideAerie;

@property(nonatomic, copy)NSDictionary * anchorNodes;

@end

@implementation KnotSageCollectionCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    self.auricSpireFlux.layer.masksToBounds = YES;
    self.auricSpireFlux.layer.cornerRadius = 25;
    self.auricSpireFlux.layer.borderWidth = 1;
    self.auricSpireFlux.layer.borderColor = [[UIColor colorNamed:@"#5C1440"] CGColor];
    
    self.braidHaloGrain.layer.masksToBounds = YES;
    self.braidHaloGrain.layer.cornerRadius = 21;
    self.braidHaloGrain.layer.borderWidth = 1;
    self.braidHaloGrain.layer.borderColor = [[UIColor colorNamed:@"#8526AF"] CGColor];
    
    self.prismLoomShard.layer.masksToBounds = YES;
    self.prismLoomShard.layer.cornerRadius = 20;
    
}

- (IBAction)filterRuneHavenWithTideForge:(UIButton *)sender {
    
    Weavee * weavee = [[Weavee alloc] init];
    NSString * cruxianPulseArc = [weavee warpFibreCrestWithLoomTide:@"cruxianPulseArc"];
    if ([cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *auricStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        LinkFibreCascadeController * linkFibre = [auricStoryboard instantiateViewControllerWithIdentifier:@"LinkFibreCascadeController"];
        [[self findOwningController].navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    if (self.anchorNodes.count <= 0) {
        return;
    }
    NSString * styleDiary = [NSString stringWithFormat:@"%@", [self.anchorNodes objectForKey:@"styleDiary"]];
    NSDictionary * courtBlob = @{@"celebrityFashion":@"1",@"visualStyling":styleDiary};
    [self twistAuricLatticeWithEchoShard:courtBlob];
}

- (void)traceVelvetRuneWithPulseAnchor:(NSDictionary *)anchorNodes {
    self.anchorNodes = anchorNodes;
    NSString * trendAlert = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"trendAlert"]];
    self.echoWispCrest.text = trendAlert;
    NSString * streetStyle = [NSString stringWithFormat:@"%@", [anchorNodes objectForKey:@"streetStyle"]];
    [self.prismLoomShard sd_setImageWithURL:[NSURL URLWithString:streetStyle] placeholderImage:[UIImage imageNamed:@"gleamBondSpire"]];
    
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
