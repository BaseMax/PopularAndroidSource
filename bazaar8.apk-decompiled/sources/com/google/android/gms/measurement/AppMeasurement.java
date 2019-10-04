package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import c.e.a.b.d.d.r;
import c.e.a.b.h.b.C0970xa;
import c.e.a.b.h.b.Da;
import c.e.a.b.h.b.Y;
import c.e.a.b.h.b.Ya;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Deprecated
public class AppMeasurement {

    /* renamed from: a  reason: collision with root package name */
    public static volatile AppMeasurement f13217a;

    /* renamed from: b  reason: collision with root package name */
    public final Y f13218b;

    /* renamed from: c  reason: collision with root package name */
    public final Ya f13219c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f13220d;

    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @Keep
        public String mExpiredEventName;
        @Keep
        public Bundle mExpiredEventParams;
        @Keep
        public String mName;
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @Keep
        public String mTimedOutEventName;
        @Keep
        public Bundle mTimedOutEventParams;
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @Keep
        public String mTriggeredEventName;
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public final Bundle a() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString("origin", str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString(DefaultAppMeasurementEventListenerRegistrar.NAME, str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                C0970xa.a(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString("trigger_event_name", str4);
            }
            bundle.putLong("trigger_timeout", this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString("timed_out_event_name", str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle("timed_out_event_params", bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString("triggered_event_name", str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle("triggered_event_params", bundle3);
            }
            bundle.putLong("time_to_live", this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString("expired_event_name", str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle("expired_event_params", bundle4);
            }
            bundle.putLong("creation_timestamp", this.mCreationTimestamp);
            bundle.putBoolean("active", this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }

        public ConditionalUserProperty(Bundle bundle) {
            r.a(bundle);
            this.mAppId = (String) C0970xa.a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) C0970xa.a(bundle, "origin", String.class, null);
            this.mName = (String) C0970xa.a(bundle, DefaultAppMeasurementEventListenerRegistrar.NAME, String.class, null);
            this.mValue = C0970xa.a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C0970xa.a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C0970xa.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C0970xa.a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C0970xa.a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C0970xa.a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C0970xa.a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C0970xa.a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C0970xa.a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C0970xa.a(bundle, "expired_event_params", Bundle.class, null);
        }
    }

    public interface OnEventListener extends Da {
        void onEvent(String str, String str2, Bundle bundle, long j2);
    }

    public AppMeasurement(Y y) {
        r.a(y);
        this.f13218b = y;
        this.f13219c = null;
        this.f13220d = false;
    }

    public static AppMeasurement a(Context context, String str, String str2) {
        if (f13217a == null) {
            synchronized (AppMeasurement.class) {
                if (f13217a == null) {
                    Ya b2 = b(context, null);
                    if (b2 != null) {
                        f13217a = new AppMeasurement(b2);
                    } else {
                        f13217a = new AppMeasurement(Y.a(context, null, null, null));
                    }
                }
            }
        }
        return f13217a;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c.e.a.b.h.b.Ya b(android.content.Context r8, android.os.Bundle r9) {
        /*
            java.lang.String r0 = "com.google.firebase.analytics.FirebaseAnalytics"
            r1 = 0
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ ClassNotFoundException -> 0x0027 }
            java.lang.String r2 = "getScionFrontendApiImplementation"
            r3 = 2
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch:{  }
            java.lang.Class<android.content.Context> r5 = android.content.Context.class
            r6 = 0
            r4[r6] = r5     // Catch:{  }
            java.lang.Class<android.os.Bundle> r5 = android.os.Bundle.class
            r7 = 1
            r4[r7] = r5     // Catch:{  }
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r2, r4)     // Catch:{  }
            java.lang.Object[] r2 = new java.lang.Object[r3]     // Catch:{  }
            r2[r6] = r8     // Catch:{  }
            r2[r7] = r9     // Catch:{  }
            java.lang.Object r8 = r0.invoke(r1, r2)     // Catch:{  }
            c.e.a.b.h.b.Ya r8 = (c.e.a.b.h.b.Ya) r8     // Catch:{  }
            return r8
        L_0x0027:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.AppMeasurement.b(android.content.Context, android.os.Bundle):c.e.a.b.h.b.Ya");
    }

    @Deprecated
    @Keep
    public static AppMeasurement getInstance(Context context) {
        return a(context, (String) null, (String) null);
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        if (this.f13220d) {
            this.f13219c.b(str);
        } else {
            this.f13218b.A().a(str, this.f13218b.c().a());
        }
    }

    @Keep
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (this.f13220d) {
            this.f13219c.clearConditionalUserProperty(str, str2, bundle);
        } else {
            this.f13218b.B().a(str, str2, bundle);
        }
    }

    @Keep
    public void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        if (this.f13220d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f13218b.B().a(str, str2, str3, bundle);
        throw null;
    }

    @Keep
    public void endAdUnitExposure(String str) {
        if (this.f13220d) {
            this.f13219c.c(str);
        } else {
            this.f13218b.A().b(str, this.f13218b.c().a());
        }
    }

    @Keep
    public long generateEventId() {
        if (this.f13220d) {
            return this.f13219c.a();
        }
        return this.f13218b.i().u();
    }

    @Keep
    public String getAppInstanceId() {
        if (this.f13220d) {
            return this.f13219c.e();
        }
        return this.f13218b.B().M();
    }

    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> list;
        int i2;
        if (this.f13220d) {
            list = this.f13219c.a(str, str2);
        } else {
            list = this.f13218b.B().b(str, str2);
        }
        if (list == null) {
            i2 = 0;
        } else {
            i2 = list.size();
        }
        ArrayList arrayList = new ArrayList(i2);
        for (Bundle conditionalUserProperty : list) {
            arrayList.add(new ConditionalUserProperty(conditionalUserProperty));
        }
        return arrayList;
    }

    @Keep
    public List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        if (this.f13220d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f13218b.B().a(str, str2, str3);
        throw null;
    }

    @Keep
    public String getCurrentScreenClass() {
        if (this.f13220d) {
            return this.f13219c.d();
        }
        return this.f13218b.B().B();
    }

    @Keep
    public String getCurrentScreenName() {
        if (this.f13220d) {
            return this.f13219c.b();
        }
        return this.f13218b.B().C();
    }

    @Keep
    public String getGmpAppId() {
        if (this.f13220d) {
            return this.f13219c.c();
        }
        return this.f13218b.B().D();
    }

    @Keep
    public int getMaxUserProperties(String str) {
        if (this.f13220d) {
            return this.f13219c.a(str);
        }
        this.f13218b.B();
        r.b(str);
        return 25;
    }

    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        if (this.f13220d) {
            return this.f13219c.a(str, str2, z);
        }
        return this.f13218b.B().a(str, str2, z);
    }

    @Keep
    public Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        if (this.f13220d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f13218b.B().a(str, str2, str3, z);
        throw null;
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.f13220d) {
            this.f13219c.a(str, str2, bundle);
        } else {
            this.f13218b.B().b(str, str2, bundle);
        }
    }

    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        if (this.f13220d) {
            this.f13219c.a((Da) onEventListener);
        } else {
            this.f13218b.B().a((Da) onEventListener);
        }
    }

    @Keep
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        r.a(conditionalUserProperty);
        if (this.f13220d) {
            this.f13219c.a(conditionalUserProperty.a());
        } else {
            this.f13218b.B().a(conditionalUserProperty.a());
        }
    }

    @Keep
    public void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        r.a(conditionalUserProperty);
        if (this.f13220d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f13218b.B().b(conditionalUserProperty.a());
        throw null;
    }

    public AppMeasurement(Ya ya) {
        r.a(ya);
        this.f13219c = ya;
        this.f13218b = null;
        this.f13220d = true;
    }

    public static AppMeasurement a(Context context, Bundle bundle) {
        if (f13217a == null) {
            synchronized (AppMeasurement.class) {
                if (f13217a == null) {
                    Ya b2 = b(context, bundle);
                    if (b2 != null) {
                        f13217a = new AppMeasurement(b2);
                    } else {
                        f13217a = new AppMeasurement(Y.a(context, null, null, bundle));
                    }
                }
            }
        }
        return f13217a;
    }

    public final void a(boolean z) {
        if (this.f13220d) {
            this.f13219c.setDataCollectionEnabled(z);
        } else {
            this.f13218b.B().b(z);
        }
    }

    public void a(String str, String str2, Object obj) {
        r.b(str);
        if (this.f13220d) {
            this.f13219c.a(str, str2, obj);
        } else {
            this.f13218b.B().a(str, str2, obj, true);
        }
    }
}
