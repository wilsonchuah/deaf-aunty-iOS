//
//  EnterRepetitionViewController.m
//  AmnesiacDeafAunty
//
//  Created by WIL SON CHUAH on 3/28/16.
//  Copyright © 2016 WIL SON CHUAH. All rights reserved.
//

#import "EnterRepetitionViewController.h"

@interface EnterRepetitionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *auntyResponseLabel;

@end

@implementation EnterRepetitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if([[self.speech uppercaseString] isEqualToString:self.speech]){
        if ([self.speech isEqualToString:@"I love ya, aunty."]){
            self.auntyResponseLabel.text = @"GOODBYE DEAR";
        } else {
            self.auntyResponseLabel.text = @"NO,WE CAN'T DO THAT";
        }
    } else {
        self.auntyResponseLabel.text = @"HUH?SPEAK UP,WILSON";
    }
    // Do any additional setup after loading the view.
}




@end
