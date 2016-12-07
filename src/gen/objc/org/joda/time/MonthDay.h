//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/MonthDay.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeMonthDay")
#ifdef RESTRICT_OrgJodaTimeMonthDay
#define INCLUDE_ALL_OrgJodaTimeMonthDay 0
#else
#define INCLUDE_ALL_OrgJodaTimeMonthDay 1
#endif
#undef RESTRICT_OrgJodaTimeMonthDay

#if !defined (OrgJodaTimeMonthDay_) && (INCLUDE_ALL_OrgJodaTimeMonthDay || defined(INCLUDE_OrgJodaTimeMonthDay))
#define OrgJodaTimeMonthDay_

#define RESTRICT_OrgJodaTimeBaseBasePartial 1
#define INCLUDE_OrgJodaTimeBaseBasePartial 1
#include "org/joda/time/base/BasePartial.h"

#define RESTRICT_OrgJodaTimeReadablePartial 1
#define INCLUDE_OrgJodaTimeReadablePartial 1
#include "org/joda/time/ReadablePartial.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilCalendar;
@class JavaUtilDate;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeFormatDateTimeFormatter;
@class OrgJodaTimeLocalDate;
@class OrgJodaTimeMonthDay_Property;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief MonthDay is an immutable partial supporting the monthOfYear and dayOfMonth fields.
 <p>
 NOTE: This class only supports the two fields listed above.
 It is impossible to query any other fields, such as dayOfWeek or centuryOfEra.
 <p>
 Calculations on MonthDay are performed using a <code>Chronology</code>.
 This chronology is set to be in the UTC time zone for all calculations.
 <p>
 One use case for this class is to store a birthday without the year (to avoid
 storing the age of the person).
 This class can be used as the gMonthDay type in XML Schema.
 <p>
 Each individual field can be queried in two ways:
 <ul>
 <li><code>getMonthOfYear()</code>
 <li><code>monthOfYear().get()</code>
 </ul>
 The second technique also provides access to other useful methods on the
 field:
 <ul>
 <li>numeric value - <code>monthOfYear().get()</code>
 <li>text value - <code>monthOfYear().getAsText()</code>
 <li>short text value - <code>monthOfYear().getAsShortText()</code>
 <li>maximum/minimum values - <code>monthOfYear().getMaximumValue()</code>
 <li>add/subtract - <code>monthOfYear().addToCopy()</code>
 <li>set - <code>monthOfYear().setCopy()</code>
 </ul>
 <p>
 MonthDay is thread-safe and immutable, provided that the Chronology is as well.
 All standard Chronology classes supplied are thread-safe and immutable.
 @author Chris Pheby
 @since 2.0
 */
@interface OrgJodaTimeMonthDay : OrgJodaTimeBaseBasePartial < OrgJodaTimeReadablePartial, JavaIoSerializable >

#pragma mark Public

/*!
 @brief Constructs a MonthDay with the current monthOfYear, using ISOChronology in
 the default zone to extract the fields.
 <p>
 The constructor uses the default time zone, resulting in the local time
 being initialised. Once the constructor is complete, all further calculations
 are performed without reference to a time-zone (by switching to UTC).
 - seealso: #now()
 */
- (instancetype)init;

/*!
 @brief Constructs a MonthDay with the current month-day, using the specified chronology
 and zone to extract the fields.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a time-zone (by switching to UTC).
 @param chronology  the chronology, null means ISOChronology in the default zone
 - seealso: #now(Chronology)
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs a MonthDay with the current month-day, using ISOChronology in
 the specified zone to extract the fields.
 <p>
 The constructor uses the specified time zone to obtain the current month-day.
 Once the constructor is complete, all further calculations
 are performed without reference to a time-zone (by switching to UTC).
 @param zone  the zone to use, null means default zone
 - seealso: #now(DateTimeZone)
 */
- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Constructs a MonthDay with specified year and month
 using <code>ISOChronology</code>.
 <p>
 The constructor uses the no time zone initialising the fields as provided.
 Once the constructor is complete, all further calculations
 are performed without reference to a time-zone (by switching to UTC).
 @param monthOfYear  the month of the year
 @param dayOfMonth  the day of the month
 */
