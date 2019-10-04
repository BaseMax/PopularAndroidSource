package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.bv;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.a.b;
import org.a.c;

public class ne {

    public static class a extends c {
        public a() {
        }

        public a(String str) throws b {
            super(str);
        }

        public String a(String str) {
            try {
                return super.getString(str);
            } catch (Exception unused) {
                return "";
            }
        }

        public Object a(String str, Object obj) {
            try {
                return super.get(str);
            } catch (Exception unused) {
                return obj;
            }
        }

        public boolean b(String str) {
            try {
                if (NULL != super.get(str)) {
                    return true;
                }
            } catch (Exception unused) {
            }
            return false;
        }

        public Long c(String str) {
            try {
                return Long.valueOf(getLong(str));
            } catch (b unused) {
                return null;
            }
        }

        public Boolean d(String str) {
            try {
                return Boolean.valueOf(getBoolean(str));
            } catch (b unused) {
                return null;
            }
        }
    }

    public static Object a(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            if (obj.getClass().isArray()) {
                int length = Array.getLength(obj);
                ArrayList arrayList = new ArrayList(length);
                for (int i = 0; i < length; i++) {
                    arrayList.add(a(Array.get(obj, i)));
                }
                return new org.a.a((Collection<?>) arrayList);
            } else if (obj instanceof Collection) {
                Collection<Object> collection = (Collection) obj;
                ArrayList arrayList2 = new ArrayList(collection.size());
                for (Object a2 : collection) {
                    arrayList2.add(a(a2));
                }
                return new org.a.a((Collection<?>) arrayList2);
            } else {
                if (obj instanceof Map) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        String obj2 = entry.getKey().toString();
                        if (obj2 != null) {
                            linkedHashMap.put(obj2, a(entry.getValue()));
                        }
                    }
                    obj = new c((Map<?, ?>) linkedHashMap);
                }
                return obj;
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(Map map) {
        String str;
        if (bv.a(map)) {
            return null;
        }
        if (bv.a(19)) {
            str = new c((Map<?, ?>) map).toString();
        } else {
            str = a((Object) map).toString();
        }
        return str;
    }

    public static String a(List<String> list) {
        String str;
        if (bv.a((Collection) list)) {
            return null;
        }
        if (bv.a(19)) {
            str = new org.a.a((Collection<?>) list).toString();
        } else {
            str = a((Object) list).toString();
        }
        return str;
    }

    public static HashMap<String, String> a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return a(new c(str));
            } catch (b unused) {
            }
        }
        return null;
    }

    public static List<String> b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            org.a.a aVar = new org.a.a(str);
            ArrayList arrayList = new ArrayList(aVar.length());
            int i = 0;
            while (i < aVar.length()) {
                try {
                    arrayList.add(aVar.getString(i));
                    i++;
                } catch (b unused) {
                }
            }
            return arrayList;
        } catch (b unused2) {
            return null;
        }
    }

    public static HashMap<String, String> a(c cVar) {
        if (c.NULL.equals(cVar)) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        Iterator<String> keys = cVar.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = cVar.optString(next);
            if (optString != null) {
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    public static Long a(c cVar, String str) {
        if (cVar != null && cVar.has(str)) {
            try {
                return Long.valueOf(cVar.getLong(str));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Integer b(c cVar, String str) {
        if (cVar != null && cVar.has(str)) {
            try {
                return Integer.valueOf(cVar.getInt(str));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Boolean c(c cVar, String str) {
        if (cVar != null && cVar.has(str)) {
            try {
                return Boolean.valueOf(cVar.getBoolean(str));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Float d(c cVar, String str) {
        if (cVar != null && cVar.has(str)) {
            try {
                return Float.valueOf((float) cVar.getDouble(str));
            } catch (b unused) {
            }
        }
        return null;
    }

    public static org.a.a a(mn[] mnVarArr) {
        org.a.a aVar = new org.a.a();
        if (mnVarArr != null) {
            for (mn mnVar : mnVarArr) {
                try {
                    c cVar = new c();
                    cVar.putOpt("cell_id", mnVar.e());
                    cVar.putOpt("signal_strength", mnVar.a());
                    cVar.putOpt("lac", mnVar.d());
                    cVar.putOpt("country_code", mnVar.b());
                    cVar.putOpt("operator_id", mnVar.c());
                    cVar.putOpt("operator_name", mnVar.f());
                    cVar.putOpt("is_connected", Boolean.valueOf(mnVar.h()));
                    cVar.putOpt("cell_type", Integer.valueOf(mnVar.i()));
                    cVar.putOpt("pci", mnVar.j());
                    aVar.put((Object) cVar);
                } catch (b unused) {
                }
            }
        }
        return aVar;
    }
}
