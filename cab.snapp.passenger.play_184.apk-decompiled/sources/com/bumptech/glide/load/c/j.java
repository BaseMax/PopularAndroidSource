package com.bumptech.glide.load.c;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class j implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, List<i>> f2281a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Map<String, String> f2282b;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String f2283a;

        /* renamed from: b  reason: collision with root package name */
        private static final Map<String, List<i>> f2284b;
        private boolean c = true;
        private Map<String, List<i>> d = f2284b;
        private boolean e = true;

        public final a addHeader(String str, String str2) {
            return addHeader(str, (i) new b(str2));
        }

        public final a addHeader(String str, i iVar) {
            if (this.e && "User-Agent".equalsIgnoreCase(str)) {
                return setHeader(str, iVar);
            }
            a();
            a(str).add(iVar);
            return this;
        }

        public final a setHeader(String str, String str2) {
            return setHeader(str, (i) str2 == null ? null : new b(str2));
        }

        public final a setHeader(String str, i iVar) {
            a();
            if (iVar == null) {
                this.d.remove(str);
            } else {
                List<i> a2 = a(str);
                a2.clear();
                a2.add(iVar);
            }
            if (this.e && "User-Agent".equalsIgnoreCase(str)) {
                this.e = false;
            }
            return this;
        }

        private List<i> a(String str) {
            List<i> list = this.d.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.d.put(str, arrayList);
            return arrayList;
        }

        private void a() {
            if (this.c) {
                this.c = false;
                this.d = b();
            }
        }

        public final j build() {
            this.c = true;
            return new j(this.d);
        }

        private Map<String, List<i>> b() {
            HashMap hashMap = new HashMap(this.d.size());
            for (Map.Entry next : this.d.entrySet()) {
                hashMap.put(next.getKey(), new ArrayList((Collection) next.getValue()));
            }
            return hashMap;
        }

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char charAt = property.charAt(i);
                    if ((charAt > 31 || charAt == 9) && charAt < 127) {
                        sb.append(charAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            f2283a = property;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(f2283a)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(f2283a)));
            }
            f2284b = Collections.unmodifiableMap(hashMap);
        }
    }

    static final class b implements i {

        /* renamed from: a  reason: collision with root package name */
        private final String f2285a;

        b(String str) {
            this.f2285a = str;
        }

        public final String buildHeader() {
            return this.f2285a;
        }

        public final String toString() {
            return "StringHeaderFactory{value='" + this.f2285a + '\'' + '}';
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f2285a.equals(((b) obj).f2285a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f2285a.hashCode();
        }
    }

    j(Map<String, List<i>> map) {
        this.f2281a = Collections.unmodifiableMap(map);
    }

    public final Map<String, String> getHeaders() {
        if (this.f2282b == null) {
            synchronized (this) {
                if (this.f2282b == null) {
                    HashMap hashMap = new HashMap();
                    for (Map.Entry next : this.f2281a.entrySet()) {
                        String a2 = a((List) next.getValue());
                        if (!TextUtils.isEmpty(a2)) {
                            hashMap.put(next.getKey(), a2);
                        }
                    }
                    this.f2282b = Collections.unmodifiableMap(hashMap);
                }
            }
        }
        return this.f2282b;
    }

    private static String a(List<i> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String buildHeader = list.get(i).buildHeader();
            if (!TextUtils.isEmpty(buildHeader)) {
                sb.append(buildHeader);
                if (i != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f2281a + '}';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f2281a.equals(((j) obj).f2281a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2281a.hashCode();
    }
}
