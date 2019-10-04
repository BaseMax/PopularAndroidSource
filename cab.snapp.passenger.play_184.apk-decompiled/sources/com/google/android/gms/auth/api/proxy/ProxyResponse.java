package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ProxyResponse extends zzbfm {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new c();
    public static final int STATUS_CODE_NO_CONNECTION = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f2644a;

    /* renamed from: b  reason: collision with root package name */
    private Bundle f2645b;
    public final byte[] body;
    public final int googlePlayServicesStatusCode;
    public final PendingIntent recoveryAction;
    public final int statusCode;

    ProxyResponse(int i, int i2, PendingIntent pendingIntent, int i3, Bundle bundle, byte[] bArr) {
        this.f2644a = i;
        this.googlePlayServicesStatusCode = i2;
        this.statusCode = i3;
        this.f2645b = bundle;
        this.body = bArr;
        this.recoveryAction = pendingIntent;
    }

    public ProxyResponse(int i, PendingIntent pendingIntent, int i2, Bundle bundle, byte[] bArr) {
        this(1, i, pendingIntent, i2, bundle, bArr);
    }

    private ProxyResponse(int i, Bundle bundle, byte[] bArr) {
        this(1, 0, null, i, bundle, bArr);
    }

    public ProxyResponse(int i, Map<String, String> map, byte[] bArr) {
        this(i, a(map), bArr);
    }

    private static Bundle a(Map<String, String> map) {
        Bundle bundle = new Bundle();
        if (map == null) {
            return bundle;
        }
        for (Map.Entry next : map.entrySet()) {
            bundle.putString((String) next.getKey(), (String) next.getValue());
        }
        return bundle;
    }

    public static ProxyResponse createErrorProxyResponse(int i, PendingIntent pendingIntent, int i2, Map<String, String> map, byte[] bArr) {
        ProxyResponse proxyResponse = new ProxyResponse(1, i, pendingIntent, i2, a(map), bArr);
        return proxyResponse;
    }

    public Map<String, String> getHeaders() {
        if (this.f2645b == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : this.f2645b.keySet()) {
            hashMap.put(str, this.f2645b.getString(str));
        }
        return hashMap;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.googlePlayServicesStatusCode);
        el.zza(parcel, 2, (Parcelable) this.recoveryAction, i, false);
        el.zzc(parcel, 3, this.statusCode);
        el.zza(parcel, 4, this.f2645b, false);
        el.zza(parcel, 5, this.body, false);
        el.zzc(parcel, 1000, this.f2644a);
        el.zzai(parcel, zze);
    }
}
