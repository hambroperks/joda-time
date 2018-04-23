//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/DateTimeUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/System.h"
#include "java/lang/reflect/Method.h"
#include "java/text/DateFormatSymbols.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/Interval.h"
#include "org/joda/time/JodaTimePermission.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/chrono/ISOChronology.h"

@interface OrgJodaTimeDateTimeUtils ()

+ (void)putWithJavaUtilMap:(id<JavaUtilMap>)map
              withNSString:(NSString *)name
              withNSString:(NSString *)id_;

/*!
 @brief Checks whether the provider may be changed using permission 'CurrentTime.setProvider'.
 @throw SecurityExceptionif the provider may not be changed
 */
+ (void)checkPermission;

@end

/*!
 @brief The singleton instance of the system millisecond provider.
 */
inline OrgJodaTimeDateTimeUtils_SystemMillisProvider *OrgJodaTimeDateTimeUtils_get_SYSTEM_MILLIS_PROVIDER(void);
static OrgJodaTimeDateTimeUtils_SystemMillisProvider *OrgJodaTimeDateTimeUtils_SYSTEM_MILLIS_PROVIDER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDateTimeUtils, SYSTEM_MILLIS_PROVIDER, OrgJodaTimeDateTimeUtils_SystemMillisProvider *)

/*!
 @brief The millisecond provider currently in use.
 */
inline id<OrgJodaTimeDateTimeUtils_MillisProvider> OrgJodaTimeDateTimeUtils_get_cMillisProvider(void);
inline id<OrgJodaTimeDateTimeUtils_MillisProvider> OrgJodaTimeDateTimeUtils_set_cMillisProvider(id<OrgJodaTimeDateTimeUtils_MillisProvider> value);
static volatile_id OrgJodaTimeDateTimeUtils_cMillisProvider;
J2OBJC_STATIC_FIELD_OBJ_VOLATILE(OrgJodaTimeDateTimeUtils, cMillisProvider, id<OrgJodaTimeDateTimeUtils_MillisProvider>)

/*!
 @brief The millisecond provider currently in use.
 */
inline id<JavaUtilMap> OrgJodaTimeDateTimeUtils_get_cZoneNames(void);
inline id<JavaUtilMap> OrgJodaTimeDateTimeUtils_set_cZoneNames(id<JavaUtilMap> value);
static volatile_id OrgJodaTimeDateTimeUtils_cZoneNames;
J2OBJC_STATIC_FIELD_OBJ_VOLATILE(OrgJodaTimeDateTimeUtils, cZoneNames, id<JavaUtilMap>)

__attribute__((unused)) static void OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(id<JavaUtilMap> map, NSString *name, NSString *id_);

__attribute__((unused)) static void OrgJodaTimeDateTimeUtils_checkPermission(void);

@interface OrgJodaTimeDateTimeUtils_MillisProvider : NSObject

@end

@interface OrgJodaTimeDateTimeUtils_FixedMillisProvider () {
 @public
  /*!
   @brief The fixed millis value.
   */
  jlong iMillis_;
}

@end

@interface OrgJodaTimeDateTimeUtils_OffsetMillisProvider () {
 @public
  /*!
   @brief The millis offset.
   */
  jlong iMillis_;
}

@end

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeDateTimeUtils)

@implementation OrgJodaTimeDateTimeUtils

+ (void)putWithJavaUtilMap:(id<JavaUtilMap>)map
              withNSString:(NSString *)name
              withNSString:(NSString *)id_ {
  OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, name, id_);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeDateTimeUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jlong)currentTimeMillis {
  return OrgJodaTimeDateTimeUtils_currentTimeMillis();
}

+ (void)setCurrentMillisSystem {
  OrgJodaTimeDateTimeUtils_setCurrentMillisSystem();
}

+ (void)setCurrentMillisFixedWithLong:(jlong)fixedMillis {
  OrgJodaTimeDateTimeUtils_setCurrentMillisFixedWithLong_(fixedMillis);
}

+ (void)setCurrentMillisOffsetWithLong:(jlong)offsetMillis {
  OrgJodaTimeDateTimeUtils_setCurrentMillisOffsetWithLong_(offsetMillis);
}

+ (void)setCurrentMillisProviderWithOrgJodaTimeDateTimeUtils_MillisProvider:(id<OrgJodaTimeDateTimeUtils_MillisProvider>)millisProvider {
  OrgJodaTimeDateTimeUtils_setCurrentMillisProviderWithOrgJodaTimeDateTimeUtils_MillisProvider_(millisProvider);
}

+ (void)checkPermission {
  OrgJodaTimeDateTimeUtils_checkPermission();
}

+ (jlong)getInstantMillisWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  return OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(instant);
}

+ (OrgJodaTimeChronology *)getInstantChronologyWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  return OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(instant);
}

+ (OrgJodaTimeChronology *)getIntervalChronologyWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                                withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  return OrgJodaTimeDateTimeUtils_getIntervalChronologyWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

+ (OrgJodaTimeChronology *)getIntervalChronologyWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeDateTimeUtils_getIntervalChronologyWithOrgJodaTimeReadableInterval_(interval);
}

+ (id<OrgJodaTimeReadableInterval>)getReadableIntervalWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeDateTimeUtils_getReadableIntervalWithOrgJodaTimeReadableInterval_(interval);
}

+ (OrgJodaTimeChronology *)getChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  return OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono);
}

+ (OrgJodaTimeDateTimeZone *)getZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  return OrgJodaTimeDateTimeUtils_getZoneWithOrgJodaTimeDateTimeZone_(zone);
}

+ (OrgJodaTimePeriodType *)getPeriodTypeWithOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  return OrgJodaTimeDateTimeUtils_getPeriodTypeWithOrgJodaTimePeriodType_(type);
}

+ (jlong)getDurationMillisWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  return OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(duration);
}

+ (jboolean)isContiguousWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  return OrgJodaTimeDateTimeUtils_isContiguousWithOrgJodaTimeReadablePartial_(partial);
}

+ (JavaTextDateFormatSymbols *)getDateFormatSymbolsWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeDateTimeUtils_getDateFormatSymbolsWithJavaUtilLocale_(locale);
}

+ (id<JavaUtilMap>)getDefaultTimeZoneNames {
  return OrgJodaTimeDateTimeUtils_getDefaultTimeZoneNames();
}

+ (void)setDefaultTimeZoneNamesWithJavaUtilMap:(id<JavaUtilMap>)names {
  OrgJodaTimeDateTimeUtils_setDefaultTimeZoneNamesWithJavaUtilMap_(names);
}

+ (jdouble)toJulianDayWithLong:(jlong)epochMillis {
  return OrgJodaTimeDateTimeUtils_toJulianDayWithLong_(epochMillis);
}

+ (jlong)toJulianDayNumberWithLong:(jlong)epochMillis {
  return OrgJodaTimeDateTimeUtils_toJulianDayNumberWithLong_(epochMillis);
}

