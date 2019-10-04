package c.e.a.a.j.e.a;

import android.net.Uri;
import c.e.a.a.e.e.o;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.H;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: SsManifest */
public class a implements c.e.a.a.h.b<a> {

    /* renamed from: a  reason: collision with root package name */
    public final int f8864a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8865b;

    /* renamed from: c  reason: collision with root package name */
    public final int f8866c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f8867d;

    /* renamed from: e  reason: collision with root package name */
    public final C0111a f8868e;

    /* renamed from: f  reason: collision with root package name */
    public final b[] f8869f;

    /* renamed from: g  reason: collision with root package name */
    public final long f8870g;

    /* renamed from: h  reason: collision with root package name */
    public final long f8871h;

    /* renamed from: c.e.a.a.j.e.a.a$a  reason: collision with other inner class name */
    /* compiled from: SsManifest */
    public static class C0111a {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f8872a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f8873b;

        /* renamed from: c  reason: collision with root package name */
        public final o[] f8874c;

        public C0111a(UUID uuid, byte[] bArr, o[] oVarArr) {
            this.f8872a = uuid;
            this.f8873b = bArr;
            this.f8874c = oVarArr;
        }
    }

    /* compiled from: SsManifest */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f8875a;

        /* renamed from: b  reason: collision with root package name */
        public final String f8876b;

        /* renamed from: c  reason: collision with root package name */
        public final long f8877c;

        /* renamed from: d  reason: collision with root package name */
        public final String f8878d;

        /* renamed from: e  reason: collision with root package name */
        public final int f8879e;

        /* renamed from: f  reason: collision with root package name */
        public final int f8880f;

        /* renamed from: g  reason: collision with root package name */
        public final int f8881g;

        /* renamed from: h  reason: collision with root package name */
        public final int f8882h;

        /* renamed from: i  reason: collision with root package name */
        public final String f8883i;

        /* renamed from: j  reason: collision with root package name */
        public final Format[] f8884j;

        /* renamed from: k  reason: collision with root package name */
        public final int f8885k;

        /* renamed from: l  reason: collision with root package name */
        public final String f8886l;
        public final String m;
        public final List<Long> n;
        public final long[] o;
        public final long p;

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public b(String str, String str2, int i2, String str3, long j2, String str4, int i3, int i4, int i5, int i6, String str5, Format[] formatArr, List<Long> list, long j3) {
            this(str, str2, i2, str3, j2, str4, i3, i4, i5, i6, str5, formatArr, list, I.a(list, (long) RetryManager.NANOSECONDS_IN_MS, j2), I.c(j3, RetryManager.NANOSECONDS_IN_MS, j2));
            String str6 = str;
            String str7 = str2;
            int i7 = i2;
        }

        public b a(Format[] formatArr) {
            String str = this.f8886l;
            String str2 = str;
            b bVar = new b(str2, this.m, this.f8875a, this.f8876b, this.f8877c, this.f8878d, this.f8879e, this.f8880f, this.f8881g, this.f8882h, this.f8883i, formatArr, this.n, this.o, this.p);
            return bVar;
        }

        public long b(int i2) {
            return this.o[i2];
        }

        public int a(long j2) {
            return I.b(this.o, j2, true, true);
        }

        public long a(int i2) {
            if (i2 == this.f8885k - 1) {
                return this.p;
            }
            long[] jArr = this.o;
            return jArr[i2 + 1] - jArr[i2];
        }

        public b(String str, String str2, int i2, String str3, long j2, String str4, int i3, int i4, int i5, int i6, String str5, Format[] formatArr, List<Long> list, long[] jArr, long j3) {
            this.f8886l = str;
            this.m = str2;
            this.f8875a = i2;
            this.f8876b = str3;
            this.f8877c = j2;
            this.f8878d = str4;
            this.f8879e = i3;
            this.f8880f = i4;
            this.f8881g = i5;
            this.f8882h = i6;
            this.f8883i = str5;
            this.f8884j = formatArr;
            this.n = list;
            this.o = jArr;
            this.p = j3;
            this.f8885k = list.size();
        }

        public Uri a(int i2, int i3) {
            boolean z = true;
            C0737e.b(this.f8884j != null);
            C0737e.b(this.n != null);
            if (i3 >= this.n.size()) {
                z = false;
            }
            C0737e.b(z);
            String num = Integer.toString(this.f8884j[i2].f12510e);
            String l2 = this.n.get(i3).toString();
            return H.b(this.f8886l, this.m.replace("{bitrate}", num).replace("{Bitrate}", num).replace("{start time}", l2).replace("{start_time}", l2));
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public a(int r16, int r17, long r18, long r20, long r22, int r24, boolean r25, c.e.a.a.j.e.a.a.C0111a r26, c.e.a.a.j.e.a.a.b[] r27) {
        /*
            r15 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r2 = 0
            int r4 = (r20 > r2 ? 1 : (r20 == r2 ? 0 : -1))
            if (r4 != 0) goto L_0x000d
            r12 = r0
            goto L_0x0019
        L_0x000d:
            r6 = 1000000(0xf4240, double:4.940656E-318)
            r4 = r20
            r8 = r18
            long r4 = c.e.a.a.o.I.c(r4, r6, r8)
            r12 = r4
        L_0x0019:
            int r4 = (r22 > r2 ? 1 : (r22 == r2 ? 0 : -1))
            if (r4 != 0) goto L_0x001e
            goto L_0x0029
        L_0x001e:
            r8 = 1000000(0xf4240, double:4.940656E-318)
            r6 = r22
            r10 = r18
            long r0 = c.e.a.a.o.I.c(r6, r8, r10)
        L_0x0029:
            r9 = r0
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r12
            r11 = r24
            r12 = r25
            r13 = r26
            r14 = r27
            r4.<init>(r5, r6, r7, r9, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.e.a.a.<init>(int, int, long, long, long, int, boolean, c.e.a.a.j.e.a.a$a, c.e.a.a.j.e.a.a$b[]):void");
    }

    public final a a(List<StreamKey> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b bVar = null;
        int i2 = 0;
        while (i2 < arrayList.size()) {
            StreamKey streamKey = (StreamKey) arrayList.get(i2);
            b bVar2 = this.f8869f[streamKey.f12688b];
            if (!(bVar2 == bVar || bVar == null)) {
                arrayList2.add(bVar.a((Format[]) arrayList3.toArray(new Format[0])));
                arrayList3.clear();
            }
            arrayList3.add(bVar2.f8884j[streamKey.f12689c]);
            i2++;
            bVar = bVar2;
        }
        if (bVar != null) {
            arrayList2.add(bVar.a((Format[]) arrayList3.toArray(new Format[0])));
        }
        a aVar = new a(this.f8864a, this.f8865b, this.f8870g, this.f8871h, this.f8866c, this.f8867d, this.f8868e, (b[]) arrayList2.toArray(new b[0]));
        return aVar;
    }

    public a(int i2, int i3, long j2, long j3, int i4, boolean z, C0111a aVar, b[] bVarArr) {
        this.f8864a = i2;
        this.f8865b = i3;
        this.f8870g = j2;
        this.f8871h = j3;
        this.f8866c = i4;
        this.f8867d = z;
        this.f8868e = aVar;
        this.f8869f = bVarArr;
    }
}
