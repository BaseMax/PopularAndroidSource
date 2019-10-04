package c.c.a.c.h;

import java.util.UUID;

/* compiled from: UuidUtils */
public class i {
    public static byte[] a(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i2] = (byte) ((int) (mostSignificantBits >>> ((7 - i2) * 8)));
        }
        for (int i3 = 8; i3 < 16; i3++) {
            bArr[i3] = (byte) ((int) (leastSignificantBits >>> ((7 - i3) * 8)));
        }
        return bArr;
    }
}
