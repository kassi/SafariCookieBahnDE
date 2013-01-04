//
//  main.m
//  SafariCookieBahnDE
//
//  Created by Karsten Silkenbäumer on 04.01.13.
//  Copyright (c) 2013 kluks.de. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHTTPCookieStorage *cookieStorage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
        for (NSHTTPCookie *c in [cookieStorage cookies])
        {
            if ( [[c domain] isEqualToString:@".bahn.de"] ) {
                if ( [[c name] hasPrefix:@"DB4-pb"] ) {
                    NSDate *date = [[c expiresDate] dateByAddingTimeInterval:60*60*24*360];
                    
                    NSDictionary *prop = [c properties];
                    [prop setValue:date forKey:@"Expires"];
                    
                    NSHTTPCookie *newCookie = [NSHTTPCookie cookieWithProperties:prop];
                    
                    [cookieStorage setCookie:newCookie];
                }
            }
        }
        
    }
    return 0;
}
