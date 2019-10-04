package com.webengage.sdk.android;

import android.content.Context;
import android.os.Build;
import com.webengage.sdk.android.PushChannelConfiguration;
import com.webengage.sdk.android.actions.database.ReportingStrategy;
import com.webengage.sdk.android.utils.k;
import java.util.concurrent.atomic.AtomicBoolean;

public class WebEngageConfig {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;

    /* renamed from: a  reason: collision with root package name */
    private boolean f5324a;

    /* renamed from: b  reason: collision with root package name */
    private LocationTrackingStrategy f5325b;
    private boolean c;
    private String d;
    private String e;
    private ReportingStrategy f;
    private String g;
    private boolean h;
    private boolean i;
    private String j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private PushChannelConfiguration p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public static class Builder {
        /* access modifiers changed from: private */
        public boolean A = false;
        /* access modifiers changed from: private */
        public boolean B = false;
        /* access modifiers changed from: private */
        public boolean C = false;
        /* access modifiers changed from: private */
        public boolean D = false;
        /* access modifiers changed from: private */
        public boolean E = false;
        /* access modifiers changed from: private */
        public boolean F = false;
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public AtomicBoolean f5326a = new AtomicBoolean(true);
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public LocationTrackingStrategy f5327b = LocationTrackingStrategy.ACCURACY_CITY;
        /* access modifiers changed from: private */
        public boolean c = false;
        /* access modifiers changed from: private */
        public String d = null;
        /* access modifiers changed from: private */
        public String e = null;
        /* access modifiers changed from: private */
        public String f = "3.12.3";
        /* access modifiers changed from: private */
        public ReportingStrategy g = ReportingStrategy.BUFFER;
        /* access modifiers changed from: private */
        public boolean h = false;
        /* access modifiers changed from: private */
        public boolean i = false;
        /* access modifiers changed from: private */
        public String j = "aws";
        /* access modifiers changed from: private */
        public boolean k = false;
        /* access modifiers changed from: private */
        public int l = -1;
        /* access modifiers changed from: private */
        public int m = -1;
        /* access modifiers changed from: private */
        public int n = -1;
        /* access modifiers changed from: private */
        public boolean o = false;
        /* access modifiers changed from: private */
        public PushChannelConfiguration p = new PushChannelConfiguration.Builder().build();
        /* access modifiers changed from: private */
        public boolean q = false;
        /* access modifiers changed from: private */
        public boolean r = false;
        /* access modifiers changed from: private */
        public boolean s = false;
        /* access modifiers changed from: private */
        public boolean t = false;
        /* access modifiers changed from: private */
        public boolean u = false;
        /* access modifiers changed from: private */
        public boolean v = false;
        /* access modifiers changed from: private */
        public boolean w = false;
        /* access modifiers changed from: private */
        public boolean x = false;
        /* access modifiers changed from: private */
        public boolean y = false;
        /* access modifiers changed from: private */
        public boolean z = false;

        public Builder() {
        }

        protected Builder(j jVar) {
            this.f5326a.set(jVar.n());
            this.q = jVar.e("webengage_prefs.txt").contains("location_tracking_flag");
            this.f5327b = jVar.o();
            this.r = jVar.e("webengage_prefs.txt").contains("location_tracking_strategy");
            this.g = jVar.m();
            this.w = jVar.e("webengage_prefs.txt").contains("event_reporting_strategy");
        }

        /* access modifiers changed from: protected */
        public Builder a(String str) {
            this.f = str;
            this.v = true;
            return this;
        }

        /* access modifiers changed from: protected */
        public Builder a(boolean z2) {
            this.k = z2;
            this.A = true;
            return this;
        }

        /* access modifiers changed from: protected */
        public Builder b(String str) {
            String str2 = "in";
            if (!str2.equalsIgnoreCase(str)) {
                str2 = "gce";
                if (!str2.equalsIgnoreCase(str)) {
                    this.j = "aws";
                    this.z = true;
                    return this;
                }
            }
            this.j = str2;
            this.z = true;
            return this;
        }

        /* access modifiers changed from: protected */
        public Builder b(boolean z2) {
            this.o = z2;
            this.E = true;
            return this;
        }

        public WebEngageConfig build() {
            return new WebEngageConfig(this);
        }

        public Builder setAutoGCMRegistrationFlag(boolean z2) {
            this.c = z2;
            this.s = true;
            return this;
        }

        public Builder setDebugMode(boolean z2) {
            this.h = z2;
            this.x = true;
            return this;
        }

        public Builder setDefaultPushChannelConfiguration(PushChannelConfiguration pushChannelConfiguration) {
            this.p = pushChannelConfiguration;
            this.F = true;
            return this;
        }

        public Builder setEventReportingStrategy(ReportingStrategy reportingStrategy) {
            this.g = reportingStrategy;
            this.w = true;
            return this;
        }

        public Builder setEveryActivityIsScreen(boolean z2) {
            this.i = z2;
            this.y = true;
            return this;
        }

        public Builder setGCMProjectNumber(String str) {
            this.e = str;
            this.u = true;
            return this;
        }

        @Deprecated
        public Builder setLocationTracking(boolean z2) {
            this.f5326a.set(z2);
            this.q = true;
            return this;
        }

        public Builder setLocationTrackingStrategy(LocationTrackingStrategy locationTrackingStrategy) {
            this.f5327b = locationTrackingStrategy;
            this.r = true;
            return this;
        }

        public Builder setPushAccentColor(int i2) {
            this.n = i2;
            this.D = true;
            return this;
        }

        public Builder setPushLargeIcon(int i2) {
            this.m = i2;
            this.C = true;
            return this;
        }

        public Builder setPushSmallIcon(int i2) {
            this.l = i2;
            this.B = true;
            return this;
        }

        public Builder setWebEngageKey(String str) {
            this.d = str;
            this.t = true;
            return this;
        }
    }

