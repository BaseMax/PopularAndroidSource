package c.c.a.n.b.c;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: ReportFragmentArgs.kt */
public final class f implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6227a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final ToolbarInfoModel f6228b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6229c;

    /* compiled from: ReportFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final f a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(f.class.getClassLoader());
            if (!bundle.containsKey("toolbarInfo")) {
                throw new IllegalArgumentException("Required argument \"toolbarInfo\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class) || Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = (ToolbarInfoModel) bundle.get("toolbarInfo");
                if (toolbarInfoModel == null) {
                    throw new IllegalArgumentException("Argument \"toolbarInfo\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("packageName")) {
                    String string = bundle.getString("packageName");
                    if (string != null) {
                        return new f(toolbarInfoModel, string);
                    }
                    throw new IllegalArgumentException("Argument \"packageName\" is marked as non-null but was passed a null value.");
                } else {
                    throw new IllegalArgumentException("Required argument \"packageName\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public f(ToolbarInfoModel toolbarInfoModel, String str) {
        j.b(toolbarInfoModel, "toolbarInfo");
        j.b(str, "packageName");
        this.f6228b = toolbarInfoModel;
        this.f6229c = str;
    }

    public static final f fromBundle(Bundle bundle) {
        return f6227a.a(bundle);
    }

    public final String a() {
        return this.f6229c;
    }

    public final ToolbarInfoModel b() {
        return this.f6228b;
    }

    public final Bundle c() {
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
            ToolbarInfoModel toolbarInfoModel = this.f6228b;
            if (toolbarInfoModel != null) {
                bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
            }
        } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
            ToolbarInfoModel toolbarInfoModel2 = this.f6228b;
            if (toolbarInfoModel2 != null) {
                bundle.putSerializable("toolbarInfo", toolbarInfoModel2);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
            }
        } else {
            throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
        }
        bundle.putString("packageName", this.f6229c);
        return bundle;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6229c, (java.lang.Object) r3.f6229c) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.n.b.c.f
            if (r0 == 0) goto L_0x001d
            c.c.a.n.b.c.f r3 = (c.c.a.n.b.c.f) r3
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6228b
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r1 = r3.f6228b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.f6229c
            java.lang.String r3 = r3.f6229c
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.c.f.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ToolbarInfoModel toolbarInfoModel = this.f6228b;
        int i2 = 0;
        int hashCode = (toolbarInfoModel != null ? toolbarInfoModel.hashCode() : 0) * 31;
        String str = this.f6229c;
        if (str != null) {
            i2 = str.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "ReportFragmentArgs(toolbarInfo=" + this.f6228b + ", packageName=" + this.f6229c + ")";
    }
}
