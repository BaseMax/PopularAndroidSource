package com.koushikdutta.async.http.b;

import android.text.TextUtils;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<String> f4648a = new Comparator<String>() {
        public final int compare(String str, String str2) {
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f4649b = new ArrayList(20);
    private String c;
    private int d = 1;
    private int e = -1;
    private String f;

    public c() {
    }

    public c(c cVar) {
        copy(cVar);
    }

    public final void copy(c cVar) {
        this.f4649b.addAll(cVar.f4649b);
        this.c = cVar.c;
        this.d = cVar.d;
        this.e = cVar.e;
        this.f = cVar.f;
    }

    public final void setStatusLine(String str) {
        String trim = str.trim();
        this.c = trim;
        if (trim != null && trim.startsWith("HTTP/")) {
            String trim2 = trim.trim();
            int indexOf = trim2.indexOf(" ") + 1;
            if (indexOf != 0) {
                if (trim2.charAt(indexOf - 2) != '1') {
                    this.d = 0;
                }
                int i = indexOf + 3;
                if (i > trim2.length()) {
                    i = trim2.length();
                }
                this.e = Integer.parseInt(trim2.substring(indexOf, i));
                int i2 = i + 1;
                if (i2 <= trim2.length()) {
                    this.f = trim2.substring(i2);
                }
            }
        }
    }

    public final String getStatusLine() {
        return this.c;
    }

    public final int getHttpMinorVersion() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        return 1;
    }

    public final int getResponseCode() {
        return this.e;
    }

    public final String getResponseMessage() {
        return this.f;
    }

    public final void addLine(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf == -1) {
            add("", str);
        } else {
            add(str.substring(0, indexOf), str.substring(indexOf + 1));
        }
    }

    public final void add(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("fieldName == null");
        } else if (str2 == null) {
            PrintStream printStream = System.err;
            printStream.println("Ignoring HTTP header field '" + str + "' because its value is null");
        } else {
            this.f4649b.add(str);
            this.f4649b.add(str2.trim());
        }
    }

    public final void removeAll(String str) {
        for (int i = 0; i < this.f4649b.size(); i += 2) {
            if (str.equalsIgnoreCase(this.f4649b.get(i))) {
                this.f4649b.remove(i);
                this.f4649b.remove(i);
            }
        }
    }

    public final void addAll(String str, List<String> list) {
        for (String add : list) {
            add(str, add);
        }
    }

    public final void set(String str, String str2) {
        removeAll(str);
        add(str, str2);
    }

    public final int length() {
        return this.f4649b.size() / 2;
    }

    public final String getFieldName(int i) {
        int i2 = i * 2;
        if (i2 < 0 || i2 >= this.f4649b.size()) {
            return null;
        }
        return this.f4649b.get(i2);
    }

    public final String getValue(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0 || i2 >= this.f4649b.size()) {
            return null;
        }
        return this.f4649b.get(i2);
    }

    public final String get(String str) {
        for (int size = this.f4649b.size() - 2; size >= 0; size -= 2) {
            if (str.equalsIgnoreCase(this.f4649b.get(size))) {
                return this.f4649b.get(size + 1);
            }
        }
        return null;
    }

    public final c getAll(Set<String> set) {
        c cVar = new c();
        for (int i = 0; i < this.f4649b.size(); i += 2) {
            String str = this.f4649b.get(i);
            if (set.contains(str)) {
                cVar.add(str, this.f4649b.get(i + 1));
            }
        }
        return cVar;
    }

    public final String toHeaderString() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(this.c);
        sb.append("\r\n");
        for (int i = 0; i < this.f4649b.size(); i += 2) {
            sb.append(this.f4649b.get(i));
            sb.append(": ");
            sb.append(this.f4649b.get(i + 1));
            sb.append("\r\n");
        }
        sb.append("\r\n");
        return sb.toString();
    }

    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(f4648a);
        for (int i = 0; i < this.f4649b.size(); i += 2) {
            String str = this.f4649b.get(i);
            String str2 = this.f4649b.get(i + 1);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(str);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(str2);
            treeMap.put(str, Collections.unmodifiableList(arrayList));
        }
        String str3 = this.c;
        if (str3 != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str3)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    public static c fromMultimap(Map<String, List<String>> map) {
        c cVar = new c();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            List list = (List) next.getValue();
            if (str != null) {
                cVar.addAll(str, list);
            } else if (!list.isEmpty()) {
                cVar.setStatusLine((String) list.get(list.size() - 1));
            }
        }
        return cVar;
    }

    public static c parse(String str) {
        String[] split = str.split("\n");
        c cVar = new c();
        for (String trim : split) {
            String trim2 = trim.trim();
            if (!TextUtils.isEmpty(trim2)) {
                if (cVar.getStatusLine() == null) {
                    cVar.setStatusLine(trim2);
                } else {
                    cVar.addLine(trim2);
                }
            }
        }
        return cVar;
    }
}
