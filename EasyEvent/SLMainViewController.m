//
//  SLMainViewController.m
//  EasyEvent
//
//  Created by Sean Levin on 6/5/14.
//  Copyright (c) 2014 Sean Levin. All rights reserved.
//

#import "SLMainViewController.h"
#import "SLListenerView.h"
#import "SLButtonTapEvent.h"

@interface SLMainViewController ()

@end

@implementation SLMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    SLListenerView *lv = [[SLListenerView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    [self.view addSubview:lv];
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeSystem];
    [bt setTitle:@"Change" forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    bt.frame = CGRectMake(110, 300, 100, 50);
    [self.view addSubview:bt];
}

- (void)buttonTouched:(id)sender
{
    SLButtonTapEvent *evt = [[SLButtonTapEvent alloc] initWithColor:[UIColor redColor]];
    [evt trigger];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