    private WebEngageConfig(Builder builder) {
        this.f5324a = builder.f5326a.get();
        this.f5325b = builder.f5327b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.g;
        this.g = builder.f;
        this.h = builder.h;
        this.i = builder.i;
        this.j = builder.j;
        this.k = builder.k;
        this.l = builder.l;
        this.m = builder.m;
        this.n = builder.n;
        this.o = builder.o;
        this.p = builder.p;
        this.q = builder.q;
        this.r = builder.r;
        this.s = builder.s;
        this.t = builder.t;
        this.u = builder.u;
        this.v = builder.v;
        this.w = builder.w;
        this.x = builder.x;
        this.y = builder.y;
        this.z = builder.z;
        this.A = builder.A;
        this.B = builder.B;
        this.C = builder.C;
        this.D = builder.D;
        this.E = builder.E;
        this.F = builder.F;
    }

    /* access modifiers changed from: protected */
    public boolean a() {
        return this.q;
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return this.r;
    }

    /* access modifiers changed from: protected */
    public boolean c() {
        return this.s;
    }

    /* access modifiers changed from: protected */
    public boolean d() {
        return this.t;
    }

    /* access modifiers changed from: protected */
    public boolean e() {
        return this.u;
    }

    /* access modifiers changed from: protected */
    public boolean f() {
        return this.v;
    }

    /* access modifiers changed from: protected */
    public boolean g() {
        return this.w;
    }

    public int getAccentColor() {
        return this.n;
    }

    public boolean getAlternateInterfaceIdFlag() {
        return this.k;
    }

    public boolean getAutoGCMRegistrationFlag() {
        return this.c;
    }

    public Builder getCurrentState() {
        Builder builder = new Builder();
        if (a()) {
            builder.setLocationTracking(getLocationTrackingFlag());
        }
        if (b()) {
            builder.setLocationTrackingStrategy(getLocationTrackingStrategy());
        }
        if (c()) {
            builder.setAutoGCMRegistrationFlag(getAutoGCMRegistrationFlag());
        }
        if (d()) {
            builder.setWebEngageKey(getWebEngageKey());
        }
        if (e()) {
            builder.setGCMProjectNumber(getGcmProjectNumber());
        }
        if (f()) {
            builder.a(getWebEngageVersion());
        }
        if (g()) {
            builder.setEventReportingStrategy(getEventReportingStrategy());
        }
        if (h()) {
            builder.setDebugMode(getDebugMode());
        }
        if (i()) {
            builder.setEveryActivityIsScreen(getEveryActivityIsScreen());
        }
        if (j()) {
            builder.b(getEnvironment());
        }
        if (k()) {
            builder.a(getAlternateInterfaceIdFlag());
        }
        if (l()) {
            builder.setPushSmallIcon(getPushSmallIcon());
        }
        if (m()) {
            builder.setPushLargeIcon(getPushLargeIcon());
        }
        if (n()) {
            builder.setPushAccentColor(getAccentColor());
        }
        if (o()) {
            builder.b(getFilterCustomEvents());
        }
        if (p()) {
            builder.setDefaultPushChannelConfiguration(getDefaultPushChannelConfiguration());
        }
        return builder;
    }

