package c.e.a.a.e.b;

import c.e.a.a.e.q;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import c.e.a.a.p.h;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;

/* compiled from: VideoTagPayloadReader */
public final class e extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    public final v f7649b = new v(t.f9611a);

    /* renamed from: c  reason: collision with root package name */
    public final v f7650c = new v(4);

    /* renamed from: d  reason: collision with root package name */
    public int f7651d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7652e;

    /* renamed from: f  reason: collision with root package name */
    public int f7653f;

    public e(q qVar) {
        super(qVar);
    }

    public boolean a(v vVar) {
        int u = vVar.u();
        int i2 = (u >> 4) & 15;
        int i3 = u & 15;
        if (i3 == 7) {
            this.f7653f = i2;
            return i2 != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i3);
    }

    public void b(v vVar, long j2) {
        int u = vVar.u();
        long j3 = j2 + (((long) vVar.j()) * 1000);
        if (u == 0 && !this.f7652e) {
            v vVar2 = new v(new byte[vVar.a()]);
            vVar.a(vVar2.f9634a, 0, vVar.a());
            h b2 = h.b(vVar2);
            this.f7651d = b2.f9693b;
            this.f12572a.a(Format.a((String) null, "video/avc", (String) null, -1, -1, b2.f9694c, b2.f9695d, -1.0f, b2.f9692a, -1, b2.f9696e, (DrmInitData) null));
            this.f7652e = true;
        } else if (u == 1 && this.f7652e) {
            byte[] bArr = this.f7650c.f9634a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i2 = 4 - this.f7651d;
            int i3 = 0;
            while (vVar.a() > 0) {
                vVar.a(this.f7650c.f9634a, i2, this.f7651d);
                this.f7650c.e(0);
                int y = this.f7650c.y();
                this.f7649b.e(0);
                this.f12572a.a(this.f7649b, 4);
                this.f12572a.a(vVar, y);
                i3 = i3 + 4 + y;
            }
            this.f12572a.a(j3, this.f7653f == 1 ? 1 : 0, i3, 0, null);
        }
    }
}
