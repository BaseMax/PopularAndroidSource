package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public class ProxyRequest extends zzbfm {
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new b();
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int LAST_CODE = 7;
    public static final int VERSION_CODE = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f2642a;

    /* renamed from: b  reason: collision with root package name */
    private Bundle f2643b;
    public final byte[] body;
    public final int httpMethod;
    public final long timeoutMillis;
    public final String url;

    ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.f2642a = i;
        this.url = str;
        this.httpMethod = i2;
        this.timeoutMillis = j;
        this.body = bArr;
        this.f2643b = bundle;
    }

    public Map<String, String> getHeaderMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.f2643b.size());
        for (String str : this.f2643b.keySet()) {
            linkedHashMap.put(str, this.f2643b.getString(str));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public String toString() {
        String str = this.url;
        int i = this.httpMethod;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 42);
        sb.append("ProxyRequest[ url: ");
        sb.append(str);
        sb.append(", method: ");
        sb.append(i);
        sb.append(" ]");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.url, false);
        el.zzc(parcel, 2, this.httpMethod);
        el.zza(parcel, 3, this.timeoutMillis);
        el.zza(parcel, 4, this.body, false);
        el.zza(parcel, 5, this.f2643b, false);
        el.zzc(parcel, 1000, this.f2642a);
        el.zzai(parcel, zze);
    }
}
