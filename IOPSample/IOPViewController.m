//
//  IOPViewController.m
//  IOPSample
//
//  Created by Jakub Tucholski on 5/6/14.
//  Copyright (c) 2014 Jakub Tucholski. All rights reserved.
//

#import "IOPViewController.h"

@interface IOPViewController ()

@end

@implementation IOPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)chicagoPressed:(id)sender {
    // query server for Chicago weather
}
- (IBAction)bhamPressed:(id)sender {
    // query server for Bham weather
}
- (IBAction)beijingPressed:(id)sender {
    // query server for beijing Weather
}
- (IBAction)sanfranPressed:(id)sender {
    // query server for SF weather
}
- (IBAction)annarborPressed:(id)sender {
    // query server for Ann Arbor Weather
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
