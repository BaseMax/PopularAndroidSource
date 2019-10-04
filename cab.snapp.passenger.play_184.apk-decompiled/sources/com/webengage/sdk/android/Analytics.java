package com.webengage.sdk.android;

import android.app.Activity;
import android.content.Intent;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.c;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public abstract class Analytics {

    public static class Options implements c, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private boolean f5314a = false;

        public boolean equals(Object obj) {
            return (obj instanceof Options) && ((Options) obj).getHighReportingPriority() == getHighReportingPriority();
        }

        public boolean getHighReportingPriority() {
            return this.f5314a;
        }

        public int hashCode() {
            return String.valueOf(this.f5314a).hashCode();
        }

        public Options setHighReportingPriority(boolean z) {
            this.f5314a = z;
            return this;
        }

        public Map<String, Object> toMap() {
            HashMap hashMap = new HashMap();
            hashMap.put("high_reporting_priority", Boolean.valueOf(this.f5314a));
            return hashMap;
        }

        public String toString() {
            try {
                return DataType.convert(toMap(), DataType.STRING, true).toString();
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract aa a();

    /* access modifiers changed from: protected */
    public abstract void a(Object obj);

    /* access modifiers changed from: protected */
    public abstract z b();

    /* access modifiers changed from: protected */
    public abstract void b(Object obj);

    /* access modifiers changed from: protected */
    public abstract f c();

    public abstract WeakReference<Activity> getActivity();

    public abstract void installed(Intent intent);

    public abstract void screenNavigated(String str);

    public abstract void screenNavigated(String str, Map<String, ? extends Object> map);

    public abstract void setScreenData(Map<String, ? extends Object> map);

    public abstract void start(Activity activity);

    public abstract void stop(Activity activity);

    public abstract void track(String str);

    public abstract void track(String str, Options options);

    public abstract void track(String str, Map<String, ? extends Object> map);

    public abstract void track(String str, Map<String, ? extends Object> map, Options options);
}
