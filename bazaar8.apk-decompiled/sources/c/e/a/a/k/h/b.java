package c.e.a.a.k.h;

import c.e.a.a.k.c;
import c.e.a.a.k.h.f;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Mp4WebvttDecoder */
public final class b extends c {
    public static final int o = I.b("payl");
    public static final int p = I.b("sttg");
    public static final int q = I.b("vttc");
    public final v r = new v();
    public final f.a s = new f.a();

    public b() {
        super("Mp4WebvttDecoder");
    }

    public c a(byte[] bArr, int i2, boolean z) {
        this.r.a(bArr, i2);
        ArrayList arrayList = new ArrayList();
        while (this.r.a() > 0) {
            if (this.r.a() >= 8) {
                int i3 = this.r.i();
                if (this.r.i() == q) {
                    arrayList.add(a(this.r, this.s, i3 - 8));
                } else {
                    this.r.f(i3 - 8);
                }
            } else {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new c(arrayList);
    }

    public static c.e.a.a.k.b a(v vVar, f.a aVar, int i2) {
        aVar.c();
        while (i2 > 0) {
            if (i2 >= 8) {
                int i3 = vVar.i();
                int i4 = vVar.i();
                int i5 = i3 - 8;
                String a2 = I.a(vVar.f9634a, vVar.c(), i5);
                vVar.f(i5);
                i2 = (i2 - 8) - i5;
                if (i4 == p) {
                    g.a(a2, aVar);
                } else if (i4 == o) {
                    g.a((String) null, a2.trim(), aVar, (List<d>) Collections.emptyList());
                }
            } else {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
        }
        return aVar.a();
    }
}
