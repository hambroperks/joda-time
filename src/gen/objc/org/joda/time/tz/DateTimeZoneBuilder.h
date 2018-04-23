//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/tz/DateTimeZoneBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeTzDateTimeZoneBuilder")
#ifdef RESTRICT_OrgJodaTimeTzDateTimeZoneBuilder
#define INCLUDE_ALL_OrgJodaTimeTzDateTimeZoneBuilder 0
#else
#define INCLUDE_ALL_OrgJodaTimeTzDateTimeZoneBuilder 1
#endif
#undef RESTRICT_OrgJodaTimeTzDateTimeZoneBuilder

#if !defined (OrgJodaTimeTzDateTimeZoneBuilder_) && (INCLUDE_ALL_OrgJodaTimeTzDateTimeZoneBuilder || defined(INCLUDE_OrgJodaTimeTzDateTimeZoneBuilder))
#define OrgJodaTimeTzDateTimeZoneBuilder_

@class JavaIoInputStream;
@class JavaIoOutputStream;
@class OrgJodaTimeDateTimeZone;
@protocol JavaIoDataInput;
@protocol JavaIoDataOutput;

/*!
 @brief DateTimeZoneBuilder allows complex DateTimeZones to be constructed.Since
  creating a new DateTimeZone this way is a relatively expensive operation,
  built zones can be written to a file.
 Reading back the encoded data is a
  quick operation. 
 <p>
  DateTimeZoneBuilder itself is mutable and not thread-safe, but the
  DateTimeZone objects that it builds are thread-safe and immutable. 
 <p>
  It is intended that <code>ZoneInfoCompiler</code> be used to read time zone data
  files, indirectly calling DateTimeZoneBuilder. The following complex
  example defines the America/Los_Angeles time zone, with all historical
  transitions:  
 @code

  DateTimeZone America_Los_Angeles = new DateTimeZoneBuilder()
      .addCutover(-2147483648, 'w', 1, 1, 0, false, 0)
      .setStandardOffset(-28378000)
      .setFixedSavings("LMT", 0)
      .addCutover(1883, 'w', 11, 18, 0, false, 43200000)
      .setStandardOffset(-28800000)
      .addRecurringSavings("PDT", 3600000, 1918, 1919, 'w',  3, -1, 7, false, 7200000)
      .addRecurringSavings("PST",       0, 1918, 1919, 'w', 10, -1, 7, false, 7200000)
      .addRecurringSavings("PWT", 3600000, 1942, 1942, 'w',  2,  9, 0, false, 7200000)
      .addRecurringSavings("PPT", 3600000, 1945, 1945, 'u',  8, 14, 0, false, 82800000)
      .addRecurringSavings("PST",       0, 1945, 1945, 'w',  9, 30, 0, false, 7200000)
      .addRecurringSavings("PDT", 3600000, 1948, 1948, 'w',  3, 14, 0, false, 7200000)
      .addRecurringSavings("PST",       0, 1949, 1949, 'w',  1,  1, 0, false, 7200000)
      .addRecurringSavings("PDT", 3600000, 1950, 1966, 'w',  4, -1, 7, false, 7200000)
      .addRecurringSavings("PST",       0, 1950, 1961, 'w',  9, -1, 7, false, 7200000)
      .addRecurringSavings("PST",       0, 1962, 1966, 'w', 10, -1, 7, false, 7200000)
      .addRecurringSavings("PST",       0, 1967, 2147483647, 'w', 10, -1, 7, false, 7200000)
      .addRecurringSavings("PDT", 3600000, 1967, 1973, 'w', 4, -1,  7, false, 7200000)
      .addRecurringSavings("PDT", 3600000, 1974, 1974, 'w', 1,  6,  0, false, 7200000)
      .addRecurringSavings("PDT", 3600000, 1975, 1975, 'w', 2, 23,  0, false, 7200000)
      .addRecurringSavings("PDT", 3600000, 1976, 1986, 'w', 4, -1,  7, false, 7200000)
      .addRecurringSavings("PDT", 3600000, 1987, 2147483647, 'w', 4, 1, 7, true, 7200000)
      .toDateTimeZone("America/Los_Angeles", true); 
  
@endcode
 @author Brian S O'Neill
 - seealso: ZoneInfoCompiler
 - seealso: ZoneInfoProvider
 @since 1.0
 */
@interface OrgJodaTimeTzDateTimeZoneBuilder : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Adds a cutover for added rules.The standard offset at the cutover
  defaults to 0.
 Call setStandardOffset afterwards to change it.
 @param year the year of cutover
 @param mode 'u' - cutover is measured against UTC, 'w' - against wall   offset, 's' - against standard offset
 @param monthOfYear the month from 1 (January) to 12 (December)
 @param dayOfMonth if negative, set to ((last day of month) - ~dayOfMonth).   For example, if -1, set to last day of month
 @param dayOfWeek from 1 (Monday) to 7 (Sunday), if 0 then ignore
 @param advanceDayOfWeek if dayOfMonth does not fall on dayOfWeek, advance to   dayOfWeek when true, retreat when false.
 @param millisOfDay additional precision for specifying time of day of cutover
 */
- (OrgJodaTimeTzDateTimeZoneBuilder *)addCutoverWithInt:(jint)year
                                               withChar:(jchar)mode
                                                withInt:(jint)monthOfYear
                                                withInt:(jint)dayOfMonth
                                                withInt:(jint)dayOfWeek
                                            withBoolean:(jboolean)advanceDayOfWeek
                                                withInt:(jint)millisOfDay;

