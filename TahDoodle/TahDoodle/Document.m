//
//  Document.m
//  TahDoodle
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Document.h"

@implementation Document

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

#pragma mark - NSDocuments Overrides

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}

#pragma mark - Actions

- (IBAction)createNewItem:(id)sender
{
    // If there is no array yet, go ahead and create a new one to store our new task
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    [todoItems addObject:@"New Item"];
    
    //  -reloadData tells the tableView to refresh and ask its dataSource
    //  (which happens to be this BNRDocument object in this case)
    //  for new data to display
    [itemTableViewer reloadData];
    
    //  -updateChageCount: tell the application whether or not the document
    //  has unsaved changes. NSChangeDone flags the document as unsaved.
    [self updateChangeCount:NSChangeDone];
}

#pragma mark Data Source Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    return [todoItems count];
}

- (id)tableView:(NSTableView *)tableView
objectValueForTableColumn:(NSTableColumn *)tableColumn
            row:(NSInteger)row
{
    return [todoItems objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView
   setObjectValue:(id)object
   forTableColumn:(NSTableColumn *)tableColumn
              row:(NSInteger)row
{
    [self updateChangeCount:NSChangeDone];
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    NSData *data = [NSPropertyListSerialization
                    dataWithPropertyList:todoItems format:NSPropertyListXMLFormat_v1_0
                    options:0
                    error:outError];
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    todoItems = [NSPropertyListSerialization
                 propertyListWithData:data
                 options:NSPropertyListMutableContainers
                 format:NULL error:outError];
    return (todoItems != nil);
}

@end
