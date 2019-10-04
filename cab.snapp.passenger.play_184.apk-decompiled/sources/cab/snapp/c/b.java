package cab.snapp.c;

import android.util.Base64;
import com.pusher.java_websocket.drafts.c;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;

public final class b {
    public static String md5(String str) {
        byte[] bArr = new byte[0];
        try {
            bArr = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        } catch (NullPointerException e3) {
            e3.printStackTrace();
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            byte b3 = b2 & c.END_OF_FRAME;
            if (b3 < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(b3));
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String sha1(java.lang.String r5) {
        /*
            java.lang.String r0 = "SHA-1"
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)     // Catch:{ NoSuchAlgorithmException -> 0x000c, NullPointerException -> 0x0007 }
            goto L_0x0011
        L_0x0007:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0010
        L_0x000c:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0010:
            r0 = 0
        L_0x0011:
            r1 = 0
            byte[] r2 = new byte[r1]
            if (r0 == 0) goto L_0x0021
            r0.reset()
            byte[] r5 = r5.getBytes()
            byte[] r2 = r0.digest(r5)
        L_0x0021:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r0 = "%0"
            r5.<init>(r0)
            int r0 = r2.length
            int r0 = r0 * 2
            r5.append(r0)
            java.lang.String r0 = "X"
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            r0 = 1
            java.lang.Object[] r3 = new java.lang.Object[r0]
            java.math.BigInteger r4 = new java.math.BigInteger
            r4.<init>(r0, r2)
            r3[r1] = r4
            java.lang.String r5 = java.lang.String.format(r5, r3)
            java.lang.String r5 = r5.toLowerCase()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.c.b.sha1(java.lang.String):java.lang.String");
    }

    public static String encryptUUid(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.reset();
            instance.update(str.getBytes("UTF-8"));
            byte[] digest = instance.digest();
            Formatter formatter = new Formatter();
            for (byte valueOf : digest) {
                formatter.format("%02x", new Object[]{Byte.valueOf(valueOf)});
            }
            String formatter2 = formatter.toString();
            formatter.close();
            return formatter2;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return "";
        } catch (NullPointerException e3) {
            e3.printStackTrace();
            return "";
        }
    }

    public static String Base64Encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 0);
    }

    public static String Base64Decode(byte[] bArr) {
        try {
            return new String(Base64.decode(bArr, 0), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }
}
