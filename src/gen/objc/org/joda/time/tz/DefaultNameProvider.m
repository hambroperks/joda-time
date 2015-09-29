//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/tz/DefaultNameProvider.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/text/DateFormatSymbols.h"
#include "java/util/HashMap.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/tz/DefaultNameProvider.h"

@interface OrgJodaTimeTzDefaultNameProvider () {
 @public
  JavaUtilHashMap *iByLocaleCache_;
}

- (IOSObjectArray *)getNameSetWithJavaUtilLocale:(JavaUtilLocale *)locale
                                    withNSString:(NSString *)id_
                                    withNSString:(NSString *)nameKey;

- (JavaUtilHashMap *)createCache;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeTzDefaultNameProvider, iByLocaleCache_, JavaUtilHashMap *)

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeTzDefaultNameProvider_getNameSetWithJavaUtilLocale_withNSString_withNSString_(OrgJodaTimeTzDefaultNameProvider *self, JavaUtilLocale *locale, NSString *id_, NSString *nameKey);

__attribute__((unused)) static JavaUtilHashMap *OrgJodaTimeTzDefaultNameProvider_createCache(OrgJodaTimeTzDefaultNameProvider *self);

@implementation OrgJodaTimeTzDefaultNameProvider

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeTzDefaultNameProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getShortNameWithJavaUtilLocale:(JavaUtilLocale *)locale
                                withNSString:(NSString *)id_
                                withNSString:(NSString *)nameKey {
  IOSObjectArray *nameSet = OrgJodaTimeTzDefaultNameProvider_getNameSetWithJavaUtilLocale_withNSString_withNSString_(self, locale, id_, nameKey);
  return nameSet == nil ? nil : IOSObjectArray_Get(nameSet, 0);
}

- (NSString *)getNameWithJavaUtilLocale:(JavaUtilLocale *)locale
                           withNSString:(NSString *)id_
                           withNSString:(NSString *)nameKey {
  IOSObjectArray *nameSet = OrgJodaTimeTzDefaultNameProvider_getNameSetWithJavaUtilLocale_withNSString_withNSString_(self, locale, id_, nameKey);
  return nameSet == nil ? nil : IOSObjectArray_Get(nameSet, 1);
}

- (IOSObjectArray *)getNameSetWithJavaUtilLocale:(JavaUtilLocale *)locale
                                    withNSString:(NSString *)id_
                                    withNSString:(NSString *)nameKey {
  return OrgJodaTimeTzDefaultNameProvider_getNameSetWithJavaUtilLocale_withNSString_withNSString_(self, locale, id_, nameKey);
}

- (JavaUtilHashMap *)createCache {
  return OrgJodaTimeTzDefaultNameProvider_createCache(self);
}

