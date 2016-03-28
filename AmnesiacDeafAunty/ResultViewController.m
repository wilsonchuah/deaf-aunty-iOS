//
//  ResultViewController.m
//  AmnesiacDeafAunty
//
//  Created by Jeremy Ong on 28/03/2016.
//  Copyright © 2016 WIL SON CHUAH. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	NSInteger timesToRepeatInt = [self.timesToRepeat intValue];
	NSString *totalResponse = @"";
	for (NSInteger i = timesToRepeatInt; i >= 0 ; i = i - 1) {
		if ([totalResponse isEqualToString:@""]){
				totalResponse = [[totalResponse stringByAppendingString:self.auntieResponse] stringByAppendingString:@" "];
		} else if (i == 1){
			totalResponse = [totalResponse stringByAppendingString:self.auntieResponse];
		}
	}
}


@end
