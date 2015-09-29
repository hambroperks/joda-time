//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/PeriodType.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/field/FieldUtils.h"

#define OrgJodaTimePeriodType_serialVersionUID 2274324892792009998LL

@interface OrgJodaTimePeriodType () {
 @public
  /*!
   @brief The name of the type
   */
  NSString *iName_;
  /*!
   @brief The array of types
   */
  IOSObjectArray *iTypes_;
  /*!
   @brief The array of indices
   */
  IOSIntArray *iIndices_;
}

/*!
 @brief Removes the field specified by indices index.
 @param indicesIndex  the index to remove
 @param name  the name addition
 @return the new type
 */
- (OrgJodaTimePeriodType *)withFieldRemovedWithInt:(jint)indicesIndex
                                      withNSString:(NSString *)name;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimePeriodType, iName_, NSString *)
J2OBJC_FIELD_SETTER(OrgJodaTimePeriodType, iTypes_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgJodaTimePeriodType, iIndices_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, serialVersionUID, jlong)

static id<JavaUtilMap> OrgJodaTimePeriodType_cTypes_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cTypes_, id<JavaUtilMap>)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cStandard_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cStandard_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cStandard_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cYMDTime_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cYMDTime_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cYMDTime_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cYMD_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cYMD_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cYMD_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cYWDTime_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cYWDTime_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cYWDTime_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cYWD_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cYWD_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cYWD_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cYDTime_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cYDTime_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cYDTime_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cYD_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cYD_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cYD_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cDTime_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cDTime_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cDTime_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cTime_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cTime_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cTime_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cYears_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cYears_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cYears_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cMonths_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cMonths_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cMonths_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cWeeks_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cWeeks_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cWeeks_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cDays_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cDays_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cDays_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cHours_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cHours_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cHours_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cMinutes_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cMinutes_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cMinutes_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cSeconds_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cSeconds_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cSeconds_, OrgJodaTimePeriodType *)

static OrgJodaTimePeriodType *OrgJodaTimePeriodType_cMillis_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, cMillis_, OrgJodaTimePeriodType *)
J2OBJC_STATIC_FIELD_SETTER(OrgJodaTimePeriodType, cMillis_, OrgJodaTimePeriodType *)

__attribute__((unused)) static OrgJodaTimePeriodType *OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(OrgJodaTimePeriodType *self, jint indicesIndex, NSString *name);

J2OBJC_INITIALIZED_DEFN(OrgJodaTimePeriodType)

jint OrgJodaTimePeriodType_YEAR_INDEX_ = 0;
jint OrgJodaTimePeriodType_MONTH_INDEX_ = 1;
jint OrgJodaTimePeriodType_WEEK_INDEX_ = 2;
jint OrgJodaTimePeriodType_DAY_INDEX_ = 3;
jint OrgJodaTimePeriodType_HOUR_INDEX_ = 4;
jint OrgJodaTimePeriodType_MINUTE_INDEX_ = 5;
jint OrgJodaTimePeriodType_SECOND_INDEX_ = 6;
jint OrgJodaTimePeriodType_MILLI_INDEX_ = 7;

@implementation OrgJodaTimePeriodType

+ (OrgJodaTimePeriodType *)standard {
  return OrgJodaTimePeriodType_standard();
}

+ (OrgJodaTimePeriodType *)yearMonthDayTime {
  return OrgJodaTimePeriodType_yearMonthDayTime();
}

+ (OrgJodaTimePeriodType *)yearMonthDay {
  return OrgJodaTimePeriodType_yearMonthDay();
}

+ (OrgJodaTimePeriodType *)yearWeekDayTime {
  return OrgJodaTimePeriodType_yearWeekDayTime();
}

+ (OrgJodaTimePeriodType *)yearWeekDay {
  return OrgJodaTimePeriodType_yearWeekDay();
}

+ (OrgJodaTimePeriodType *)yearDayTime {
  return OrgJodaTimePeriodType_yearDayTime();
}

+ (OrgJodaTimePeriodType *)yearDay {
  return OrgJodaTimePeriodType_yearDay();
}

+ (OrgJodaTimePeriodType *)dayTime {
  return OrgJodaTimePeriodType_dayTime();
}

+ (OrgJodaTimePeriodType *)time {
  return OrgJodaTimePeriodType_time();
}

+ (OrgJodaTimePeriodType *)years {
  return OrgJodaTimePeriodType_years();
}