/*!
 @brief Add a recurring daylight saving time rule.
 @param nameKey the name key of new rule
 @param saveMillis the milliseconds to add to standard offset
 @param fromYear the first year that rule is in effect, MIN_VALUE indicates  beginning of time
 @param toYear the last year (inclusive) that rule is in effect, MAX_VALUE   indicates end of time
 @param mode 'u' - transitions are calculated against UTC, 'w' -   transitions are calculated against wall offset, 's' - transitions are
    calculated against standard offset
 @param monthOfYear the month from 1 (January) to 12 (December)
 @param dayOfMonth if negative, set to ((last day of month) - ~dayOfMonth).   For example, if -1, set to last day of month
 @param dayOfWeek from 1 (Monday) to 7 (Sunday), if 0 then ignore
 @param advanceDayOfWeek if dayOfMonth does not fall on dayOfWeek, advance to   dayOfWeek when true, retreat when false.
 @param millisOfDay additional precision for specifying time of day of transitions
 */
- (OrgJodaTimeTzDateTimeZoneBuilder *)addRecurringSavingsWithNSString:(NSString *)nameKey
                                                              withInt:(jint)saveMillis
                                                              withInt:(jint)fromYear
                                                              withInt:(jint)toYear
                                                             withChar:(jchar)mode
                                                              withInt:(jint)monthOfYear
                                                              withInt:(jint)dayOfMonth
                                                              withInt:(jint)dayOfWeek
                                                          withBoolean:(jboolean)advanceDayOfWeek
                                                              withInt:(jint)millisOfDay;

/*!
 @brief Decodes a built DateTimeZone from the given stream, as encoded by
  writeTo.
 @param inArg input stream to read encoded DateTimeZone from.
 @param id_ time zone id to assign
 */
+ (OrgJodaTimeDateTimeZone *)readFromWithJavaIoDataInput:(id<JavaIoDataInput>)inArg
                                            withNSString:(NSString *)id_;

/*!
 @brief Decodes a built DateTimeZone from the given stream, as encoded by
  writeTo.
 @param inArg input stream to read encoded DateTimeZone from.
 @param id_ time zone id to assign
 */
+ (OrgJodaTimeDateTimeZone *)readFromWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                              withNSString:(NSString *)id_;

/*!
 @brief Set a fixed savings rule at the cutover.
 */
- (OrgJodaTimeTzDateTimeZoneBuilder *)setFixedSavingsWithNSString:(NSString *)nameKey
                                                          withInt:(jint)saveMillis;

/*!
 @brief Sets the standard offset to use for newly added rules until the next
  cutover is added.
 @param standardOffset the standard offset in millis
 */
- (OrgJodaTimeTzDateTimeZoneBuilder *)setStandardOffsetWithInt:(jint)standardOffset;

/*!
 @brief Processes all the rules and builds a DateTimeZone.
 @param id_ time zone id to assign
 @param outputID true if the zone id should be output
 */
- (OrgJodaTimeDateTimeZone *)toDateTimeZoneWithNSString:(NSString *)id_
                                            withBoolean:(jboolean)outputID;

/*!
 @brief Encodes a built DateTimeZone to the given stream.Call readFrom to
  decode the data into a DateTimeZone object.
 @param outArg the output stream to receive the encoded DateTimeZone
 @since 1.5 (parameter added)
 */
- (void)writeToWithNSString:(NSString *)zoneID
       withJavaIoDataOutput:(id<JavaIoDataOutput>)outArg;

/*!
 @brief Encodes a built DateTimeZone to the given stream.Call readFrom to
  decode the data into a DateTimeZone object.
 @param outArg the output stream to receive the encoded DateTimeZone
 @since 1.5 (parameter added)
 */
- (void)writeToWithNSString:(NSString *)zoneID
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

#pragma mark Package-Private

/*!
 @brief Reads encoding generated by writeMillis.
 */
+ (jlong)readMillisWithJavaIoDataInput:(id<JavaIoDataInput>)inArg;

/*!
 @brief Millisecond encoding formats:
  upper two bits  units       field length  approximate range
  ---------------------------------------------------------------
  00              30 minutes  1 byte        +/- 16 hours
  01              minutes     4 bytes       +/- 1020 years
  10              seconds     5 bytes       +/- 4355 years
  11              millis      9 bytes       +/- 292,000,000 years
  Remaining bits in field form signed offset from 1970-01-01T00:00:00Z.
 */
+ (void)writeMillisWithJavaIoDataOutput:(id<JavaIoDataOutput>)outArg
                               withLong:(jlong)millis;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeTzDateTimeZoneBuilder)

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeTzDateTimeZoneBuilder_readFromWithJavaIoInputStream_withNSString_(JavaIoInputStream *inArg, NSString *id_);

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeTzDateTimeZoneBuilder_readFromWithJavaIoDataInput_withNSString_(id<JavaIoDataInput> inArg, NSString *id_);

FOUNDATION_EXPORT void OrgJodaTimeTzDateTimeZoneBuilder_writeMillisWithJavaIoDataOutput_withLong_(id<JavaIoDataOutput> outArg, jlong millis);

FOUNDATION_EXPORT jlong OrgJodaTimeTzDateTimeZoneBuilder_readMillisWithJavaIoDataInput_(id<JavaIoDataInput> inArg);

FOUNDATION_EXPORT void OrgJodaTimeTzDateTimeZoneBuilder_init(OrgJodaTimeTzDateTimeZoneBuilder *self);

FOUNDATION_EXPORT OrgJodaTimeTzDateTimeZoneBuilder *new_OrgJodaTimeTzDateTimeZoneBuilder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeTzDateTimeZoneBuilder *create_OrgJodaTimeTzDateTimeZoneBuilder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzDateTimeZoneBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeTzDateTimeZoneBuilder")
