package c.c.a;

import android.os.Bundle;
import b.w.C0304a;
import b.w.p;
import com.crashlytics.android.answers.SearchEvent;
import com.farsitel.bazaar.R;

/* compiled from: MainNavDirections.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final l f4738a = new l(null);

    /* compiled from: MainNavDirections.kt */
    private static final class a implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4739a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4740b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f4741c;

        public a(String str, String str2, boolean z) {
            h.f.b.j.b(str, "packageName");
            h.f.b.j.b(str2, "referrer");
            this.f4739a = str;
            this.f4740b = str2;
            this.f4741c = z;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("packageName", this.f4739a);
            bundle.putString("referrer", this.f4740b);
            bundle.putBoolean("shouldStartDownload", this.f4741c);
            return bundle;
        }

        public int b() {
            return R.id.action_global_appDetailFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    if (h.f.b.j.a((Object) this.f4739a, (Object) aVar.f4739a) && h.f.b.j.a((Object) this.f4740b, (Object) aVar.f4740b)) {
                        if (this.f4741c == aVar.f4741c) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4739a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f4740b;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            int i3 = (hashCode + i2) * 31;
            boolean z = this.f4741c;
            if (z) {
                z = true;
            }
            return i3 + (z ? 1 : 0);
        }

        public String toString() {
            return "ActionGlobalAppDetailFragment(packageName=" + this.f4739a + ", referrer=" + this.f4740b + ", shouldStartDownload=" + this.f4741c + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4748a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4749b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4750c;

        public b(String str, String str2, String str3) {
            h.f.b.j.b(str, "castId");
            h.f.b.j.b(str2, "titleName");
            h.f.b.j.b(str3, "referrer");
            this.f4748a = str;
            this.f4749b = str2;
            this.f4750c = str3;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("castId", this.f4748a);
            bundle.putString("titleName", this.f4749b);
            bundle.putString("referrer", this.f4750c);
            return bundle;
        }

        public int b() {
            return R.id.action_global_castPageFragment;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f4750c, (java.lang.Object) r3.f4750c) != false) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0029
                boolean r0 = r3 instanceof c.c.a.d.b
                if (r0 == 0) goto L_0x0027
                c.c.a.d$b r3 = (c.c.a.d.b) r3
                java.lang.String r0 = r2.f4748a
                java.lang.String r1 = r3.f4748a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f4749b
                java.lang.String r1 = r3.f4749b
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f4750c
                java.lang.String r3 = r3.f4750c
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.b.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f4748a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f4749b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f4750c;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "ActionGlobalCastPageFragment(castId=" + this.f4748a + ", titleName=" + this.f4749b + ", referrer=" + this.f4750c + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class c implements p {

        /* renamed from: a  reason: collision with root package name */
        public final int f4755a;

        public c(int i2) {
            this.f4755a = i2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt("reviewId", this.f4755a);
            return bundle;
        }

        public int b() {
            return R.id.action_global_developerReplyFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof c) {
                    if (this.f4755a == ((c) obj).f4755a) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Integer.valueOf(this.f4755a).hashCode();
        }

        public String toString() {
            return "ActionGlobalDeveloperReplyFragment(reviewId=" + this.f4755a + ")";
        }
    }

    /* renamed from: c.c.a.d$d  reason: collision with other inner class name */
    /* compiled from: MainNavDirections.kt */
    private static final class C0075d implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4764a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4765b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4766c;

        public C0075d(String str, int i2, String str2) {
            h.f.b.j.b(str, "episodeId");
            h.f.b.j.b(str2, "referrer");
            this.f4764a = str;
            this.f4765b = i2;
            this.f4766c = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("episodeId", this.f4764a);
            bundle.putInt("seasonIndex", this.f4765b);
            bundle.putString("referrer", this.f4766c);
            return bundle;
        }

        public int b() {
            return R.id.action_global_episodeDetailFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof C0075d) {
                    C0075d dVar = (C0075d) obj;
                    if (h.f.b.j.a((Object) this.f4764a, (Object) dVar.f4764a)) {
                        if (!(this.f4765b == dVar.f4765b) || !h.f.b.j.a((Object) this.f4766c, (Object) dVar.f4766c)) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4764a;
            int i2 = 0;
            int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f4765b).hashCode()) * 31;
            String str2 = this.f4766c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionGlobalEpisodeDetailFragment(episodeId=" + this.f4764a + ", seasonIndex=" + this.f4765b + ", referrer=" + this.f4766c + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class e implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4776a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f4777b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4778c;

        /* renamed from: d  reason: collision with root package name */
        public final String f4779d;

        public e(String str, boolean z, String str2, String str3) {
            h.f.b.j.b(str, "slug");
            h.f.b.j.b(str2, "toolbarName");
            h.f.b.j.b(str3, "referrer");
            this.f4776a = str;
            this.f4777b = z;
            this.f4778c = str2;
            this.f4779d = str3;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("slug", this.f4776a);
            bundle.putBoolean("showBackButton", this.f4777b);
            bundle.putString("toolbarName", this.f4778c);
            bundle.putString("referrer", this.f4779d);
            return bundle;
        }

        public int b() {
            return R.id.action_global_fehrestFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof e) {
                    e eVar = (e) obj;
                    if (h.f.b.j.a((Object) this.f4776a, (Object) eVar.f4776a)) {
                        if (!(this.f4777b == eVar.f4777b) || !h.f.b.j.a((Object) this.f4778c, (Object) eVar.f4778c) || !h.f.b.j.a((Object) this.f4779d, (Object) eVar.f4779d)) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4776a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            boolean z = this.f4777b;
            if (z) {
                z = true;
            }
            int i3 = (hashCode + (z ? 1 : 0)) * 31;
            String str2 = this.f4778c;
            int hashCode2 = (i3 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f4779d;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "ActionGlobalFehrestFragment(slug=" + this.f4776a + ", showBackButton=" + this.f4777b + ", toolbarName=" + this.f4778c + ", referrer=" + this.f4779d + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class f implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4787a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4788b;

        public f(String str, String str2) {
            h.f.b.j.b(str2, "description");
            this.f4787a = str;
            this.f4788b = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("title", this.f4787a);
            bundle.putString("description", this.f4788b);
            return bundle;
        }

        public int b() {
            return R.id.action_global_goToBazaarSettingForPermissionDialog;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f4788b, (java.lang.Object) r3.f4788b) != false) goto L_0x001f;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x001f
                boolean r0 = r3 instanceof c.c.a.d.f
                if (r0 == 0) goto L_0x001d
                c.c.a.d$f r3 = (c.c.a.d.f) r3
                java.lang.String r0 = r2.f4787a
                java.lang.String r1 = r3.f4787a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x001d
                java.lang.String r0 = r2.f4788b
                java.lang.String r3 = r3.f4788b
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.f.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f4787a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f4788b;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionGlobalGoToBazaarSettingForPermissionDialog(title=" + this.f4787a + ", description=" + this.f4788b + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class g implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4795a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4796b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4797c;

        public g() {
            this(null, null, null, 7, null);
        }

        public g(String str, String str2, String str3) {
            this.f4795a = str;
            this.f4796b = str2;
            this.f4797c = str3;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString(SearchEvent.QUERY_ATTRIBUTE, this.f4795a);
            bundle.putString("searchToken", this.f4796b);
            bundle.putString("referrer", this.f4797c);
            return bundle;
        }

        public int b() {
            return R.id.action_global_searchChildFragment;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f4797c, (java.lang.Object) r3.f4797c) != false) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0029
                boolean r0 = r3 instanceof c.c.a.d.g
                if (r0 == 0) goto L_0x0027
                c.c.a.d$g r3 = (c.c.a.d.g) r3
                java.lang.String r0 = r2.f4795a
                java.lang.String r1 = r3.f4795a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f4796b
                java.lang.String r1 = r3.f4796b
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.f4797c
                java.lang.String r3 = r3.f4797c
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.g.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f4795a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f4796b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f4797c;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "ActionGlobalSearchChildFragment(query=" + this.f4795a + ", searchToken=" + this.f4796b + ", referrer=" + this.f4797c + ")";
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ g(String str, String str2, String str3, int i2, h.f.b.f fVar) {
            this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3);
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class h implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4818a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4819b;

        public h() {
            this(null, null, 3, null);
        }

        public h(String str, String str2) {
            this.f4818a = str;
            this.f4819b = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString(SearchEvent.QUERY_ATTRIBUTE, this.f4818a);
            bundle.putString("searchToken", this.f4819b);
            return bundle;
        }

        public int b() {
            return R.id.action_global_searchFragment;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f4819b, (java.lang.Object) r3.f4819b) != false) goto L_0x001f;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x001f
                boolean r0 = r3 instanceof c.c.a.d.h
                if (r0 == 0) goto L_0x001d
                c.c.a.d$h r3 = (c.c.a.d.h) r3
                java.lang.String r0 = r2.f4818a
                java.lang.String r1 = r3.f4818a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x001d
                java.lang.String r0 = r2.f4819b
                java.lang.String r3 = r3.f4819b
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.h.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f4818a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f4819b;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionGlobalSearchFragment(query=" + this.f4818a + ", searchToken=" + this.f4819b + ")";
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ h(String str, String str2, int i2, h.f.b.f fVar) {
            this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2);
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class i implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4855a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4856b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4857c;

        public i(String str, int i2, String str2) {
            h.f.b.j.b(str, "seasonId");
            h.f.b.j.b(str2, "referrer");
            this.f4855a = str;
            this.f4856b = i2;
            this.f4857c = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("seasonId", this.f4855a);
            bundle.putInt("seasonIndex", this.f4856b);
            bundle.putString("referrer", this.f4857c);
            return bundle;
        }

        public int b() {
            return R.id.action_global_seasonEpisodeFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof i) {
                    i iVar = (i) obj;
                    if (h.f.b.j.a((Object) this.f4855a, (Object) iVar.f4855a)) {
                        if (!(this.f4856b == iVar.f4856b) || !h.f.b.j.a((Object) this.f4857c, (Object) iVar.f4857c)) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4855a;
            int i2 = 0;
            int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f4856b).hashCode()) * 31;
            String str2 = this.f4857c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionGlobalSeasonEpisodeFragment(seasonId=" + this.f4855a + ", seasonIndex=" + this.f4856b + ", referrer=" + this.f4857c + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class j implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4858a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4859b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4860c;

        public j(String str, int i2, String str2) {
            h.f.b.j.b(str, "seriesId");
            h.f.b.j.b(str2, "referrer");
            this.f4858a = str;
            this.f4859b = i2;
            this.f4860c = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("seriesId", this.f4858a);
            bundle.putInt("seasonIndex", this.f4859b);
            bundle.putString("referrer", this.f4860c);
            return bundle;
        }

        public int b() {
            return R.id.action_global_seriesDetailFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof j) {
                    j jVar = (j) obj;
                    if (h.f.b.j.a((Object) this.f4858a, (Object) jVar.f4858a)) {
                        if (!(this.f4859b == jVar.f4859b) || !h.f.b.j.a((Object) this.f4860c, (Object) jVar.f4860c)) {
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f4858a;
            int i2 = 0;
            int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f4859b).hashCode()) * 31;
            String str2 = this.f4860c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionGlobalSeriesDetailFragment(seriesId=" + this.f4858a + ", seasonIndex=" + this.f4859b + ", referrer=" + this.f4860c + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    private static final class k implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f4861a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4862b;

        public k(String str, String str2) {
            h.f.b.j.b(str, "videoId");
            h.f.b.j.b(str2, "referrer");
            this.f4861a = str;
            this.f4862b = str2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("videoId", this.f4861a);
            bundle.putString("referrer", this.f4862b);
            return bundle;
        }

        public int b() {
            return R.id.action_global_videoDetailFragment;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f4862b, (java.lang.Object) r3.f4862b) != false) goto L_0x001f;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x001f
                boolean r0 = r3 instanceof c.c.a.d.k
                if (r0 == 0) goto L_0x001d
                c.c.a.d$k r3 = (c.c.a.d.k) r3
                java.lang.String r0 = r2.f4861a
                java.lang.String r1 = r3.f4861a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x001d
                java.lang.String r0 = r2.f4862b
                java.lang.String r3 = r3.f4862b
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
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.k.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f4861a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f4862b;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "ActionGlobalVideoDetailFragment(videoId=" + this.f4861a + ", referrer=" + this.f4862b + ")";
        }
    }

    /* compiled from: MainNavDirections.kt */
    public static final class l {
        public l() {
        }

        public static /* synthetic */ p a(l lVar, String str, String str2, boolean z, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                z = false;
            }
            return lVar.a(str, str2, z);
        }

        public static /* synthetic */ p b(l lVar, String str, String str2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            if ((i2 & 2) != 0) {
                str2 = null;
            }
            return lVar.b(str, str2);
        }

        public final p c(String str, String str2) {
            h.f.b.j.b(str, "videoId");
            h.f.b.j.b(str2, "referrer");
            return new k(str, str2);
        }

        public final p d() {
            return new C0304a(R.id.action_global_homeFragment);
        }

        public final p e() {
            return new C0304a(R.id.action_global_installedAppsFragment);
        }

        public final p f() {
            return new C0304a(R.id.action_global_latestDownloadFragment);
        }

        public final p g() {
            return new C0304a(R.id.action_global_maliciousAppFragment);
        }

        public final p h() {
            return new C0304a(R.id.action_global_MyBazaarFragment);
        }

        public final p i() {
            return new C0304a(R.id.action_global_playedVideoFragment);
        }

        public final p j() {
            return new C0304a(R.id.action_global_releaseNoteFragment);
        }

        public final p k() {
            return new C0304a(R.id.action_global_setting);
        }

        public final p l() {
            return new C0304a(R.id.action_global_upgradableAppsFragment);
        }

        public final p m() {
            return new C0304a(R.id.action_global_videoDownloadListFragment);
        }

        public final p n() {
            return new C0304a(R.id.action_global_videosFragment);
        }

        public /* synthetic */ l(h.f.b.f fVar) {
            this();
        }

        public final p a(String str, String str2, boolean z) {
            h.f.b.j.b(str, "packageName");
            h.f.b.j.b(str2, "referrer");
            return new a(str, str2, z);
        }

        public final p b(String str, String str2) {
            return new h(str, str2);
        }

        public final p c(String str, int i2, String str2) {
            h.f.b.j.b(str, "seriesId");
            h.f.b.j.b(str2, "referrer");
            return new j(str, i2, str2);
        }

        public static /* synthetic */ p a(l lVar, String str, int i2, String str2, int i3, Object obj) {
            if ((i3 & 2) != 0) {
                i2 = 0;
            }
            return lVar.c(str, i2, str2);
        }

        public final p b(String str, String str2, String str3) {
            return new g(str, str2, str3);
        }

        public final p c() {
            return new C0304a(R.id.action_global_getBoughtAppFragment);
        }

        public final p a(String str, String str2, String str3) {
            h.f.b.j.b(str, "castId");
            h.f.b.j.b(str2, "titleName");
            h.f.b.j.b(str3, "referrer");
            return new b(str, str2, str3);
        }

        public final p b(String str, int i2, String str2) {
            h.f.b.j.b(str, "seasonId");
            h.f.b.j.b(str2, "referrer");
            return new i(str, i2, str2);
        }

        public final p a(String str, int i2, String str2) {
            h.f.b.j.b(str, "episodeId");
            h.f.b.j.b(str2, "referrer");
            return new C0075d(str, i2, str2);
        }

        public final p b() {
            return new C0304a(R.id.action_global_edit_nick_name_fragment);
        }

        public static /* synthetic */ p a(l lVar, String str, boolean z, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = "home";
            }
            if ((i2 & 2) != 0) {
                z = true;
            }
            return lVar.a(str, z, str2, str3);
        }

        public final p a(String str, boolean z, String str2, String str3) {
            h.f.b.j.b(str, "slug");
            h.f.b.j.b(str2, "toolbarName");
            h.f.b.j.b(str3, "referrer");
            return new e(str, z, str2, str3);
        }

        public final p a() {
            return new C0304a(R.id.action_global_bookmarkFragment);
        }

        public final p a(int i2) {
            return new c(i2);
        }

        public static /* synthetic */ p a(l lVar, String str, String str2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            return lVar.a(str, str2);
        }

        public final p a(String str, String str2) {
            h.f.b.j.b(str2, "description");
            return new f(str, str2);
        }
    }
}
