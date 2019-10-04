package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.util.Base64;
import com.yandex.metrica.impl.w;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class nm {
    public static String a(Context context, String str) throws UnsupportedEncodingException {
        return Base64.encodeToString(b(context, w.b(str).getBytes("UTF-8")), 0);
    }

    public static String a(Context context, byte[] bArr) throws UnsupportedEncodingException {
        byte[] b2 = b(context, Base64.decode(bArr, 0));
        if (b2 != null) {
            return w.c(new String(b2, "UTF-8"));
        }
        return null;
    }

    public static byte[] a(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest instance = MessageDigest.getInstance("MD5");
        instance.reset();
        instance.update(str.getBytes("UTF-8"));
        return instance.digest();
    }

    private static byte[] b(Context context, byte[] bArr) {
        try {
            byte[] a2 = a(context.getPackageName());
            byte[] bArr2 = new byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr2[i] = (byte) (bArr[i] ^ a2[i % a2.length]);
            }
            return bArr2;
        } catch (Exception unused) {
            return null;
        }
    }
}
