package c.e.a.a.j.d.a;

import android.net.Uri;
import com.crashlytics.android.core.SessionProtobufHelper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: HlsMasterPlaylist */
public final class e extends g {

    /* renamed from: d  reason: collision with root package name */
    public static final e f8729d;

    /* renamed from: e  reason: collision with root package name */
    public final List<Uri> f8730e;

    /* renamed from: f  reason: collision with root package name */
    public final List<b> f8731f;

    /* renamed from: g  reason: collision with root package name */
    public final List<a> f8732g;

    /* renamed from: h  reason: collision with root package name */
    public final List<a> f8733h;

    /* renamed from: i  reason: collision with root package name */
    public final List<a> f8734i;

    /* renamed from: j  reason: collision with root package name */
    public final List<a> f8735j;

    /* renamed from: k  reason: collision with root package name */
    public final Format f8736k;

    /* renamed from: l  reason: collision with root package name */
    public final List<Format> f8737l;
    public final Map<String, String> m;
    public final List<DrmInitData> n;

    /* compiled from: HlsMasterPlaylist */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f8738a;

        /* renamed from: b  reason: collision with root package name */
        public final Format f8739b;

        /* renamed from: c  reason: collision with root package name */
        public final String f8740c;

        /* renamed from: d  reason: collision with root package name */
        public final String f8741d;

        public a(Uri uri, Format format, String str, String str2) {
            this.f8738a = uri;
            this.f8739b = format;
            this.f8740c = str;
            this.f8741d = str2;
        }
    }

    /* compiled from: HlsMasterPlaylist */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f8742a;

        /* renamed from: b  reason: collision with root package name */
        public final Format f8743b;

        /* renamed from: c  reason: collision with root package name */
        public final String f8744c;

        /* renamed from: d  reason: collision with root package name */
        public final String f8745d;

        /* renamed from: e  reason: collision with root package name */
        public final String f8746e;

        /* renamed from: f  reason: collision with root package name */
        public final String f8747f;

        public b(Uri uri, Format format, String str, String str2, String str3, String str4) {
            this.f8742a = uri;
            this.f8743b = format;
            this.f8744c = str;
            this.f8745d = str2;
            this.f8746e = str3;
            this.f8747f = str4;
        }

        public static b a(Uri uri) {
            b bVar = new b(uri, Format.a(SessionProtobufHelper.SIGNAL_DEFAULT, null, "application/x-mpegURL", null, null, -1, 0, 0, null), null, null, null, null);
            return bVar;
        }

        public b a(Format format) {
            b bVar = new b(this.f8742a, format, this.f8744c, this.f8745d, this.f8746e, this.f8747f);
            return bVar;
        }
    }

    static {
        e eVar = new e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());
        f8729d = eVar;
    }

    public e(String str, List<String> list, List<b> list2, List<a> list3, List<a> list4, List<a> list5, List<a> list6, Format format, List<Format> list7, boolean z, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z);
        this.f8730e = Collections.unmodifiableList(a(list2, list3, list4, list5, list6));
        this.f8731f = Collections.unmodifiableList(list2);
        this.f8732g = Collections.unmodifiableList(list3);
        this.f8733h = Collections.unmodifiableList(list4);
        this.f8734i = Collections.unmodifiableList(list5);
        this.f8735j = Collections.unmodifiableList(list6);
        this.f8736k = format;
        this.f8737l = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.m = Collections.unmodifiableMap(map);
        this.n = Collections.unmodifiableList(list8);
    }

    public e a(List<StreamKey> list) {
        e eVar = new e(this.f8769a, this.f8770b, a(this.f8731f, 0, list), Collections.emptyList(), a(this.f8733h, 1, list), a(this.f8734i, 2, list), Collections.emptyList(), this.f8736k, this.f8737l, this.f8771c, this.m, this.n);
        return eVar;
    }

    public static e a(String str) {
        e eVar = new e(null, Collections.emptyList(), Collections.singletonList(b.a(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
        return eVar;
    }

    public static List<Uri> a(List<b> list, List<a> list2, List<a> list3, List<a> list4, List<a> list5) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Uri uri = list.get(i2).f8742a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        a(list2, arrayList);
        a(list3, arrayList);
        a(list4, arrayList);
        a(list5, arrayList);
        return arrayList;
    }

    public static void a(List<a> list, List<Uri> list2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            Uri uri = list.get(i2).f8738a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    public static <T> List<T> a(List<T> list, int i2, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            T t = list.get(i3);
            int i4 = 0;
            while (true) {
                if (i4 >= list2.size()) {
                    break;
                }
                StreamKey streamKey = list2.get(i4);
                if (streamKey.f12688b == i2 && streamKey.f12689c == i3) {
                    arrayList.add(t);
                    break;
                }
                i4++;
            }
        }
        return arrayList;
    }
}
