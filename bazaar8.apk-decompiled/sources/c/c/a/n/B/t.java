package c.c.a.n.b;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.f.b.j;
import java.io.Serializable;
import kotlin.TypeCastException;

/* compiled from: AppDetailFragmentDirections.kt */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public static final g f6266a = new g(null);

    /* compiled from: AppDetailFragmentDirections.kt */
    private static final class a implements p {

        /* renamed from: a  reason: collision with root package name */
        public final ReviewActionItem f6267a;

        /* renamed from: b  reason: collision with root package name */
        public final ToolbarInfoModel f6268b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f6269c;

        /* renamed from: d  reason: collision with root package name */
        public final int f6270d;

        public a(ReviewActionItem reviewActionItem, ToolbarInfoModel toolbarInfoModel, boolean z, int i2) {
            j.b(reviewActionItem, "reviewItem");
            j.b(toolbarInfoModel, "toolbarInfo");
            this.f6267a = reviewActionItem;
            this.f6268b = toolbarInfoModel;
            this.f6269c = z;
            this.f6270d = i2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(ReviewActionItem.class)) {
                ReviewActionItem reviewActionItem = this.f6267a;
                if (reviewActionItem != null) {
                    bundle.putParcelable("reviewItem", reviewActionItem);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(ReviewActionItem.class)) {
                ReviewActionItem reviewActionItem2 = this.f6267a;
                if (reviewActionItem2 != null) {
                    bundle.putSerializable("reviewItem", reviewActionItem2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(ReviewActionItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = this.f6268b;
                if (toolbarInfoModel != null) {
                    bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel2 = this.f6268b;
                if (toolbarInfoModel2 != null) {
                    bundle.putSerializable("toolbarInfo", toolbarInfoModel2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            bundle.putBoolean("canPostComment", this.f6269c);
            bundle.putInt("myRate", this.f6270d);
            return bundle;
        }

        public int b() {
            return R.id.actionAppDetailToAllReviews;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    if (j.a((Object) this.f6267a, (Object) aVar.f6267a) && j.a((Object) this.f6268b, (Object) aVar.f6268b)) {
                        if (this.f6269c == aVar.f6269c) {
                            if (this.f6270d == aVar.f6270d) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            ReviewActionItem reviewActionItem = this.f6267a;
            int i2 = 0;
            int hashCode = (reviewActionItem != null ? reviewActionItem.hashCode() : 0) * 31;
            ToolbarInfoModel toolbarInfoModel = this.f6268b;
            if (toolbarInfoModel != null) {
                i2 = toolbarInfoModel.hashCode();
            }
            int i3 = (hashCode + i2) * 31;
            boolean z = this.f6269c;
            if (z) {
                z = true;
            }
            return ((i3 + (z ? 1 : 0)) * 31) + Integer.valueOf(this.f6270d).hashCode();
        }

        public String toString() {
            return "ActionAppDetailToAllReviews(reviewItem=" + this.f6267a + ", toolbarInfo=" + this.f6268b + ", canPostComment=" + this.f6269c + ", myRate=" + this.f6270d + ")";
        }
    }

    /* compiled from: AppDetailFragmentDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6271a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f6272b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6273c;

        /* renamed from: d  reason: collision with root package name */
        public final String f6274d;

        public b(String str, boolean z, String str2, String str3) {
            j.b(str, "slug");
            j.b(str2, "toolbarName");
            j.b(str3, "referrer");
            this.f6271a = str;
            this.f6272b = z;
            this.f6273c = str2;
            this.f6274d = str3;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("slug", this.f6271a);
            bundle.putBoolean("showBackButton", this.f6272b);
            bundle.putString("toolbarName", this.f6273c);
            bundle.putString("referrer", this.f6274d);
            return bundle;
        }

        public int b() {
            return R.id.actionAppDetailToCategory;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    if (j.a((Object) this.f6271a, (Object) bVar.f6271a)) {
                        if (!(this.f6272b == bVar.f6272b) || !j.a((Object) this.f6273c, (Object) bVar.f6273c) || !j.a((Object) this.f6274d, (Object) bVar.f6274d)) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6271a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            boolean z = this.f6272b;
            if (z) {
                z = true;
            }
            int i3 = (hashCode + (z ? 1 : 0)) * 31;
            String str2 = this.f6273c;
            int hashCode2 = (i3 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f6274d;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "ActionAppDetailToCategory(slug=" + this.f6271a + ", showBackButton=" + this.f6272b + ", toolbarName=" + this.f6273c + ", referrer=" + this.f6274d + ")";
        }
    }

    /* compiled from: AppDetailFragmentDirections.kt */
    private static final class c implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6275a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6276b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6277c;

        public c(String str, String str2, String str3) {
            j.b(str, "slug");
            j.b(str2, "toolbarName");
            this.f6275a = str;
            this.f6276b = str2;
            this.f6277c = str3;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("slug", this.f6275a);
            bundle.putString("toolbarName", this.f6276b);
            bundle.putString("referrer", this.f6277c);
            return bundle;
        }

        public int b() {
            return R.id.actionAppDetailToEditorChoiceFragment;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f6277c, (java.lang.Object) r3.f6277c) != false) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0029
                boolean r0 = r3 instanceof c.c.a.n.b.t.c
                if (r0 == 0) goto L_0x0027
                c.c.a.n.b.t$c r3 = (c.c.a.n.b.t.c) r3
                java.lang.String r0 = r2.f6275a
                java.lang.String r1 = r3.f6275a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f6276b
                java.lang.String r1 = r3.f6276b
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f6277c
                java.lang.String r3 = r3.f6277c
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.t.c.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f6275a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f6276b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f6277c;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "ActionAppDetailToEditorChoiceFragment(slug=" + this.f6275a + ", toolbarName=" + this.f6276b + ", referrer=" + this.f6277c + ")";
        }
    }

    /* compiled from: AppDetailFragmentDirections.kt */
    private static final class d implements p {

        /* renamed from: a  reason: collision with root package name */
        public final MoreArticleItem f6278a;

        /* renamed from: b  reason: collision with root package name */
        public final ToolbarInfoModel f6279b;

        public d(MoreArticleItem moreArticleItem, ToolbarInfoModel toolbarInfoModel) {
            j.b(moreArticleItem, "moreArticleItem");
            j.b(toolbarInfoModel, "toolbarInfo");
            this.f6278a = moreArticleItem;
            this.f6279b = toolbarInfoModel;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(MoreArticleItem.class)) {
                MoreArticleItem moreArticleItem = this.f6278a;
                if (moreArticleItem != null) {
                    bundle.putParcelable("moreArticleItem", (Parcelable) moreArticleItem);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(MoreArticleItem.class)) {
                MoreArticleItem moreArticleItem2 = this.f6278a;
                if (moreArticleItem2 != null) {
                    bundle.putSerializable("moreArticleItem", moreArticleItem2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(MoreArticleItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = this.f6279b;
                if (toolbarInfoModel != null) {
                    bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel2 = this.f6279b;
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
            return R.id.actionAppDetailToMoreArticle;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f6279b, (java.lang.Object) r3.f6279b) != false) goto L_0x001f;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x001f
                boolean r0 = r3 instanceof c.c.a.n.b.t.d
                if (r0 == 0) goto L_0x001d
                c.c.a.n.b.t$d r3 = (c.c.a.n.b.t.d) r3
                com.farsitel.bazaar.common.model.appdetail.MoreArticleItem r0 = r2.f6278a
                com.farsitel.bazaar.common.model.appdetail.MoreArticleItem r1 = r3.f6278a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x001d
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6279b
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r3 = r3.f6279b
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.t.d.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            MoreArticleItem moreArticleItem = this.f6278a;
            int i2 = 0;
            int hashCode = (moreArticleItem != null ? moreArticleItem.hashCode() : 0) * 31;
            ToolbarInfoModel toolbarInfoModel = this.f6279b;
            if (toolbarInfoModel != null) {
                i2 = toolbarInfoModel.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionAppDetailToMoreArticle(moreArticleItem=" + this.f6278a + ", toolbarInfo=" + this.f6279b + ")";
        }
    }

    /* compiled from: AppDetailFragmentDirections.kt */
    private static final class e implements p {

        /* renamed from: a  reason: collision with root package name */
        public final AppMoreDescriptionItem f6280a;

        public e(AppMoreDescriptionItem appMoreDescriptionItem) {
            j.b(appMoreDescriptionItem, "appMoreDescription");
            this.f6280a = appMoreDescriptionItem;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(AppMoreDescriptionItem.class)) {
                AppMoreDescriptionItem appMoreDescriptionItem = this.f6280a;
                if (appMoreDescriptionItem != null) {
                    bundle.putParcelable("appMoreDescription", appMoreDescriptionItem);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(AppMoreDescriptionItem.class)) {
                AppMoreDescriptionItem appMoreDescriptionItem2 = this.f6280a;
                if (appMoreDescriptionItem2 != null) {
                    bundle.putSerializable("appMoreDescription", appMoreDescriptionItem2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(AppMoreDescriptionItem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return bundle;
        }

        public int b() {
            return R.id.actionAppDetailToMoreDescription;
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof e) && j.a((Object) this.f6280a, (Object) ((e) obj).f6280a));
        }

        public int hashCode() {
            AppMoreDescriptionItem appMoreDescriptionItem = this.f6280a;
            if (appMoreDescriptionItem != null) {
                return appMoreDescriptionItem.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "ActionAppDetailToMoreDescription(appMoreDescription=" + this.f6280a + ")";
        }
    }

    /* compiled from: AppDetailFragmentDirections.kt */
    private static final class f implements p {

        /* renamed from: a  reason: collision with root package name */
        public final ToolbarInfoModel f6281a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6282b;

        public f(ToolbarInfoModel toolbarInfoModel, String str) {
            j.b(toolbarInfoModel, "toolbarInfo");
            j.b(str, "pageDesc");
            this.f6281a = toolbarInfoModel;
            this.f6282b = str;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel = this.f6281a;
                if (toolbarInfoModel != null) {
                    bundle.putParcelable("toolbarInfo", (Parcelable) toolbarInfoModel);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
                }
            } else if (Serializable.class.isAssignableFrom(ToolbarInfoModel.class)) {
                ToolbarInfoModel toolbarInfoModel2 = this.f6281a;
                if (toolbarInfoModel2 != null) {
                    bundle.putSerializable("toolbarInfo", toolbarInfoModel2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.io.Serializable");
                }
            } else {
                throw new UnsupportedOperationException(ToolbarInfoModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            bundle.putString("pageDesc", this.f6282b);
            return bundle;
        }

        public int b() {
            return R.id.actionAppDetailToMoreDescriptionDetail;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f6282b, (java.lang.Object) r3.f6282b) != false) goto L_0x001f;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x001f
                boolean r0 = r3 instanceof c.c.a.n.b.t.f
                if (r0 == 0) goto L_0x001d
                c.c.a.n.b.t$f r3 = (c.c.a.n.b.t.f) r3
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r0 = r2.f6281a
                com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel r1 = r3.f6281a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x001d
                java.lang.String r0 = r2.f6282b
                java.lang.String r3 = r3.f6282b
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.t.f.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            ToolbarInfoModel toolbarInfoModel = this.f6281a;
            int i2 = 0;
            int hashCode = (toolbarInfoModel != null ? toolbarInfoModel.hashCode() : 0) * 31;
            String str = this.f6282b;
            if (str != null) {
                i2 = str.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionAppDetailToMoreDescriptionDetail(toolbarInfo=" + this.f6281a + ", pageDesc=" + this.f6282b + ")";
        }
    }

    /* compiled from: AppDetailFragmentDirections.kt */
    public static final class g {
        public g() {
        }

        public final p a(AppMoreDescriptionItem appMoreDescriptionItem) {
            j.b(appMoreDescriptionItem, "appMoreDescription");
            return new e(appMoreDescriptionItem);
        }

        public /* synthetic */ g(h.f.b.f fVar) {
            this();
        }

        public final p a(ReviewActionItem reviewActionItem, ToolbarInfoModel toolbarInfoModel, boolean z, int i2) {
            j.b(reviewActionItem, "reviewItem");
            j.b(toolbarInfoModel, "toolbarInfo");
            return new a(reviewActionItem, toolbarInfoModel, z, i2);
        }

        public final p a(MoreArticleItem moreArticleItem, ToolbarInfoModel toolbarInfoModel) {
            j.b(moreArticleItem, "moreArticleItem");
            j.b(toolbarInfoModel, "toolbarInfo");
            return new d(moreArticleItem, toolbarInfoModel);
        }

        public static /* synthetic */ p a(g gVar, String str, boolean z, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = "home";
            }
            if ((i2 & 2) != 0) {
                z = true;
            }
            return gVar.a(str, z, str2, str3);
        }

        public final p a(String str, boolean z, String str2, String str3) {
            j.b(str, "slug");
            j.b(str2, "toolbarName");
            j.b(str3, "referrer");
            return new b(str, z, str2, str3);
        }

        public final p a(ToolbarInfoModel toolbarInfoModel, String str) {
            j.b(toolbarInfoModel, "toolbarInfo");
            j.b(str, "pageDesc");
            return new f(toolbarInfoModel, str);
        }

        public final p a(String str, String str2, String str3) {
            j.b(str, "slug");
            j.b(str2, "toolbarName");
            return new c(str, str2, str3);
        }
    }
}
