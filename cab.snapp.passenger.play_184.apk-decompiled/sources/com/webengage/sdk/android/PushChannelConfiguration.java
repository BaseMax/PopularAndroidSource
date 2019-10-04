package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.utils.k;

public class PushChannelConfiguration {

    /* renamed from: a  reason: collision with root package name */
    private String f5317a;

    /* renamed from: b  reason: collision with root package name */
    private String f5318b;
    private int c;
    private String d;
    private int e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;

    public static class Builder {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public String f5319a = "we_wk_push_channel";
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public String f5320b = "Marketing";
        /* access modifiers changed from: private */
        public String c = null;
        /* access modifiers changed from: private */
        public int d = 3;
        /* access modifiers changed from: private */
        public String e = null;
        /* access modifiers changed from: private */
        public int f = -1;
        /* access modifiers changed from: private */
        public int g = 1;
        /* access modifiers changed from: private */
        public boolean h = true;
        /* access modifiers changed from: private */
        public String i = null;
        /* access modifiers changed from: private */
        public boolean j = true;
        /* access modifiers changed from: private */
        public boolean k = false;
        /* access modifiers changed from: private */
        public boolean l = false;
        /* access modifiers changed from: private */
        public boolean m = false;
        /* access modifiers changed from: private */
        public boolean n = false;
        /* access modifiers changed from: private */
        public boolean o = false;
        /* access modifiers changed from: private */
        public boolean p = false;
        /* access modifiers changed from: private */
        public boolean q = false;
        /* access modifiers changed from: private */
        public boolean r = false;
        /* access modifiers changed from: private */
        public boolean s = false;
        /* access modifiers changed from: private */
        public boolean t = false;

        public PushChannelConfiguration build() {
            return new PushChannelConfiguration(this);
        }

        public Builder setNotificationChannelDescription(String str) {
            this.c = str;
            this.m = true;
            return this;
        }

        public Builder setNotificationChannelGroup(String str) {
            this.e = str;
            this.o = true;
            return this;
        }

        public Builder setNotificationChannelImportance(int i2) {
            this.d = i2;
            this.n = true;
            return this;
        }

        public Builder setNotificationChannelLightColor(int i2) {
            this.f = i2;
            this.p = true;
            return this;
        }

        public Builder setNotificationChannelLockScreenVisibility(int i2) {
            this.g = i2;
            this.q = true;
            return this;
        }

        public Builder setNotificationChannelName(String str) {
            this.f5320b = str;
            this.l = true;
            return this;
        }

        public Builder setNotificationChannelShowBadge(boolean z) {
            this.h = z;
            this.r = true;
            return this;
        }

        public Builder setNotificationChannelSound(String str) {
            this.i = str;
            this.s = true;
            return this;
        }

        public Builder setNotificationChannelVibration(boolean z) {
            this.j = z;
            this.t = true;
            return this;
        }
    }

    private PushChannelConfiguration(Builder builder) {
        this.f5317a = builder.f5320b;
        this.f5318b = builder.c;
        this.c = builder.d;
        this.d = builder.e;
        this.e = builder.f;
        this.f = builder.g;
        this.g = builder.h;
        this.h = builder.i;
        this.i = builder.j;
        this.j = builder.f5319a;
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
    }

    public boolean equals(Object obj) {
        if (obj instanceof PushChannelConfiguration) {
            return ((PushChannelConfiguration) obj).getNotificationChannelId().equals(getNotificationChannelId());
        }
        return false;
    }

    public String getNotificationChannelDescription() {
        return this.f5318b;
    }

    public String getNotificationChannelGroup() {
        return this.d;
    }

    public String getNotificationChannelId() {
        return this.j;
    }

    public int getNotificationChannelImportance() {
        return this.c;
    }

    public int getNotificationChannelLightColor() {
        return this.e;
    }

    public int getNotificationChannelLockScreenVisibility() {
        return this.f;
    }

    public String getNotificationChannelName() {
        return this.f5317a;
    }

    public String getNotificationChannelSound() {
        return this.h;
    }

    public int hashCode() {
        return this.j.hashCode();
    }

    public boolean isNotificationChannelDescriptionSet() {
        return this.m;
    }

    public boolean isNotificationChannelGroupSet() {
        return this.o;
    }

    public boolean isNotificationChannelIdSet() {
        return this.k;
    }

    public boolean isNotificationChannelImportanceSet() {
        return this.n;
    }

    public boolean isNotificationChannelNameSet() {
        return this.l;
    }

    public boolean isNotificationChannelShowBadge() {
        return this.g;
    }

    public boolean isNotificationChannelShowBadgeSet() {
        return this.r;
    }

    public boolean isNotificationChannelSoundSet() {
        return this.s;
    }

    public boolean isNotificationChannelVibration() {
        return this.i;
    }

    public boolean isNotificationChannelVibrationSet() {
        return this.t;
    }

    public boolean isNotificationLightColorSet() {
        return this.p;
    }

    public boolean isNotificationLockScreenVisibilitySet() {
        return this.q;
    }

    public boolean isValid(Context context) {
        String str;
        if (context == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        if (k.b(getNotificationChannelId())) {
            str = " Notification channel cannot be null or empty";
        } else if (k.b(getNotificationChannelName())) {
            str = " Notification channel name cannot be null or empty";
        } else if (getNotificationChannelImportance() < 0 || getNotificationChannelImportance() > 5) {
            str = " Notification channel importance should be >=0 && <= 5";
        } else if (getNotificationChannelGroup() == null || v.b(getNotificationChannelGroup(), applicationContext)) {
            return true;
        } else {
            str = " Notification channel group with id: " + getNotificationChannelGroup() + " is not yet registered";
        }
        Logger.e("WebEngage", str);
        return false;
    }

    public String toString() {
        return "ChannelId: " + getNotificationChannelId() + "\nChannelName: " + getNotificationChannelName() + "\nChannelImportance: " + getNotificationChannelImportance() + "\nChannelDescription: " + getNotificationChannelDescription() + "\nChannelGroup: " + getNotificationChannelGroup() + "\nChannelColor: " + getNotificationChannelLightColor() + "\nLockScreenVisibility: " + getNotificationChannelLockScreenVisibility() + "\nShowBadge: " + isNotificationChannelShowBadge() + "\nSound: " + getNotificationChannelSound() + "\nVibration: " + isNotificationChannelVibration();
    }
}
