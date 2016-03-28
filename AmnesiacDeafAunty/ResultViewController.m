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

//	self.auntieResponse = [[NSMutableAttributedString alloc] initWithString:@"SDaaergawe"];
	
	NSMutableAttributedString *totalResponse = [[NSMutableAttributedString alloc] initWithString:@""];
	
	for (NSInteger i = timesToRepeatInt; i > 0 ; i = i - 1) {
		if([totalResponse length] == 0){
			NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithAttributedString:self.auntieResponse];
			
			NSRange rangeBold = NSMakeRange(0, [self.auntieResponse length]);
			
			UIFont *fontText = [UIFont boldSystemFontOfSize:20];
			NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];

			[attrString setAttributes:dictBoldText range:rangeBold];
			
			[totalResponse appendAttributedString:attrString];
//			[totalResponse beginEditing];
			[totalResponse addAttribute:NSFontAttributeName
														value:[UIFont fontWithName:@"Helvetica-Bold" size:100]
														range:NSMakeRange(0, [totalResponse length])];
//			[totalResponse endEditing];
			[totalResponse appendAttributedString:[[NSMutableAttributedString alloc] initWithString:@"\n"]];
		} else {
			[totalResponse appendAttributedString:self.auntieResponse];
			[totalResponse appendAttributedString:[[NSMutableAttributedString alloc] initWithString:@"\n"]];
		}
	}

	self.textView.attributedText = totalResponse;
	
}


@end
