package c.e.a.a.e.b;

import android.util.Pair;
import c.e.a.a.e.q;
import c.e.a.a.o.C0739g;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import e.a.a.a.a.d.c;
import java.util.Collections;
import java.util.List;

/* compiled from: AudioTagPayloadReader */
public final class b extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f7632b = {5512, 11025, 22050, 44100};

    /* renamed from: c  reason: collision with root package name */
    public boolean f7633c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7634d;

    /* renamed from: e  reason: collision with root package name */
    public int f7635e;

    public b(q qVar) {
        super(qVar);
    }

    public boolean a(v vVar) {
        if (!this.f7633c) {
            int u = vVar.u();
            this.f7635e = (u >> 4) & 15;
            int i2 = this.f7635e;
            if (i2 == 2) {
                this.f12572a.a(Format.a((String) null, "audio/mpeg", (String) null, -1, -1, 1, f7632b[(u >> 2) & 3], (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f7634d = true;
            } else if (i2 == 7 || i2 == 8) {
                this.f12572a.a(Format.a((String) null, this.f7635e == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", (String) null, -1, -1, 1, (int) c.MAX_BYTE_SIZE_PER_FILE, (u & 1) == 1 ? 2 : 3, (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f7634d = true;
            } else if (i2 != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f7635e);
            }
            this.f7633c = true;
        } else {
            vVar.f(1);
        }
        return true;
    }

    public void b(v vVar, long j2) {
        v vVar2 = vVar;
        if (this.f7635e == 2) {
            int a2 = vVar.a();
            this.f12572a.a(vVar2, a2);
            this.f12572a.a(j2, 1, a2, 0, null);
            return;
        }
        int u = vVar.u();
        if (u == 0 && !this.f7634d) {
            byte[] bArr = new byte[vVar.a()];
            vVar2.a(bArr, 0, bArr.length);
            Pair<Integer, Integer> a3 = C0739g.a(bArr);
            this.f12572a.a(Format.a((String) null, "audio/mp4a-latm", (String) null, -1, -1, ((Integer) a3.second).intValue(), ((Integer) a3.first).intValue(), (List<byte[]>) Collections.singletonList(bArr), (DrmInitData) null, 0, (String) null));
            this.f7634d = true;
        } else if (this.f7635e != 10 || u == 1) {
            int a4 = vVar.a();
            this.f12572a.a(vVar2, a4);
            this.f12572a.a(j2, 1, a4, 0, null);
        }
    }
}
