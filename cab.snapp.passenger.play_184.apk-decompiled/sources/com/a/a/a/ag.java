package com.a.a.a;

import android.app.Activity;
import java.util.Collections;
import java.util.Map;

final class ag {

    /* renamed from: a  reason: collision with root package name */
    private String f1659a;
    public final Map<String, Object> customAttributes;
    public final String customType;
    public final Map<String, String> details;
    public final Map<String, Object> predefinedAttributes;
    public final String predefinedType;
    public final ah sessionEventMetadata;
    public final long timestamp;
    public final b type;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        final b f1660a;

        /* renamed from: b  reason: collision with root package name */
        final long f1661b = System.currentTimeMillis();
        Map<String, String> c = null;
        String d = null;
        Map<String, Object> e = null;
        String f = null;
        Map<String, Object> g = null;

        public a(b bVar) {
            this.f1660a = bVar;
        }

        public final a details(Map<String, String> map) {
            this.c = map;
            return this;
        }

        public final a customType(String str) {
            this.d = str;
            return this;
        }

        public final a customAttributes(Map<String, Object> map) {
            this.e = map;
            return this;
        }

        public final a predefinedType(String str) {
            this.f = str;
            return this;
        }

        public final a predefinedAttributes(Map<String, Object> map) {
            this.g = map;
            return this;
        }

        public final ag build(ah ahVar) {
            ag agVar = new ag(ahVar, this.f1661b, this.f1660a, this.c, this.d, this.e, this.f, this.g, (byte) 0);
            return agVar;
        }
    }

    enum b {
        START,
        RESUME,
        PAUSE,
        STOP,
        CRASH,
        INSTALL,
        CUSTOM,
        PREDEFINED
    }

    /* synthetic */ ag(ah ahVar, long j, b bVar, Map map, String str, Map map2, String str2, Map map3, byte b2) {
        this(ahVar, j, bVar, map, str, map2, str2, map3);
    }

    public static a lifecycleEventBuilder(b bVar, Activity activity) {
        return new a(bVar).details(Collections.singletonMap("activity", activity.getClass().getName()));
    }

    public static a installEventBuilder(long j) {
        return new a(b.INSTALL).details(Collections.singletonMap("installedAt", String.valueOf(j)));
    }

    public static a crashEventBuilder(String str) {
        return new a(b.CRASH).details(Collections.singletonMap("sessionId", str));
    }

    public static a crashEventBuilder(String str, String str2) {
        return crashEventBuilder(str).customAttributes(Collections.singletonMap("exceptionName", str2));
    }

    public static a customEventBuilder(m mVar) {
        return new a(b.CUSTOM).customType(mVar.f1693a).customAttributes(mVar.c.f1669b);
    }

    public static a predefinedEventBuilder(v<?> vVar) {
        return new a(b.PREDEFINED).predefinedType(vVar.a()).predefinedAttributes(vVar.d.f1669b).customAttributes(vVar.c.f1669b);
    }

    private ag(ah ahVar, long j, b bVar, Map<String, String> map, String str, Map<String, Object> map2, String str2, Map<String, Object> map3) {
        this.sessionEventMetadata = ahVar;
        this.timestamp = j;
        this.type = bVar;
        this.details = map;
        this.customType = str;
        this.customAttributes = map2;
        this.predefinedType = str2;
        this.predefinedAttributes = map3;
    }

    public final String toString() {
        if (this.f1659a == null) {
            this.f1659a = "[" + getClass().getSimpleName() + ": timestamp=" + this.timestamp + ", type=" + this.type + ", details=" + this.details + ", customType=" + this.customType + ", customAttributes=" + this.customAttributes + ", predefinedType=" + this.predefinedType + ", predefinedAttributes=" + this.predefinedAttributes + ", metadata=[" + this.sessionEventMetadata + "]]";
        }
        return this.f1659a;
    }
}