+ (jlong)fromJulianDayWithDouble:(jdouble)julianDay {
  return OrgJodaTimeDateTimeUtils_fromJulianDayWithDouble_(julianDay);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0xa, 0, 1, -1, 2, -1, -1 },
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x19, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x19, 4, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x19, 6, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x19, 7, 8, 3, -1, -1, -1 },
    { NULL, "V", 0xa, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x19, 9, 10, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x19, 11, 10, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x19, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x19, 12, 14, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeReadableInterval;", 0x19, 15, 14, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x19, 16, 17, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeZone;", 0x19, 18, 19, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x19, 20, 21, -1, -1, -1, -1 },
    { NULL, "J", 0x19, 22, 23, -1, -1, -1, -1 },
    { NULL, "Z", 0x19, 24, 25, -1, -1, -1, -1 },
    { NULL, "LJavaTextDateFormatSymbols;", 0x19, 26, 27, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x19, -1, -1, -1, 28, -1, -1 },
    { NULL, "V", 0x19, 29, 30, -1, 31, -1, -1 },
    { NULL, "D", 0x19, 32, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x19, 33, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x19, 34, 35, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(putWithJavaUtilMap:withNSString:withNSString:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(currentTimeMillis);
  methods[3].selector = @selector(setCurrentMillisSystem);
  methods[4].selector = @selector(setCurrentMillisFixedWithLong:);
  methods[5].selector = @selector(setCurrentMillisOffsetWithLong:);
  methods[6].selector = @selector(setCurrentMillisProviderWithOrgJodaTimeDateTimeUtils_MillisProvider:);
  methods[7].selector = @selector(checkPermission);
  methods[8].selector = @selector(getInstantMillisWithOrgJodaTimeReadableInstant:);
  methods[9].selector = @selector(getInstantChronologyWithOrgJodaTimeReadableInstant:);
  methods[10].selector = @selector(getIntervalChronologyWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:);
  methods[11].selector = @selector(getIntervalChronologyWithOrgJodaTimeReadableInterval:);
  methods[12].selector = @selector(getReadableIntervalWithOrgJodaTimeReadableInterval:);
  methods[13].selector = @selector(getChronologyWithOrgJodaTimeChronology:);
  methods[14].selector = @selector(getZoneWithOrgJodaTimeDateTimeZone:);
  methods[15].selector = @selector(getPeriodTypeWithOrgJodaTimePeriodType:);
  methods[16].selector = @selector(getDurationMillisWithOrgJodaTimeReadableDuration:);
  methods[17].selector = @selector(isContiguousWithOrgJodaTimeReadablePartial:);
  methods[18].selector = @selector(getDateFormatSymbolsWithJavaUtilLocale:);
  methods[19].selector = @selector(getDefaultTimeZoneNames);
  methods[20].selector = @selector(setDefaultTimeZoneNamesWithJavaUtilMap:);
  methods[21].selector = @selector(toJulianDayWithLong:);
  methods[22].selector = @selector(toJulianDayNumberWithLong:);
  methods[23].selector = @selector(fromJulianDayWithDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SYSTEM_MILLIS_PROVIDER", "LOrgJodaTimeDateTimeUtils_SystemMillisProvider;", .constantValue.asLong = 0, 0x1a, -1, 36, -1, -1 },
    { "cMillisProvider", "LOrgJodaTimeDateTimeUtils_MillisProvider;", .constantValue.asLong = 0, 0x4a, -1, 37, -1, -1 },
    { "cZoneNames", "LJavaUtilMap;", .constantValue.asLong = 0, 0x4a, -1, 38, 39, -1 },
  };
  static const void *ptrTable[] = { "put", "LJavaUtilMap;LNSString;LNSString;", "(Ljava/util/Map<Ljava/lang/String;Lorg/joda/time/DateTimeZone;>;Ljava/lang/String;Ljava/lang/String;)V", "LJavaLangSecurityException;", "setCurrentMillisFixed", "J", "setCurrentMillisOffset", "setCurrentMillisProvider", "LOrgJodaTimeDateTimeUtils_MillisProvider;", "getInstantMillis", "LOrgJodaTimeReadableInstant;", "getInstantChronology", "getIntervalChronology", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;", "LOrgJodaTimeReadableInterval;", "getReadableInterval", "getChronology", "LOrgJodaTimeChronology;", "getZone", "LOrgJodaTimeDateTimeZone;", "getPeriodType", "LOrgJodaTimePeriodType;", "getDurationMillis", "LOrgJodaTimeReadableDuration;", "isContiguous", "LOrgJodaTimeReadablePartial;", "getDateFormatSymbols", "LJavaUtilLocale;", "()Ljava/util/Map<Ljava/lang/String;Lorg/joda/time/DateTimeZone;>;", "setDefaultTimeZoneNames", "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Lorg/joda/time/DateTimeZone;>;)V", "toJulianDay", "toJulianDayNumber", "fromJulianDay", "D", &OrgJodaTimeDateTimeUtils_SYSTEM_MILLIS_PROVIDER, &OrgJodaTimeDateTimeUtils_cMillisProvider, &OrgJodaTimeDateTimeUtils_cZoneNames, "Ljava/util/Map<Ljava/lang/String;Lorg/joda/time/DateTimeZone;>;", "LOrgJodaTimeDateTimeUtils_MillisProvider;LOrgJodaTimeDateTimeUtils_SystemMillisProvider;LOrgJodaTimeDateTimeUtils_FixedMillisProvider;LOrgJodaTimeDateTimeUtils_OffsetMillisProvider;" };
  static const J2ObjcClassInfo _OrgJodaTimeDateTimeUtils = { "DateTimeUtils", "org.joda.time", ptrTable, methods, fields, 7, 0x1, 24, 3, -1, 40, -1, -1, -1 };
  return &_OrgJodaTimeDateTimeUtils;
}

+ (void)initialize {
  if (self == [OrgJodaTimeDateTimeUtils class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeDateTimeUtils_SYSTEM_MILLIS_PROVIDER, new_OrgJodaTimeDateTimeUtils_SystemMillisProvider_init());
    JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cMillisProvider, OrgJodaTimeDateTimeUtils_SYSTEM_MILLIS_PROVIDER);
    {
      id<JavaUtilMap> map = create_JavaUtilLinkedHashMap_init();
      [map putWithId:@"UT" withId:JreLoadStatic(OrgJodaTimeDateTimeZone, UTC)];
      [map putWithId:@"UTC" withId:JreLoadStatic(OrgJodaTimeDateTimeZone, UTC)];
      [map putWithId:@"GMT" withId:JreLoadStatic(OrgJodaTimeDateTimeZone, UTC)];
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"EST", @"America/New_York");
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"EDT", @"America/New_York");
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"CST", @"America/Chicago");
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"CDT", @"America/Chicago");
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"MST", @"America/Denver");
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"MDT", @"America/Denver");
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"PST", @"America/Los_Angeles");
      OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(map, @"PDT", @"America/Los_Angeles");
      JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cZoneNames, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(map));
    }
    J2OBJC_SET_INITIALIZED(OrgJodaTimeDateTimeUtils)
  }
}

@end

void OrgJodaTimeDateTimeUtils_putWithJavaUtilMap_withNSString_withNSString_(id<JavaUtilMap> map, NSString *name, NSString *id_) {
  OrgJodaTimeDateTimeUtils_initialize();
  @try {
    [((id<JavaUtilMap>) nil_chk(map)) putWithId:name withId:OrgJodaTimeDateTimeZone_forIDWithNSString_(id_)];
  }
  @catch (JavaLangRuntimeException *ex) {
  }
}

void OrgJodaTimeDateTimeUtils_init(OrgJodaTimeDateTimeUtils *self) {
  NSObject_init(self);
}

OrgJodaTimeDateTimeUtils *new_OrgJodaTimeDateTimeUtils_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeDateTimeUtils, init)
}

OrgJodaTimeDateTimeUtils *create_OrgJodaTimeDateTimeUtils_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDateTimeUtils, init)
}

jlong OrgJodaTimeDateTimeUtils_currentTimeMillis() {
  OrgJodaTimeDateTimeUtils_initialize();
  return [((id<OrgJodaTimeDateTimeUtils_MillisProvider>) nil_chk(JreLoadVolatileId(&OrgJodaTimeDateTimeUtils_cMillisProvider))) getMillis];
}

void OrgJodaTimeDateTimeUtils_setCurrentMillisSystem() {
  OrgJodaTimeDateTimeUtils_initialize();
  OrgJodaTimeDateTimeUtils_checkPermission();
  JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cMillisProvider, OrgJodaTimeDateTimeUtils_SYSTEM_MILLIS_PROVIDER);
}

void OrgJodaTimeDateTimeUtils_setCurrentMillisFixedWithLong_(jlong fixedMillis) {
  OrgJodaTimeDateTimeUtils_initialize();
  OrgJodaTimeDateTimeUtils_checkPermission();
  JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cMillisProvider, create_OrgJodaTimeDateTimeUtils_FixedMillisProvider_initWithLong_(fixedMillis));
}

