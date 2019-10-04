package c.e.a.a.e.e;

import c.e.a.a.o.p;
import c.e.a.a.o.v;
import java.nio.ByteBuffer;
import java.util.UUID;

/* compiled from: PsshAtomUtil */
public final class l {

    /* compiled from: PsshAtomUtil */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f7860a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7861b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f7862c;

        public a(UUID uuid, int i2, byte[] bArr) {
            this.f7860a = uuid;
            this.f7861b = i2;
            this.f7862c = bArr;
        }
    }

    public static byte[] a(UUID uuid, byte[] bArr) {
        return a(uuid, null, bArr);
    }

    public static UUID b(byte[] bArr) {
        a a2 = a(bArr);
        if (a2 == null) {
            return null;
        }
        return a2.f7860a;
    }

    public static byte[] a(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(c.ha);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (!(bArr == null || bArr.length == 0)) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    public static a a(byte[] bArr) {
        v vVar = new v(bArr);
        if (vVar.d() < 32) {
            return null;
        }
        vVar.e(0);
        if (vVar.i() != vVar.a() + 4 || vVar.i() != c.ha) {
            return null;
        }
        int c2 = c.c(vVar.i());
        if (c2 > 1) {
            p.d("PsshAtomUtil", "Unsupported pssh version: " + c2);
            return null;
        }
        UUID uuid = new UUID(vVar.q(), vVar.q());
        if (c2 == 1) {
            vVar.f(vVar.y() * 16);
        }
        int y = vVar.y();
        if (y != vVar.a()) {
            return null;
        }
        byte[] bArr2 = new byte[y];
        vVar.a(bArr2, 0, y);
        return new a(uuid, c2, bArr2);
    }
}
