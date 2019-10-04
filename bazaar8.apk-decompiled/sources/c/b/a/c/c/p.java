package c.b.a.c.c;

import android.text.TextUtils;
import e.a.a.a.a.b.C1046a;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: LazyHeaders */
public final class p implements n {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, List<o>> f4100a;

    /* renamed from: b  reason: collision with root package name */
    public volatile Map<String, String> f4101b;

    /* compiled from: LazyHeaders */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final String f4102a = b();

        /* renamed from: b  reason: collision with root package name */
        public static final Map<String, List<o>> f4103b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f4104c = true;

        /* renamed from: d  reason: collision with root package name */
        public Map<String, List<o>> f4105d = f4103b;

        /* renamed from: e  reason: collision with root package name */
        public boolean f4106e = true;

        static {
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(f4102a)) {
                hashMap.put(C1046a.HEADER_USER_AGENT, Collections.singletonList(new b(f4102a)));
            }
            f4103b = Collections.unmodifiableMap(hashMap);
        }

        public static String b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = property.charAt(i2);
                if ((charAt > 31 || charAt == 9) && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }

        public p a() {
            this.f4104c = true;
            return new p(this.f4105d);
        }
    }

    /* compiled from: LazyHeaders */
    static final class b implements o {

        /* renamed from: a  reason: collision with root package name */
        public final String f4107a;

        public b(String str) {
            this.f4107a = str;
        }

        public String a() {
            return this.f4107a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f4107a.equals(((b) obj).f4107a);
            }
            return false;
        }

        public int hashCode() {
            return this.f4107a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f4107a + '\'' + '}';
        }
    }

    public p(Map<String, List<o>> map) {
        this.f4100a = Collections.unmodifiableMap(map);
    }

    public Map<String, String> a() {
        if (this.f4101b == null) {
            synchronized (this) {
                if (this.f4101b == null) {
                    this.f4101b = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f4101b;
    }

    public final Map<String, String> b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f4100a.entrySet()) {
            String a2 = a((List) next.getValue());
            if (!TextUtils.isEmpty(a2)) {
                hashMap.put(next.getKey(), a2);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof p) {
            return this.f4100a.equals(((p) obj).f4100a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4100a.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f4100a + '}';
    }

    public final String a(List<o> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            String a2 = list.get(i2).a();
            if (!TextUtils.isEmpty(a2)) {
                sb.append(a2);
                if (i2 != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }
}
