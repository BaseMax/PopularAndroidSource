package org.a;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.paho.a.a.w;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f8718a;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f8719a = new ArrayList();

        public final d build() {
            return new d(this.f8719a);
        }

        public final a append(String str) {
            if (str != null) {
                this.f8719a.add(str);
                return this;
            }
            throw new NullPointerException("token cannot be null");
        }

        public final a append(int i) {
            this.f8719a.add(String.valueOf(i));
            return this;
        }
    }

    public static a builder() {
        return new a();
    }

    public d(String str) {
        String str2;
        if (str == null) {
            throw new NullPointerException("pointer cannot be null");
        } else if (str.isEmpty() || str.equals(w.MULTI_LEVEL_WILDCARD)) {
            this.f8718a = Collections.emptyList();
        } else {
            if (str.startsWith("#/")) {
                try {
                    str2 = URLDecoder.decode(str.substring(2), "utf-8");
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            } else if (str.startsWith(w.TOPIC_LEVEL_SEPARATOR)) {
                str2 = str.substring(1);
            } else {
                throw new IllegalArgumentException("a JSON pointer should start with '/' or '#/'");
            }
            this.f8718a = new ArrayList();
            for (String a2 : str2.split(w.TOPIC_LEVEL_SEPARATOR)) {
                this.f8718a.add(a(a2));
            }
        }
    }

    public d(List<String> list) {
        this.f8718a = new ArrayList(list);
    }

    private static String a(String str) {
        return str.replace("~1", w.TOPIC_LEVEL_SEPARATOR).replace("~0", "~").replace("\\\"", "\"").replace("\\\\", "\\");
    }

    public final Object queryFrom(Object obj) throws e {
        if (this.f8718a.isEmpty()) {
            return obj;
        }
        for (String next : this.f8718a) {
            if (obj instanceof c) {
                obj = ((c) obj).opt(a(next));
            } else if (obj instanceof a) {
                obj = a(obj, next);
            } else {
                throw new e(String.format("value [%s] is not an array or object therefore its key %s cannot be resolved", new Object[]{obj, next}));
            }
        }
        return obj;
    }

    private static Object a(Object obj, String str) throws e {
        int parseInt;
        try {
            parseInt = Integer.parseInt(str);
            a aVar = (a) obj;
            if (parseInt < aVar.length()) {
                return aVar.get(parseInt);
            }
            throw new e(String.format("index %d is out of bounds - the array has %d elements", new Object[]{Integer.valueOf(parseInt), Integer.valueOf(aVar.length())}));
        } catch (b e) {
            throw new e("Error reading value at index position ".concat(String.valueOf(parseInt)), e);
        } catch (NumberFormatException e2) {
            throw new e(String.format("%s is not an array index", new Object[]{str}), e2);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("");
        for (String replace : this.f8718a) {
            sb.append('/');
            sb.append(replace.replace("~", "~0").replace(w.TOPIC_LEVEL_SEPARATOR, "~1").replace("\\", "\\\\").replace("\"", "\\\""));
        }
        return sb.toString();
    }

    public final String toURIFragment() {
        try {
            StringBuilder sb = new StringBuilder(w.MULTI_LEVEL_WILDCARD);
            for (String encode : this.f8718a) {
                sb.append('/');
                sb.append(URLEncoder.encode(encode, "utf-8"));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
