//
//  TestAPI.m
//  TestProject
//
//  Created by Yosemite on 5/25/16.
//  Copyright © 2016 Christian.Dimitrov. All rights reserved.
//

#import "TestAPI.h"
#import "AppData.h"
#import <AFNetworking/AFNetworking.h>

@implementation TestAPI

#pragma mark - Param Check

/**
 A function that check if any param is nil
 @param1 the first param
 @param2 the second number
 ...
 @returns bool value for check result
 */
+ (BOOL)checkStringParamsNil:(NSString*)param1, ... NS_REQUIRES_NIL_TERMINATION{
    va_list args;
    va_start(args, param1);
    for (NSString *arg = param1; arg != nil; arg = va_arg(args, NSString*))
    {
        if (!arg || arg.length < 1){
            return NO;
        }
    }
    va_end(args);
    
    return YES;
}

+ (void) getKPIinfoWithUsername:(NSString *)username
                       password:(NSString *)password
             andCompletionBlock:(void(^)(BOOL, id))completionBlock{
    //Check Internet Access
    if (![[AppData appData] wifiAvailable]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"No internet connection! Please check your wifi or cell signal and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
        completionBlock(NO, @"Error");
        return;
    }
    /////////////////////////
    
    if (![TestAPI checkStringParamsNil:username, password, nil]) {
        completionBlock(NO, @"Error");
        return;
    }
    
    NSString * url = [AppData appData].getBaseUrl;
    url = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *params = @{@"username": username, @"password": password};
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        
        NSString *errorMsg;
        if (responseObject && (errorMsg = [responseObject objectForKey:@"Error"])) {
            completionBlock(NO, errorMsg);
        }else{
            completionBlock(YES, responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        completionBlock(NO, @"Error");
    }];
}

@end
