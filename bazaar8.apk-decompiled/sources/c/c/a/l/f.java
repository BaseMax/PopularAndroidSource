package c.c.a.l;

import android.net.Uri;
import android.os.Bundle;
import c.c.a.c.d.e;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import com.farsitel.bazaar.common.model.cinema.RefreshData;
import com.farsitel.bazaar.player.VideoSource;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import h.k.m;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: PlayerParams.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f6114a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f6115b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final String f6116c;

    /* renamed from: d  reason: collision with root package name */
    public final c f6117d;

    /* renamed from: e  reason: collision with root package name */
    public final c f6118e;

    /* renamed from: f  reason: collision with root package name */
    public final c f6119f;

    /* renamed from: g  reason: collision with root package name */
    public final String f6120g;

    /* renamed from: h  reason: collision with root package name */
    public final Uri f6121h;

    /* renamed from: i  reason: collision with root package name */
    public final Uri f6122i;

    /* renamed from: j  reason: collision with root package name */
    public final List<VideoSubtitle> f6123j;

    /* renamed from: k  reason: collision with root package name */
    public final RefreshData f6124k;

    /* renamed from: l  reason: collision with root package name */
    public final String f6125l;

    /* compiled from: PlayerParams.kt */
    public static final class a {
        public a() {
        }

        public final f a(Bundle bundle) {
            j.b(bundle, "bundle");
            String string = bundle.getString("video_id", "unknown");
            j.a((Object) string, "getString(VIDEO_ID, \"unknown\")");
            Uri parse = Uri.parse(bundle.getString("video_url"));
            j.a((Object) parse, "Uri.parse(getString(VIDEO_URL))");
            Uri parse2 = Uri.parse(bundle.getString("watermark_url"));
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("subtitles");
            Serializable serializable = bundle.getSerializable("refresh_data");
            if (!(serializable instanceof RefreshData)) {
                serializable = null;
            }
            String string2 = bundle.getString("referrer", e.a());
            j.a((Object) string2, "getString(REFERRER, emptyReferrer)");
            f fVar = new f(string, parse, parse2, parcelableArrayList, (RefreshData) serializable, string2);
            return fVar;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(f.class), "source", "getSource()Lcom/farsitel/bazaar/player/VideoSource;");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(f.class), "isOffline", "isOffline()Z");
        k.a((PropertyReference1) propertyReference1Impl2);
        PropertyReference1Impl propertyReference1Impl3 = new PropertyReference1Impl(k.a(f.class), "url", "getUrl()Landroid/net/Uri;");
        k.a((PropertyReference1) propertyReference1Impl3);
        f6114a = new i[]{propertyReference1Impl, propertyReference1Impl2, propertyReference1Impl3};
    }

    public f(String str, Uri uri, Uri uri2, List<VideoSubtitle> list, RefreshData refreshData, String str2) {
        j.b(str, "videoId");
        j.b(uri, "rawUrl");
        j.b(str2, "referrer");
        this.f6120g = str;
        this.f6121h = uri;
        this.f6122i = uri2;
        this.f6123j = list;
        this.f6124k = refreshData;
        this.f6125l = str2;
        this.f6116c = "http://aparat.com/etc/api/videoshow/videohash/";
        this.f6117d = d.a(new PlayerParams$source$2(this));
        this.f6118e = d.a(new PlayerParams$isOffline$2(this));
        this.f6119f = d.a(new PlayerParams$url$2(this));
    }

    public final VideoSource d() {
        c cVar = this.f6117d;
        i iVar = f6114a[0];
        return (VideoSource) cVar.getValue();
    }

    public final List<VideoSubtitle> e() {
        return this.f6123j;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6125l, (java.lang.Object) r3.f6125l) != false) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0047
            boolean r0 = r3 instanceof c.c.a.l.f
            if (r0 == 0) goto L_0x0045
            c.c.a.l.f r3 = (c.c.a.l.f) r3
            java.lang.String r0 = r2.f6120g
            java.lang.String r1 = r3.f6120g
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            android.net.Uri r0 = r2.f6121h
            android.net.Uri r1 = r3.f6121h
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            android.net.Uri r0 = r2.f6122i
            android.net.Uri r1 = r3.f6122i
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.util.List<com.farsitel.bazaar.common.model.VideoSubtitle> r0 = r2.f6123j
            java.util.List<com.farsitel.bazaar.common.model.VideoSubtitle> r1 = r3.f6123j
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            com.farsitel.bazaar.common.model.cinema.RefreshData r0 = r2.f6124k
            com.farsitel.bazaar.common.model.cinema.RefreshData r1 = r3.f6124k
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = r2.f6125l
            java.lang.String r3 = r3.f6125l
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0045
            goto L_0x0047
        L_0x0045:
            r3 = 0
            return r3
        L_0x0047:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.l.f.equals(java.lang.Object):boolean");
    }

    public final Uri f() {
        c cVar = this.f6119f;
        i iVar = f6114a[2];
        return (Uri) cVar.getValue();
    }

    public final String g() {
        return this.f6120g;
    }

    public final Uri h() {
        return this.f6122i;
    }

    public int hashCode() {
        String str = this.f6120g;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Uri uri = this.f6121h;
        int hashCode2 = (hashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        Uri uri2 = this.f6122i;
        int hashCode3 = (hashCode2 + (uri2 != null ? uri2.hashCode() : 0)) * 31;
        List<VideoSubtitle> list = this.f6123j;
        int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        RefreshData refreshData = this.f6124k;
        int hashCode5 = (hashCode4 + (refreshData != null ? refreshData.hashCode() : 0)) * 31;
        String str2 = this.f6125l;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode5 + i2;
    }

    public final boolean i() {
        c cVar = this.f6118e;
        i iVar = f6114a[1];
        return ((Boolean) cVar.getValue()).booleanValue();
    }

    public final Bundle j() {
        Bundle bundle = new Bundle();
        bundle.putString("video_id", this.f6120g);
        bundle.putString("video_url", this.f6121h.toString());
        bundle.putString("watermark_url", String.valueOf(this.f6122i));
        List<VideoSubtitle> list = this.f6123j;
        if (!(list instanceof ArrayList)) {
            list = null;
        }
        bundle.putParcelableArrayList("subtitles", (ArrayList) list);
        bundle.putSerializable("refresh_data", this.f6124k);
        bundle.putString("referrer", this.f6125l);
        return bundle;
    }

    public String toString() {
        return "PlayerParams(videoId=" + this.f6120g + ", rawUrl=" + this.f6121h + ", watermarkUrl=" + this.f6122i + ", subtitles=" + this.f6123j + ", refreshData=" + this.f6124k + ", referrer=" + this.f6125l + ")";
    }

    public final String b() {
        return this.f6125l;
    }

    public final RefreshData c() {
        return this.f6124k;
    }

    public final Uri a() {
        return this.f6121h;
    }

    public final boolean b(Uri uri) {
        return new File(uri.getPath()).exists();
    }

    public final Uri c(Uri uri) {
        Uri fromFile = Uri.fromFile(new File(uri.getPath()));
        j.a((Object) fromFile, "Uri.fromFile(File(uri.path))");
        return fromFile;
    }

    public final boolean a(Uri uri) {
        String uri2 = uri.toString();
        j.a((Object) uri2, "rawUrl.toString()");
        return (uri2.length() > 0) && !m.b(uri2, "http", false, 2, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f(String str, Uri uri, Uri uri2, List list, RefreshData refreshData, String str2, int i2, h.f.b.f fVar) {
        this(str, uri, (i2 & 4) != 0 ? null : uri2, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? null : refreshData, str2);
    }
}
