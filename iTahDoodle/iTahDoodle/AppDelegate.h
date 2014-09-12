//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <UIKit/UIKit.h>

//  Declare a helper function that we will use to get a path
//  to the location on disk where we can save the to-do list
NSString *docPath(void);

@interface AppDelegate : UIResponder
<UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton    *insertButton;
    
    NSMutableArray *tasks;
}

- (void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
