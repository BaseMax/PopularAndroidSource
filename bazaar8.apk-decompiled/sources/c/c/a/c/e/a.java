package c.c.a.c.e;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import h.f.b.j;
import h.k.c;
import java.nio.charset.Charset;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.TypeCastException;

/* compiled from: AESCrypt.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f4709a = "AES";

    /* renamed from: b  reason: collision with root package name */
    public final String f4710b = "AES/CTR/NoPadding";

    /* renamed from: c  reason: collision with root package name */
    public SecretKeySpec f4711c;

    /* renamed from: d  reason: collision with root package name */
    public IvParameterSpec f4712d;

    public a(Context context) {
        j.b(context, "context");
        a(context);
    }

    public final void a(Context context) {
        byte[] bArr;
        byte[] bArr2;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String a2 = a(String.valueOf(packageInfo.firstInstallTime));
            Charset charset = c.f14613a;
            if (a2 != null) {
                bArr2 = a2.getBytes(charset);
                j.a((Object) bArr2, "(this as java.lang.String).getBytes(charset)");
                String a3 = a(packageInfo.packageName.toString());
                Charset charset2 = c.f14613a;
                if (a3 != null) {
                    bArr = a3.getBytes(charset2);
                    j.a((Object) bArr, "(this as java.lang.String).getBytes(charset)");
                    this.f4711c = new SecretKeySpec(bArr2, this.f4709a);
                    this.f4712d = new IvParameterSpec(bArr);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        } catch (PackageManager.NameNotFoundException unused) {
            bArr2 = a();
            bArr = b();
        }
    }

    public final byte[] b() {
        String a2 = a("CipherParams");
        Charset charset = c.f14613a;
        if (a2 != null) {
            byte[] bytes = a2.getBytes(charset);
            j.a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public final Cipher c() {
        Cipher instance = Cipher.getInstance(this.f4710b);
        instance.init(2, this.f4711c, this.f4712d);
        j.a((Object) instance, "cipher");
        return instance;
    }

    public final Cipher d() {
        Cipher instance = Cipher.getInstance(this.f4710b);
        instance.init(1, this.f4711c, this.f4712d);
        j.a((Object) instance, "cipher");
        return instance;
    }

    public final SecretKeySpec e() {
        return this.f4711c;
    }

    public final IvParameterSpec f() {
        return this.f4712d;
    }

    public final String a(String str) {
        if (str.length() <= 16) {
            StringBuilder sb = new StringBuilder(str);
            for (int length = sb.length(); length <= 15; length++) {
                sb.append(length % 2);
            }
            String sb2 = sb.toString();
            j.a((Object) sb2, "stringBuilder.toString()");
            return sb2;
        } else if (str != null) {
            String substring = str.substring(0, 16);
            j.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        } else {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
    }

    public final byte[] a() {
        String a2 = a("CipherKey");
        Charset charset = c.f14613a;
        if (a2 != null) {
            byte[] bytes = a2.getBytes(charset);
            j.a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
