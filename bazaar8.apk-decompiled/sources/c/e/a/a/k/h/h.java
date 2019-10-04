package c.e.a.a.k.h;

import android.text.TextUtils;
import c.e.a.a.k.c;
import c.e.a.a.k.h.f;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: WebvttDecoder */
public final class h extends c {
    public final g o = new g();
    public final v p = new v();
    public final f.a q = new f.a();
    public final a r = new a();
    public final List<d> s = new ArrayList();

    public h() {
        super("WebvttDecoder");
    }

    public static void b(v vVar) {
        do {
        } while (!TextUtils.isEmpty(vVar.k()));
    }

    public j a(byte[] bArr, int i2, boolean z) {
        this.p.a(bArr, i2);
        this.q.c();
        this.s.clear();
        try {
            i.c(this.p);
            do {
            } while (!TextUtils.isEmpty(this.p.k()));
            ArrayList arrayList = new ArrayList();
            while (true) {
                int a2 = a(this.p);
                if (a2 == 0) {
                    return new j(arrayList);
                }
                if (a2 == 1) {
                    b(this.p);
                } else if (a2 == 2) {
                    if (arrayList.isEmpty()) {
                        this.p.k();
                        d c2 = this.r.c(this.p);
                        if (c2 != null) {
                            this.s.add(c2);
                        }
                    } else {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                } else if (a2 == 3 && this.o.a(this.p, this.q, this.s)) {
                    arrayList.add(this.q.a());
                    this.q.c();
                }
            }
        } catch (ParserException e2) {
            throw new SubtitleDecoderException((Exception) e2);
        }
    }

    public static int a(v vVar) {
        int i2 = -1;
        int i3 = 0;
        while (i2 == -1) {
            i3 = vVar.c();
            String k2 = vVar.k();
            if (k2 == null) {
                i2 = 0;
            } else if ("STYLE".equals(k2)) {
                i2 = 2;
            } else {
                i2 = k2.startsWith("NOTE") ? 1 : 3;
            }
        }
        vVar.e(i3);
        return i2;
    }
}