+ (OrgJodaTimePeriodType *)months {
  return OrgJodaTimePeriodType_months();
}

+ (OrgJodaTimePeriodType *)weeks {
  return OrgJodaTimePeriodType_weeks();
}

+ (OrgJodaTimePeriodType *)days {
  return OrgJodaTimePeriodType_days();
}

+ (OrgJodaTimePeriodType *)hours {
  return OrgJodaTimePeriodType_hours();
}

+ (OrgJodaTimePeriodType *)minutes {
  return OrgJodaTimePeriodType_minutes();
}

+ (OrgJodaTimePeriodType *)seconds {
  return OrgJodaTimePeriodType_seconds();
}

+ (OrgJodaTimePeriodType *)millis {
  return OrgJodaTimePeriodType_millis();
}

+ (OrgJodaTimePeriodType *)forFieldsWithOrgJodaTimeDurationFieldTypeArray:(IOSObjectArray *)types {
  return OrgJodaTimePeriodType_forFieldsWithOrgJodaTimeDurationFieldTypeArray_(types);
}

- (instancetype)initWithNSString:(NSString *)name
withOrgJodaTimeDurationFieldTypeArray:(IOSObjectArray *)types
                    withIntArray:(IOSIntArray *)indices {
  OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(self, name, types, indices);
  return self;
}

- (NSString *)getName {
  return iName_;
}

- (jint)size {
  return ((IOSObjectArray *) nil_chk(iTypes_))->size_;
}

- (OrgJodaTimeDurationFieldType *)getFieldTypeWithInt:(jint)index {
  return IOSObjectArray_Get(nil_chk(iTypes_), index);
}

- (jboolean)isSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  return ([self indexOfWithOrgJodaTimeDurationFieldType:type] >= 0);
}

- (jint)indexOfWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    if (IOSObjectArray_Get(nil_chk(iTypes_), i) == type) {
      return i;
    }
  }
  return -1;
}

- (NSString *)description {
  return JreStrcat("$$C", @"PeriodType[", [self getName], ']');
}

- (jint)getIndexedFieldWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                             withInt:(jint)index {
  jint realIndex = IOSIntArray_Get(nil_chk(iIndices_), index);
  return (realIndex == -1 ? 0 : [((id<OrgJodaTimeReadablePeriod>) nil_chk(period)) getValueWithInt:realIndex]);
}

- (jboolean)setIndexedFieldWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                 withInt:(jint)index
                                            withIntArray:(IOSIntArray *)values
                                                 withInt:(jint)newValue {
  jint realIndex = IOSIntArray_Get(nil_chk(iIndices_), index);
  if (realIndex == -1) {
    @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"Field is not supported") autorelease];
  }
  *IOSIntArray_GetRef(nil_chk(values), realIndex) = newValue;
  return true;
}

- (jboolean)addIndexedFieldWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                 withInt:(jint)index
                                            withIntArray:(IOSIntArray *)values
                                                 withInt:(jint)valueToAdd {
  if (valueToAdd == 0) {
    return false;
  }
  jint realIndex = IOSIntArray_Get(nil_chk(iIndices_), index);
  if (realIndex == -1) {
    @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"Field is not supported") autorelease];
  }
  *IOSIntArray_GetRef(nil_chk(values), realIndex) = OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_(IOSIntArray_Get(values, realIndex), valueToAdd);
  return true;
}

- (OrgJodaTimePeriodType *)withYearsRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 0, @"NoYears");
}

- (OrgJodaTimePeriodType *)withMonthsRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 1, @"NoMonths");
}

- (OrgJodaTimePeriodType *)withWeeksRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 2, @"NoWeeks");
}

- (OrgJodaTimePeriodType *)withDaysRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 3, @"NoDays");
}

- (OrgJodaTimePeriodType *)withHoursRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 4, @"NoHours");
}

- (OrgJodaTimePeriodType *)withMinutesRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 5, @"NoMinutes");
}

- (OrgJodaTimePeriodType *)withSecondsRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 6, @"NoSeconds");
}

- (OrgJodaTimePeriodType *)withMillisRemoved {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, 7, @"NoMillis");
}

- (OrgJodaTimePeriodType *)withFieldRemovedWithInt:(jint)indicesIndex
                                      withNSString:(NSString *)name {
  return OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(self, indicesIndex, name);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if ([obj isKindOfClass:[OrgJodaTimePeriodType class]] == false) {
    return false;
  }
  OrgJodaTimePeriodType *other = (OrgJodaTimePeriodType *) check_class_cast(obj, [OrgJodaTimePeriodType class]);
  return (JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(iTypes_, ((OrgJodaTimePeriodType *) nil_chk(other))->iTypes_));
}

