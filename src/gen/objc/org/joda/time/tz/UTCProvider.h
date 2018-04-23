//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/tz/UTCProvider.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeTzUTCProvider")
#ifdef RESTRICT_OrgJodaTimeTzUTCProvider
#define INCLUDE_ALL_OrgJodaTimeTzUTCProvider 0
#else
#define INCLUDE_ALL_OrgJodaTimeTzUTCProvider 1
#endif
#undef RESTRICT_OrgJodaTimeTzUTCProvider

#if !defined (OrgJodaTimeTzUTCProvider_) && (INCLUDE_ALL_OrgJodaTimeTzUTCProvider || defined(INCLUDE_OrgJodaTimeTzUTCProvider))
#define OrgJodaTimeTzUTCProvider_

#define RESTRICT_OrgJodaTimeTzProvider 1
#define INCLUDE_OrgJodaTimeTzProvider 1
#include "org/joda/time/tz/Provider.h"

@class OrgJodaTimeDateTimeZone;
@protocol JavaUtilSet;

/*!
 @brief Simple time zone provider that supports only UTC.
 <p>
  UTCProvider is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeTzUTCProvider : NSObject < OrgJodaTimeTzProvider >

#pragma mark Public

/*!
 @brief Constructor.
 */
- (instancetype)init;

/*!
 @brief Returns a singleton collection containing only <code>"UTC"</code>.
 */
- (id<JavaUtilSet>)getAvailableIDs;

/*!
 @brief Returns <code>UTC</code> for <code>"UTC"</code>, null
  otherwise.
 */
- (OrgJodaTimeDateTimeZone *)getZoneWithNSString:(NSString *)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeTzUTCProvider)

FOUNDATION_EXPORT void OrgJodaTimeTzUTCProvider_init(OrgJodaTimeTzUTCProvider *self);

FOUNDATION_EXPORT OrgJodaTimeTzUTCProvider *new_OrgJodaTimeTzUTCProvider_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeTzUTCProvider *create_OrgJodaTimeTzUTCProvider_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzUTCProvider)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeTzUTCProvider")
