//
//  KnotSageBastionController.m
//  Weavee
//
//   
//

#import "WCAFKKnotSageBastionController.h"
#import "WCAFKKnotSageBastionTableCell.h"
#import "WCAFKKnotSageTableCell.h"
#import "WCAFKKnotBastionTableCell.h"
#import "WCAFKWeavee.h"
#import "WCAFKLinkFibreCascadeController.h"
#import "WCAFKFlareWispHollowController.h"
#import "WCAFKWeaveeToast.h"
#import "NSString+WCAKFString.h"
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>


@interface WCAFKKnotSageBastionController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *WCAFK_silkAuraHall;

@end

@implementation WCAFKKnotSageBastionController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self WCAFKliftTwineHavenWithCrestBeacon];
    self.WCAFK_silkAuraHall.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self WCAFKrequestTrackingAuthorization];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)WCAFKrequestTrackingAuthorization {
    ATTrackingManagerAuthorizationStatus WCAFK_status = [ATTrackingManager trackingAuthorizationStatus];
    switch (WCAFK_status) {
        case ATTrackingManagerAuthorizationStatusNotDetermined: {
            [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self WCAFKhandleTrackingStatus:status];
                });
            }];
            break;
        }
        case ATTrackingManagerAuthorizationStatusRestricted:
        case ATTrackingManagerAuthorizationStatusDenied:
            break;
        case ATTrackingManagerAuthorizationStatusAuthorized:
            break;
    }
}

- (void)WCAFKhandleTrackingStatus:(ATTrackingManagerAuthorizationStatus)status {
    switch (status) {
        case ATTrackingManagerAuthorizationStatusAuthorized:
            break;
        case ATTrackingManagerAuthorizationStatusDenied:
            break;
        case ATTrackingManagerAuthorizationStatusRestricted:
            break;
        case ATTrackingManagerAuthorizationStatusNotDetermined:
            break;
    }
}



-(void)WCAFKliftTwineHavenWithCrestBeacon {
    
    [self.WCAFK_silkAuraHall registerNib:[UINib nibWithNibName:@"WCAFK_WCAFKKnotSageBastionTableCell".WCAKFchangeToString bundle:nil] forCellReuseIdentifier:@"WCAFK_WCAFKKnotSageBastionTableCell".WCAKFchangeToString];
    [self.WCAFK_silkAuraHall registerNib:[UINib nibWithNibName:@"WCAFK_WCAFKKnotSageTableCell".WCAKFchangeToString bundle:nil] forCellReuseIdentifier:@"WCAFK_WCAFKKnotSageTableCell".WCAKFchangeToString];
    [self.WCAFK_silkAuraHall registerNib:[UINib nibWithNibName:@"WCAFK_WCAFKKnotBastionTableCell".WCAKFchangeToString bundle:nil] forCellReuseIdentifier:@"WCAFK_WCAFKKnotBastionTableCell".WCAKFchangeToString];
    
    self.WCAFK_silkAuraHall.delegate = self;
    self.WCAFK_silkAuraHall.dataSource = self;
    self.WCAFK_silkAuraHall.alwaysBounceVertical = YES;
    self.WCAFK_silkAuraHall.bounces = YES;
    self.WCAFK_silkAuraHall.estimatedRowHeight = 0;
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.y <= 0) {
        scrollView.contentOffset = CGPointZero;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 350;
    }else if (indexPath.row == 1) {
        return 152;
    }else {
        return 210;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        WCAFKKnotSageBastionTableCell * WCAFK_cell = [tableView dequeueReusableCellWithIdentifier:@"WCAFK_WCAFKKnotSageBastionTableCell".WCAKFchangeToString];
        [WCAFK_cell WCAFKlatticeFrostConverge];
        return WCAFK_cell;
    }else if (indexPath.row == 1) {
        WCAFKKnotSageTableCell * WCAFK_cell = [tableView dequeueReusableCellWithIdentifier:@"WCAFK_WCAFKKnotSageTableCell".WCAKFchangeToString];
        [WCAFK_cell WCAFKlatticeFrostConverge];
        return WCAFK_cell;
    }else {
        WCAFKKnotBastionTableCell * WCAFK_cell = [tableView dequeueReusableCellWithIdentifier:@"WCAFK_WCAFKKnotBastionTableCell".WCAKFchangeToString];
        [WCAFK_cell WCAFKlatticeFrostConverge];
        return WCAFK_cell;
    }
}

- (IBAction)WCAFKgrindLoomForgeWithWeftSpire:(UIButton *)sender {
    WCAFKWeavee * WCAFK_weavee = [[WCAFKWeavee alloc] init];
    NSString *WCAFK_cruxianPulseArc = [WCAFK_weavee WCAFKwarpFibreCrestWithLoomTide:@"WCAFK_cruxianPulseArc".WCAKFchangeToString];
    if ([WCAFK_cruxianPulseArc isEqualToString:@""]) {
        UIStoryboard *WCAFK_auricStoryboard = [UIStoryboard storyboardWithName:@"WCAFK_Main".WCAKFchangeToString bundle:nil];
        WCAFKLinkFibreCascadeController * linkFibre = [WCAFK_auricStoryboard instantiateViewControllerWithIdentifier:@"WCAFK_LinkFibreCascadeController".WCAKFchangeToString];
        [self.navigationController pushViewController:linkFibre animated:YES];
        return;
    }
    
    NSString * WCAFK_pearlLoomAtrium = [NSString stringWithFormat:@"%@", [WCAFK_weavee WCAFKdecryptGlyphWithAuricSignal:@"0023Weavee000aWeavee000aWeavee0013Weavee000bWeavee"]];
    NSString * WCAFK_tideGlyphForge = [NSString stringWithFormat:@"%@", [WCAFK_weavee WCAFKdecryptGlyphWithAuricSignal:@"0036Weavee0015Weavee0011Weavee003fWeavee0021Weavee"]];

        NSString * WCAFK_silkAuraHall = [NSString stringWithFormat:@"%@", [WCAFK_weavee WCAFKdecryptGlyphWithAuricSignal:@"0027Weavee0004Weavee0006Weavee0013Weavee0016Weavee004aWeavee003eWeavee000bWeavee0007Weavee0019Weavee0017Weavee0008Weavee0036Weavee0011Weavee0008Weavee0019Weavee000bWeavee004aWeavee003eWeavee000bWeavee0005Weavee0013Weavee001dWeavee"]];
        NSString * WCAFK_auricSpireFlux = [NSString stringWithFormat:@"http://quantumloop685.xyz/#/%@?%@=%@&%@=%@",WCAFK_silkAuraHall,WCAFK_pearlLoomAtrium,WCAFK_cruxianPulseArc,WCAFK_tideGlyphForge, @"WCAFK_83940001".WCAKFchangeToString];
        
    WCAFKFlareWispHollowController * WCAFK_flareWisp = [[WCAFKFlareWispHollowController alloc] initWithAuricSpireFlux:WCAFK_auricSpireFlux];
    [self.navigationController pushViewController:WCAFK_flareWisp animated:YES];
    
    
}



@end
