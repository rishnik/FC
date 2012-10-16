//
//  Storage.m
//  FalseCall
//
//  Created by Nikita Pahadia on 10/16/12.
//  Copyright (c) 2012 Nikita Pahadia. All rights reserved.
//

#import "Storage.h"
@interface Storage ()


@property(nonatomic,assign) BOOL fileExists;

@property(nonatomic,retain) NSFileManager *fileManager;

- (BOOL) initializeCacheDirectory;

- (void) removeDirectoryAtPath:(NSString *)path;

- (BOOL) createCacheDirectoryAtPath:(NSString *)path;

- (BOOL) checkAndCreateDBAtPath:(NSString *)filePath;

- (BOOL) createDBAtPath:(NSString *)filePath;

- (void) createTableIfNotExists;

- (NSString *) getDocsDirPath;

- (NSString *) getDBPath;
@end

@implementation Storage

@synthesize fileManager, fileExists;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (BOOL) createDBAtPath:(NSString *)filePath {
    BOOL success = NO;
    @try {
        success =  [fileManager createFileAtPath:filePath contents:nil attributes:nil];
        if (success) {
            NSLog(@"cache file created");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"ex occured in createDBAtPath=%@",[exception description]);
    }
    return success;
}

- (BOOL) checkAndCreateDBAtPath:(NSString *)filePath {
    if ([fileManager fileExistsAtPath:filePath]) {
        NSLog(@"<<cache fil exists");
        return YES;
    } else return [self createDBAtPath:filePath];
}

- (BOOL) initializeCacheDirectory {
    return FALSE;
}

- (void) removeDirectoryAtPath:(NSString *)path {
    
}

- (BOOL) createCacheDirectoryAtPath:(NSString *)path {
    return FALSE;
}

- (void) createTableIfNotExists {
    
}

#pragma mark File Handling methods

- (NSString *) getDocsDirPath {
    //return [NSString stringWithFormat:@"%@/%@",[[NSBundle mainBundle] bundlePath],IAE_DIR_NAME];
    NSArray*	documentDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString*	path = nil;
	
	if (documentDir)
	{
		path = [documentDir objectAtIndex:0];
	}
	
	return path;
}

- (NSString *) getDBPath {
    return [[self getDocsDirPath] stringByAppendingPathComponent:@"ContactData.db"];
}


@end
