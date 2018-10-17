//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/chrono/GJLocaleSymbols.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoGJLocaleSymbols")
#ifdef RESTRICT_OrgJodaTimeChronoGJLocaleSymbols
#define INCLUDE_ALL_OrgJodaTimeChronoGJLocaleSymbols 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoGJLocaleSymbols 1
#endif
#undef RESTRICT_OrgJodaTimeChronoGJLocaleSymbols

#if !defined (OrgJodaTimeChronoGJLocaleSymbols_) && (INCLUDE_ALL_OrgJodaTimeChronoGJLocaleSymbols || defined(INCLUDE_OrgJodaTimeChronoGJLocaleSymbols))
#define OrgJodaTimeChronoGJLocaleSymbols_

@class JavaUtilLocale;

/*!
 @brief Utility class used by a few of the GJDateTimeFields.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeChronoGJLocaleSymbols : NSObject

#pragma mark Public

- (jint)dayOfWeekTextToValueWithNSString:(NSString *)text;

- (NSString *)dayOfWeekValueToShortTextWithInt:(jint)value;

- (NSString *)dayOfWeekValueToTextWithInt:(jint)value;

- (jint)eraTextToValueWithNSString:(NSString *)text;

- (NSString *)eraValueToTextWithInt:(jint)value;

- (jint)getDayOfWeekMaxShortTextLength;

- (jint)getDayOfWeekMaxTextLength;

- (jint)getEraMaxTextLength;

- (jint)getHalfdayMaxTextLength;

- (jint)getMonthMaxShortTextLength;

- (jint)getMonthMaxTextLength;

- (jint)halfdayTextToValueWithNSString:(NSString *)text;

- (NSString *)halfdayValueToTextWithInt:(jint)value;

- (jint)monthOfYearTextToValueWithNSString:(NSString *)text;

- (NSString *)monthOfYearValueToShortTextWithInt:(jint)value;

- (NSString *)monthOfYearValueToTextWithInt:(jint)value;

#pragma mark Package-Private

/*!
 @brief Obtains the symbols for a locale.
 @param locale  the locale, null returns default
 @return the symbols, not null
 */
+ (OrgJodaTimeChronoGJLocaleSymbols *)forLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeChronoGJLocaleSymbols)

FOUNDATION_EXPORT OrgJodaTimeChronoGJLocaleSymbols *OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(JavaUtilLocale *locale);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoGJLocaleSymbols)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoGJLocaleSymbols")