- (instancetype)initWithInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth;

/*!
 @brief Constructs an instance set to the specified monthOfYear and dayOfMonth
 using the specified chronology, whose zone is ignored.
 <p>
 If the chronology is null, <code>ISOChronology</code> is used.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a time-zone (by switching to UTC).
 @param monthOfYear  the month of the year
 @param dayOfMonth  the day of the month
 @param chronology  the chronology, null means ISOChronology in the default zone
 */
- (instancetype)initWithInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs a MonthDay extracting the partial fields from the specified
 milliseconds using the ISOChronology in the default zone.
 <p>
 The constructor uses the default time zone, resulting in the local time
 being initialised. Once the constructor is complete, all further calculations
 are performed without reference to a time-zone (by switching to UTC).
 @param instant  the milliseconds from 1970-01-01T00:00:00Z
 */
- (instancetype)initWithLong:(jlong)instant;

/*!
 @brief Constructs a MonthDay extracting the partial fields from the specified
 milliseconds using the chronology provided.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a time-zone (by switching to UTC).
 @param instant  the milliseconds from 1970-01-01T00:00:00Z
 @param chronology  the chronology, null means ISOChronology in the default zone
 */
- (instancetype)initWithLong:(jlong)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs a MonthDay from an Object that represents some form of time.
 <p>
 The recognised object types are defined in
 <code>ConverterManager</code> and
 include ReadableInstant, String, Calendar and Date.
 The String formats are described by <code>ISODateTimeFormat.localDateParser()</code>.
 <p>
 The chronology used will be derived from the object, defaulting to ISO.
 @param instant  the date-time object, null means now
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant;

/*!
 @brief Constructs a MonthDay from an Object that represents some form of time,
 using the specified chronology.
 <p>
 The recognised object types are defined in
 <code>ConverterManager</code> and
 include ReadableInstant, String, Calendar and Date.
 The String formats are described by <code>ISODateTimeFormat.localDateParser()</code>.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a time-zone (by switching to UTC).
 The specified chronology overrides that of the object.
 @param instant  the date-time object, null means now
 @param chronology  the chronology, null means ISO default
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Get the day of month field property which provides access to advanced functionality.
 @return the day of month property
 */
- (OrgJodaTimeMonthDay_Property *)dayOfMonth;

/*!
 @brief Constructs a MonthDay from a <code>java.util.Calendar</code>
 using exactly the same field values avoiding any time zone effects.
 <p>
 Each field is queried from the Calendar and assigned to the MonthDay.
 <p>
 This factory method ignores the type of the calendar and always
 creates a MonthDay with ISO chronology. It is expected that you
 will only pass in instances of <code>GregorianCalendar</code> however
 this is not validated.
 @param calendar  the Calendar to extract fields from
 @return the created MonthDay, never null
 @throws IllegalArgumentException if the calendar is null
 @throws IllegalArgumentException if the monthOfYear or dayOfMonth is invalid for the ISO chronology
 */
+ (OrgJodaTimeMonthDay *)fromCalendarFieldsWithJavaUtilCalendar:(JavaUtilCalendar *)calendar;

/*!
 @brief Constructs a MonthDay from a <code>java.util.Date</code>
 using exactly the same field values avoiding any time zone effects.
 <p>
 Each field is queried from the Date and assigned to the MonthDay.
 <p>
 This factory method always creates a MonthDay with ISO chronology.
 @param date  the Date to extract fields from
 @return the created MonthDay, never null
 @throws IllegalArgumentException if the calendar is null
 @throws IllegalArgumentException if the monthOfYear or dayOfMonth is invalid for the ISO chronology
 */
+ (OrgJodaTimeMonthDay *)fromDateFieldsWithJavaUtilDate:(JavaUtilDate *)date;

/*!
 @brief Get the day of month field value.
 @return the day of month
 */
- (jint)getDayOfMonth;

/*!
 @brief Gets the field type at the specified index.
 @param index  the index to retrieve
 @return the field at the specified index, never null
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(jint)index;

/*!
 @brief Gets an array of the field type of each of the fields that this partial supports.
 <p>
 The fields are returned largest to smallest, Month, Day.
 @return the array of field types (cloned), largest to smallest, never null
 */
- (IOSObjectArray *)getFieldTypes;

/*!
 @brief Get the month of year field value.
 @return the month of year
 */
- (jint)getMonthOfYear;

/*!
 @brief Returns a copy of this month-day with the specified period taken away.
 <p>
 If the amount is zero or null, then <code>this</code> is returned.
 <p>
 This method is typically used to subtract complex period instances.
 Subtracting one field is best achieved using methods
 like <code>minusMonths(int)</code>.
 @param period  the period to reduce this instant by
 @return a copy of this instance with the period taken away, never null
 @throws ArithmeticException if the new month-day exceeds the capacity
 */
- (OrgJodaTimeMonthDay *)minusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Returns a copy of this month-day minus the specified number of months.
 <p>
 This month-day instance is immutable and unaffected by this method call.
 The month will wrap at the end of the year from January to December.
 <p>
 The following three lines are identical in effect:
 @code

  MonthDay subtracted = md.minusDays(6);
  MonthDay subtracted = md.minus(Period.days(6));
  MonthDay subtracted = md.withFieldAdded(DurationFieldType.days(), -6);
  
@endcode
 @param days  the amount of days to subtract, may be negative
 @return the new month-day minus the increased days, never null
 */
- (OrgJodaTimeMonthDay *)minusDaysWithInt:(jint)days;

/*!
 @brief Returns a copy of this month-day minus the specified number of months.
 <p>
 This MonthDay instance is immutable and unaffected by this method call.
 The month will wrap at the end of the year from January to December.
 The day will be adjusted to the last valid value if necessary.
 <p>
 The following three lines are identical in effect:
 @code

  MonthDay subtracted = md.minusMonths(6);
  MonthDay subtracted = md.minus(Period.months(6));
  MonthDay subtracted = md.withFieldAdded(DurationFieldType.months(), -6);
  
@endcode
 @param months  the amount of months to subtract, may be negative
 @return the new month-day minus the increased months, never null
 */
- (OrgJodaTimeMonthDay *)minusMonthsWithInt:(jint)months;

/*!
 @brief Get the month of year field property which provides access to advanced functionality.
 @return the month of year property
 */
- (OrgJodaTimeMonthDay_Property *)monthOfYear;

/*!
 @brief Obtains a <code>MonthDay</code> set to the current system millisecond time
 using <code>ISOChronology</code> in the default time zone.
 The resulting object does not use the zone.
 @return the current month-day, not null
 @since 2.0
 */
+ (OrgJodaTimeMonthDay *)now;

/*!
 @brief Obtains a <code>MonthDay</code> set to the current system millisecond time
 using the specified chronology.
 The resulting object does not use the zone.
 @param chronology  the chronology, not null
 @return the current month-day, not null
 @since 2.0
 */
+ (OrgJodaTimeMonthDay *)nowWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Obtains a <code>MonthDay</code> set to the current system millisecond time
 using <code>ISOChronology</code> in the specified time zone.
 The resulting object does not use the zone.
 @param zone  the time zone, not null
 @return the current month-day, not null
 @since 2.0
 */
+ (OrgJodaTimeMonthDay *)nowWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Parses a <code>MonthDay</code> from the specified string.
 <p>
 This uses <code>ISODateTimeFormat.localDateParser()</code> or the format <code>--MM-dd</code>.
 @param str  the string to parse, not null
 @since 2.0
 */
+ (OrgJodaTimeMonthDay *)parseWithNSString:(NSString *)str;

/*!
 @brief Parses a <code>MonthDay</code> from the specified string using a formatter.
 @param str  the string to parse, not null
 @param formatter  the formatter to use, not null
 @since 2.0
 */
+ (OrgJodaTimeMonthDay *)parseWithNSString:(NSString *)str
    withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter;

/*!
 @brief Returns a copy of this month-day with the specified period added.
 <p>
 If the amount is zero or null, then <code>this</code> is returned.
 <p>
 This method is typically used to add complex period instances.
 Adding one field is best achieved using methods
 like <code>plusMonths(int)</code>.
 @param period  the duration to add to this one, null means zero
 @return a copy of this instance with the period added, never null
 @throws ArithmeticException if the new month-day exceeds the capacity
 */
- (OrgJodaTimeMonthDay *)plusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Returns a copy of this month-day plus the specified number of days.
 <p>
 This month-day instance is immutable and unaffected by this method call.
 The month will wrap at the end of the year from December to January.
 <p>
 The following three lines are identical in effect:
 @code

  MonthDay added = md.plusDays(6);
  MonthDay added = md.plus(Period.days(6));
  MonthDay added = md.withFieldAdded(DurationFieldType.days(), 6);
  
@endcode
 @param days  the amount of days to add, may be negative
 @return the new month-day plus the increased days, never null
 */
- (OrgJodaTimeMonthDay *)plusDaysWithInt:(jint)days;

/*!
 @brief Returns a copy of this month-day plus the specified number of months.
 <p>
 This month-day instance is immutable and unaffected by this method call.
 The month will wrap at the end of the year from December to January.
 The day will be adjusted to the last valid value if necessary.
 <p>
 The following three lines are identical in effect:
 @code

  MonthDay added = md.plusMonths(6);
  MonthDay added = md.plus(Period.months(6));
  MonthDay added = md.withFieldAdded(DurationFieldType.months(), 6);
  
@endcode
 @param months  the amount of months to add, may be negative
 @return the new month-day plus the increased months, never null
 */
- (OrgJodaTimeMonthDay *)plusMonthsWithInt:(jint)months;

/*!
 @brief Gets the property object for the specified type, which contains
 many useful methods.
 @param type  the field type to get the property for
 @return the property object
 @throws IllegalArgumentException if the field is null or unsupported
 */
- (OrgJodaTimeMonthDay_Property *)propertyWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/*!
 @brief Gets the number of fields in this partial, which is two.
 The supported fields are MonthOfYear and DayOfMonth.
 Note that only these fields may be queried.
 @return the field count, two
 */
- (jint)size;

/*!
 @brief Converts this object to a LocalDate with the same month-day and chronology.
 @param year  the year to use, valid for chronology
 @return a LocalDate with the same month-day and chronology, never null
 */
- (OrgJodaTimeLocalDate *)toLocalDateWithInt:(jint)year;

/*!
 @brief Output the month-day in ISO8601 format (--MM-dd).
 @return ISO8601 time formatted string.
 */
- (NSString *)description;

/*!
 @brief Output the month-day using the specified format pattern.
 @param pattern  the pattern specification, null means use <code>toString</code>
 - seealso: org.joda.time.format.DateTimeFormat
 */
- (NSString *)toStringWithNSString:(NSString *)pattern;

/*!
 @brief Output the month-day using the specified format pattern.
 @param pattern  the pattern specification, null means use <code>toString</code>
 @param locale  Locale to use, null means default
 - seealso: org.joda.time.format.DateTimeFormat
 */
- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Returns a copy of this month-day with the specified chronology.
 This instance is immutable and unaffected by this method call.
 <p>
 This method retains the values of the fields, thus the result will
 typically refer to a different instant.
 <p>
 The time zone of the specified chronology is ignored, as MonthDay
 operates without a time zone.
 @param newChronology  the new chronology, null means ISO
 @return a copy of this month-day with a different chronology, never null
 @throws IllegalArgumentException if the values are invalid for the new chronology
 */
- (OrgJodaTimeMonthDay *)withChronologyRetainFieldsWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)newChronology;

/*!
 @brief Returns a copy of this month-day with the day of month field updated.
 <p>
 MonthDay is immutable, so there are no set methods.
 Instead, this method returns a new instance with the value of
 day of month changed.
 @param dayOfMonth  the day of month to set
 @return a copy of this object with the field set, never null
 @throws IllegalArgumentException if the value is invalid
 */
- (OrgJodaTimeMonthDay *)withDayOfMonthWithInt:(jint)dayOfMonth;

/*!
 @brief Returns a copy of this month-day with the specified field set to a new value.
 <p>
 For example, if the field type is <code>dayOfMonth</code> then the day
 would be changed in the returned instance.
 <p>
 These three lines are equivalent:
 @code

  MonthDay updated = md.withField(DateTimeFieldType.dayOfMonth(), 6);
  MonthDay updated = md.dayOfMonth().setCopy(6);
  MonthDay updated = md.property(DateTimeFieldType.dayOfMonth()).setCopy(6);
  
@endcode
 @param fieldType  the field type to set, not null
 @param value  the value to set
 @return a copy of this instance with the field set, never null
 @throws IllegalArgumentException if the value is null or invalid
 */
- (OrgJodaTimeMonthDay *)withFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                           withInt:(jint)value;

/*!
 @brief Returns a copy of this month-day with the value of the specified field increased.
 <p>
 If the addition is zero, then <code>this</code> is returned.
 <p>
 These three lines are equivalent:
 @code

  MonthDay added = md.withFieldAdded(DurationFieldType.days(), 6);
  MonthDay added = md.plusDays(6);
  MonthDay added = md.dayOfMonth().addToCopy(6);
  
@endcode
 @param fieldType  the field type to add to, not null
 @param amount  the amount to add
 @return a copy of this instance with the field updated, never null
 @throws IllegalArgumentException if the value is null or invalid
 @throws ArithmeticException if the new date-time exceeds the capacity
 */
- (OrgJodaTimeMonthDay *)withFieldAddedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)fieldType
                                                                withInt:(jint)amount;

/*!
 @brief Returns a copy of this month-day with the month of year field updated.
 <p>
 MonthDay is immutable, so there are no set methods.
 Instead, this method returns a new instance with the value of
 month of year changed.
 @param monthOfYear  the month of year to set
 @return a copy of this object with the field set, never null
 @throws IllegalArgumentException if the value is invalid
 */
- (OrgJodaTimeMonthDay *)withMonthOfYearWithInt:(jint)monthOfYear;

/*!
 @brief Returns a copy of this month-day with the specified period added.
 <p>
 If the addition is zero, then <code>this</code> is returned.
 Fields in the period that aren't present in the partial are ignored.
 <p>
 This method is typically used to add multiple copies of complex
 period instances. Adding one field is best achieved using methods
 like <code>withFieldAdded(DurationFieldType,int)</code>
 or <code>plusMonths(int)</code>.
 @param period  the period to add to this one, null means zero
 @param scalar  the amount of times to add, such as -1 to subtract once
 @return a copy of this instance with the period added, never null
 @throws ArithmeticException if the new date-time exceeds the capacity
 */
- (OrgJodaTimeMonthDay *)withPeriodAddedWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                              withInt:(jint)scalar;

#pragma mark Protected

/*!
 @brief Gets the field for a specific index in the chronology specified.
 <p>
 This method must not use any instance variables.
 @param index  the index to retrieve
 @param chrono  the chronology to use
 @return the field, never null
 */
- (OrgJodaTimeDateTimeField *)getFieldWithInt:(jint)index
                    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

#pragma mark Package-Private

/*!
 @brief Constructs a MonthDay with values from this instance and a new chronology.
 @param partial  the partial to base this new instance on
 @param chrono  the new chronology
 */
- (instancetype)initWithOrgJodaTimeMonthDay:(OrgJodaTimeMonthDay *)partial
                  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Constructs a MonthDay with chronology from this instance and new values.
 @param partial  the partial to base this new instance on
 @param values  the new set of values
 */
- (instancetype)initWithOrgJodaTimeMonthDay:(OrgJodaTimeMonthDay *)partial
                               withIntArray:(IOSIntArray *)values;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeMonthDay)

/*!
 @brief The index of the monthOfYear field in the field array
 */
inline jint OrgJodaTimeMonthDay_get_MONTH_OF_YEAR();
#define OrgJodaTimeMonthDay_MONTH_OF_YEAR 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeMonthDay, MONTH_OF_YEAR, jint)

/*!
 @brief The index of the day field in the field array
 */
inline jint OrgJodaTimeMonthDay_get_DAY_OF_MONTH();
#define OrgJodaTimeMonthDay_DAY_OF_MONTH 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeMonthDay, DAY_OF_MONTH, jint)

FOUNDATION_EXPORT OrgJodaTimeMonthDay *OrgJodaTimeMonthDay_now();

FOUNDATION_EXPORT OrgJodaTimeMonthDay *OrgJodaTimeMonthDay_nowWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *OrgJodaTimeMonthDay_nowWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *OrgJodaTimeMonthDay_parseWithNSString_(NSString *str);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *OrgJodaTimeMonthDay_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(NSString *str, OrgJodaTimeFormatDateTimeFormatter *formatter);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *OrgJodaTimeMonthDay_fromCalendarFieldsWithJavaUtilCalendar_(JavaUtilCalendar *calendar);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *OrgJodaTimeMonthDay_fromDateFieldsWithJavaUtilDate_(JavaUtilDate *date);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_init(OrgJodaTimeMonthDay *self);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_init();

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeMonthDay *self, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeMonthDay *self, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithLong_(OrgJodaTimeMonthDay *self, jlong instant);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithLong_(jlong instant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithLong_(jlong instant);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithLong_withOrgJodaTimeChronology_(OrgJodaTimeMonthDay *self, jlong instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithLong_withOrgJodaTimeChronology_(jlong instant, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithLong_withOrgJodaTimeChronology_(jlong instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithId_(OrgJodaTimeMonthDay *self, id instant);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithId_(id instant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithId_(id instant);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeMonthDay *self, id instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithId_withOrgJodaTimeChronology_(id instant, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithId_withOrgJodaTimeChronology_(id instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithInt_withInt_(OrgJodaTimeMonthDay *self, jint monthOfYear, jint dayOfMonth);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithInt_withInt_(jint monthOfYear, jint dayOfMonth) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithInt_withInt_(jint monthOfYear, jint dayOfMonth);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithInt_withInt_withOrgJodaTimeChronology_(OrgJodaTimeMonthDay *self, jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithInt_withInt_withOrgJodaTimeChronology_(jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithInt_withInt_withOrgJodaTimeChronology_(jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithOrgJodaTimeMonthDay_withIntArray_(OrgJodaTimeMonthDay *self, OrgJodaTimeMonthDay *partial, IOSIntArray *values);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithOrgJodaTimeMonthDay_withIntArray_(OrgJodaTimeMonthDay *partial, IOSIntArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithOrgJodaTimeMonthDay_withIntArray_(OrgJodaTimeMonthDay *partial, IOSIntArray *values);

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_initWithOrgJodaTimeMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeMonthDay *self, OrgJodaTimeMonthDay *partial, OrgJodaTimeChronology *chrono);

FOUNDATION_EXPORT OrgJodaTimeMonthDay *new_OrgJodaTimeMonthDay_initWithOrgJodaTimeMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeMonthDay *partial, OrgJodaTimeChronology *chrono) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay *create_OrgJodaTimeMonthDay_initWithOrgJodaTimeMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeMonthDay *partial, OrgJodaTimeChronology *chrono);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeMonthDay)

#endif

#if !defined (OrgJodaTimeMonthDay_Property_) && (INCLUDE_ALL_OrgJodaTimeMonthDay || defined(INCLUDE_OrgJodaTimeMonthDay_Property))
#define OrgJodaTimeMonthDay_Property_

#define RESTRICT_OrgJodaTimeFieldAbstractPartialFieldProperty 1
#define INCLUDE_OrgJodaTimeFieldAbstractPartialFieldProperty 1
#include "org/joda/time/field/AbstractPartialFieldProperty.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilLocale;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeMonthDay;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief The property class for <code>MonthDay</code>.
 <p>
 This class binds a <code>YearMonth</code> to a <code>DateTimeField</code>.
 @author Chris Pheby
 @since 2.0
 */
@interface OrgJodaTimeMonthDay_Property : OrgJodaTimeFieldAbstractPartialFieldProperty < JavaIoSerializable >

#pragma mark Public

/*!
 @brief Adds to the value of this field in a copy of this MonthDay.
 <p>
 The value will be added to this field. If the value is too large to be
 added solely to this field then it will affect larger fields.
 Smaller fields are unaffected.
 <p>
 The MonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param valueToAdd  the value to add to the field in the copy
 @return a copy of the MonthDay with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimeMonthDay *)addToCopyWithInt:(jint)valueToAdd;

/*!
 @brief Adds to the value of this field in a copy of this MonthDay wrapping
 within this field if the maximum value is reached.
 <p>
 The value will be added to this field. If the value is too large to be
 added solely to this field then it wraps within this field.
 Other fields are unaffected.
 <p>
 For example,
 <code>--12-30</code> addWrapField one month returns <code>--01-30</code>.
 <p>
 The MonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param valueToAdd  the value to add to the field in the copy
 @return a copy of the MonthDay with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimeMonthDay *)addWrapFieldToCopyWithInt:(jint)valueToAdd;

/*!
 @brief Gets the value of this field.
 @return the field value
 */
- (jint)get;

/*!
 @brief Gets the field that this property uses.
 @return the field
 */
- (OrgJodaTimeDateTimeField *)getField;

/*!
 @brief Gets the partial that this property belongs to.
 @return the partial
 */
- (OrgJodaTimeMonthDay *)getMonthDay;

/*!
 @brief Sets this field in a copy of the MonthDay.
 <p>
 The MonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param value  the value to set the field in the copy to
 @return a copy of the MonthDay with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimeMonthDay *)setCopyWithInt:(jint)value;

/*!
 @brief Sets this field in a copy of the MonthDay to a parsed text value.
 <p>
 The MonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param text  the text value to set
 @return a copy of the MonthDay with the field value changed
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimeMonthDay *)setCopyWithNSString:(NSString *)text;

/*!
 @brief Sets this field in a copy of the MonthDay to a parsed text value.
 <p>
 The MonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param text  the text value to set
 @param locale  optional locale to use for selecting a text symbol
 @return a copy of the MonthDay with the field value changed
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimeMonthDay *)setCopyWithNSString:(NSString *)text
                          withJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Protected

/*!
 @brief Gets the partial that this property belongs to.
 @return the partial
 */
- (id<OrgJodaTimeReadablePartial>)getReadablePartial;

#pragma mark Package-Private

/*!
 @brief Constructs a property.
 @param partial  the partial instance
 @param fieldIndex  the index in the partial
 */
- (instancetype)initWithOrgJodaTimeMonthDay:(OrgJodaTimeMonthDay *)partial
                                    withInt:(jint)fieldIndex;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeMonthDay_Property)

FOUNDATION_EXPORT void OrgJodaTimeMonthDay_Property_initWithOrgJodaTimeMonthDay_withInt_(OrgJodaTimeMonthDay_Property *self, OrgJodaTimeMonthDay *partial, jint fieldIndex);

FOUNDATION_EXPORT OrgJodaTimeMonthDay_Property *new_OrgJodaTimeMonthDay_Property_initWithOrgJodaTimeMonthDay_withInt_(OrgJodaTimeMonthDay *partial, jint fieldIndex) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMonthDay_Property *create_OrgJodaTimeMonthDay_Property_initWithOrgJodaTimeMonthDay_withInt_(OrgJodaTimeMonthDay *partial, jint fieldIndex);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeMonthDay_Property)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeMonthDay")
