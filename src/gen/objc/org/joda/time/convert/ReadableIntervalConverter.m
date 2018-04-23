//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/convert/ReadableIntervalConverter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/ReadWritableInterval.h"
#include "org/joda/time/ReadWritablePeriod.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/convert/AbstractConverter.h"
#include "org/joda/time/convert/ReadableIntervalConverter.h"

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeConvertReadableIntervalConverter)

OrgJodaTimeConvertReadableIntervalConverter *OrgJodaTimeConvertReadableIntervalConverter_INSTANCE;

@implementation OrgJodaTimeConvertReadableIntervalConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeConvertReadableIntervalConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)getDurationMillisWithId:(id)object {
  return [((id<OrgJodaTimeReadableInterval>) nil_chk((((id<OrgJodaTimeReadableInterval>) cast_check(object, OrgJodaTimeReadableInterval_class_()))))) toDurationMillis];
}

- (void)setIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)writablePeriod
                                          withId:(id)object
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  id<OrgJodaTimeReadableInterval> interval = (id<OrgJodaTimeReadableInterval>) cast_check(object, OrgJodaTimeReadableInterval_class_());
  chrono = (chrono != nil ? chrono : OrgJodaTimeDateTimeUtils_getIntervalChronologyWithOrgJodaTimeReadableInterval_(interval));
  jlong start = [((id<OrgJodaTimeReadableInterval>) nil_chk(interval)) getStartMillis];
  jlong end = [interval getEndMillis];
  IOSIntArray *values = [chrono getWithOrgJodaTimeReadablePeriod:writablePeriod withLong:start withLong:end];
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(values))->size_; i++) {
    [((id<OrgJodaTimeReadWritablePeriod>) nil_chk(writablePeriod)) setValueWithInt:i withInt:IOSIntArray_Get(values, i)];
  }
}

- (jboolean)isReadableIntervalWithId:(id)object
           withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  return true;
}

- (void)setIntoWithOrgJodaTimeReadWritableInterval:(id<OrgJodaTimeReadWritableInterval>)writableInterval
                                            withId:(id)object
                         withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  id<OrgJodaTimeReadableInterval> input = (id<OrgJodaTimeReadableInterval>) cast_check(object, OrgJodaTimeReadableInterval_class_());
  [((id<OrgJodaTimeReadWritableInterval>) nil_chk(writableInterval)) setIntervalWithOrgJodaTimeReadableInterval:input];
  if (chrono != nil) {
    [writableInterval setChronologyWithOrgJodaTimeChronology:chrono];
  }
  else {
    [writableInterval setChronologyWithOrgJodaTimeChronology:[((id<OrgJodaTimeReadableInterval>) nil_chk(input)) getChronology]];
  }
}

- (IOSClass *)getSupportedType {
  return OrgJodaTimeReadableInterval_class_();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 6, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x1, -1, -1, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDurationMillisWithId:);
  methods[2].selector = @selector(setIntoWithOrgJodaTimeReadWritablePeriod:withId:withOrgJodaTimeChronology:);
  methods[3].selector = @selector(isReadableIntervalWithId:withOrgJodaTimeChronology:);
  methods[4].selector = @selector(setIntoWithOrgJodaTimeReadWritableInterval:withId:withOrgJodaTimeChronology:);
  methods[5].selector = @selector(getSupportedType);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LOrgJodaTimeConvertReadableIntervalConverter;", .constantValue.asLong = 0, 0x18, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "getDurationMillis", "LNSObject;", "setInto", "LOrgJodaTimeReadWritablePeriod;LNSObject;LOrgJodaTimeChronology;", "isReadableInterval", "LNSObject;LOrgJodaTimeChronology;", "LOrgJodaTimeReadWritableInterval;LNSObject;LOrgJodaTimeChronology;", "()Ljava/lang/Class<*>;", &OrgJodaTimeConvertReadableIntervalConverter_INSTANCE };
  static const J2ObjcClassInfo _OrgJodaTimeConvertReadableIntervalConverter = { "ReadableIntervalConverter", "org.joda.time.convert", ptrTable, methods, fields, 7, 0x0, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeConvertReadableIntervalConverter;
}

+ (void)initialize {
  if (self == [OrgJodaTimeConvertReadableIntervalConverter class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeConvertReadableIntervalConverter_INSTANCE, new_OrgJodaTimeConvertReadableIntervalConverter_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeConvertReadableIntervalConverter)
  }
}

@end

void OrgJodaTimeConvertReadableIntervalConverter_init(OrgJodaTimeConvertReadableIntervalConverter *self) {
  OrgJodaTimeConvertAbstractConverter_init(self);
}

OrgJodaTimeConvertReadableIntervalConverter *new_OrgJodaTimeConvertReadableIntervalConverter_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeConvertReadableIntervalConverter, init)
}

OrgJodaTimeConvertReadableIntervalConverter *create_OrgJodaTimeConvertReadableIntervalConverter_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeConvertReadableIntervalConverter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertReadableIntervalConverter)
