package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.internal.ay;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.jx;
import com.google.android.gms.internal.na;
import com.google.android.gms.internal.zzcln;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.settings.t;
import java.util.List;
import java.util.Map;

@Deprecated
public class AppMeasurement {
    public static final String CRASH_ORIGIN = "crash";
    public static final String FCM_ORIGIN = "fcm";
    private final jx zziwf;

    public static class ConditionalUserProperty {
        public boolean mActive;
        public String mAppId;
        public long mCreationTimestamp;
        public String mExpiredEventName;
        public Bundle mExpiredEventParams;
        public String mName;
        public String mOrigin;
        public long mTimeToLive;
        public String mTimedOutEventName;
        public Bundle mTimedOutEventParams;
        public String mTriggerEventName;
        public long mTriggerTimeout;
        public String mTriggeredEventName;
        public Bundle mTriggeredEventParams;
        public long mTriggeredTimestamp;
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            ap.checkNotNull(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                this.mValue = na.zzag(obj);
                if (this.mValue == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mValue = conditionalUserProperty.mValue;
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            Bundle bundle = conditionalUserProperty.mTimedOutEventParams;
            if (bundle != null) {
                this.mTimedOutEventParams = new Bundle(bundle);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            Bundle bundle2 = conditionalUserProperty.mTriggeredEventParams;
            if (bundle2 != null) {
                this.mTriggeredEventParams = new Bundle(bundle2);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            Bundle bundle3 = conditionalUserProperty.mExpiredEventParams;
            if (bundle3 != null) {
                this.mExpiredEventParams = new Bundle(bundle3);
            }
        }
    }

    public static final class a extends FirebaseAnalytics.a {
        public static final String APP_EXCEPTION = "_ae";
        public static final String[] zziwg = {"app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "screen_view", "firebase_extra_parameter"};
        public static final String[] zziwh = {"_cd", APP_EXCEPTION, "_ui", "_ug", "_in", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_e", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "_vs", "_ep"};

        private a() {
        }

        public static String zziq(String str) {
            return na.zza(str, zziwg, zziwh);
        }
    }

    public interface b {
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    public interface c {
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    public static final class d extends FirebaseAnalytics.b {
        public static final String FATAL = "fatal";
        public static final String TIMESTAMP = "timestamp";
        public static final String[] zziwi = {"firebase_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "message_device_time", "message_id", "message_name", "message_time", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "firebase_event_id", "firebase_extra_params_ct", "firebase_group_name", "firebase_list_length", "firebase_index", "firebase_event_name"};
        public static final String[] zziwj = {"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_ndt", "_nmid", "_nmn", "_nmt", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en"};

        private d() {
        }

        public static String zziq(String str) {
            return na.zza(str, zziwi, zziwj);
        }
    }

    public static final class e extends FirebaseAnalytics.c {
        public static final String FIREBASE_LAST_NOTIFICATION = "_ln";
        public static final String[] zziwn = {"firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "first_open_after_install"};
        public static final String[] zziwo = {FIREBASE_LAST_NOTIFICATION, "_fot", "_fvt", "_ldl", "_id", "_fi"};

        private e() {
        }

        public static String zziq(String str) {
            return na.zza(str, zziwn, zziwo);
        }
    }

    public interface f {
        boolean zza(g gVar, g gVar2);
    }

    public static class g {
        public String zziwk;
        public String zziwl;
        public long zziwm;

        public g() {
        }

        public g(g gVar) {
            this.zziwk = gVar.zziwk;
            this.zziwl = gVar.zziwl;
            this.zziwm = gVar.zziwm;
        }
    }

    public AppMeasurement(jx jxVar) {
        ap.checkNotNull(jxVar);
        this.zziwf = jxVar;
    }

    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return jx.zzdx(context).zzazz();
    }

    public void beginAdUnitExposure(String str) {
        this.zziwf.zzawk().beginAdUnitExposure(str);
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zziwf.zzawm().clearConditionalUserProperty(str, str2, bundle);
    }

    /* access modifiers changed from: protected */
    public void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        this.zziwf.zzawm().clearConditionalUserPropertyAs(str, str2, str3, bundle);
    }

    public void endAdUnitExposure(String str) {
        this.zziwf.zzawk().endAdUnitExposure(str);
    }

    public long generateEventId() {
        return this.zziwf.zzawu().zzbay();
    }

    public String getAppInstanceId() {
        return this.zziwf.zzawm().zzazn();
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        return this.zziwf.zzawm().getConditionalUserProperties(str, str2);
    }

    /* access modifiers changed from: protected */
    public List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        return this.zziwf.zzawm().getConditionalUserPropertiesAs(str, str2, str3);
    }

    public String getCurrentScreenClass() {
        g zzbap = this.zziwf.zzawq().zzbap();
        if (zzbap != null) {
            return zzbap.zziwl;
        }
        return null;
    }

    public String getCurrentScreenName() {
        g zzbap = this.zziwf.zzawq().zzbap();
        if (zzbap != null) {
            return zzbap.zziwk;
        }
        return null;
    }

    public String getGmpAppId() {
        try {
            return ay.zzajh();
        } catch (IllegalStateException e2) {
            this.zziwf.zzawy().zzazd().zzj("getGoogleAppId failed with exception", e2);
            return null;
        }
    }

    public int getMaxUserProperties(String str) {
        this.zziwf.zzawm();
        ap.zzgm(str);
        return 25;
    }

    /* access modifiers changed from: protected */
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zziwf.zzawm().getUserProperties(str, str2, z);
    }

    public Map<String, Object> getUserProperties(boolean z) {
        List<zzcln> zzbq = this.zziwf.zzawm().zzbq(z);
        ArrayMap arrayMap = new ArrayMap(zzbq.size());
        for (zzcln next : zzbq) {
            arrayMap.put(next.name, next.getValue());
        }
        return arrayMap;
    }

    /* access modifiers changed from: protected */
    public Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        return this.zziwf.zzawm().getUserPropertiesAs(str, str2, str3, z);
    }

    public final void logEvent(String str, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!"_iap".equals(str)) {
            int zzka = this.zziwf.zzawu().zzka(str);
            if (zzka != 0) {
                this.zziwf.zzawu();
                this.zziwf.zzawu().zza(zzka, "_ev", na.zza(str, 40, true), str != null ? str.length() : 0);
                return;
            }
        }
        this.zziwf.zzawm().zza(t.APP_KEY, str, bundle, true);
    }

    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zziwf.zzawm().zzc(str, str2, bundle);
    }

    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zziwf.zzawm().zza(str, str2, bundle, j);
    }

    public void registerOnMeasurementEventListener(c cVar) {
        this.zziwf.zzawm().registerOnMeasurementEventListener(cVar);
    }

    public void registerOnScreenChangeCallback(f fVar) {
        this.zziwf.zzawq().registerOnScreenChangeCallback(fVar);
    }

    /* access modifiers changed from: protected */
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        this.zziwf.zzawm().setConditionalUserProperty(conditionalUserProperty);
    }

