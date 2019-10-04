package c.c.a.n.j.k;

import android.os.Bundle;
import android.os.Parcelable;
import c.c.a.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: VideoDetailFragmentDirections.kt */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public static final b f6637a = new b(null);

    /* compiled from: VideoDetailFragmentDirections.kt */
    private static final class a implements b.w.p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6638a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6639b;

        /* renamed from: c  reason: collision with root package name */
        public final ToolbarInfoModel f6640c;

        public a(String str, String str2, ToolbarInfoModel toolbarInfoModel) {
            j.b(str, "referrer");
            j.b(str2, "videoId");
            j.b(toolbarInfoModel, "toolbarInfo");
            this.f6638a = str;
            this.f6639b = str2;
            this.f6640c = toolbarInfoModel;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("referrer", this.f6638a);
            bundle.putString("videoId", this.f6639b);
            if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = this.f6640c;
                if (toolbarInfoModel != null) {
                    bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel2 = this.f6640c;
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
            return R.id.actionVideoDetailToAllReviews;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f6640c, (java.lang.Object) r3.f6640c) != false) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0029
                boolean r0 = r3 instanceof c.c.a.n.j.k.p.a
                if (r0 == 0) goto L_0x0027
                c.c.a.n.j.k.p$a r3 = (c.c.a.n.j.k.p.a) r3
                java.lang.String r0 = r2.f6638a
                java.lang.String r1 = r3.f6638a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f6639b
                java.lang.String r1 = r3.f6639b
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6640c
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r3 = r3.f6640c
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.k.p.a.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f6638a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f6639b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            ToolbarInfoModel toolbarInfoModel = this.f6640c;
            if (toolbarInfoModel != null) {
                i2 = toolbarInfoModel.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "ActionVideoDetailToAllReviews(referrer=" + this.f6638a + ", videoId=" + this.f6639b + ", toolbarInfo=" + this.f6640c + ")";
        }
    }

    /* compiled from: VideoDetailFragmentDirections.kt */
    public static final class b {
        public b() {
        }

        public final b.w.p a(String str, String str2, ToolbarInfoModel toolbarInfoModel) {
            j.b(str, "referrer");
            j.b(str2, "videoId");
            j.b(toolbarInfoModel, "toolbarInfo");
            return new a(str, str2, toolbarInfoModel);
        }

        public /* synthetic */ b(f fVar) {
            this();
        }

        public static /* synthetic */ b.w.p a(b bVar, String str, boolean z, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = "home";
            }
            if ((i2 & 2) != 0) {
                z = true;
            }
            return bVar.a(str, z, str2, str3);
        }

        public final b.w.p a(String str, boolean z, String str2, String str3) {
            j.b(str, "slug");
            j.b(str2, "toolbarName");
            j.b(str3, "referrer");
            return d.f4738a.a(str, z, str2, str3);
        }
    }
}
