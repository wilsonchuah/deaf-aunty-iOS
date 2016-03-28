//
//  EnterRepetitionViewController.m
//  AmnesiacDeafAunty
//
//  Created by WIL SON CHUAH on 3/28/16.
//  Copyright © 2016 WIL SON CHUAH. All rights reserved.
//

#import "EnterRepetitionViewController.h"
#import "ResultViewController.h"

@interface EnterRepetitionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *auntyResponseLabel;
@property (weak, nonatomic) IBOutlet UITextField *timesRepeated;

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	ResultViewController *destination = segue.destinationViewController;
	destination.timesToRepeat = self.timesRepeated.text;
	destination.auntieResponse = self.auntyResponseLabel.text;
 
}




@end
