package c.e.a.a.j.d;

import android.net.Uri;
import android.text.TextUtils;
import c.e.a.a.e.d.e;
import c.e.a.a.e.e.h;
import c.e.a.a.e.g;
import c.e.a.a.e.h.C0704f;
import c.e.a.a.e.h.C0706h;
import c.e.a.a.e.h.C0708j;
import c.e.a.a.e.h.C0710l;
import c.e.a.a.e.h.I;
import c.e.a.a.j.d.h;
import c.e.a.a.o.F;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.io.EOFException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultHlsExtractorFactory */
public final class f implements h {

    /* renamed from: a  reason: collision with root package name */
    public final int f8794a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f8795b;

    public f() {
        this(0, true);
    }

    public static boolean b(g gVar) {
        return (gVar instanceof I) || (gVar instanceof h);
    }

    public h.a a(g gVar, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, F f2, Map<String, List<String>> map, c.e.a.a.e.h hVar) {
        if (gVar != null) {
            if (b(gVar)) {
                return a(gVar);
            }
            if (a(gVar, format, f2) == null) {
                throw new IllegalArgumentException("Unexpected previousExtractor type: " + gVar.getClass().getSimpleName());
            }
        }
        g a2 = a(uri, format, list, drmInitData, f2);
        hVar.b();
        if (a(a2, hVar)) {
            return a(a2);
        }
        if (!(a2 instanceof s)) {
            s sVar = new s(format.A, f2);
            if (a(sVar, hVar)) {
                return a(sVar);
            }
        }
        if (!(a2 instanceof C0708j)) {
            C0708j jVar = new C0708j();
            if (a(jVar, hVar)) {
                return a(jVar);
            }
        }
        if (!(a2 instanceof C0704f)) {
            C0704f fVar = new C0704f();
            if (a(fVar, hVar)) {
                return a(fVar);
            }
        }
        if (!(a2 instanceof C0706h)) {
            C0706h hVar2 = new C0706h();
            if (a(hVar2, hVar)) {
                return a(hVar2);
            }
        }
        if (!(a2 instanceof e)) {
            e eVar = new e(0, 0);
            if (a(eVar, hVar)) {
                return a(eVar);
            }
        }
        if (!(a2 instanceof c.e.a.a.e.e.h)) {
            c.e.a.a.e.e.h a3 = a(f2, drmInitData, list);
            if (a(a3, hVar)) {
                return a(a3);
            }
        }
        if (!(a2 instanceof I)) {
            I a4 = a(this.f8794a, this.f8795b, format, list, f2);
            if (a(a4, hVar)) {
                return a(a4);
            }
        }
        return a(a2);
    }

    public f(int i2, boolean z) {
        this.f8794a = i2;
        this.f8795b = z;
    }

    public final g a(Uri uri, Format format, List<Format> list, DrmInitData drmInitData, F f2) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        if ("text/vtt".equals(format.f12514i) || lastPathSegment.endsWith(".webvtt") || lastPathSegment.endsWith(".vtt")) {
            return new s(format.A, f2);
        }
        if (lastPathSegment.endsWith(".aac")) {
            return new C0708j();
        }
        if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            return new C0704f();
        }
        if (lastPathSegment.endsWith(".ac4")) {
            return new C0706h();
        }
        if (lastPathSegment.endsWith(".mp3")) {
            return new e(0, 0);
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            return a(f2, drmInitData, list);
        }
        return a(this.f8794a, this.f8795b, format, list, f2);
    }

    public static I a(int i2, boolean z, Format format, List<Format> list, F f2) {
        int i3 = i2 | 16;
        if (list != null) {
            i3 |= 32;
        } else if (z) {
            list = Collections.singletonList(Format.a(null, "application/cea-608", 0, null));
        } else {
            list = Collections.emptyList();
        }
        String str = format.f12511f;
        if (!TextUtils.isEmpty(str)) {
            if (!"audio/mp4a-latm".equals(s.a(str))) {
                i3 |= 2;
            }
            if (!"video/avc".equals(s.i(str))) {
                i3 |= 4;
            }
        }
        return new I(2, f2, new C0710l(i3, list));
    }

    public static c.e.a.a.e.e.h a(F f2, DrmInitData drmInitData, List<Format> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        c.e.a.a.e.e.h hVar = new c.e.a.a.e.e.h(0, f2, null, drmInitData, list);
        return hVar;
    }

    public static h.a a(g gVar, Format format, F f2) {
        if (gVar instanceof s) {
            return a(new s(format.A, f2));
        }
        if (gVar instanceof C0708j) {
            return a(new C0708j());
        }
        if (gVar instanceof C0704f) {
            return a(new C0704f());
        }
        if (gVar instanceof C0706h) {
            return a(new C0706h());
        }
        if (gVar instanceof e) {
            return a(new e());
        }
        return null;
    }

    public static h.a a(g gVar) {
        return new h.a(gVar, (gVar instanceof C0708j) || (gVar instanceof C0704f) || (gVar instanceof C0706h) || (gVar instanceof e), b(gVar));
    }

    /* JADX INFO: finally extract failed */
    public static boolean a(g gVar, c.e.a.a.e.h hVar) {
        try {
            boolean a2 = gVar.a(hVar);
            hVar.b();
            return a2;
        } catch (EOFException unused) {
            hVar.b();
            return false;
        } catch (Throwable th) {
            hVar.b();
            throw th;
        }
    }
}