void OrgJodaTimeDateTimeUtils_setCurrentMillisOffsetWithLong_(jlong offsetMillis) {
  OrgJodaTimeDateTimeUtils_initialize();
  OrgJodaTimeDateTimeUtils_checkPermission();
  if (offsetMillis == 0) {
    JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cMillisProvider, OrgJodaTimeDateTimeUtils_SYSTEM_MILLIS_PROVIDER);
  }
  else {
    JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cMillisProvider, create_OrgJodaTimeDateTimeUtils_OffsetMillisProvider_initWithLong_(offsetMillis));
  }
}

void OrgJodaTimeDateTimeUtils_setCurrentMillisProviderWithOrgJodaTimeDateTimeUtils_MillisProvider_(id<OrgJodaTimeDateTimeUtils_MillisProvider> millisProvider) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (millisProvider == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The MillisProvider must not be null");
  }
  OrgJodaTimeDateTimeUtils_checkPermission();
  JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cMillisProvider, millisProvider);
}

void OrgJodaTimeDateTimeUtils_checkPermission() {
  OrgJodaTimeDateTimeUtils_initialize();
  JavaLangSecurityManager *sm = JavaLangSystem_getSecurityManager();
  if (sm != nil) {
    [sm checkPermissionWithJavaSecurityPermission:create_OrgJodaTimeJodaTimePermission_initWithNSString_(@"CurrentTime.setProvider")];
  }
}

jlong OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> instant) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (instant == nil) {
    return OrgJodaTimeDateTimeUtils_currentTimeMillis();
  }
  return [instant getMillis];
}

OrgJodaTimeChronology *OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> instant) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (instant == nil) {
    return OrgJodaTimeChronoISOChronology_getInstance();
  }
  OrgJodaTimeChronology *chrono = [instant getChronology];
  if (chrono == nil) {
    return OrgJodaTimeChronoISOChronology_getInstance();
  }
  return chrono;
}

OrgJodaTimeChronology *OrgJodaTimeDateTimeUtils_getIntervalChronologyWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeDateTimeUtils_initialize();
  OrgJodaTimeChronology *chrono = nil;
  if (start != nil) {
    chrono = [start getChronology];
  }
  else if (end != nil) {
    chrono = [end getChronology];
  }
  if (chrono == nil) {
    chrono = OrgJodaTimeChronoISOChronology_getInstance();
  }
  return chrono;
}

OrgJodaTimeChronology *OrgJodaTimeDateTimeUtils_getIntervalChronologyWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (interval == nil) {
    return OrgJodaTimeChronoISOChronology_getInstance();
  }
  OrgJodaTimeChronology *chrono = [interval getChronology];
  if (chrono == nil) {
    return OrgJodaTimeChronoISOChronology_getInstance();
  }
  return chrono;
}

id<OrgJodaTimeReadableInterval> OrgJodaTimeDateTimeUtils_getReadableIntervalWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (interval == nil) {
    jlong now = OrgJodaTimeDateTimeUtils_currentTimeMillis();
    interval = create_OrgJodaTimeInterval_initWithLong_withLong_(now, now);
  }
  return interval;
}

OrgJodaTimeChronology *OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chrono) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (chrono == nil) {
    return OrgJodaTimeChronoISOChronology_getInstance();
  }
  return chrono;
}

OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeUtils_getZoneWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (zone == nil) {
    return OrgJodaTimeDateTimeZone_getDefault();
  }
  return zone;
}

OrgJodaTimePeriodType *OrgJodaTimeDateTimeUtils_getPeriodTypeWithOrgJodaTimePeriodType_(OrgJodaTimePeriodType *type) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (type == nil) {
    return OrgJodaTimePeriodType_standard();
  }
  return type;
}

jlong OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(id<OrgJodaTimeReadableDuration> duration) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (duration == nil) {
    return 0LL;
  }
  return [duration getMillis];
}

jboolean OrgJodaTimeDateTimeUtils_isContiguousWithOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> partial) {
  OrgJodaTimeDateTimeUtils_initialize();
  if (partial == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Partial must not be null");
  }
  OrgJodaTimeDurationFieldType *lastType = nil;
  for (jint i = 0; i < [partial size]; i++) {
    OrgJodaTimeDateTimeField *loopField = [partial getFieldWithInt:i];
    if (i > 0) {
      if ([((OrgJodaTimeDateTimeField *) nil_chk(loopField)) getRangeDurationField] == nil || [((OrgJodaTimeDurationField *) nil_chk([loopField getRangeDurationField])) getType] != lastType) {
        return false;
      }
    }
    lastType = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeDateTimeField *) nil_chk(loopField)) getDurationField])) getType];
  }
  return true;
}

