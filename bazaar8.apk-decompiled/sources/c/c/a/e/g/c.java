package c.c.a.e.g;

import c.c.a.c.a.b;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.model.DownloadStatus;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.data.entity.EntityType;
import h.c.e;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.H;
import i.a.b.p;
import i.a.va;
import java.math.BigInteger;
import java.util.List;
import javax.crypto.Cipher;

/* compiled from: DownloadModel.kt */
public final class c implements H {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f5446a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f5447b;

    /* renamed from: c  reason: collision with root package name */
    public final C1125ra f5448c;

    /* renamed from: d  reason: collision with root package name */
    public int f5449d;

    /* renamed from: e  reason: collision with root package name */
    public final d f5450e;

    /* renamed from: f  reason: collision with root package name */
    public DownloadStatus f5451f;

    /* renamed from: g  reason: collision with root package name */
    public final p<DownloaderProgressInfo> f5452g;

    /* renamed from: h  reason: collision with root package name */
    public final p<DownloadStatus> f5453h;

    /* renamed from: i  reason: collision with root package name */
    public final String f5454i;

    /* renamed from: j  reason: collision with root package name */
    public final EntityType f5455j;

    /* renamed from: k  reason: collision with root package name */
    public final List<String> f5456k;

    /* renamed from: l  reason: collision with root package name */
    public final List<String> f5457l;
    public final BigInteger m;
    public final BigInteger n;
    public final boolean o;
    public final Cipher p;
    public final int q;
    public DownloadStatus r;

    public c(String str, EntityType entityType, List<String> list, List<String> list2, BigInteger bigInteger, BigInteger bigInteger2, boolean z, Cipher cipher, int i2, DownloadStatus downloadStatus) {
        j.b(str, "entityId");
        j.b(entityType, SessionEventTransform.TYPE_KEY);
        j.b(list, "_downloadUrls");
        j.b(downloadStatus, "_status");
        this.f5454i = str;
        this.f5455j = entityType;
        this.f5456k = list;
        this.f5457l = list2;
        this.m = bigInteger;
        this.n = bigInteger2;
        this.o = z;
        this.p = cipher;
        this.q = i2;
        this.r = downloadStatus;
        this.f5446a = (this.f5457l == null || this.n == null) ? false : true;
        this.f5447b = !this.f5446a;
        this.f5448c = va.a(null, 1, null);
        this.f5450e = new d();
        this.f5451f = this.r;
        this.f5452g = new p<>(new DownloaderProgressInfo());
        this.f5453h = new p<>(DownloadStatus.PENDING);
        a(this.f5451f);
    }

    public e a() {
        return b.f4693c.a().plus(this.f5448c);
    }

    public final void b(DownloadStatus downloadStatus) {
        j.b(downloadStatus, "value");
        this.f5451f = downloadStatus;
        a(downloadStatus);
    }

    public final void c() {
        this.f5449d++;
    }

    public final BigInteger d() {
        return this.m;
    }

    public final void e() {
        this.f5447b = true;
        this.f5449d = 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            return j.a((Object) this.f5454i, (Object) ((c) obj).f5454i);
        }
        return false;
    }

    public final Cipher f() {
        return this.p;
    }

    public final String g() {
        int i2 = this.f5449d;
        List<String> list = this.f5457l;
        if (i2 < (list != null ? list.size() : 0) && this.f5449d == 0 && this.f5450e.b() == 0) {
            List<String> list2 = this.f5457l;
            if (list2 != null) {
                return list2.get(this.f5449d);
            }
            j.a();
            throw null;
        }
        e();
        return j();
    }

    public final boolean h() {
        return this.f5447b;
    }

    public int hashCode() {
        return this.f5454i.hashCode();
    }

    public final d i() {
        return this.f5450e;
    }

    public final String j() {
        if (this.f5447b) {
            return l();
        }
        return g();
    }

    public final String k() {
        return this.f5454i;
    }

    public final String l() {
        if (this.f5449d < this.f5456k.size()) {
            return this.f5456k.get(this.f5449d);
        }
        return null;
    }

    public final int m() {
        return this.q;
    }

    public final p<DownloaderProgressInfo> n() {
        return this.f5452g;
    }

    public final DownloadStatus o() {
        return this.f5451f;
    }

    public final p<DownloadStatus> p() {
        return this.f5453h;
    }

    public final EntityType q() {
        return this.f5455j;
    }

    public final boolean r() {
        return this.o;
    }

    public String toString() {
        return "DownloadInfoModel(entityId=" + this.f5454i + ", type=" + this.f5455j + ", _downloadUrls=" + this.f5456k + ", _downloadDiffUrls=" + this.f5457l + ", _downloadHash=" + this.m + ", _downloadDiffHash=" + this.n + ", isInInternalStorage=" + this.o + ", cipher=" + this.p + ", numberOfConnection=" + this.q + ", _status=" + this.r + ")";
    }

    public final void a(DownloadStatus downloadStatus) {
        j.b(downloadStatus, "status");
        C1125ra unused = C1103g.b(this, null, null, new DownloadInfoModel$sendStatus$1(this, downloadStatus, null), 3, null);
    }

    public final BigInteger b() {
        return this.f5447b ? this.m : this.n;
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ c(java.lang.String r14, com.farsitel.bazaar.data.entity.EntityType r15, java.util.List r16, java.util.List r17, java.math.BigInteger r18, java.math.BigInteger r19, boolean r20, javax.crypto.Cipher r21, int r22, com.farsitel.bazaar.common.model.DownloadStatus r23, int r24, h.f.b.f r25) {
        /*
            r13 = this;
            r0 = r24
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L_0x0009
            r1 = 0
            r10 = r1
            goto L_0x000b
        L_0x0009:
            r10 = r21
        L_0x000b:
            r1 = r0 & 256(0x100, float:3.59E-43)
            if (r1 == 0) goto L_0x0012
            r1 = 1
            r11 = 1
            goto L_0x0014
        L_0x0012:
            r11 = r22
        L_0x0014:
            r0 = r0 & 512(0x200, float:7.175E-43)
            if (r0 == 0) goto L_0x001c
            com.farsitel.bazaar.common.model.DownloadStatus r0 = com.farsitel.bazaar.common.model.DownloadStatus.PENDING
            r12 = r0
            goto L_0x001e
        L_0x001c:
            r12 = r23
        L_0x001e:
            r2 = r13
            r3 = r14
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r18
            r8 = r19
            r9 = r20
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.g.c.<init>(java.lang.String, com.farsitel.bazaar.data.entity.EntityType, java.util.List, java.util.List, java.math.BigInteger, java.math.BigInteger, boolean, javax.crypto.Cipher, int, com.farsitel.bazaar.common.model.DownloadStatus, int, h.f.b.f):void");
    }
}
