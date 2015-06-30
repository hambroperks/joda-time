//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/tz/DefaultNameProvider.java
//

#ifndef _OrgJodaTimeTzDefaultNameProvider_H_
#define _OrgJodaTimeTzDefaultNameProvider_H_

#include "J2ObjC_header.h"
#include "org/joda/time/tz/NameProvider.h"

@class JavaUtilLocale;

/**
 @brief The default name provider acquires localized names from DateFormatSymbols java.text.DateFormatSymbols .
 <p> DefaultNameProvider is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeTzDefaultNameProvider : NSObject < OrgJodaTimeTzNameProvider >

#pragma mark Public

- (instancetype)init;

- (NSString *)getNameWithJavaUtilLocale:(JavaUtilLocale *)locale
                           withNSString:(NSString *)id_
                           withNSString:(NSString *)nameKey;

- (NSString *)getShortNameWithJavaUtilLocale:(JavaUtilLocale *)locale
                                withNSString:(NSString *)id_
                                withNSString:(NSString *)nameKey;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeTzDefaultNameProvider)

FOUNDATION_EXPORT void OrgJodaTimeTzDefaultNameProvider_init(OrgJodaTimeTzDefaultNameProvider *self);

FOUNDATION_EXPORT OrgJodaTimeTzDefaultNameProvider *new_OrgJodaTimeTzDefaultNameProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzDefaultNameProvider)

#endif // _OrgJodaTimeTzDefaultNameProvider_H_
