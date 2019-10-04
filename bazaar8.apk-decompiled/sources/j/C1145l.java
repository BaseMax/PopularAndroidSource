package j;

import java.util.Comparator;

/* renamed from: j.l  reason: case insensitive filesystem */
/* compiled from: CipherSuite */
class C1145l implements Comparator<String> {
    /* renamed from: a */
    public int compare(String str, String str2) {
        int min = Math.min(str.length(), str2.length());
        int i2 = 4;
        while (true) {
            int i3 = -1;
            if (i2 < min) {
                char charAt = str.charAt(i2);
                char charAt2 = str2.charAt(i2);
                if (charAt != charAt2) {
                    if (charAt >= charAt2) {
                        i3 = 1;
                    }
                    return i3;
                }
                i2++;
            } else {
                int length = str.length();
                int length2 = str2.length();
                if (length == length2) {
                    return 0;
                }
                if (length >= length2) {
                    i3 = 1;
                }
                return i3;
            }
        }
    }
}