- (void)dealloc {
  RELEASE_(iByLocaleCache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultNameProvider", NULL, 0x1, NULL, NULL },
    { "getShortNameWithJavaUtilLocale:withNSString:withNSString:", "getShortName", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getNameWithJavaUtilLocale:withNSString:withNSString:", "getName", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getNameSetWithJavaUtilLocale:withNSString:withNSString:", "getNameSet", "[Ljava.lang.String;", 0x22, NULL, NULL },
    { "createCache", NULL, "Ljava.util.HashMap;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "iByLocaleCache_", NULL, 0x2, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/util/Locale;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeTzDefaultNameProvider = { 2, "DefaultNameProvider", "org.joda.time.tz", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeTzDefaultNameProvider;
}

@end

void OrgJodaTimeTzDefaultNameProvider_init(OrgJodaTimeTzDefaultNameProvider *self) {
  NSObject_init(self);
  JreStrongAssign(&self->iByLocaleCache_, OrgJodaTimeTzDefaultNameProvider_createCache(self));
}

OrgJodaTimeTzDefaultNameProvider *new_OrgJodaTimeTzDefaultNameProvider_init() {
  OrgJodaTimeTzDefaultNameProvider *self = [OrgJodaTimeTzDefaultNameProvider alloc];
  OrgJodaTimeTzDefaultNameProvider_init(self);
  return self;
}

IOSObjectArray *OrgJodaTimeTzDefaultNameProvider_getNameSetWithJavaUtilLocale_withNSString_withNSString_(OrgJodaTimeTzDefaultNameProvider *self, JavaUtilLocale *locale, NSString *id_, NSString *nameKey) {
  @synchronized(self) {
    if (locale == nil || id_ == nil || nameKey == nil) {
      return nil;
    }
    id<JavaUtilMap> byIdCache = [((JavaUtilHashMap *) nil_chk(self->iByLocaleCache_)) getWithId:locale];
    if (byIdCache == nil) {
      [self->iByLocaleCache_ putWithId:locale withId:byIdCache = OrgJodaTimeTzDefaultNameProvider_createCache(self)];
    }
    id<JavaUtilMap> byNameKeyCache = [((id<JavaUtilMap>) nil_chk(byIdCache)) getWithId:id_];
    if (byNameKeyCache == nil) {
      [byIdCache putWithId:id_ withId:byNameKeyCache = OrgJodaTimeTzDefaultNameProvider_createCache(self)];
      IOSObjectArray *zoneStringsEn = [((JavaTextDateFormatSymbols *) nil_chk(OrgJodaTimeDateTimeUtils_getDateFormatSymbolsWithJavaUtilLocale_(JreLoadStatic(JavaUtilLocale, ENGLISH_)))) getZoneStrings];
      IOSObjectArray *setEn = nil;
      {
        IOSObjectArray *a__ = zoneStringsEn;
        IOSObjectArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        IOSObjectArray * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          IOSObjectArray *strings = *b__++;
          if (strings != nil && strings->size_ == 5 && [((NSString *) nil_chk(id_)) isEqual:IOSObjectArray_Get(strings, 0)]) {
            setEn = strings;
            break;
          }
        }
      }
      IOSObjectArray *zoneStringsLoc = [((JavaTextDateFormatSymbols *) nil_chk(OrgJodaTimeDateTimeUtils_getDateFormatSymbolsWithJavaUtilLocale_(locale))) getZoneStrings];
      IOSObjectArray *setLoc = nil;
      {
        IOSObjectArray *a__ = zoneStringsLoc;
        IOSObjectArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        IOSObjectArray * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          IOSObjectArray *strings = *b__++;
          if (strings != nil && strings->size_ == 5 && [((NSString *) nil_chk(id_)) isEqual:IOSObjectArray_Get(strings, 0)]) {
            setLoc = strings;
            break;
          }
        }
      }
      if (setEn != nil && setLoc != nil) {
        [((id<JavaUtilMap>) nil_chk(byNameKeyCache)) putWithId:IOSObjectArray_Get(setEn, 2) withId:[IOSObjectArray arrayWithObjects:(id[]){ IOSObjectArray_Get(setLoc, 2), IOSObjectArray_Get(setLoc, 1) } count:2 type:NSString_class_()]];
        if ([((NSString *) nil_chk(IOSObjectArray_Get(setEn, 2))) isEqual:IOSObjectArray_Get(setEn, 4)]) {
          [byNameKeyCache putWithId:JreStrcat("$$", IOSObjectArray_Get(setEn, 4), @"-Summer") withId:[IOSObjectArray arrayWithObjects:(id[]){ IOSObjectArray_Get(setLoc, 4), IOSObjectArray_Get(setLoc, 3) } count:2 type:NSString_class_()]];
        }
        else {
          [byNameKeyCache putWithId:IOSObjectArray_Get(setEn, 4) withId:[IOSObjectArray arrayWithObjects:(id[]){ IOSObjectArray_Get(setLoc, 4), IOSObjectArray_Get(setLoc, 3) } count:2 type:NSString_class_()]];
        }
      }
    }
    return (IOSObjectArray *) check_class_cast([((id<JavaUtilMap>) nil_chk(byNameKeyCache)) getWithId:nameKey], [IOSObjectArray class]);
  }
}

JavaUtilHashMap *OrgJodaTimeTzDefaultNameProvider_createCache(OrgJodaTimeTzDefaultNameProvider *self) {
  return [new_JavaUtilHashMap_initWithInt_(7) autorelease];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeTzDefaultNameProvider)
