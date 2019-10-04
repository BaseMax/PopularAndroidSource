package com.koushikdutta.async.http;

import android.text.TextUtils;
import com.koushikdutta.async.e.h;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class n {

    /* renamed from: a  reason: collision with root package name */
    final s f4756a = new s() {
        /* access modifiers changed from: protected */
        public final List<String> a() {
            return new h();
        }
    };

    public n() {
    }

    public n(Map<String, List<String>> map) {
        this.f4756a.putAll(map);
    }

    public final s getMultiMap() {
        return this.f4756a;
    }

    public final List<String> getAll(String str) {
        return (List) this.f4756a.get(str.toLowerCase(Locale.US));
    }

    public final String get(String str) {
        return this.f4756a.getString(str.toLowerCase(Locale.US));
    }

    public final n set(String str, String str2) {
        if (str2 == null || (!str2.contains("\n") && !str2.contains("\r"))) {
            String lowerCase = str.toLowerCase(Locale.US);
            this.f4756a.put(lowerCase, str2);
            ((h) this.f4756a.get(lowerCase)).tagNull(str);
            return this;
        }
        throw new IllegalArgumentException("value must not contain a new line or line feed");
    }

    public final n add(String str, String str2) {
        String lowerCase = str.toLowerCase(Locale.US);
        this.f4756a.add(lowerCase, str2);
        ((h) this.f4756a.get(lowerCase)).tagNull(str);
        return this;
    }

    public final n addLine(String str) {
        if (str != null) {
            String[] split = str.trim().split(":", 2);
            if (split.length == 2) {
                add(split[0].trim(), split[1].trim());
            } else {
                add(split[0].trim(), "");
            }
        }
        return this;
    }

    public final n addAll(String str, List<String> list) {
        for (String add : list) {
            add(str, add);
        }
        return this;
    }

    public final n addAll(Map<String, List<String>> map) {
        for (String next : map.keySet()) {
            for (String add : map.get(next)) {
                add(next, add);
            }
        }
        return this;
    }

    public final n addAll(n nVar) {
        this.f4756a.putAll(nVar.f4756a);
        return this;
    }

    public final List<String> removeAll(String str) {
        return (List) this.f4756a.remove(str.toLowerCase(Locale.US));
    }

    public final String remove(String str) {
        List<String> removeAll = removeAll(str.toLowerCase(Locale.US));
        if (removeAll == null || removeAll.size() == 0) {
            return null;
        }
        return removeAll.get(0);
    }

    public final n removeAll(Collection<String> collection) {
        for (String remove : collection) {
            remove(remove);
        }
        return this;
    }

    public final StringBuilder toStringBuilder() {
        StringBuilder sb = new StringBuilder(256);
        for (String str : this.f4756a.keySet()) {
            h hVar = (h) this.f4756a.get(str);
            Iterator it = hVar.iterator();
            while (it.hasNext()) {
                sb.append((String) hVar.tag());
                sb.append(": ");
                sb.append((String) it.next());
                sb.append("\r\n");
            }
        }
        sb.append("\r\n");
        return sb;
    }

    public final String toString() {
        return toStringBuilder().toString();
    }

    public final String toPrefixString(String str) {
        StringBuilder stringBuilder = toStringBuilder();
        return stringBuilder.insert(0, str + "\r\n").toString();
    }

    public static n parse(String str) {
        String[] split = str.split("\n");
        n nVar = new n();
        for (String trim : split) {
            String trim2 = trim.trim();
            if (!TextUtils.isEmpty(trim2)) {
                nVar.addLine(trim2);
            }
        }
        return nVar;
    }
}
