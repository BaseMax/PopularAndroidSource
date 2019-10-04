package com.yandex.metrica;

import android.location.Location;
import com.yandex.metrica.impl.af;
import com.yandex.metrica.impl.ob.ow;
import com.yandex.metrica.impl.ob.pa;
import com.yandex.metrica.impl.ob.pb;

public class YandexMetricaConfig {
    public final String apiKey;
    public final String appVersion;
    public final Boolean crashReporting;
    public final Boolean firstActivationAsUpdate;
    public final Boolean installedAppCollecting;
    public final Location location;
    public final Boolean locationTracking;
    public final Boolean logs;
    public final Boolean nativeCrashReporting;
    public final PreloadInfo preloadInfo;
    public final Integer sessionTimeout;
    public final Boolean statisticsSending;

    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private static final pa<String> f5638a = new ow(new pb());
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final String f5639b;
        /* access modifiers changed from: private */
        public String c;
        /* access modifiers changed from: private */
        public Integer d;
        /* access modifiers changed from: private */
        public Boolean e;
        /* access modifiers changed from: private */
        public Boolean f;
        /* access modifiers changed from: private */
        public Location g;
        /* access modifiers changed from: private */
        public Boolean h;
        /* access modifiers changed from: private */
        public Boolean i;
        /* access modifiers changed from: private */
        public Boolean j;
        /* access modifiers changed from: private */
        public PreloadInfo k;
        /* access modifiers changed from: private */
        public Boolean l;
        /* access modifiers changed from: private */
        public Boolean m;

        protected Builder(String str) {
            f5638a.a(str);
            this.f5639b = str;
        }

        public Builder withAppVersion(String str) {
            this.c = str;
            return this;
        }

        public Builder withSessionTimeout(int i2) {
            this.d = Integer.valueOf(i2);
            return this;
        }

        public Builder withCrashReporting(boolean z) {
            this.e = Boolean.valueOf(z);
            return this;
        }

        public Builder withNativeCrashReporting(boolean z) {
            this.f = Boolean.valueOf(z);
            return this;
        }

        public Builder withLogs() {
            this.j = Boolean.TRUE;
            return this;
        }

        public Builder withLocation(Location location) {
            this.g = location;
            return this;
        }

        public Builder withLocationTracking(boolean z) {
            this.h = Boolean.valueOf(z);
            return this;
        }

        public Builder withInstalledAppCollecting(boolean z) {
            this.i = Boolean.valueOf(z);
            return this;
        }

        public Builder withPreloadInfo(PreloadInfo preloadInfo) {
            this.k = preloadInfo;
            return this;
        }

        public Builder handleFirstActivationAsUpdate(boolean z) {
            this.l = Boolean.valueOf(z);
            return this;
        }

        public Builder withStatisticsSending(boolean z) {
            this.m = Boolean.valueOf(z);
            return this;
        }

        public YandexMetricaConfig build() {
            return new YandexMetricaConfig(this);
        }
    }

    public static Builder newConfigBuilder(String str) {
        return new Builder(str);
    }

    public static YandexMetricaConfig fromJson(String str) {
        return new af().a(str);
    }

    protected YandexMetricaConfig(Builder builder) {
        this.apiKey = builder.f5639b;
        this.appVersion = builder.c;
        this.sessionTimeout = builder.d;
        this.crashReporting = builder.e;
        this.nativeCrashReporting = builder.f;
        this.location = builder.g;
        this.locationTracking = builder.h;
        this.installedAppCollecting = builder.i;
        this.logs = builder.j;
        this.preloadInfo = builder.k;
        this.firstActivationAsUpdate = builder.l;
        this.statisticsSending = builder.m;
    }

    protected YandexMetricaConfig(YandexMetricaConfig yandexMetricaConfig) {
        this.apiKey = yandexMetricaConfig.apiKey;
        this.appVersion = yandexMetricaConfig.appVersion;
        this.sessionTimeout = yandexMetricaConfig.sessionTimeout;
        this.crashReporting = yandexMetricaConfig.crashReporting;
        this.nativeCrashReporting = yandexMetricaConfig.nativeCrashReporting;
        this.location = yandexMetricaConfig.location;
        this.locationTracking = yandexMetricaConfig.locationTracking;
        this.installedAppCollecting = yandexMetricaConfig.installedAppCollecting;
        this.logs = yandexMetricaConfig.logs;
        this.preloadInfo = yandexMetricaConfig.preloadInfo;
        this.firstActivationAsUpdate = yandexMetricaConfig.firstActivationAsUpdate;
        this.statisticsSending = yandexMetricaConfig.statisticsSending;
    }

    public String toJson() {
        return new af().a(this);
    }
}
