package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class ActivityRecognitionResult extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new t();

    /* renamed from: a  reason: collision with root package name */
    private List<DetectedActivity> f3620a;

    /* renamed from: b  reason: collision with root package name */
    private long f3621b;
    private long c;
    private int d;
    private Bundle e;

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2) {
        this(detectedActivity, j, j2, (byte) 0);
    }

    private ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2, byte b2) {
        this(Collections.singletonList(detectedActivity), j, j2, 0, null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2) {
        this(list, j, j2, 0, null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2, int i, Bundle bundle) {
        boolean z = true;
        ap.checkArgument(list != null && list.size() > 0, "Must have at least 1 detected activity");
        ap.checkArgument((j <= 0 || j2 <= 0) ? false : z, "Must set times");
        this.f3620a = list;
        this.f3621b = j;
        this.c = j2;
        this.d = i;
        this.e = bundle;
    }

    private static List<ActivityRecognitionResult> a(Intent intent) {
        if (!(intent == null ? false : intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST"))) {
            return null;
        }
        return em.zzb(intent, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST", CREATOR);
    }

    private static boolean a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return true;
        }
        if ((bundle == null && bundle2 != null) || ((bundle != null && bundle2 == null) || bundle.size() != bundle2.size())) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            if (bundle.get(str) == null) {
                if (bundle2.get(str) != null) {
                    return false;
                }
            } else if (bundle.get(str) instanceof Bundle) {
                if (!a(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else if (!bundle.get(str).equals(bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0022, code lost:
        if ((r0 instanceof com.google.android.gms.location.ActivityRecognitionResult) != false) goto L_0x001d;
     */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0028 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.location.ActivityRecognitionResult extractResult(android.content.Intent r3) {
        /*
            boolean r0 = hasResult(r3)
            r1 = 0
            if (r0 == 0) goto L_0x0025
            android.os.Bundle r0 = r3.getExtras()
            java.lang.String r2 = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"
            java.lang.Object r0 = r0.get(r2)
            boolean r2 = r0 instanceof byte[]
            if (r2 == 0) goto L_0x0020
            byte[] r0 = (byte[]) r0
            android.os.Parcelable$Creator<com.google.android.gms.location.ActivityRecognitionResult> r2 = CREATOR
            com.google.android.gms.internal.zzbfq r0 = com.google.android.gms.internal.em.zza(r0, r2)
        L_0x001d:
            com.google.android.gms.location.ActivityRecognitionResult r0 = (com.google.android.gms.location.ActivityRecognitionResult) r0
            goto L_0x0026
        L_0x0020:
            boolean r2 = r0 instanceof com.google.android.gms.location.ActivityRecognitionResult
            if (r2 == 0) goto L_0x0025
            goto L_0x001d
        L_0x0025:
            r0 = r1
        L_0x0026:
            if (r0 == 0) goto L_0x0029
            return r0
        L_0x0029:
            java.util.List r3 = a(r3)
            if (r3 == 0) goto L_0x0043
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto L_0x0036
            goto L_0x0043
        L_0x0036:
            int r0 = r3.size()
            int r0 = r0 + -1
            java.lang.Object r3 = r3.get(r0)
            com.google.android.gms.location.ActivityRecognitionResult r3 = (com.google.android.gms.location.ActivityRecognitionResult) r3
            return r3
        L_0x0043:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.ActivityRecognitionResult.extractResult(android.content.Intent):com.google.android.gms.location.ActivityRecognitionResult");
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        if (intent == null ? false : intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT")) {
            return true;
        }
        List<ActivityRecognitionResult> a2 = a(intent);
        return a2 != null && !a2.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
            return this.f3621b == activityRecognitionResult.f3621b && this.c == activityRecognitionResult.c && this.d == activityRecognitionResult.d && ag.equal(this.f3620a, activityRecognitionResult.f3620a) && a(this.e, activityRecognitionResult.e);
        }
    }

    public int getActivityConfidence(int i) {
        for (DetectedActivity next : this.f3620a) {
            if (next.getType() == i) {
                return next.getConfidence();
            }
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.c;
    }

    public DetectedActivity getMostProbableActivity() {
        return this.f3620a.get(0);
    }

    public List<DetectedActivity> getProbableActivities() {
        return this.f3620a;
    }

    public long getTime() {
        return this.f3621b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f3621b), Long.valueOf(this.c), Integer.valueOf(this.d), this.f3620a, this.e});
    }

    public String toString() {
        String valueOf = String.valueOf(this.f3620a);
        long j = this.f3621b;
        long j2 = this.c;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 124);
        sb.append("ActivityRecognitionResult [probableActivities=");
        sb.append(valueOf);
        sb.append(", timeMillis=");
        sb.append(j);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3620a, false);
        el.zza(parcel, 2, this.f3621b);
        el.zza(parcel, 3, this.c);
        el.zzc(parcel, 4, this.d);
        el.zza(parcel, 5, this.e, false);
        el.zzai(parcel, zze);
    }
}