- (NSUInteger)hash {
  jint hash_ = 0;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(iTypes_))->size_; i++) {
    hash_ += ((jint) [((OrgJodaTimeDurationFieldType *) nil_chk(IOSObjectArray_Get(iTypes_, i))) hash]);
  }
  return hash_;
}

- (void)dealloc {
  RELEASE_(iName_);
  RELEASE_(iTypes_);
  RELEASE_(iIndices_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgJodaTimePeriodType class]) {
    JreStrongAssignAndConsume(&OrgJodaTimePeriodType_cTypes_, new_JavaUtilHashMap_initWithInt_(32));
    J2OBJC_SET_INITIALIZED(OrgJodaTimePeriodType)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "standard", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "yearMonthDayTime", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "yearMonthDay", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "yearWeekDayTime", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "yearWeekDay", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "yearDayTime", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "yearDay", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "dayTime", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "time", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "years", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "months", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "weeks", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "days", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "hours", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "minutes", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "seconds", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "millis", NULL, "Lorg.joda.time.PeriodType;", 0x9, NULL, NULL },
    { "forFieldsWithOrgJodaTimeDurationFieldTypeArray:", "forFields", "Lorg.joda.time.PeriodType;", 0x29, NULL, NULL },
    { "initWithNSString:withOrgJodaTimeDurationFieldTypeArray:withIntArray:", "PeriodType", NULL, 0x4, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "getFieldTypeWithInt:", "getFieldType", "Lorg.joda.time.DurationFieldType;", 0x1, NULL, NULL },
    { "isSupportedWithOrgJodaTimeDurationFieldType:", "isSupported", "Z", 0x1, NULL, NULL },
    { "indexOfWithOrgJodaTimeDurationFieldType:", "indexOf", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getIndexedFieldWithOrgJodaTimeReadablePeriod:withInt:", "getIndexedField", "I", 0x0, NULL, NULL },
    { "setIndexedFieldWithOrgJodaTimeReadablePeriod:withInt:withIntArray:withInt:", "setIndexedField", "Z", 0x0, NULL, NULL },
    { "addIndexedFieldWithOrgJodaTimeReadablePeriod:withInt:withIntArray:withInt:", "addIndexedField", "Z", 0x0, NULL, NULL },
    { "withYearsRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withMonthsRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withWeeksRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withDaysRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withHoursRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withMinutesRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withSecondsRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withMillisRemoved", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "withFieldRemovedWithInt:withNSString:", "withFieldRemoved", "Lorg.joda.time.PeriodType;", 0x2, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimePeriodType_serialVersionUID },
    { "cTypes_", NULL, 0x1a, "Ljava.util.Map;", &OrgJodaTimePeriodType_cTypes_, "Ljava/util/Map<Lorg/joda/time/PeriodType;Ljava/lang/Object;>;", .constantValue.asLong = 0 },
    { "YEAR_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_YEAR_INDEX_, NULL, .constantValue.asLong = 0 },
    { "MONTH_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_MONTH_INDEX_, NULL, .constantValue.asLong = 0 },
    { "WEEK_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_WEEK_INDEX_, NULL, .constantValue.asLong = 0 },
    { "DAY_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_DAY_INDEX_, NULL, .constantValue.asLong = 0 },
    { "HOUR_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_HOUR_INDEX_, NULL, .constantValue.asLong = 0 },
    { "MINUTE_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_MINUTE_INDEX_, NULL, .constantValue.asLong = 0 },
    { "SECOND_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_SECOND_INDEX_, NULL, .constantValue.asLong = 0 },
    { "MILLI_INDEX_", NULL, 0x8, "I", &OrgJodaTimePeriodType_MILLI_INDEX_, NULL, .constantValue.asLong = 0 },
    { "cStandard_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cStandard_, NULL, .constantValue.asLong = 0 },
    { "cYMDTime_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cYMDTime_, NULL, .constantValue.asLong = 0 },
    { "cYMD_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cYMD_, NULL, .constantValue.asLong = 0 },
    { "cYWDTime_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cYWDTime_, NULL, .constantValue.asLong = 0 },
    { "cYWD_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cYWD_, NULL, .constantValue.asLong = 0 },
    { "cYDTime_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cYDTime_, NULL, .constantValue.asLong = 0 },
    { "cYD_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cYD_, NULL, .constantValue.asLong = 0 },
    { "cDTime_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cDTime_, NULL, .constantValue.asLong = 0 },
    { "cTime_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cTime_, NULL, .constantValue.asLong = 0 },
    { "cYears_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cYears_, NULL, .constantValue.asLong = 0 },
    { "cMonths_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cMonths_, NULL, .constantValue.asLong = 0 },
    { "cWeeks_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cWeeks_, NULL, .constantValue.asLong = 0 },
    { "cDays_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cDays_, NULL, .constantValue.asLong = 0 },
    { "cHours_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cHours_, NULL, .constantValue.asLong = 0 },
    { "cMinutes_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cMinutes_, NULL, .constantValue.asLong = 0 },
    { "cSeconds_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cSeconds_, NULL, .constantValue.asLong = 0 },
    { "cMillis_", NULL, 0xa, "Lorg.joda.time.PeriodType;", &OrgJodaTimePeriodType_cMillis_, NULL, .constantValue.asLong = 0 },
    { "iName_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "iTypes_", NULL, 0x12, "[Lorg.joda.time.DurationFieldType;", NULL, NULL, .constantValue.asLong = 0 },
    { "iIndices_", NULL, 0x12, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimePeriodType = { 2, "PeriodType", "org.joda.time", NULL, 0x1, 39, methods, 30, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimePeriodType;
}

@end

OrgJodaTimePeriodType *OrgJodaTimePeriodType_standard() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cStandard_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Standard", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years(), OrgJodaTimeDurationFieldType_months(), OrgJodaTimeDurationFieldType_weeks(), OrgJodaTimeDurationFieldType_days(), OrgJodaTimeDurationFieldType_hours(), OrgJodaTimeDurationFieldType_minutes(), OrgJodaTimeDurationFieldType_seconds(), OrgJodaTimeDurationFieldType_millis() } count:8 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, 1, 2, 3, 4, 5, 6, 7 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cStandard_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearMonthDayTime() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cYMDTime_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"YearMonthDayTime", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years(), OrgJodaTimeDurationFieldType_months(), OrgJodaTimeDurationFieldType_days(), OrgJodaTimeDurationFieldType_hours(), OrgJodaTimeDurationFieldType_minutes(), OrgJodaTimeDurationFieldType_seconds(), OrgJodaTimeDurationFieldType_millis() } count:7 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, 1, -1, 2, 3, 4, 5, 6 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cYMDTime_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearMonthDay() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cYMD_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"YearMonthDay", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years(), OrgJodaTimeDurationFieldType_months(), OrgJodaTimeDurationFieldType_days() } count:3 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, 1, -1, 2, -1, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cYMD_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearWeekDayTime() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cYWDTime_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"YearWeekDayTime", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years(), OrgJodaTimeDurationFieldType_weeks(), OrgJodaTimeDurationFieldType_days(), OrgJodaTimeDurationFieldType_hours(), OrgJodaTimeDurationFieldType_minutes(), OrgJodaTimeDurationFieldType_seconds(), OrgJodaTimeDurationFieldType_millis() } count:7 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, -1, 1, 2, 3, 4, 5, 6 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cYWDTime_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearWeekDay() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cYWD_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"YearWeekDay", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years(), OrgJodaTimeDurationFieldType_weeks(), OrgJodaTimeDurationFieldType_days() } count:3 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, -1, 1, 2, -1, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cYWD_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearDayTime() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cYDTime_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"YearDayTime", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years(), OrgJodaTimeDurationFieldType_days(), OrgJodaTimeDurationFieldType_hours(), OrgJodaTimeDurationFieldType_minutes(), OrgJodaTimeDurationFieldType_seconds(), OrgJodaTimeDurationFieldType_millis() } count:6 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, -1, -1, 1, 2, 3, 4, 5 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cYDTime_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearDay() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cYD_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"YearDay", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years(), OrgJodaTimeDurationFieldType_days() } count:2 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, -1, -1, 1, -1, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cYD_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_dayTime() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cDTime_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"DayTime", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_days(), OrgJodaTimeDurationFieldType_hours(), OrgJodaTimeDurationFieldType_minutes(), OrgJodaTimeDurationFieldType_seconds(), OrgJodaTimeDurationFieldType_millis() } count:5 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, -1, 0, 1, 2, 3, 4 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cDTime_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_time() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cTime_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Time", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_hours(), OrgJodaTimeDurationFieldType_minutes(), OrgJodaTimeDurationFieldType_seconds(), OrgJodaTimeDurationFieldType_millis() } count:4 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, -1, -1, 0, 1, 2, 3 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cTime_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_years() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cYears_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Years", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_years() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ 0, -1, -1, -1, -1, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cYears_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_months() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cMonths_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Months", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_months() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, 0, -1, -1, -1, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cMonths_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_weeks() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cWeeks_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Weeks", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_weeks() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, 0, -1, -1, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cWeeks_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_days() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cDays_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Days", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_days() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, -1, 0, -1, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cDays_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_hours() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cHours_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Hours", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_hours() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, -1, -1, 0, -1, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cHours_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_minutes() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cMinutes_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Minutes", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_minutes() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, -1, -1, -1, 0, -1, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cMinutes_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_seconds() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cSeconds_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Seconds", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_seconds() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, -1, -1, -1, -1, 0, -1 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cSeconds_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_millis() {
  OrgJodaTimePeriodType_initialize();
  OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_cMillis_;
  if (type == nil) {
    type = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(@"Millis", [IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeDurationFieldType_millis() } count:1 type:OrgJodaTimeDurationFieldType_class_()], [IOSIntArray arrayWithInts:(jint[]){ -1, -1, -1, -1, -1, -1, -1, 0 } count:8]) autorelease];
    JreStrongAssign(&OrgJodaTimePeriodType_cMillis_, type);
  }
  return type;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_forFieldsWithOrgJodaTimeDurationFieldTypeArray_(IOSObjectArray *types) {
  OrgJodaTimePeriodType_initialize();
  @synchronized(OrgJodaTimePeriodType_class_()) {
    if (types == nil || types->size_ == 0) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Types array must not be null or empty") autorelease];
    }
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(types))->size_; i++) {
      if (IOSObjectArray_Get(types, i) == nil) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Types array must not contain null") autorelease];
      }
    }
    id<JavaUtilMap> cache = OrgJodaTimePeriodType_cTypes_;
    if ([((id<JavaUtilMap>) nil_chk(cache)) isEmpty]) {
      [cache putWithId:OrgJodaTimePeriodType_standard() withId:OrgJodaTimePeriodType_standard()];
      [cache putWithId:OrgJodaTimePeriodType_yearMonthDayTime() withId:OrgJodaTimePeriodType_yearMonthDayTime()];
      [cache putWithId:OrgJodaTimePeriodType_yearMonthDay() withId:OrgJodaTimePeriodType_yearMonthDay()];
      [cache putWithId:OrgJodaTimePeriodType_yearWeekDayTime() withId:OrgJodaTimePeriodType_yearWeekDayTime()];
      [cache putWithId:OrgJodaTimePeriodType_yearWeekDay() withId:OrgJodaTimePeriodType_yearWeekDay()];
      [cache putWithId:OrgJodaTimePeriodType_yearDayTime() withId:OrgJodaTimePeriodType_yearDayTime()];
      [cache putWithId:OrgJodaTimePeriodType_yearDay() withId:OrgJodaTimePeriodType_yearDay()];
      [cache putWithId:OrgJodaTimePeriodType_dayTime() withId:OrgJodaTimePeriodType_dayTime()];
      [cache putWithId:OrgJodaTimePeriodType_time() withId:OrgJodaTimePeriodType_time()];
      [cache putWithId:OrgJodaTimePeriodType_years() withId:OrgJodaTimePeriodType_years()];
      [cache putWithId:OrgJodaTimePeriodType_months() withId:OrgJodaTimePeriodType_months()];
      [cache putWithId:OrgJodaTimePeriodType_weeks() withId:OrgJodaTimePeriodType_weeks()];
      [cache putWithId:OrgJodaTimePeriodType_days() withId:OrgJodaTimePeriodType_days()];
      [cache putWithId:OrgJodaTimePeriodType_hours() withId:OrgJodaTimePeriodType_hours()];
      [cache putWithId:OrgJodaTimePeriodType_minutes() withId:OrgJodaTimePeriodType_minutes()];
      [cache putWithId:OrgJodaTimePeriodType_seconds() withId:OrgJodaTimePeriodType_seconds()];
      [cache putWithId:OrgJodaTimePeriodType_millis() withId:OrgJodaTimePeriodType_millis()];
    }
    OrgJodaTimePeriodType *inPartType = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(nil, types, nil) autorelease];
    id cached = [cache getWithId:inPartType];
    if ([cached isKindOfClass:[OrgJodaTimePeriodType class]]) {
      return (OrgJodaTimePeriodType *) check_class_cast(cached, [OrgJodaTimePeriodType class]);
    }
    if (cached != nil) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"PeriodType does not support fields: ", cached)) autorelease];
    }
    OrgJodaTimePeriodType *type = OrgJodaTimePeriodType_standard();
    id<JavaUtilList> list = [new_JavaUtilArrayList_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_(types)) autorelease];
    if ([list removeWithId:OrgJodaTimeDurationFieldType_years()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withYearsRemoved];
    }
    if ([list removeWithId:OrgJodaTimeDurationFieldType_months()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withMonthsRemoved];
    }
    if ([list removeWithId:OrgJodaTimeDurationFieldType_weeks()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withWeeksRemoved];
    }
    if ([list removeWithId:OrgJodaTimeDurationFieldType_days()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withDaysRemoved];
    }
    if ([list removeWithId:OrgJodaTimeDurationFieldType_hours()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withHoursRemoved];
    }
    if ([list removeWithId:OrgJodaTimeDurationFieldType_minutes()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withMinutesRemoved];
    }
    if ([list removeWithId:OrgJodaTimeDurationFieldType_seconds()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withSecondsRemoved];
    }
    if ([list removeWithId:OrgJodaTimeDurationFieldType_millis()] == false) {
      type = [((OrgJodaTimePeriodType *) nil_chk(type)) withMillisRemoved];
    }
    if ([list size] > 0) {
      [cache putWithId:inPartType withId:list];
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"PeriodType does not support fields: ", list)) autorelease];
    }
    OrgJodaTimePeriodType *checkPartType = [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(nil, ((OrgJodaTimePeriodType *) nil_chk(type))->iTypes_, nil) autorelease];
    OrgJodaTimePeriodType *checkedType = (OrgJodaTimePeriodType *) check_class_cast([cache getWithId:checkPartType], [OrgJodaTimePeriodType class]);
    if (checkedType != nil) {
      [cache putWithId:checkPartType withId:checkedType];
      return checkedType;
    }
    [cache putWithId:checkPartType withId:type];
    return type;
  }
}

void OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(OrgJodaTimePeriodType *self, NSString *name, IOSObjectArray *types, IOSIntArray *indices) {
  NSObject_init(self);
  JreStrongAssign(&self->iName_, name);
  JreStrongAssign(&self->iTypes_, types);
  JreStrongAssign(&self->iIndices_, indices);
}

OrgJodaTimePeriodType *new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(NSString *name, IOSObjectArray *types, IOSIntArray *indices) {
  OrgJodaTimePeriodType *self = [OrgJodaTimePeriodType alloc];
  OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(self, name, types, indices);
  return self;
}

OrgJodaTimePeriodType *OrgJodaTimePeriodType_withFieldRemovedWithInt_withNSString_(OrgJodaTimePeriodType *self, jint indicesIndex, NSString *name) {
  jint fieldIndex = IOSIntArray_Get(nil_chk(self->iIndices_), indicesIndex);
  if (fieldIndex == -1) {
    return self;
  }
  IOSObjectArray *types = [IOSObjectArray arrayWithLength:[self size] - 1 type:OrgJodaTimeDurationFieldType_class_()];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(self->iTypes_))->size_; i++) {
    if (i < fieldIndex) {
      IOSObjectArray_Set(types, i, IOSObjectArray_Get(self->iTypes_, i));
    }
    else if (i > fieldIndex) {
      IOSObjectArray_Set(types, i - 1, IOSObjectArray_Get(self->iTypes_, i));
    }
  }
  IOSIntArray *indices = [IOSIntArray arrayWithLength:8];
  for (jint i = 0; i < indices->size_; i++) {
    if (i < indicesIndex) {
      *IOSIntArray_GetRef(indices, i) = IOSIntArray_Get(self->iIndices_, i);
    }
    else if (i > indicesIndex) {
      *IOSIntArray_GetRef(indices, i) = (IOSIntArray_Get(self->iIndices_, i) == -1 ? -1 : IOSIntArray_Get(self->iIndices_, i) - 1);
    }
    else {
      *IOSIntArray_GetRef(indices, i) = -1;
    }
  }
  return [new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(JreStrcat("$$", [self getName], name), types, indices) autorelease];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimePeriodType)