JavaTextDateFormatSymbols *OrgJodaTimeDateTimeUtils_getDateFormatSymbolsWithJavaUtilLocale_(JavaUtilLocale *locale) {
  OrgJodaTimeDateTimeUtils_initialize();
  @try {
    JavaLangReflectMethod *method = [JavaTextDateFormatSymbols_class_() getMethod:@"getInstance" parameterTypes:[IOSObjectArray arrayWithObjects:(id[]){ JavaUtilLocale_class_() } count:1 type:IOSClass_class_()]];
    return (JavaTextDateFormatSymbols *) cast_chk([((JavaLangReflectMethod *) nil_chk(method)) invokeWithId:nil withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ locale } count:1 type:NSObject_class_()]], [JavaTextDateFormatSymbols class]);
  }
  @catch (JavaLangException *ex) {
    return create_JavaTextDateFormatSymbols_initWithJavaUtilLocale_(locale);
  }
}

id<JavaUtilMap> OrgJodaTimeDateTimeUtils_getDefaultTimeZoneNames() {
  OrgJodaTimeDateTimeUtils_initialize();
  return JreLoadVolatileId(&OrgJodaTimeDateTimeUtils_cZoneNames);
}

void OrgJodaTimeDateTimeUtils_setDefaultTimeZoneNamesWithJavaUtilMap_(id<JavaUtilMap> names) {
  OrgJodaTimeDateTimeUtils_initialize();
  JreVolatileStrongAssign(&OrgJodaTimeDateTimeUtils_cZoneNames, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(create_JavaUtilHashMap_initWithJavaUtilMap_(names)));
}

jdouble OrgJodaTimeDateTimeUtils_toJulianDayWithLong_(jlong epochMillis) {
  OrgJodaTimeDateTimeUtils_initialize();
  jdouble epochDay = epochMillis / 86400000.0;
  return epochDay + 2440587.5;
}

jlong OrgJodaTimeDateTimeUtils_toJulianDayNumberWithLong_(jlong epochMillis) {
  OrgJodaTimeDateTimeUtils_initialize();
  return JreFpToLong(JavaLangMath_floorWithDouble_(OrgJodaTimeDateTimeUtils_toJulianDayWithLong_(epochMillis) + 0.5));
}

jlong OrgJodaTimeDateTimeUtils_fromJulianDayWithDouble_(jdouble julianDay) {
  OrgJodaTimeDateTimeUtils_initialize();
  jdouble epochDay = julianDay - 2440587.5;
  return JreFpToLong((epochDay * 86400000.0));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeDateTimeUtils)

@implementation OrgJodaTimeDateTimeUtils_MillisProvider

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getMillis);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgJodaTimeDateTimeUtils;" };
  static const J2ObjcClassInfo _OrgJodaTimeDateTimeUtils_MillisProvider = { "MillisProvider", "org.joda.time", ptrTable, methods, NULL, 7, 0x609, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgJodaTimeDateTimeUtils_MillisProvider;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeDateTimeUtils_MillisProvider)

@implementation OrgJodaTimeDateTimeUtils_SystemMillisProvider

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeDateTimeUtils_SystemMillisProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)getMillis {
  return JavaLangSystem_currentTimeMillis();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getMillis);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgJodaTimeDateTimeUtils;" };
  static const J2ObjcClassInfo _OrgJodaTimeDateTimeUtils_SystemMillisProvider = { "SystemMillisProvider", "org.joda.time", ptrTable, methods, NULL, 7, 0x8, 2, 0, 0, -1, -1, -1, -1 };
  return &_OrgJodaTimeDateTimeUtils_SystemMillisProvider;
}

@end

void OrgJodaTimeDateTimeUtils_SystemMillisProvider_init(OrgJodaTimeDateTimeUtils_SystemMillisProvider *self) {
  NSObject_init(self);
}

