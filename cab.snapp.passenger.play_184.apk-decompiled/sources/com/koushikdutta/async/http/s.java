package com.koushikdutta.async.http;

import android.net.Uri;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public class s extends LinkedHashMap<String, List<String>> implements Iterable<t> {

    /* renamed from: a  reason: collision with root package name */
    private static final a f4774a = new a() {
        public final String decode(String str) {
            return Uri.decode(str);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final a f4775b = new a() {
        public final String decode(String str) {
            return URLDecoder.decode(str);
        }
    };

    public interface a {
        String decode(String str);
    }

    public s() {
    }

    /* access modifiers changed from: protected */
    public List<String> a() {
        return new ArrayList();
    }

    public String getString(String str) {
        List list = (List) get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return (String) list.get(0);
    }

    public void add(String str, String str2) {
        List<String> list = (List) get(str);
        if (list == null) {
            list = a();
            put(str, list);
        }
        list.add(str2);
    }

    public void put(String str, String str2) {
        List<String> a2 = a();
        a2.add(str2);
        put(str, a2);
    }

    public s(List<t> list) {
        for (t next : list) {
            add(next.getName(), next.getValue());
        }
    }

    public s(s sVar) {
        putAll(sVar);
    }

    public static s parse(String str, String str2, boolean z, a aVar) {
        s sVar = new s();
        if (str == null) {
            return sVar;
        }
        for (String split : str.split(str2)) {
            String[] split2 = split.split("=", 2);
            String trim = split2[0].trim();
            String str3 = null;
            if (split2.length > 1) {
                str3 = split2[1];
            }
            if (z && str3 != null && str3.endsWith("\"") && str3.startsWith("\"")) {
                str3 = str3.substring(1, str3.length() - 1);
            }
            if (aVar != null) {
                trim = aVar.decode(trim);
                str3 = aVar.decode(str3);
            }
            sVar.add(trim, str3);
        }
        return sVar;
    }

    public static s parseSemicolonDelimited(String str) {
        return parse(str, ";", true, null);
    }

    public static s parseCommaDelimited(String str) {
        return parse(str, ",", true, null);
    }

    public static s parseQuery(String str) {
        return parse(str, "&", false, f4774a);
    }

    public static s parseUrlEncoded(String str) {
        return parse(str, "&", false, f4775b);
    }

    public Iterator<t> iterator() {
        ArrayList arrayList = new ArrayList();
        for (String str : keySet()) {
            for (String jVar : (List) get(str)) {
                arrayList.add(new j(str, jVar));
            }
        }
        return arrayList.iterator();
    }
}
