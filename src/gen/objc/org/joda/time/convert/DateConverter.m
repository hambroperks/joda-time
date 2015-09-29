//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/convert/DateConverter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/Date.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/convert/AbstractConverter.h"
#include "org/joda/time/convert/DateConverter.h"

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeConvertDateConverter)

OrgJodaTimeConvertDateConverter *OrgJodaTimeConvertDateConverter_INSTANCE_;

@implementation OrgJodaTimeConvertDateConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeConvertDateConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  JavaUtilDate *date = (JavaUtilDate *) check_class_cast(object, [JavaUtilDate class]);
  return [((JavaUtilDate *) nil_chk(date)) getTime];
}

- (IOSClass *)getSupportedType {
  return JavaUtilDate_class_();
}

+ (void)initialize {
  if (self == [OrgJodaTimeConvertDateConverter class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeConvertDateConverter_INSTANCE_, new_OrgJodaTimeConvertDateConverter_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeConvertDateConverter)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DateConverter", NULL, 0x4, NULL, NULL },
    { "getInstantMillisWithId:withOrgJodaTimeChronology:", "getInstantMillis", "J", 0x1, NULL, NULL },
    { "getSupportedType", NULL, "Ljava.lang.Class;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x18, "Lorg.joda.time.convert.DateConverter;", &OrgJodaTimeConvertDateConverter_INSTANCE_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeConvertDateConverter = { 2, "DateConverter", "org.joda.time.convert", NULL, 0x10, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeConvertDateConverter;
}

@end

void OrgJodaTimeConvertDateConverter_init(OrgJodaTimeConvertDateConverter *self) {
  OrgJodaTimeConvertAbstractConverter_init(self);
}

OrgJodaTimeConvertDateConverter *new_OrgJodaTimeConvertDateConverter_init() {
  OrgJodaTimeConvertDateConverter *self = [OrgJodaTimeConvertDateConverter alloc];
  OrgJodaTimeConvertDateConverter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertDateConverter)
