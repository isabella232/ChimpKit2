//
//  SampleController.m
//  ChimpKit
//
//  Created by Christopher Burnett on 2/23/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import "SampleController.h"
#import "CKDialogController.h"

@implementation SampleController

- (IBAction)showDialog
{
  CKDialogController *dialog = [[CKDialogController alloc] initWithDelegate:self];
  
  dialog.onSuccess = @selector(signupDidSucceed:);
  dialog.onFailure = @selector(signupDidFail:);
  
  [dialog show];
}

- (void)signupDidSucceed:(id)data
{
  NSLog(@"sucess!!");
}

- (void)signupDidFail:(id)data
{
  NSLog(@"fail!!");
}

- (BOOL)validateEmailAddress:(NSString*)address
{
  if ([address isEqualToString:@"me@me.com"]) {
    return YES;
  }else{
    return NO;
  }
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end