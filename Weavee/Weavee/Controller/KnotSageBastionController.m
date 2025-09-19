//
//  KnotSageBastionController.m
//  Weavee
//
//   
//

#import "KnotSageBastionController.h"
#import "KnotSageBastionTableCell.h"
#import "KnotSageTableCell.h"
#import "KnotBastionTableCell.h"
#import "AFNetworking.h"
#import "Weavee.h"
#import "LinkFibreCascadeController.h"
#import "FlareWispHollowController.h"

@interface KnotSageBastionController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *silkAuraHall;

@end

@implementation KnotSageBastionController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self liftTwineHavenWithCrestBeacon];
    self.silkAuraHall.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)liftTwineHavenWithCrestBeacon {
    
    [self.silkAuraHall registerNib:[UINib nibWithNibName:@"KnotSageBastionTableCell" bundle:nil] forCellReuseIdentifier:@"KnotSageBastionTableCell"];
    [self.silkAuraHall registerNib:[UINib nibWithNibName:@"KnotSageTableCell" bundle:nil] forCellReuseIdentifier:@"KnotSageTableCell"];
    [self.silkAuraHall registerNib:[UINib nibWithNibName:@"KnotBastionTableCell" bundle:nil] forCellReuseIdentifier:@"KnotBastionTableCell"];
    
    self.silkAuraHall.delegate = self;
    self.silkAuraHall.dataSource = self;
    self.silkAuraHall.alwaysBounceVertical = YES;
    self.silkAuraHall.bounces = YES;
    self.silkAuraHall.estimatedRowHeight = 0;
    
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
        KnotSageBastionTableCell * cell = [tableView dequeueReusableCellWithIdentifier:@"KnotSageBastionTableCell"];
        [cell latticeFrostConverge];
        return cell;
    }else if (indexPath.row == 1) {
        KnotSageTableCell * cell = [tableView dequeueReusableCellWithIdentifier:@"KnotSageTableCell"];
        [cell latticeFrostConverge];
        return cell;
    }else {
        KnotBastionTableCell * cell = [tableView dequeueReusableCellWithIdentifier:@"KnotBastionTableCell"];
        [cell latticeFrostConverge];
        return cell;
    }
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



@end
