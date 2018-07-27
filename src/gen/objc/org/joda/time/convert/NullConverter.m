//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/convert/NullConverter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/ReadWritableInterval.h"
#include "org/joda/time/ReadWritablePeriod.h"
#include "org/joda/time/convert/AbstractConverter.h"
#include "org/joda/time/convert/NullConverter.h"

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeConvertNullConverter)

OrgJodaTimeConvertNullConverter *OrgJodaTimeConvertNullConverter_INSTANCE;

@implementation OrgJodaTimeConvertNullConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeConvertNullConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)getDurationMillisWithId:(id)object {
  return 0LL;
}

- (void)setIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)duration
                                          withId:(id)object
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  [((id<OrgJodaTimeReadWritablePeriod>) nil_chk(duration)) setPeriodWithOrgJodaTimeReadablePeriod:nil];
}

- (void)setIntoWithOrgJodaTimeReadWritableInterval:(id<OrgJodaTimeReadWritableInterval>)writableInterval
                                            withId:(id)object
                         withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  [((id<OrgJodaTimeReadWritableInterval>) nil_chk(writableInterval)) setChronologyWithOrgJodaTimeChronology:chrono];
  jlong now = OrgJodaTimeDateTimeUtils_currentTimeMillis();
  [writableInterval setIntervalWithLong:now withLong:now];
}

- (IOSClass *)getSupportedType {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x1, -1, -1, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDurationMillisWithId:);
  methods[2].selector = @selector(setIntoWithOrgJodaTimeReadWritablePeriod:withId:withOrgJodaTimeChronology:);
  methods[3].selector = @selector(setIntoWithOrgJodaTimeReadWritableInterval:withId:withOrgJodaTimeChronology:);
  methods[4].selector = @selector(getSupportedType);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LOrgJodaTimeConvertNullConverter;", .constantValue.asLong = 0, 0x18, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "getDurationMillis", "LNSObject;", "setInto", "LOrgJodaTimeReadWritablePeriod;LNSObject;LOrgJodaTimeChronology;", "LOrgJodaTimeReadWritableInterval;LNSObject;LOrgJodaTimeChronology;", "()Ljava/lang/Class<*>;", &OrgJodaTimeConvertNullConverter_INSTANCE };
  static const J2ObjcClassInfo _OrgJodaTimeConvertNullConverter = { "NullConverter", "org.joda.time.convert", ptrTable, methods, fields, 7, 0x0, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeConvertNullConverter;
}

+ (void)initialize {
  if (self == [OrgJodaTimeConvertNullConverter class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeConvertNullConverter_INSTANCE, new_OrgJodaTimeConvertNullConverter_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeConvertNullConverter)
  }
}

@end

void OrgJodaTimeConvertNullConverter_init(OrgJodaTimeConvertNullConverter *self) {
  OrgJodaTimeConvertAbstractConverter_init(self);
}

OrgJodaTimeConvertNullConverter *new_OrgJodaTimeConvertNullConverter_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeConvertNullConverter, init)
}

OrgJodaTimeConvertNullConverter *create_OrgJodaTimeConvertNullConverter_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeConvertNullConverter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertNullConverter)