    /* access modifiers changed from: protected */
    public void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        this.zziwf.zzawm().setConditionalUserPropertyAs(conditionalUserProperty);
    }

    public void setEventInterceptor(b bVar) {
        this.zziwf.zzawm().setEventInterceptor(bVar);
    }

    @Deprecated
    public void setMeasurementEnabled(boolean z) {
        this.zziwf.zzawm().setMeasurementEnabled(z);
    }

    public final void setMinimumSessionDuration(long j) {
        this.zziwf.zzawm().setMinimumSessionDuration(j);
    }

    public final void setSessionTimeoutDuration(long j) {
        this.zziwf.zzawm().setSessionTimeoutDuration(j);
    }

    public final void setUserProperty(String str, String str2) {
        int zzkc = this.zziwf.zzawu().zzkc(str);
        if (zzkc != 0) {
            this.zziwf.zzawu();
            this.zziwf.zzawu().zza(zzkc, "_ev", na.zza(str, 24, true), str != null ? str.length() : 0);
            return;
        }
        setUserPropertyInternal(t.APP_KEY, str, str2);
    }

    public void setUserPropertyInternal(String str, String str2, Object obj) {
        this.zziwf.zzawm().zzb(str, str2, obj);
    }

    public void unregisterOnMeasurementEventListener(c cVar) {
        this.zziwf.zzawm().unregisterOnMeasurementEventListener(cVar);
    }

    public void unregisterOnScreenChangeCallback(f fVar) {
        this.zziwf.zzawq().unregisterOnScreenChangeCallback(fVar);
    }
}