    public boolean getDebugMode() {
        return this.h;
    }

    public PushChannelConfiguration getDefaultPushChannelConfiguration() {
        return this.p;
    }

    public String getEnvironment() {
        return this.j;
    }

    public ReportingStrategy getEventReportingStrategy() {
        return this.f;
    }

    public boolean getEveryActivityIsScreen() {
        return this.i;
    }

    public boolean getFilterCustomEvents() {
        return this.o;
    }

    public String getGcmProjectNumber() {
        return this.e;
    }

    @Deprecated
    public boolean getLocationTrackingFlag() {
        return this.f5324a;
    }

    public LocationTrackingStrategy getLocationTrackingStrategy() {
        return this.f5325b;
    }

    public int getPushLargeIcon() {
        return this.m;
    }

    public int getPushSmallIcon() {
        return this.l;
    }

    public String getWebEngageKey() {
        return this.d;
    }

    public String getWebEngageVersion() {
        return this.g;
    }

    /* access modifiers changed from: protected */
    public boolean h() {
        return this.x;
    }

    /* access modifiers changed from: protected */
    public boolean i() {
        return this.y;
    }

    public boolean isLocationTrackingEnabled() {
        return b() ? getLocationTrackingStrategy() != LocationTrackingStrategy.DISABLED : getLocationTrackingFlag();
    }

    public boolean isValid(Context context) {
        String str;
        if (context == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        if (k.b(getWebEngageKey())) {
            str = "WebEngage key not found";
        } else if (getAutoGCMRegistrationFlag() && k.b(getGcmProjectNumber())) {
            str = "GCM project number not found";
        } else if (!"gce".equals(getEnvironment()) && !"aws".equals(getEnvironment()) && !"in".equals(getEnvironment())) {
            str = "Invalid value for Environment provided";
        } else if (Build.VERSION.SDK_INT < 26 || getDefaultPushChannelConfiguration().isValid(applicationContext)) {
            return true;
        } else {
            str = "Invalid Push channel configuration found";
        }
        Logger.e("WebEngage", str);
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean j() {
        return this.z;
    }

    /* access modifiers changed from: protected */
    public boolean k() {
        return this.A;
    }

    /* access modifiers changed from: protected */
    public boolean l() {
        return this.B;
    }

    /* access modifiers changed from: protected */
    public boolean m() {
        return this.C;
    }

    /* access modifiers changed from: protected */
    public boolean n() {
        return this.D;
    }

    /* access modifiers changed from: protected */
    public boolean o() {
        return this.E;
    }

    /* access modifiers changed from: protected */
    public boolean p() {
        return this.F;
    }

    public String toString() {
        return "LocationTracking: " + getLocationTrackingFlag() + "\nLocationTrackingStrategy: " + getLocationTrackingStrategy() + "\nAutoGCMRegistration: " + getAutoGCMRegistrationFlag() + "\nWebEngageKey: " + getWebEngageKey() + "\nGCMProjectNumber: " + getGcmProjectNumber() + "\nWebEngageVersion: " + getWebEngageVersion() + "\nReportingStrategy: " + getEventReportingStrategy() + "\nDebugMode: " + getDebugMode() + "\nEveryActivityIsScreen: " + getEveryActivityIsScreen() + "\nEnvironment: " + getEnvironment() + "\nAlternateInterfaceId: " + getAlternateInterfaceIdFlag() + "\nPushSmallIcon: " + getPushSmallIcon() + "\nPushLargeIcon: " + getPushLargeIcon() + "\nAccentColor: " + getAccentColor() + "\nFilterCustomEvent: " + getFilterCustomEvents() + "\nDefaultPushChannelConfiguration: " + getDefaultPushChannelConfiguration();
    }
}
