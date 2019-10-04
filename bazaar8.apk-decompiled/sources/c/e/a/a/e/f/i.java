package c.e.a.a.e.f;

import c.e.a.a.e.f.k;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import e.a.a.a.a.b.C1046a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: OpusReader */
public final class i extends k {
    public static final int n = I.b("Opus");
    public static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    public boolean p;

    public static boolean b(v vVar) {
        int a2 = vVar.a();
        byte[] bArr = o;
        if (a2 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        vVar.a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, o);
    }

    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.p = false;
        }
    }

    public long a(v vVar) {
        return b(a(vVar.f9634a));
    }

    public boolean a(v vVar, long j2, k.a aVar) {
        boolean z = true;
        if (!this.p) {
            byte[] copyOf = Arrays.copyOf(vVar.f9634a, vVar.d());
            byte b2 = copyOf[9] & 255;
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(copyOf);
            a(arrayList, ((copyOf[11] & 255) << 8) | (copyOf[10] & 255));
            a(arrayList, 3840);
            aVar.f7952a = Format.a((String) null, "audio/opus", (String) null, -1, -1, (int) b2, 48000, (List<byte[]>) arrayList, (DrmInitData) null, 0, (String) null);
            this.p = true;
            return true;
        }
        if (vVar.i() != n) {
            z = false;
        }
        vVar.e(0);
        return z;
    }

    public final void a(List<byte[]> list, int i2) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((((long) i2) * 1000000000) / 48000).array());
    }

    public final long a(byte[] bArr) {
        byte b2 = bArr[0] & 255;
        byte b3 = b2 & 3;
        byte b4 = 2;
        if (b3 == 0) {
            b4 = 1;
        } else if (!(b3 == 1 || b3 == 2)) {
            b4 = bArr[1] & 63;
        }
        int i2 = b2 >> 3;
        int i3 = i2 & 3;
        return ((long) b4) * ((long) (i2 >= 16 ? 2500 << i3 : i2 >= 12 ? C1046a.DEFAULT_TIMEOUT << (i3 & 1) : i3 == 3 ? 60000 : C1046a.DEFAULT_TIMEOUT << i3));
    }
}
