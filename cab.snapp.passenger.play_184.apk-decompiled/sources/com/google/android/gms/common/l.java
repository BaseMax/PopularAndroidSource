package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.a.a;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.common.util.h;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

abstract class l extends t {

    /* renamed from: a  reason: collision with root package name */
    private int f2991a;

    protected l(byte[] bArr) {
        if (bArr.length != 25) {
            int length = bArr.length;
            boolean z = false;
            String zza = h.zza(bArr, 0, bArr.length, false);
            StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 51);
            sb.append("Cert hash data has incorrect length (");
            sb.append(length);
            sb.append("):\n");
            sb.append(zza);
            Log.wtf("GoogleCertificates", sb.toString(), new Exception());
            bArr = Arrays.copyOfRange(bArr, 0, 25);
            z = bArr.length == 25 ? true : z;
            int length2 = bArr.length;
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("cert hash data has incorrect length. length=");
            sb2.append(length2);
            ap.checkArgument(z, sb2.toString());
        }
        this.f2991a = Arrays.hashCode(bArr);
    }

    protected static byte[] a(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* access modifiers changed from: package-private */
    public abstract byte[] a();

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof s)) {
            try {
                s sVar = (s) obj;
                if (sVar.zzagb() != hashCode()) {
                    return false;
                }
                a zzaga = sVar.zzaga();
                if (zzaga == null) {
                    return false;
                }
                return Arrays.equals(a(), (byte[]) m.zzx(zzaga));
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f2991a;
    }

    public final a zzaga() {
        return m.zzz(a());
    }

    public final int zzagb() {
        return hashCode();
    }
}
