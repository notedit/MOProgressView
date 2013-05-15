//
//  MOViewController.m
//  testProgressBar
//
//  Created by notedit on 5/13/13.
//  Copyright (c) 2013 motiky. All rights reserved.
//

#import "MOViewController.h"
#import "MOProgressView.h"

@interface MOViewController ()

@end

@implementation MOViewController

{
    MOProgressView *progressView;
}

//@synthesize progressView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *progressImage = [UIImage imageNamed:@"full.png"];
    UIImage *trackImage = [UIImage imageNamed:@"progressbar.png"];
    
    //self.progressView = [[MOProgressView alloc] initWithFrame:self.progressView.frame];
    
       
    //[self.view addSubview:testProgress];
    
    progressView = [[MOProgressView alloc] initWithFrame:CGRectMake(10, 200, 292, 20) backgroundImage:trackImage foregroundImage:progressImage];
    
    [self.view addSubview:progressView];
    
    progressView.progress = 0.5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
