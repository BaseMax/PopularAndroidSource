package c.c.a.n.b;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: MoreDescriptionFragmentDirections.kt */
public final class F {

    /* renamed from: a  reason: collision with root package name */
    public static final b f6197a = new b(null);

    /* compiled from: MoreDescriptionFragmentDirections.kt */
    private static final class a implements p {

        /* renamed from: a  reason: collision with root package name */
        public final ToolbarInfoModel f6198a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6199b;

        public a(ToolbarInfoModel toolbarInfoModel, String str) {
            j.b(toolbarInfoModel, "toolbarInfo");
            j.b(str, "pageDesc");
            this.f6198a = toolbarInfoModel;
            this.f6199b = str;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = this.f6198a;
                if (toolbarInfoModel != null) {
                    bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel2 = this.f6198a;
                if (toolbarInfoModel2 != null) {
                    bundle.putSerializable("toolbarInfo", toolbarInfoModel2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            bundle.putString("pageDesc", this.f6199b);
            return bundle;
        }

        public int b() {
            return R.id.actionMoreDescriptionToMoreDescriptionDetail;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f6199b, (java.lang.Object) r3.f6199b) != false) goto L_0x001f;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x001f
                boolean r0 = r3 instanceof c.c.a.n.b.F.a
                if (r0 == 0) goto L_0x001d
                c.c.a.n.b.F$a r3 = (c.c.a.n.b.F.a) r3
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6198a
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r1 = r3.f6198a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x001d
                java.lang.String r0 = r2.f6199b
                java.lang.String r3 = r3.f6199b
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x001d
                goto L_0x001f
            L_0x001d:
                r3 = 0
                return r3
            L_0x001f:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.F.a.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            ToolbarInfoModel toolbarInfoModel = this.f6198a;
            int i2 = 0;
            int hashCode = (toolbarInfoModel != null ? toolbarInfoModel.hashCode() : 0) * 31;
            String str = this.f6199b;
            if (str != null) {
                i2 = str.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionMoreDescriptionToMoreDescriptionDetail(toolbarInfo=" + this.f6198a + ", pageDesc=" + this.f6199b + ")";
        }
    }

    /* compiled from: MoreDescriptionFragmentDirections.kt */
    public static final class b {
        public b() {
        }

        public final p a(ToolbarInfoModel toolbarInfoModel, String str) {
            j.b(toolbarInfoModel, "toolbarInfo");
            j.b(str, "pageDesc");
            return new a(toolbarInfoModel, str);
        }

        public /* synthetic */ b(f fVar) {
            this();
        }
    }
}
