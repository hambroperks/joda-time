//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/tz/ZoneInfoCompiler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeTzZoneInfoCompiler")
#ifdef RESTRICT_OrgJodaTimeTzZoneInfoCompiler
#define INCLUDE_ALL_OrgJodaTimeTzZoneInfoCompiler 0
#else
#define INCLUDE_ALL_OrgJodaTimeTzZoneInfoCompiler 1
#endif
#undef RESTRICT_OrgJodaTimeTzZoneInfoCompiler

#if !defined (OrgJodaTimeTzZoneInfoCompiler_) && (INCLUDE_ALL_OrgJodaTimeTzZoneInfoCompiler || defined(INCLUDE_OrgJodaTimeTzZoneInfoCompiler))
#define OrgJodaTimeTzZoneInfoCompiler_

@class IOSObjectArray;
@class JavaIoBufferedReader;
@class JavaIoDataOutputStream;
@class JavaIoFile;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear;
@protocol JavaUtilMap;

@interface OrgJodaTimeTzZoneInfoCompiler : NSObject

#pragma mark Public

- (instancetype)init;

- (id<JavaUtilMap>)compileWithJavaIoFile:(JavaIoFile *)outputDir
                     withJavaIoFileArray:(IOSObjectArray *)sources;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (void)parseDataFileWithJavaIoBufferedReader:(JavaIoBufferedReader *)inArg
                                  withBoolean:(jboolean)backward;

#pragma mark Package-Private

+ (OrgJodaTimeChronology *)getLenientISOChronology;

+ (OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *)getStartOfYear;

+ (jint)parseDayOfWeekWithNSString:(NSString *)str;

+ (jint)parseMonthWithNSString:(NSString *)str;

+ (NSString *)parseOptionalWithNSString:(NSString *)str;

+ (jint)parseTimeWithNSString:(NSString *)str;

+ (jint)parseYearWithNSString:(NSString *)str
                      withInt:(jint)def;

+ (jchar)parseZoneCharWithChar:(jchar)c;

+ (jboolean)testWithNSString:(NSString *)id_
 withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)tz;

+ (void)writeZoneInfoMapWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)dout
                                   withJavaUtilMap:(id<JavaUtilMap>)zimap;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeTzZoneInfoCompiler)

inline OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *OrgJodaTimeTzZoneInfoCompiler_get_cStartOfYear();
inline OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *OrgJodaTimeTzZoneInfoCompiler_set_cStartOfYear(OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *OrgJodaTimeTzZoneInfoCompiler_cStartOfYear;
J2OBJC_STATIC_FIELD_OBJ(OrgJodaTimeTzZoneInfoCompiler, cStartOfYear, OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *)

inline OrgJodaTimeChronology *OrgJodaTimeTzZoneInfoCompiler_get_cLenientISO();
inline OrgJodaTimeChronology *OrgJodaTimeTzZoneInfoCompiler_set_cLenientISO(OrgJodaTimeChronology *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeChronology *OrgJodaTimeTzZoneInfoCompiler_cLenientISO;
J2OBJC_STATIC_FIELD_OBJ(OrgJodaTimeTzZoneInfoCompiler, cLenientISO, OrgJodaTimeChronology *)

FOUNDATION_EXPORT void OrgJodaTimeTzZoneInfoCompiler_mainWithNSStringArray_(IOSObjectArray *args);

FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *OrgJodaTimeTzZoneInfoCompiler_getStartOfYear();

FOUNDATION_EXPORT OrgJodaTimeChronology *OrgJodaTimeTzZoneInfoCompiler_getLenientISOChronology();

FOUNDATION_EXPORT void OrgJodaTimeTzZoneInfoCompiler_writeZoneInfoMapWithJavaIoDataOutputStream_withJavaUtilMap_(JavaIoDataOutputStream *dout, id<JavaUtilMap> zimap);

FOUNDATION_EXPORT jint OrgJodaTimeTzZoneInfoCompiler_parseYearWithNSString_withInt_(NSString *str, jint def);

FOUNDATION_EXPORT jint OrgJodaTimeTzZoneInfoCompiler_parseMonthWithNSString_(NSString *str);

FOUNDATION_EXPORT jint OrgJodaTimeTzZoneInfoCompiler_parseDayOfWeekWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *OrgJodaTimeTzZoneInfoCompiler_parseOptionalWithNSString_(NSString *str);

FOUNDATION_EXPORT jint OrgJodaTimeTzZoneInfoCompiler_parseTimeWithNSString_(NSString *str);

FOUNDATION_EXPORT jchar OrgJodaTimeTzZoneInfoCompiler_parseZoneCharWithChar_(jchar c);

FOUNDATION_EXPORT jboolean OrgJodaTimeTzZoneInfoCompiler_testWithNSString_withOrgJodaTimeDateTimeZone_(NSString *id_, OrgJodaTimeDateTimeZone *tz);

FOUNDATION_EXPORT void OrgJodaTimeTzZoneInfoCompiler_init(OrgJodaTimeTzZoneInfoCompiler *self);

FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler *new_OrgJodaTimeTzZoneInfoCompiler_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler *create_OrgJodaTimeTzZoneInfoCompiler_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzZoneInfoCompiler)

#endif

#if !defined (OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_) && (INCLUDE_ALL_OrgJodaTimeTzZoneInfoCompiler || defined(INCLUDE_OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear))
#define OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_

@class JavaUtilStringTokenizer;
@class OrgJodaTimeTzDateTimeZoneBuilder;

@interface OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear : NSObject {
 @public
  jint iMonthOfYear_;
  jint iDayOfMonth_;
  jint iDayOfWeek_;
  jboolean iAdvanceDayOfWeek_;
  jint iMillisOfDay_;
  jchar iZoneChar_;
}

#pragma mark Public

- (void)addCutoverWithOrgJodaTimeTzDateTimeZoneBuilder:(OrgJodaTimeTzDateTimeZoneBuilder *)builder
                                               withInt:(jint)year;

- (void)addRecurringWithOrgJodaTimeTzDateTimeZoneBuilder:(OrgJodaTimeTzDateTimeZoneBuilder *)builder
                                            withNSString:(NSString *)nameKey
                                                 withInt:(jint)saveMillis
                                                 withInt:(jint)fromYear
                                                 withInt:(jint)toYear;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (instancetype)initWithJavaUtilStringTokenizer:(JavaUtilStringTokenizer *)st;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear)

FOUNDATION_EXPORT void OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_init(OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *self);

FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *new_OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *create_OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_init();

FOUNDATION_EXPORT void OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_initWithJavaUtilStringTokenizer_(OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *self, JavaUtilStringTokenizer *st);

FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *new_OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_initWithJavaUtilStringTokenizer_(JavaUtilStringTokenizer *st) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear *create_OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear_initWithJavaUtilStringTokenizer_(JavaUtilStringTokenizer *st);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzZoneInfoCompiler_DateTimeOfYear)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeTzZoneInfoCompiler")
