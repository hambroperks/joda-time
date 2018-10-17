//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/YearMonthDay.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeYearMonthDay")
#ifdef RESTRICT_OrgJodaTimeYearMonthDay
#define INCLUDE_ALL_OrgJodaTimeYearMonthDay 0
#else
#define INCLUDE_ALL_OrgJodaTimeYearMonthDay 1
#endif
#undef RESTRICT_OrgJodaTimeYearMonthDay

#if !defined (OrgJodaTimeYearMonthDay_) && (INCLUDE_ALL_OrgJodaTimeYearMonthDay || defined(INCLUDE_OrgJodaTimeYearMonthDay))
#define OrgJodaTimeYearMonthDay_

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
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateMidnight;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeInterval;
@class OrgJodaTimeLocalDate;
@class OrgJodaTimeTimeOfDay;
@class OrgJodaTimeYearMonthDay_Property;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief YearMonthDay is an immutable partial supporting the year, monthOfYear
 and dayOfMonth fields.
 <p>
 NOTE: This class only supports the three fields listed above. Thus, you
 cannot query the dayOfWeek or centuryOfEra fields for example.
 The new <code>LocalDate</code> class removes this restriction.
 <p>
 Calculations on YearMonthDay are performed using a <code>Chronology</code>.
 This chronology is set to be in the UTC time zone for all calculations.
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
 YearMonthDay is thread-safe and immutable, provided that the Chronology is as well.
 All standard Chronology classes supplied are thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeYearMonthDay : OrgJodaTimeBaseBasePartial < OrgJodaTimeReadablePartial, JavaIoSerializable >

#pragma mark Public

/*!
 @brief Constructs a YearMonthDay with the current date, using ISOChronology in
 the default zone to extract the fields.
 <p>
 The constructor uses the default time zone, resulting in the local time
 being initialised. Once the constructor is complete, all further calculations
 are performed without reference to a timezone (by switching to UTC).
 */
- (instancetype)init;

/*!
 @brief Constructs a YearMonthDay with the current date, using the specified chronology
 and zone to extract the fields.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a timezone (by switching to UTC).
 @param chronology  the chronology, null means ISOChronology in the default zone
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs a YearMonthDay with the current date, using ISOChronology in
 the specified zone to extract the fields.
 <p>
 The constructor uses the specified time zone to obtain the current date.
 Once the constructor is complete, all further calculations
 are performed without reference to a timezone (by switching to UTC).
 @param zone  the zone to use, null means default zone
 @since 1.1
 */
- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Constructs a YearMonthDay with specified time field values
 using <code>ISOChronology</code> in the default zone.
 <p>
 The constructor uses the no time zone initialising the fields as provided.
 Once the constructor is complete, all further calculations
 are performed without reference to a timezone (by switching to UTC).
 @param year  the year
 @param monthOfYear  the month of the year
 @param dayOfMonth  the day of the month
 */
- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth;

/*!
 @brief Constructs a YearMonthDay with specified time field values.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a timezone (by switching to UTC).
 @param year  the year
 @param monthOfYear  the month of the year
 @param dayOfMonth  the day of the month
 @param chronology  the chronology, null means ISOChronology in the default zone
 */
- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs a YearMonthDay extracting the partial fields from the specified
 milliseconds using the ISOChronology in the default zone.
 <p>
 The constructor uses the default time zone, resulting in the local time
 being initialised. Once the constructor is complete, all further calculations
 are performed without reference to a timezone (by switching to UTC).
 @param instant  the milliseconds from 1970-01-01T00:00:00Z
 */
- (instancetype)initWithLong:(jlong)instant;

/*!
 @brief Constructs a YearMonthDay extracting the partial fields from the specified
 milliseconds using the chronology provided.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a timezone (by switching to UTC).
 @param instant  the milliseconds from 1970-01-01T00:00:00Z
 @param chronology  the chronology, null means ISOChronology in the default zone
 */
- (instancetype)initWithLong:(jlong)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs a YearMonthDay from an Object that represents a time.
 <p>
 The recognised object types are defined in
 <code>ConverterManager</code> and
 include ReadableInstant, String, Calendar and Date.
 The String formats are described by <code>ISODateTimeFormat.dateOptionalTimeParser()</code>.
 <p>
 The chronology used will be derived from the object, defaulting to ISO.
 <p>
 NOTE: Prior to v1.3 the string format was described by
 <code>ISODateTimeFormat.dateTimeParser()</code>. Time only strings are now rejected.
 @param instant  the datetime object, null means now
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant;

/*!
 @brief Constructs a YearMonthDay from an Object that represents a time, using the
 specified chronology.
 <p>
 The recognised object types are defined in
 <code>ConverterManager</code> and
 include ReadableInstant, String, Calendar and Date.
 The String formats are described by <code>ISODateTimeFormat.dateOptionalTimeParser()</code>.
 <p>
 The constructor uses the time zone of the chronology specified.
 Once the constructor is complete, all further calculations are performed
 without reference to a timezone (by switching to UTC).
 The specified chronology overrides that of the object.
 <p>
 NOTE: Prior to v1.3 the string format was described by
 <code>ISODateTimeFormat.dateTimeParser()</code>. Time only strings are now rejected.
 @param instant  the datetime object, null means now
 @param chronology  the chronology, null means ISO default
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Get the day of month field property which provides access to advanced functionality.
 @return the day of month property
 */
- (OrgJodaTimeYearMonthDay_Property *)dayOfMonth;

/*!
 @brief Constructs a YearMonthDay from a <code>java.util.Calendar</code>
 using exactly the same field values avoiding any time zone effects.
 <p>
 Each field is queried from the Calendar and assigned to the YearMonthDay.
 This is useful if you have been using the Calendar as a local date,
 ignoring the zone.
 <p>
 This factory method ignores the type of the calendar and always
 creates a YearMonthDay with ISO chronology. It is expected that you
 will only pass in instances of <code>GregorianCalendar</code> however
 this is not validated.
 @param calendar  the Calendar to extract fields from
 @return the created YearMonthDay
 @throws IllegalArgumentException if the calendar is null
 @throws IllegalArgumentException if the date is invalid for the ISO chronology
 @since 1.2
 */
+ (OrgJodaTimeYearMonthDay *)fromCalendarFieldsWithJavaUtilCalendar:(JavaUtilCalendar *)calendar;

/*!
 @brief Constructs a YearMonthDay from a <code>java.util.Date</code>
 using exactly the same field values avoiding any time zone effects.
 <p>
 Each field is queried from the Date and assigned to the YearMonthDay.
 This is useful if you have been using the Date as a local date,
 ignoring the zone.
 <p>
 This factory method always creates a YearMonthDay with ISO chronology.
 @param date  the Date to extract fields from
 @return the created YearMonthDay
 @throws IllegalArgumentException if the calendar is null
 @throws IllegalArgumentException if the date is invalid for the ISO chronology
 @since 1.2
 */
+ (OrgJodaTimeYearMonthDay *)fromDateFieldsWithJavaUtilDate:(JavaUtilDate *)date;

/*!
 @brief Get the day of month field value.
 @return the day of month
 */
- (jint)getDayOfMonth;

/*!
 @brief Gets the field type at the specified index.
 @param index  the index to retrieve
 @return the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(jint)index;

/*!
 @brief Gets an array of the field type of each of the fields that this partial supports.
 <p>
 The fields are returned largest to smallest, Year, Month, Day
 @return the array of field types (cloned), largest to smallest
 */
- (IOSObjectArray *)getFieldTypes;

/*!
 @brief Get the month of year field value.
 @return the month of year
 */
- (jint)getMonthOfYear;

/*!
 @brief Get the year field value.
 @return the year
 */
- (jint)getYear;

/*!
 @brief Returns a copy of this date with the specified period taken away.
 <p>
 If the amount is zero or null, then <code>this</code> is returned.
 <p>
 This method is typically used to subtract complex period instances.
 Subtracting one field is best achieved using methods
 like <code>minusYears(int)</code>.
 @param period  the period to reduce this instant by
 @return a copy of this instance with the period taken away
 @throws ArithmeticException if the new datetime exceeds the capacity of a long
 */
- (OrgJodaTimeYearMonthDay *)minusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Returns a copy of this date minus the specified number of days.
 <p>
 This datetime instance is immutable and unaffected by this method call.
 <p>
 The following three lines are identical in effect:
 @code

  YearMonthDay subtracted = dt.minusDays(6);
  YearMonthDay subtracted = dt.minus(Period.days(6));
  YearMonthDay subtracted = dt.withFieldAdded(DurationFieldType.days(), -6);
  
@endcode
 @param days  the amount of days to subtract, may be negative
 @return the new datetime minus the increased days
 @since 1.1
 */
- (OrgJodaTimeYearMonthDay *)minusDaysWithInt:(jint)days;

/*!
 @brief Returns a copy of this date minus the specified number of months.
 <p>
 This datetime instance is immutable and unaffected by this method call.
 <p>
 The following three lines are identical in effect:
 @code

  YearMonthDay subtracted = dt.minusMonths(6);
  YearMonthDay subtracted = dt.minus(Period.months(6));
  YearMonthDay subtracted = dt.withFieldAdded(DurationFieldType.months(), -6);
  
@endcode
 @param months  the amount of months to subtract, may be negative
 @return the new datetime minus the increased months
 @since 1.1
 */
- (OrgJodaTimeYearMonthDay *)minusMonthsWithInt:(jint)months;

/*!
 @brief Returns a copy of this date minus the specified number of years.
 <p>
 This datetime instance is immutable and unaffected by this method call.
 <p>
 The following three lines are identical in effect:
 @code

  YearMonthDay subtracted = dt.minusYears(6);
  YearMonthDay subtracted = dt.minus(Period.years(6));
  YearMonthDay subtracted = dt.withFieldAdded(DurationFieldType.years(), -6);
  
@endcode
 @param years  the amount of years to subtract, may be negative
 @return the new datetime minus the increased years
 @since 1.1
 */
- (OrgJodaTimeYearMonthDay *)minusYearsWithInt:(jint)years;

/*!
 @brief Get the month of year field property which provides access to advanced functionality.
 @return the month of year property
 */
- (OrgJodaTimeYearMonthDay_Property *)monthOfYear;

/*!
 @brief Returns a copy of this date with the specified period added.
 <p>
 If the amount is zero or null, then <code>this</code> is returned.
 <p>
 This method is typically used to add complex period instances.
 Adding one field is best achieved using methods
 like <code>plusYears(int)</code>.
 @param period  the duration to add to this one, null means zero
 @return a copy of this instance with the period added
 @throws ArithmeticException if the new datetime exceeds the capacity of a long
 */
- (OrgJodaTimeYearMonthDay *)plusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Returns a copy of this date plus the specified number of days.
 <p>
 This date instance is immutable and unaffected by this method call.
 <p>
 The following three lines are identical in effect:
 @code

  YearMonthDay added = dt.plusDays(6);
  YearMonthDay added = dt.plus(Period.days(6));
  YearMonthDay added = dt.withFieldAdded(DurationFieldType.days(), 6);
  
@endcode
 @param days  the amount of days to add, may be negative
 @return the new date plus the increased days
 @since 1.1
 */
- (OrgJodaTimeYearMonthDay *)plusDaysWithInt:(jint)days;

/*!
 @brief Returns a copy of this date plus the specified number of months.
 <p>
 This date instance is immutable and unaffected by this method call.
 <p>
 The following three lines are identical in effect:
 @code

  YearMonthDay added = dt.plusMonths(6);
  YearMonthDay added = dt.plus(Period.months(6));
  YearMonthDay added = dt.withFieldAdded(DurationFieldType.months(), 6);
  
@endcode
 @param months  the amount of months to add, may be negative
 @return the new date plus the increased months
 @since 1.1
 */
- (OrgJodaTimeYearMonthDay *)plusMonthsWithInt:(jint)months;

/*!
 @brief Returns a copy of this date plus the specified number of years.
 <p>
 This date instance is immutable and unaffected by this method call.
 <p>
 The following three lines are identical in effect:
 @code

  YearMonthDay added = dt.plusYears(6);
  YearMonthDay added = dt.plus(Period.years(6));
  YearMonthDay added = dt.withFieldAdded(DurationFieldType.years(), 6);
  
@endcode
 @param years  the amount of years to add, may be negative
 @return the new date plus the increased years
 @since 1.1
 */
- (OrgJodaTimeYearMonthDay *)plusYearsWithInt:(jint)years;

/*!
 @brief Gets the property object for the specified type, which contains
 many useful methods.
 @param type  the field type to get the property for
 @return the property object
 @throws IllegalArgumentException if the field is null or unsupported
 */
- (OrgJodaTimeYearMonthDay_Property *)propertyWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/*!
 @brief Gets the number of fields in this partial.
 @return the field count
 */
- (jint)size;

/*!
 @brief Converts this object to a DateMidnight in the default time zone.
 @return the DateMidnight instance in the default zone
 */
- (OrgJodaTimeDateMidnight *)toDateMidnight;

/*!
 @brief Converts this object to a DateMidnight.
 @param zone  the zone to get the DateMidnight in, null means default
 @return the DateMidnight instance
 */
- (OrgJodaTimeDateMidnight *)toDateMidnightWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Converts this object to a DateTime using a TimeOfDay to fill in the
 missing fields and using the default time zone.
 This instance is immutable and unaffected by this method call.
 <p>
 The resulting chronology is determined by the chronology of this
 YearMonthDay plus the time zone.
 The chronology of the time is ignored - only the field values are used.
 @param time  the time of day to use, null means current time
 @return the DateTime instance
 */
- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeTimeOfDay:(OrgJodaTimeTimeOfDay *)time;

/*!
 @brief Converts this object to a DateTime using a TimeOfDay to fill in the
 missing fields.
 This instance is immutable and unaffected by this method call.
 <p>
 The resulting chronology is determined by the chronology of this
 YearMonthDay plus the time zone.
 The chronology of the time is ignored - only the field values are used.
 @param time  the time of day to use, null means current time
 @param zone  the zone to get the DateTime in, null means default
 @return the DateTime instance
 */
- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeTimeOfDay:(OrgJodaTimeTimeOfDay *)time
                                withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Converts this partial to a full datetime using the default time zone
 setting the date fields from this instance and the time fields from
 the current time.
 @return this date as a datetime with the time as the current time
 */
- (OrgJodaTimeDateTime *)toDateTimeAtCurrentTime;

/*!
 @brief Converts this partial to a full datetime using the specified time zone
 setting the date fields from this instance and the time fields from
 the current time.
 <p>
 This method uses the chronology from this instance plus the time zone
 specified.
 @param zone  the zone to use, null means default
 @return this date as a datetime with the time as the current time
 */
- (OrgJodaTimeDateTime *)toDateTimeAtCurrentTimeWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Converts this YearMonthDay to a full datetime at midnight using the
 default time zone.
 @return this date as a datetime at midnight
 */
- (OrgJodaTimeDateTime *)toDateTimeAtMidnight;

/*!
 @brief Converts this YearMonthDay to a full datetime at midnight using the
 specified time zone.
 <p>
 This method uses the chronology from this instance plus the time zone
 specified.
 @param zone  the zone to use, null means default
 @return this date as a datetime at midnight
 */
- (OrgJodaTimeDateTime *)toDateTimeAtMidnightWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Converts this object to an Interval representing the whole day
 in the default time zone.
 @return a interval over the day
 */
- (OrgJodaTimeInterval *)toInterval;

/*!
 @brief Converts this object to an Interval representing the whole day.
 @param zone  the zone to get the Interval in, null means default
 @return a interval over the day
 */
- (OrgJodaTimeInterval *)toIntervalWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Converts this object to a LocalDate with the same date and chronology.
 @return a LocalDate with the same date and chronology
 @since 1.3
 */
- (OrgJodaTimeLocalDate *)toLocalDate;

/*!
 @brief Output the date in the ISO8601 format YYYY-MM-DD.
 @return ISO8601 formatted string
 */
- (NSString *)description;

/*!
 @brief Returns a copy of this date with the specified chronology.
 This instance is immutable and unaffected by this method call.
 <p>
 This method retains the values of the fields, thus the result will
 typically refer to a different instant.
 <p>
 The time zone of the specified chronology is ignored, as YearMonthDay
 operates without a time zone.
 @param newChronology  the new chronology, null means ISO
 @return a copy of this datetime with a different chronology
 @throws IllegalArgumentException if the values are invalid for the new chronology
 */
- (OrgJodaTimeYearMonthDay *)withChronologyRetainFieldsWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)newChronology;

/*!
 @brief Returns a copy of this date with the day of month field updated.
 <p>
 YearMonthDay is immutable, so there are no set methods.
 Instead, this method returns a new instance with the value of
 day of month changed.
 @param dayOfMonth  the day of month to set
 @return a copy of this object with the field set
 @throws IllegalArgumentException if the value is invalid
 @since 1.3
 */
- (OrgJodaTimeYearMonthDay *)withDayOfMonthWithInt:(jint)dayOfMonth;

/*!
 @brief Returns a copy of this date with the specified field set to a new value.
 <p>
 For example, if the field type is <code>dayOfMonth</code> then the day
 would be changed in the returned instance.
 <p>
 These three lines are equivalent:
 @code

  YearMonthDay updated = ymd.withField(DateTimeFieldType.dayOfMonth(), 6);
  YearMonthDay updated = ymd.dayOfMonth().setCopy(6);
  YearMonthDay updated = ymd.property(DateTimeFieldType.dayOfMonth()).setCopy(6);
  
@endcode
 @param fieldType  the field type to set, not null
 @param value  the value to set
 @return a copy of this instance with the field set
 @throws IllegalArgumentException if the value is null or invalid
 */
- (OrgJodaTimeYearMonthDay *)withFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                               withInt:(jint)value;

/*!
 @brief Returns a copy of this date with the value of the specified field increased.
 <p>
 If the addition is zero, then <code>this</code> is returned.
 <p>
 These three lines are equivalent:
 @code

  YearMonthDay added = ymd.withFieldAdded(DurationFieldType.days(), 6);
  YearMonthDay added = ymd.plusDays(6);
  YearMonthDay added = ymd.dayOfMonth().addToCopy(6);
  
@endcode
 @param fieldType  the field type to add to, not null
 @param amount  the amount to add
 @return a copy of this instance with the field updated
 @throws IllegalArgumentException if the value is null or invalid
 @throws ArithmeticException if the new datetime exceeds the capacity
 */
- (OrgJodaTimeYearMonthDay *)withFieldAddedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)fieldType
                                                                    withInt:(jint)amount;

/*!
 @brief Returns a copy of this date with the month of year field updated.
 <p>
 YearMonthDay is immutable, so there are no set methods.
 Instead, this method returns a new instance with the value of
 month of year changed.
 @param monthOfYear  the month of year to set
 @return a copy of this object with the field set
 @throws IllegalArgumentException if the value is invalid
 @since 1.3
 */
- (OrgJodaTimeYearMonthDay *)withMonthOfYearWithInt:(jint)monthOfYear;

/*!
 @brief Returns a copy of this date with the specified period added.
 <p>
 If the addition is zero, then <code>this</code> is returned.
 Fields in the period that aren't present in the partial are ignored.
 <p>
 This method is typically used to add multiple copies of complex
 period instances. Adding one field is best achieved using methods
 like <code>withFieldAdded(DurationFieldType,int)</code>
 or <code>plusYears(int)</code>.
 @param period  the period to add to this one, null means zero
 @param scalar  the amount of times to add, such as -1 to subtract once
 @return a copy of this instance with the period added
 @throws ArithmeticException if the new datetime exceeds the capacity
 */
- (OrgJodaTimeYearMonthDay *)withPeriodAddedWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                                  withInt:(jint)scalar;

/*!
 @brief Returns a copy of this date with the year field updated.
 <p>
 YearMonthDay is immutable, so there are no set methods.
 Instead, this method returns a new instance with the value of
 year changed.
 @param year  the year to set
 @return a copy of this object with the field set
 @throws IllegalArgumentException if the value is invalid
 @since 1.3
 */
- (OrgJodaTimeYearMonthDay *)withYearWithInt:(jint)year;

/*!
 @brief Get the year field property which provides access to advanced functionality.
 @return the year property
 */
- (OrgJodaTimeYearMonthDay_Property *)year;

#pragma mark Protected

/*!
 @brief Gets the field for a specific index in the chronology specified.
 <p>
 This method must not use any instance variables.
 @param index  the index to retrieve
 @param chrono  the chronology to use
 @return the field
 */
- (OrgJodaTimeDateTimeField *)getFieldWithInt:(jint)index
                    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

#pragma mark Package-Private

/*!
 @brief Constructs a YearMonthDay with values from this instance and a new chronology.
 @param partial  the partial to base this new instance on
 @param chrono  the new chronology
 */
- (instancetype)initWithOrgJodaTimeYearMonthDay:(OrgJodaTimeYearMonthDay *)partial
                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Constructs a YearMonthDay with chronology from this instance and new values.
 @param partial  the partial to base this new instance on
 @param values  the new set of values
 */
- (instancetype)initWithOrgJodaTimeYearMonthDay:(OrgJodaTimeYearMonthDay *)partial
                                   withIntArray:(IOSIntArray *)values;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeYearMonthDay)

/*!
 @brief The index of the year field in the field array
 */
inline jint OrgJodaTimeYearMonthDay_get_YEAR();
#define OrgJodaTimeYearMonthDay_YEAR 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeYearMonthDay, YEAR, jint)

/*!
 @brief The index of the monthOfYear field in the field array
 */
inline jint OrgJodaTimeYearMonthDay_get_MONTH_OF_YEAR();
#define OrgJodaTimeYearMonthDay_MONTH_OF_YEAR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeYearMonthDay, MONTH_OF_YEAR, jint)

/*!
 @brief The index of the dayOfMonth field in the field array
 */
inline jint OrgJodaTimeYearMonthDay_get_DAY_OF_MONTH();
#define OrgJodaTimeYearMonthDay_DAY_OF_MONTH 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeYearMonthDay, DAY_OF_MONTH, jint)

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *OrgJodaTimeYearMonthDay_fromCalendarFieldsWithJavaUtilCalendar_(JavaUtilCalendar *calendar);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *OrgJodaTimeYearMonthDay_fromDateFieldsWithJavaUtilDate_(JavaUtilDate *date);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_init(OrgJodaTimeYearMonthDay *self);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_init();

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithLong_(OrgJodaTimeYearMonthDay *self, jlong instant);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithLong_(jlong instant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithLong_(jlong instant);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithLong_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, jlong instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithLong_withOrgJodaTimeChronology_(jlong instant, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithLong_withOrgJodaTimeChronology_(jlong instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithId_(OrgJodaTimeYearMonthDay *self, id instant);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithId_(id instant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithId_(id instant);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, id instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithId_withOrgJodaTimeChronology_(id instant, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithId_withOrgJodaTimeChronology_(id instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_(OrgJodaTimeYearMonthDay *self, jint year, jint monthOfYear, jint dayOfMonth);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_(jint year, jint monthOfYear, jint dayOfMonth) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_(jint year, jint monthOfYear, jint dayOfMonth);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, jint year, jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(jint year, jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(jint year, jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeYearMonthDay *partial, IOSIntArray *values);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(OrgJodaTimeYearMonthDay *partial, IOSIntArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(OrgJodaTimeYearMonthDay *partial, IOSIntArray *values);

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeYearMonthDay *partial, OrgJodaTimeChronology *chrono);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *partial, OrgJodaTimeChronology *chrono) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay *create_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *partial, OrgJodaTimeChronology *chrono);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeYearMonthDay)

#endif

#if !defined (OrgJodaTimeYearMonthDay_Property_) && (INCLUDE_ALL_OrgJodaTimeYearMonthDay || defined(INCLUDE_OrgJodaTimeYearMonthDay_Property))
#define OrgJodaTimeYearMonthDay_Property_

#define RESTRICT_OrgJodaTimeFieldAbstractPartialFieldProperty 1
#define INCLUDE_OrgJodaTimeFieldAbstractPartialFieldProperty 1
#include "org/joda/time/field/AbstractPartialFieldProperty.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilLocale;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeYearMonthDay;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief The property class for <code>YearMonthDay</code>.
 <p>
 This class binds a <code>YearMonthDay</code> to a <code>DateTimeField</code>.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeYearMonthDay_Property : OrgJodaTimeFieldAbstractPartialFieldProperty < JavaIoSerializable >

#pragma mark Public

/*!
 @brief Adds to the value of this field in a copy of this YearMonthDay.
 <p>
 The value will be added to this field. If the value is too large to be
 added solely to this field then it will affect larger fields.
 Smaller fields are unaffected.
 <p>
 If the result would be too large, beyond the maximum year, then an
 IllegalArgumentException is thrown.
 <p>
 The YearMonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param valueToAdd  the value to add to the field in the copy
 @return a copy of the YearMonthDay with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimeYearMonthDay *)addToCopyWithInt:(jint)valueToAdd;

/*!
 @brief Adds to the value of this field in a copy of this YearMonthDay wrapping
 within this field if the maximum value is reached.
 <p>
 The value will be added to this field. If the value is too large to be
 added solely to this field then it wraps within this field.
 Other fields are unaffected.
 <p>
 For example,
 <code>2004-12-20</code> addWrapField one month returns <code>2004-01-20</code>.
 <p>
 The YearMonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param valueToAdd  the value to add to the field in the copy
 @return a copy of the YearMonthDay with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimeYearMonthDay *)addWrapFieldToCopyWithInt:(jint)valueToAdd;

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
- (OrgJodaTimeYearMonthDay *)getYearMonthDay;

/*!
 @brief Sets this field in a copy of the YearMonthDay.
 <p>
 The YearMonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param value  the value to set the field in the copy to
 @return a copy of the YearMonthDay with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimeYearMonthDay *)setCopyWithInt:(jint)value;

/*!
 @brief Sets this field in a copy of the YearMonthDay to a parsed text value.
 <p>
 The YearMonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param text  the text value to set
 @return a copy of the YearMonthDay with the field value changed
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimeYearMonthDay *)setCopyWithNSString:(NSString *)text;

/*!
 @brief Sets this field in a copy of the YearMonthDay to a parsed text value.
 <p>
 The YearMonthDay attached to this property is unchanged by this call.
 Instead, a new instance is returned.
 @param text  the text value to set
 @param locale  optional locale to use for selecting a text symbol
 @return a copy of the YearMonthDay with the field value changed
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimeYearMonthDay *)setCopyWithNSString:(NSString *)text
                              withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Returns a new YearMonthDay with this field set to the maximum value
 for this field.
 <p>
 This operation is useful for obtaining a DateTime on the last day
 of the month, as month lengths vary.
 @code

  YearMonthDay lastDayOfMonth = dt.dayOfMonth().withMaximumValue();
  
@endcode
 <p>
 The YearMonthDay attached to this property is unchanged by this call.
 @return a copy of the YearMonthDay with this field set to its maximum
 @since 1.2
 */
- (OrgJodaTimeYearMonthDay *)withMaximumValue;

/*!
 @brief Returns a new YearMonthDay with this field set to the minimum value
 for this field.
 <p>
 The YearMonthDay attached to this property is unchanged by this call.
 @return a copy of the YearMonthDay with this field set to its minimum
 @since 1.2
 */
- (OrgJodaTimeYearMonthDay *)withMinimumValue;

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
- (instancetype)initWithOrgJodaTimeYearMonthDay:(OrgJodaTimeYearMonthDay *)partial
                                        withInt:(jint)fieldIndex;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeYearMonthDay_Property)

FOUNDATION_EXPORT void OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(OrgJodaTimeYearMonthDay_Property *self, OrgJodaTimeYearMonthDay *partial, jint fieldIndex);

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay_Property *new_OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(OrgJodaTimeYearMonthDay *partial, jint fieldIndex) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeYearMonthDay_Property *create_OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(OrgJodaTimeYearMonthDay *partial, jint fieldIndex);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeYearMonthDay_Property)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeYearMonthDay")
