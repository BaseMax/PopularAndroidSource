package c.c.a.n.j.j;

import android.os.Bundle;
import b.w.p;
import com.farsitel.bazaar.R;
import h.f.b.f;

/* compiled from: SeriesDetailFragmentDirections.kt */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final b f6606a = new b(null);

    /* compiled from: SeriesDetailFragmentDirections.kt */
    private static final class a implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6607a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6608b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6609c;

        public a(String str, int i2, String str2) {
            h.f.b.j.b(str, "episodeId");
            h.f.b.j.b(str2, "referrer");
            this.f6607a = str;
            this.f6608b = i2;
            this.f6609c = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("episodeId", this.f6607a);
            bundle.putInt("seasonIndex", this.f6608b);
            bundle.putString("referrer", this.f6609c);
            return bundle;
        }

        public int b() {
            return R.id.action_seriesDetailFragment_to_episodeDetailFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    if (h.f.b.j.a((Object) this.f6607a, (Object) aVar.f6607a)) {
                        if (!(this.f6608b == aVar.f6608b) || !h.f.b.j.a((Object) this.f6609c, (Object) aVar.f6609c)) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6607a;
            int i2 = 0;
            int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6608b).hashCode()) * 31;
            String str2 = this.f6609c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionSeriesDetailFragmentToEpisodeDetailFragment(episodeId=" + this.f6607a + ", seasonIndex=" + this.f6608b + ", referrer=" + this.f6609c + ")";
        }
    }

    /* compiled from: SeriesDetailFragmentDirections.kt */
    public static final class b {
        public b() {
        }

        public final p a(String str, int i2, String str2) {
            h.f.b.j.b(str, "episodeId");
            h.f.b.j.b(str2, "referrer");
            return new a(str, i2, str2);
        }

        public /* synthetic */ b(f fVar) {
            this();
        }
    }
}
