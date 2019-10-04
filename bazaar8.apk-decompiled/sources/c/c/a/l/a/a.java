package c.c.a.l.a;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import h.c;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: CafeTrack.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f6079a;

    /* renamed from: b  reason: collision with root package name */
    public static final c f6080b = d.a(CafeTrack$Companion$qualityInfo$2.f12320a);

    /* renamed from: c  reason: collision with root package name */
    public static final C0087a f6081c = new C0087a(null);

    /* renamed from: d  reason: collision with root package name */
    public final c f6082d;

    /* renamed from: e  reason: collision with root package name */
    public final DefaultTrackSelector.SelectionOverride f6083e;

    /* renamed from: f  reason: collision with root package name */
    public final TrackGroupArray f6084f;

    /* renamed from: g  reason: collision with root package name */
    public final Format f6085g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6086h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6087i;

    /* renamed from: c.c.a.l.a.a$a  reason: collision with other inner class name */
    /* compiled from: CafeTrack.kt */
    public static final class C0087a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ i[] f6088a;

        static {
            PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(C0087a.class), "qualityInfo", "getQualityInfo()Landroid/util/SparseArray;");
            k.a((PropertyReference1) propertyReference1Impl);
            f6088a = new i[]{propertyReference1Impl};
        }

        public C0087a() {
        }

        public final SparseArray<String> a() {
            c a2 = a.f6080b;
            C0087a aVar = a.f6081c;
            i iVar = f6088a[0];
            return (SparseArray) a2.getValue();
        }

        public /* synthetic */ C0087a(f fVar) {
            this();
        }

        public final String a(Format format) {
            int i2 = format.o;
            String valueAt = a().valueAt(0);
            int a2 = a(i2, a().keyAt(0));
            int size = a().size();
            for (int i3 = 1; i3 < size; i3++) {
                int a3 = a(i2, a().keyAt(i3));
                if (a3 < a2) {
                    valueAt = a().valueAt(i3);
                    a2 = a3;
                }
            }
            j.a((Object) valueAt, "closestQualityString");
            return valueAt;
        }

        public final int a(int i2, int i3) {
            return Math.abs(i2 - i3);
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(a.class), "trackName", "getTrackName()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        f6079a = new i[]{propertyReference1Impl};
    }

    public a(DefaultTrackSelector.SelectionOverride selectionOverride, TrackGroupArray trackGroupArray, Format format, int i2, int i3, String str) {
        j.b(selectionOverride, "selectionOverride");
        j.b(trackGroupArray, "trackGroupArray");
        j.b(format, "format");
        this.f6083e = selectionOverride;
        this.f6084f = trackGroupArray;
        this.f6085g = format;
        this.f6086h = i2;
        this.f6087i = i3;
        this.f6082d = d.a(new CafeTrack$trackName$2(this, str));
    }

    public final Format b() {
        return this.f6085g;
    }

    public final int c() {
        return this.f6086h;
    }

    public final int d() {
        return this.f6087i;
    }

    public final DefaultTrackSelector.SelectionOverride e() {
        return this.f6083e;
    }

    public final TrackGroupArray f() {
        return this.f6084f;
    }

    public final String g() {
        c cVar = this.f6082d;
        i iVar = f6079a[0];
        return (String) cVar.getValue();
    }

    public String toString() {
        return "trackName: " + g() + ", height: " + this.f6085g.o;
    }
}
