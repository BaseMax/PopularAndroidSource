package com.yandex.metrica;

import android.location.Location;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class e extends YandexMetricaConfig {

    /* renamed from: a  reason: collision with root package name */
    public final String f5648a;

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, String> f5649b;
    public final String c;
    public final List<String> d;
    public final Integer e;
    public final Integer f;
    public final Integer g;
    public final Map<String, String> h;
    public final Map<String, String> i;
    public final Boolean j;
    public final Boolean k;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f5650a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public YandexMetricaConfig.Builder f5651b;
        /* access modifiers changed from: private */
        public String c;
        /* access modifiers changed from: private */
        public List<String> d;
        /* access modifiers changed from: private */
        public Integer e;
        /* access modifiers changed from: private */
        public Map<String, String> f;
        /* access modifiers changed from: private */
        public Integer g;
        /* access modifiers changed from: private */
        public Integer h;
        /* access modifiers changed from: private */
        public LinkedHashMap<String, String> i = new LinkedHashMap<>();
        /* access modifiers changed from: private */
        public LinkedHashMap<String, String> j = new LinkedHashMap<>();
        /* access modifiers changed from: private */
        public Boolean k;
        /* access modifiers changed from: private */
        public Boolean l;

        protected a(String str) {
            this.f5651b = YandexMetricaConfig.newConfigBuilder(str);
        }

        public final a a(String str) {
            this.f5651b.withAppVersion(str);
            return this;
        }

        public final a a(int i2) {
            this.f5651b.withSessionTimeout(i2);
            return this;
        }

        public final a b(String str) {
            this.f5650a = str;
            return this;
        }

        public final a a(boolean z) {
            this.f5651b.withCrashReporting(z);
            return this;
        }

        public final a b(boolean z) {
            this.f5651b.withNativeCrashReporting(z);
            return this;
        }

        public final a a() {
            this.f5651b.withLogs();
            return this;
        }

        public final a a(Location location) {
            this.f5651b.withLocation(location);
            return this;
        }

        public final a c(boolean z) {
            this.f5651b.withLocationTracking(z);
            return this;
        }

        public final a d(boolean z) {
            this.f5651b.withInstalledAppCollecting(z);
            return this;
        }

        public final a e(boolean z) {
            this.f5651b.withStatisticsSending(z);
            return this;
        }

        public final a a(String str, String str2) {
            this.i.put(str, str2);
            return this;
        }

        public final a c(String str) {
            this.c = str;
            return this;
        }

        public final a a(List<String> list) {
            this.d = list;
            return this;
        }

        public final a b(int i2) {
            if (i2 >= 0) {
                this.e = Integer.valueOf(i2);
                return this;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Invalid %1$s. %1$s should be positive.", new Object[]{"App Build Number"}));
        }

        public final a a(Map<String, String> map, Boolean bool) {
            this.k = bool;
            this.f = map;
            return this;
        }

        public final a c(int i2) {
            this.h = Integer.valueOf(i2);
            return this;
        }

        public final a d(int i2) {
            this.g = Integer.valueOf(i2);
            return this;
        }

        public final a a(PreloadInfo preloadInfo) {
            this.f5651b.withPreloadInfo(preloadInfo);
            return this;
        }

        public final a f(boolean z) {
            this.f5651b.handleFirstActivationAsUpdate(z);
            return this;
        }

        public final a b(String str, String str2) {
            this.j.put(str, str2);
            return this;
        }

        public final e b() {
            return new e(this, (byte) 0);
        }
    }

    /* synthetic */ e(a aVar, byte b2) {
        this(aVar);
    }

    public e(YandexMetricaConfig yandexMetricaConfig) {
        super(yandexMetricaConfig);
        this.f5648a = null;
        this.f5649b = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.c = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.d = null;
        this.h = null;
    }

    public static e a(YandexMetricaConfig yandexMetricaConfig) {
        if (yandexMetricaConfig instanceof e) {
            return (e) yandexMetricaConfig;
        }
        return new e(yandexMetricaConfig);
    }

    public static a a(String str) {
        return new a(str);
    }

    public static a b(YandexMetricaConfig yandexMetricaConfig) {
        a a2 = a(yandexMetricaConfig.apiKey);
        boolean z = true;
        if (yandexMetricaConfig.appVersion != null) {
            a2.a(yandexMetricaConfig.appVersion);
        }
        if (yandexMetricaConfig.sessionTimeout != null) {
            a2.a(yandexMetricaConfig.sessionTimeout.intValue());
        }
        if (yandexMetricaConfig.crashReporting != null) {
            a2.a(yandexMetricaConfig.crashReporting.booleanValue());
        }
        if (yandexMetricaConfig.nativeCrashReporting != null) {
            a2.b(yandexMetricaConfig.nativeCrashReporting.booleanValue());
        }
        if (yandexMetricaConfig.location != null) {
            a2.a(yandexMetricaConfig.location);
        }
        if (yandexMetricaConfig.locationTracking != null) {
            a2.c(yandexMetricaConfig.locationTracking.booleanValue());
        }
        if (yandexMetricaConfig.installedAppCollecting != null) {
            a2.d(yandexMetricaConfig.installedAppCollecting.booleanValue());
        }
        if ((yandexMetricaConfig.logs != null) && yandexMetricaConfig.logs.booleanValue()) {
            a2.a();
        }
        if (yandexMetricaConfig.preloadInfo != null) {
            a2.a(yandexMetricaConfig.preloadInfo);
        }
        if (yandexMetricaConfig.firstActivationAsUpdate != null) {
            a2.f(yandexMetricaConfig.firstActivationAsUpdate.booleanValue());
        }
        if (yandexMetricaConfig instanceof e) {
            e eVar = (e) yandexMetricaConfig;
            if (eVar.d == null) {
                z = false;
            }
            if (z) {
                a2.a(eVar.d);
            }
        }
        return a2;
    }

    private e(a aVar) {
        super(aVar.f5651b);
        List<String> list;
        Map<String, String> map;
        this.e = aVar.e;
        List c2 = aVar.d;
        Map<String, String> map2 = null;
        if (c2 == null) {
            list = null;
        } else {
            list = Collections.unmodifiableList(c2);
        }
        this.d = list;
        this.f5648a = aVar.c;
        this.f5649b = aVar.f == null ? null : Collections.unmodifiableMap(aVar.f);
        this.g = aVar.h;
        this.f = aVar.g;
        this.c = aVar.f5650a;
        if (aVar.i == null) {
            map = null;
        } else {
            map = Collections.unmodifiableMap(aVar.i);
        }
        this.h = map;
        this.i = aVar.j != null ? Collections.unmodifiableMap(aVar.j) : map2;
        this.j = aVar.k;
        this.k = aVar.l;
    }
}
