package c.c.a.n.j.d;

import android.os.Bundle;
import android.os.Parcelable;
import c.c.a.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: EpisodeDetailFragmentDirections.kt */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public static final c f6538a = new c(null);

    /* compiled from: EpisodeDetailFragmentDirections.kt */
    private static final class a implements b.w.p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6539a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6540b;

        /* renamed from: c  reason: collision with root package name */
        public final ToolbarInfoModel f6541c;

        public a(String str, String str2, ToolbarInfoModel toolbarInfoModel) {
            j.b(str, "referrer");
            j.b(str2, "videoId");
            j.b(toolbarInfoModel, "toolbarInfo");
            this.f6539a = str;
            this.f6540b = str2;
            this.f6541c = toolbarInfoModel;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("referrer", this.f6539a);
            bundle.putString("videoId", this.f6540b);
            if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = this.f6541c;
                if (toolbarInfoModel != null) {
                    bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel2 = this.f6541c;
                if (toolbarInfoModel2 != null) {
                    bundle.putSerializable("toolbarInfo", toolbarInfoModel2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return bundle;
        }

        public int b() {
            return R.id.actionEpisodeDetailToAllReviews;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f6541c, (java.lang.Object) r3.f6541c) != false) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0029
                boolean r0 = r3 instanceof c.c.a.n.j.d.p.a
                if (r0 == 0) goto L_0x0027
                c.c.a.n.j.d.p$a r3 = (c.c.a.n.j.d.p.a) r3
                java.lang.String r0 = r2.f6539a
                java.lang.String r1 = r3.f6539a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f6540b
                java.lang.String r1 = r3.f6540b
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6541c
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r3 = r3.f6541c
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0027
                goto L_0x0029
            L_0x0027:
                r3 = 0
                return r3
            L_0x0029:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.d.p.a.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f6539a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f6540b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            ToolbarInfoModel toolbarInfoModel = this.f6541c;
            if (toolbarInfoModel != null) {
                i2 = toolbarInfoModel.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "ActionEpisodeDetailToAllReviews(referrer=" + this.f6539a + ", videoId=" + this.f6540b + ", toolbarInfo=" + this.f6541c + ")";
        }
    }

    /* compiled from: EpisodeDetailFragmentDirections.kt */
    private static final class b implements b.w.p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6542a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6543b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6544c;

        public b(String str, int i2, String str2) {
            j.b(str, "episodeId");
            j.b(str2, "referrer");
            this.f6542a = str;
            this.f6543b = i2;
            this.f6544c = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("episodeId", this.f6542a);
            bundle.putInt("seasonIndex", this.f6543b);
            bundle.putString("referrer", this.f6544c);
            return bundle;
        }

        public int b() {
            return R.id.actionEpisodeDetailToEpisodeDetail;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    if (j.a((Object) this.f6542a, (Object) bVar.f6542a)) {
                        if (!(this.f6543b == bVar.f6543b) || !j.a((Object) this.f6544c, (Object) bVar.f6544c)) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6542a;
            int i2 = 0;
            int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6543b).hashCode()) * 31;
            String str2 = this.f6544c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionEpisodeDetailToEpisodeDetail(episodeId=" + this.f6542a + ", seasonIndex=" + this.f6543b + ", referrer=" + this.f6544c + ")";
        }
    }

    /* compiled from: EpisodeDetailFragmentDirections.kt */
    public static final class c {
        public c() {
        }

        public final b.w.p a(String str, int i2, String str2) {
            j.b(str, "episodeId");
            j.b(str2, "referrer");
            return new b(str, i2, str2);
        }

        public final b.w.p b(String str, int i2, String str2) {
            j.b(str, "episodeId");
            j.b(str2, "referrer");
            return d.f4738a.a(str, i2, str2);
        }

        public /* synthetic */ c(f fVar) {
            this();
        }

        public final b.w.p a(String str, String str2, ToolbarInfoModel toolbarInfoModel) {
            j.b(str, "referrer");
            j.b(str2, "videoId");
            j.b(toolbarInfoModel, "toolbarInfo");
            return new a(str, str2, toolbarInfoModel);
        }
    }
}
