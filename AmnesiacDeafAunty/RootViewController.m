//
//  ViewController.m
//  AmnesiacDeafAunty
//
//  Created by WIL SON CHUAH on 3/28/16.
//  Copyright © 2016 WIL SON CHUAH. All rights reserved.
//

#import "RootViewController.h"
#import "EnterRepetitionViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UITextField *speechTextField;

@end

@implementation RootViewController

- (IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
		EnterRepetitionViewController *destination = segue.destinationViewController;
    
    destination.speech = self.speechTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
	if(self.speechTextField.text.length != 0){
		return YES;
	} else {
		return NO;
	}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
