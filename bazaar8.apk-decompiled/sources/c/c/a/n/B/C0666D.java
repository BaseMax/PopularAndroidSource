package c.c.a.n.b;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* renamed from: c.c.a.n.b.D  reason: case insensitive filesystem */
/* compiled from: MoreDescriptionDetailFragmentArgs.kt */
public final class C0666D implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6192a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final ToolbarInfoModel f6193b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6194c;

    /* renamed from: c.c.a.n.b.D$a */
    /* compiled from: MoreDescriptionDetailFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final C0666D a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(C0666D.class.getClassLoader());
            if (!bundle.containsKey("toolbarInfo")) {
                throw new IllegalArgumentException("Required argument \"toolbarInfo\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class) || Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = (ToolbarInfoModel) bundle.get("toolbarInfo");
                if (toolbarInfoModel == null) {
                    throw new IllegalArgumentException("Argument \"toolbarInfo\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("pageDesc")) {
                    String string = bundle.getString("pageDesc");
                    if (string != null) {
                        return new C0666D(toolbarInfoModel, string);
                    }
                    throw new IllegalArgumentException("Argument \"pageDesc\" is marked as non-null but was passed a null value.");
                } else {
                    throw new IllegalArgumentException("Required argument \"pageDesc\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public C0666D(ToolbarInfoModel toolbarInfoModel, String str) {
        j.b(toolbarInfoModel, "toolbarInfo");
        j.b(str, "pageDesc");
        this.f6193b = toolbarInfoModel;
        this.f6194c = str;
    }

    public static final C0666D fromBundle(Bundle bundle) {
        return f6192a.a(bundle);
    }

    public final String a() {
        return this.f6194c;
    }

    public final ToolbarInfoModel b() {
        return this.f6193b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6194c, (java.lang.Object) r3.f6194c) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.n.b.C0666D
            if (r0 == 0) goto L_0x001d
            c.c.a.n.b.D r3 = (c.c.a.n.b.C0666D) r3
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6193b
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r1 = r3.f6193b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.f6194c
            java.lang.String r3 = r3.f6194c
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.C0666D.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ToolbarInfoModel toolbarInfoModel = this.f6193b;
        int i2 = 0;
        int hashCode = (toolbarInfoModel != null ? toolbarInfoModel.hashCode() : 0) * 31;
        String str = this.f6194c;
        if (str != null) {
            i2 = str.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "MoreDescriptionDetailFragmentArgs(toolbarInfo=" + this.f6193b + ", pageDesc=" + this.f6194c + ")";
    }
}
