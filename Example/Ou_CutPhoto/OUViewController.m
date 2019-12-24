//
//  OUViewController.m
//  Ou_CutPhoto
//
//  Created by 1096438749@qq.com on 12/23/2019.
//  Copyright (c) 2019 1096438749@qq.com. All rights reserved.
//

#import "OUViewController.h"
#import "TOCropViewController.h"

@interface OUViewController ()

@end

@implementation OUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIImage *pic = [UIImage imageNamed:@"splash.jpg"];
    UIImage *img = [UIImage imageWithData:UIImageJPEGRepresentation(pic,1)];

    TOCropViewController *vc = [[TOCropViewController alloc] initWithCroppingStyle:TOCropViewCroppingStyleDefault image:img];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