OrgJodaTimeDateTimeUtils_SystemMillisProvider *new_OrgJodaTimeDateTimeUtils_SystemMillisProvider_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeDateTimeUtils_SystemMillisProvider, init)
}

OrgJodaTimeDateTimeUtils_SystemMillisProvider *create_OrgJodaTimeDateTimeUtils_SystemMillisProvider_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDateTimeUtils_SystemMillisProvider, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeDateTimeUtils_SystemMillisProvider)

@implementation OrgJodaTimeDateTimeUtils_FixedMillisProvider

- (instancetype)initWithLong:(jlong)fixedMillis {
  OrgJodaTimeDateTimeUtils_FixedMillisProvider_initWithLong_(self, fixedMillis);
  return self;
}

- (jlong)getMillis {
  return iMillis_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLong:);
  methods[1].selector = @selector(getMillis);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iMillis_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "J", "LOrgJodaTimeDateTimeUtils;" };
  static const J2ObjcClassInfo _OrgJodaTimeDateTimeUtils_FixedMillisProvider = { "FixedMillisProvider", "org.joda.time", ptrTable, methods, fields, 7, 0x8, 2, 1, 1, -1, -1, -1, -1 };
  return &_OrgJodaTimeDateTimeUtils_FixedMillisProvider;
}

@end

void OrgJodaTimeDateTimeUtils_FixedMillisProvider_initWithLong_(OrgJodaTimeDateTimeUtils_FixedMillisProvider *self, jlong fixedMillis) {
  NSObject_init(self);
  self->iMillis_ = fixedMillis;
}

OrgJodaTimeDateTimeUtils_FixedMillisProvider *new_OrgJodaTimeDateTimeUtils_FixedMillisProvider_initWithLong_(jlong fixedMillis) {
  J2OBJC_NEW_IMPL(OrgJodaTimeDateTimeUtils_FixedMillisProvider, initWithLong_, fixedMillis)
}

OrgJodaTimeDateTimeUtils_FixedMillisProvider *create_OrgJodaTimeDateTimeUtils_FixedMillisProvider_initWithLong_(jlong fixedMillis) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDateTimeUtils_FixedMillisProvider, initWithLong_, fixedMillis)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeDateTimeUtils_FixedMillisProvider)

@implementation OrgJodaTimeDateTimeUtils_OffsetMillisProvider

- (instancetype)initWithLong:(jlong)offsetMillis {
  OrgJodaTimeDateTimeUtils_OffsetMillisProvider_initWithLong_(self, offsetMillis);
  return self;
}

- (jlong)getMillis {
  return JavaLangSystem_currentTimeMillis() + iMillis_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLong:);
  methods[1].selector = @selector(getMillis);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iMillis_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "J", "LOrgJodaTimeDateTimeUtils;" };
  static const J2ObjcClassInfo _OrgJodaTimeDateTimeUtils_OffsetMillisProvider = { "OffsetMillisProvider", "org.joda.time", ptrTable, methods, fields, 7, 0x8, 2, 1, 1, -1, -1, -1, -1 };
  return &_OrgJodaTimeDateTimeUtils_OffsetMillisProvider;
}

@end

void OrgJodaTimeDateTimeUtils_OffsetMillisProvider_initWithLong_(OrgJodaTimeDateTimeUtils_OffsetMillisProvider *self, jlong offsetMillis) {
  NSObject_init(self);
  self->iMillis_ = offsetMillis;
}

OrgJodaTimeDateTimeUtils_OffsetMillisProvider *new_OrgJodaTimeDateTimeUtils_OffsetMillisProvider_initWithLong_(jlong offsetMillis) {
  J2OBJC_NEW_IMPL(OrgJodaTimeDateTimeUtils_OffsetMillisProvider, initWithLong_, offsetMillis)
}

OrgJodaTimeDateTimeUtils_OffsetMillisProvider *create_OrgJodaTimeDateTimeUtils_OffsetMillisProvider_initWithLong_(jlong offsetMillis) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDateTimeUtils_OffsetMillisProvider, initWithLong_, offsetMillis)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeDateTimeUtils_OffsetMillisProvider)
