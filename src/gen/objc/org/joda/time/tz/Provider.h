//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/tz/Provider.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeTzProvider")
#ifdef RESTRICT_OrgJodaTimeTzProvider
#define INCLUDE_ALL_OrgJodaTimeTzProvider 0
#else
#define INCLUDE_ALL_OrgJodaTimeTzProvider 1
#endif
#undef RESTRICT_OrgJodaTimeTzProvider

#if !defined (OrgJodaTimeTzProvider_) && (INCLUDE_ALL_OrgJodaTimeTzProvider || defined(INCLUDE_OrgJodaTimeTzProvider))
#define OrgJodaTimeTzProvider_

@class OrgJodaTimeDateTimeZone;
@protocol JavaUtilSet;

@protocol OrgJodaTimeTzProvider < JavaObject >

- (OrgJodaTimeDateTimeZone *)getZoneWithNSString:(NSString *)id_;

- (id<JavaUtilSet>)getAvailableIDs;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeTzProvider)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzProvider)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeTzProvider")
