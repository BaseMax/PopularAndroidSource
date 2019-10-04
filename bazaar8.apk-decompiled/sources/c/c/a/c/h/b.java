package c.c.a.c.h;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import c.c.a.c.b.i;
import com.crashlytics.android.core.SessionProtobufHelper;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

/* compiled from: CodingUtils */
public class b {
    public static String[] a(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo != null) {
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr != null && signatureArr.length > 0) {
                    String[] strArr = new String[signatureArr.length];
                    int i2 = 0;
                    while (i2 < signatureArr.length) {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(signatureArr[i2].toByteArray());
                        try {
                            CertificateFactory instance = CertificateFactory.getInstance("X509");
                            if (instance == null) {
                                return null;
                            }
                            try {
                                X509Certificate x509Certificate = (X509Certificate) instance.generateCertificate(byteArrayInputStream);
                                if (x509Certificate == null) {
                                    return null;
                                }
                                try {
                                    MessageDigest instance2 = MessageDigest.getInstance("SHA1");
                                    if (instance2 != null) {
                                        byte[] digest = instance2.digest(x509Certificate.getEncoded());
                                        if (digest != null) {
                                            strArr[i2] = a(digest);
                                        }
                                    }
                                    i2++;
                                } catch (NoSuchAlgorithmException e2) {
                                    e2.printStackTrace();
                                    return null;
                                } catch (CertificateEncodingException e3) {
                                    e3.printStackTrace();
                                    return null;
                                }
                            } catch (CertificateException e4) {
                                e4.printStackTrace();
                                return null;
                            }
                        } catch (CertificateException e5) {
                            e5.printStackTrace();
                            return null;
                        }
                    }
                    return strArr;
                }
            }
            return null;
        } catch (PackageManager.NameNotFoundException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    public static String[] b(Context context, String str) {
        String[] a2 = a(context, str);
        if (a2 == null || a2.length <= 0) {
            return a2;
        }
        String[] strArr = new String[a2.length];
        for (int i2 = 0; i2 < a2.length; i2++) {
            strArr[i2] = i.a(a2[i2].replace(":", ""), 8);
        }
        return strArr;
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            String hexString = Integer.toHexString(bArr[i2]);
            int length = hexString.length();
            if (length == 1) {
                hexString = SessionProtobufHelper.SIGNAL_DEFAULT + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i2 < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }
}
