//
//  IOPViewController.m
//  IOPSample
//
//  Created by Jakub Tucholski on 5/6/14.
//  Copyright (c) 2014 Jakub Tucholski. All rights reserved.
//

#import "IOPViewController.h"

@interface IOPViewController ()
@property (weak, nonatomic) IBOutlet UILabel *chicagoLabel;
@property (weak, nonatomic) IBOutlet UILabel *bhamLabel;
@property (weak, nonatomic) IBOutlet UILabel *beijingLabel;
@property (weak, nonatomic) IBOutlet UILabel *sanfranLabel;
@property (weak, nonatomic) IBOutlet UILabel *annarborLabel;

@end

@implementation IOPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)chicagoPressed:(id)sender {
    // query server for Chicago weather
    self.chicagoLabel.text = @"REALLY COLD";
}
- (IBAction)bhamPressed:(id)sender {
    // query server for Bham weather
    self.bhamLabel.text = @"REALLY WARM";
}
- (IBAction)beijingPressed:(id)sender {
    // query server for beijing Weather
    self.beijingLabel.text = @"Not too warm";
}
- (IBAction)sanfranPressed:(id)sender {
    // query server for SF weather
    self.sanfranLabel.text = @"nice all year";
}
- (IBAction)annarborPressed:(id)sender {
    // query server for Ann Arbor Weather
    self.annarborLabel.text = @"Very cold";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
