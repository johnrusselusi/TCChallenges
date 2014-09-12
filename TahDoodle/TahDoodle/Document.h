//
//  Document.h
//  TahDoodle
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableViewer;
}

- (IBAction)createNewItem:(id)sender;

@end
