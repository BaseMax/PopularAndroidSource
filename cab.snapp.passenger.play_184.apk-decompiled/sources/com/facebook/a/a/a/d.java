package com.facebook.a.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.facebook.crypto.CryptoConfig;
import com.facebook.crypto.a.b;
import com.facebook.crypto.b.a;
import java.util.Arrays;

public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    protected byte[] f2422a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f2423b;
    protected byte[] c;
    protected boolean d;
    private final CryptoConfig e;
    private final SharedPreferences f;
    private final b g;

    @Deprecated
    public d(Context context) {
        this(context, CryptoConfig.KEY_128);
    }

    public d(Context context, CryptoConfig cryptoConfig) {
        String str;
        if (cryptoConfig == CryptoConfig.KEY_128) {
            str = "crypto";
        } else {
            str = "crypto." + String.valueOf(cryptoConfig);
        }
        this.f = context.getSharedPreferences(str, 0);
        this.g = new b();
        this.e = cryptoConfig;
    }

    public final synchronized byte[] getCipherKey() throws b {
        if (!this.f2423b) {
            this.f2422a = a("cipher_key", this.e.keyLength);
        }
        this.f2423b = true;
        return this.f2422a;
    }

    public final byte[] getMacKey() throws b {
        if (!this.d) {
            this.c = a("mac_key", 64);
        }
        this.d = true;
        return this.c;
    }

    public final byte[] getNewIV() throws b {
        byte[] bArr = new byte[this.e.ivLength];
        this.g.nextBytes(bArr);
        return bArr;
    }

    public final synchronized void destroyKeys() {
        this.f2423b = false;
        this.d = false;
        if (this.f2422a != null) {
            Arrays.fill(this.f2422a, (byte) 0);
        }
        if (this.c != null) {
            Arrays.fill(this.c, (byte) 0);
        }
        this.f2422a = null;
        this.c = null;
        SharedPreferences.Editor edit = this.f.edit();
        edit.remove("cipher_key");
        edit.remove("mac_key");
        edit.commit();
    }

    private byte[] a(String str, int i) throws b {
        String string = this.f.getString(str, null);
        if (string == null) {
            return b(str, i);
        }
        return a(string);
    }

    private byte[] b(String str, int i) throws b {
        byte[] bArr = new byte[i];
        this.g.nextBytes(bArr);
        SharedPreferences.Editor edit = this.f.edit();
        edit.putString(str, Base64.encodeToString(bArr, 0));
        edit.commit();
        return bArr;
    }

    private static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }
}
