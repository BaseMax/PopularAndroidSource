package com.google.android.gms.common.util;

import com.pusher.java_websocket.drafts.c;

public final class h {
    public static String zza(byte[] bArr, int i, int i2, boolean z) {
        String str;
        if (bArr == null || bArr.length == 0 || i2 <= 0 || i2 > bArr.length) {
            return null;
        }
        StringBuilder sb = new StringBuilder((((i2 + 16) - 1) / 16) * 57);
        int i3 = i2;
        int i4 = 0;
        int i5 = 0;
        while (i3 > 0) {
            if (i4 != 0) {
                if (i4 == 8) {
                    str = " -";
                }
                sb.append(String.format(" %02X", new Object[]{Integer.valueOf(bArr[i5] & c.END_OF_FRAME)}));
                i3--;
                i4++;
                if (i4 != 16 || i3 == 0) {
                    sb.append(10);
                    i4 = 0;
                }
                i5++;
            } else if (i2 < 65536) {
                str = String.format("%04X:", new Object[]{Integer.valueOf(i5)});
            } else {
                str = String.format("%08X:", new Object[]{Integer.valueOf(i5)});
            }
            sb.append(str);
            sb.append(String.format(" %02X", new Object[]{Integer.valueOf(bArr[i5] & c.END_OF_FRAME)}));
            i3--;
            i4++;
            if (i4 != 16) {
            }
            sb.append(10);
            i4 = 0;
            i5++;
        }
        return sb.toString();
    }
}
