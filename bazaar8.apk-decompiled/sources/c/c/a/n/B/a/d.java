package c.c.a.n.b.a;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: MoreArticleFragmentArgs.kt */
public final class d implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6209a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final MoreArticleItem f6210b;

    /* renamed from: c  reason: collision with root package name */
    public final ToolbarInfoModel f6211c;

    /* compiled from: MoreArticleFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final d a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(d.class.getClassLoader());
            if (!bundle.containsKey("moreArticleItem")) {
                throw new IllegalArgumentException("Required argument \"moreArticleItem\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(MoreArticleItem.class) || Serializable.class.isAssignableFrom(MoreArticleItem.class)) {
                MoreArticleItem moreArticleItem = (MoreArticleItem) bundle.get("moreArticleItem");
                if (moreArticleItem == null) {
                    throw new IllegalArgumentException("Argument \"moreArticleItem\" is marked as non-null but was passed a null value.");
                } else if (!bundle.containsKey("toolbarInfo")) {
                    throw new IllegalArgumentException("Required argument \"toolbarInfo\" is missing and does not have an android:defaultValue");
                } else if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class) || Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                    ToolbarInfoModel toolbarInfoModel = (ToolbarInfoModel) bundle.get("toolbarInfo");
                    if (toolbarInfoModel != null) {
                        return new d(moreArticleItem, toolbarInfoModel);
                    }
                    throw new IllegalArgumentException("Argument \"toolbarInfo\" is marked as non-null but was passed a null value.");
                } else {
                    throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
            } else {
                throw new UnsupportedOperationException(MoreArticleItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(MoreArticleItem moreArticleItem, ToolbarInfoModel toolbarInfoModel) {
        j.b(moreArticleItem, "moreArticleItem");
        j.b(toolbarInfoModel, "toolbarInfo");
        this.f6210b = moreArticleItem;
        this.f6211c = toolbarInfoModel;
    }

    public static final d fromBundle(Bundle bundle) {
        return f6209a.a(bundle);
    }

    public final MoreArticleItem a() {
        return this.f6210b;
    }

    public final ToolbarInfoModel b() {
        return this.f6211c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6211c, (java.lang.Object) r3.f6211c) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.n.b.a.d
            if (r0 == 0) goto L_0x001d
            c.c.a.n.b.a.d r3 = (c.c.a.n.b.a.d) r3
            com.farsitel.bazaar.common.model.appdetail.MoreArticleItem r0 = r2.f6210b
            com.farsitel.bazaar.common.model.appdetail.MoreArticleItem r1 = r3.f6210b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6211c
            com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r3 = r3.f6211c
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.a.d.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        MoreArticleItem moreArticleItem = this.f6210b;
        int i2 = 0;
        int hashCode = (moreArticleItem != null ? moreArticleItem.hashCode() : 0) * 31;
        ToolbarInfoModel toolbarInfoModel = this.f6211c;
        if (toolbarInfoModel != null) {
            i2 = toolbarInfoModel.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "MoreArticleFragmentArgs(moreArticleItem=" + this.f6210b + ", toolbarInfo=" + this.f6211c + ")";
    }
}
