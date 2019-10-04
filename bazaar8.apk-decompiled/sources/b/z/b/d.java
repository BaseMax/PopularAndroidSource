package b.z.b;

import android.database.Cursor;
import android.os.Build;
import com.crashlytics.android.answers.SessionEventTransform;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* compiled from: TableInfo */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f3588a;

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, a> f3589b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<b> f3590c;

    /* renamed from: d  reason: collision with root package name */
    public final Set<C0048d> f3591d;

    /* compiled from: TableInfo */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f3592a;

        /* renamed from: b  reason: collision with root package name */
        public final String f3593b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3594c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f3595d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3596e;

        public a(String str, String str2, boolean z, int i2) {
            this.f3592a = str;
            this.f3593b = str2;
            this.f3595d = z;
            this.f3596e = i2;
            this.f3594c = a(str2);
        }

        public static int a(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f3596e != aVar.f3596e) {
                    return false;
                }
            } else if (a() != aVar.a()) {
                return false;
            }
            if (!this.f3592a.equals(aVar.f3592a) || this.f3595d != aVar.f3595d) {
                return false;
            }
            if (this.f3594c != aVar.f3594c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f3592a.hashCode() * 31) + this.f3594c) * 31) + (this.f3595d ? 1231 : 1237)) * 31) + this.f3596e;
        }

        public String toString() {
            return "Column{name='" + this.f3592a + '\'' + ", type='" + this.f3593b + '\'' + ", affinity='" + this.f3594c + '\'' + ", notNull=" + this.f3595d + ", primaryKeyPosition=" + this.f3596e + '}';
        }

        public boolean a() {
            return this.f3596e > 0;
        }
    }

    /* compiled from: TableInfo */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f3597a;

        /* renamed from: b  reason: collision with root package name */
        public final String f3598b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3599c;

        /* renamed from: d  reason: collision with root package name */
        public final List<String> f3600d;

        /* renamed from: e  reason: collision with root package name */
        public final List<String> f3601e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f3597a = str;
            this.f3598b = str2;
            this.f3599c = str3;
            this.f3600d = Collections.unmodifiableList(list);
            this.f3601e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f3597a.equals(bVar.f3597a) && this.f3598b.equals(bVar.f3598b) && this.f3599c.equals(bVar.f3599c) && this.f3600d.equals(bVar.f3600d)) {
                return this.f3601e.equals(bVar.f3601e);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f3597a.hashCode() * 31) + this.f3598b.hashCode()) * 31) + this.f3599c.hashCode()) * 31) + this.f3600d.hashCode()) * 31) + this.f3601e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f3597a + '\'' + ", onDelete='" + this.f3598b + '\'' + ", onUpdate='" + this.f3599c + '\'' + ", columnNames=" + this.f3600d + ", referenceColumnNames=" + this.f3601e + '}';
        }
    }

    /* compiled from: TableInfo */
    static class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        public final int f3602a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3603b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3604c;

        /* renamed from: d  reason: collision with root package name */
        public final String f3605d;

        public c(int i2, int i3, String str, String str2) {
            this.f3602a = i2;
            this.f3603b = i3;
            this.f3604c = str;
            this.f3605d = str2;
        }

        /* renamed from: a */
        public int compareTo(c cVar) {
            int i2 = this.f3602a - cVar.f3602a;
            return i2 == 0 ? this.f3603b - cVar.f3603b : i2;
        }
    }

    /* renamed from: b.z.b.d$d  reason: collision with other inner class name */
    /* compiled from: TableInfo */
    public static class C0048d {

        /* renamed from: a  reason: collision with root package name */
        public final String f3606a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3607b;

        /* renamed from: c  reason: collision with root package name */
        public final List<String> f3608c;

        public C0048d(String str, boolean z, List<String> list) {
            this.f3606a = str;
            this.f3607b = z;
            this.f3608c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0048d.class != obj.getClass()) {
                return false;
            }
            C0048d dVar = (C0048d) obj;
            if (this.f3607b != dVar.f3607b || !this.f3608c.equals(dVar.f3608c)) {
                return false;
            }
            if (this.f3606a.startsWith("index_")) {
                return dVar.f3606a.startsWith("index_");
            }
            return this.f3606a.equals(dVar.f3606a);
        }

        public int hashCode() {
            int i2;
            if (this.f3606a.startsWith("index_")) {
                i2 = "index_".hashCode();
            } else {
                i2 = this.f3606a.hashCode();
            }
            return (((i2 * 31) + (this.f3607b ? 1 : 0)) * 31) + this.f3608c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f3606a + '\'' + ", unique=" + this.f3607b + ", columns=" + this.f3608c + '}';
        }
    }

    public d(String str, Map<String, a> map, Set<b> set, Set<C0048d> set2) {
        Set<C0048d> set3;
        this.f3588a = str;
        this.f3589b = Collections.unmodifiableMap(map);
        this.f3590c = Collections.unmodifiableSet(set);
        if (set2 == null) {
            set3 = null;
        } else {
            set3 = Collections.unmodifiableSet(set2);
        }
        this.f3591d = set3;
    }

    public static d a(b.C.a.b bVar, String str) {
        return new d(str, b(bVar, str), c(bVar, str), d(bVar, str));
    }

    public static Map<String, a> b(b.C.a.b bVar, String str) {
        Cursor d2 = bVar.d("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (d2.getColumnCount() > 0) {
                int columnIndex = d2.getColumnIndex(DefaultAppMeasurementEventListenerRegistrar.NAME);
                int columnIndex2 = d2.getColumnIndex(SessionEventTransform.TYPE_KEY);
                int columnIndex3 = d2.getColumnIndex("notnull");
                int columnIndex4 = d2.getColumnIndex("pk");
                while (d2.moveToNext()) {
                    String string = d2.getString(columnIndex);
                    hashMap.put(string, new a(string, d2.getString(columnIndex2), d2.getInt(columnIndex3) != 0, d2.getInt(columnIndex4)));
                }
            }
            return hashMap;
        } finally {
            d2.close();
        }
    }

    public static Set<b> c(b.C.a.b bVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor d2 = bVar.d("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = d2.getColumnIndex("id");
            int columnIndex2 = d2.getColumnIndex("seq");
            int columnIndex3 = d2.getColumnIndex("table");
            int columnIndex4 = d2.getColumnIndex("on_delete");
            int columnIndex5 = d2.getColumnIndex("on_update");
            List<c> a2 = a(d2);
            int count = d2.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                d2.moveToPosition(i2);
                if (d2.getInt(columnIndex2) == 0) {
                    int i3 = d2.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (c next : a2) {
                        if (next.f3602a == i3) {
                            arrayList.add(next.f3604c);
                            arrayList2.add(next.f3605d);
                        }
                    }
                    b bVar2 = new b(d2.getString(columnIndex3), d2.getString(columnIndex4), d2.getString(columnIndex5), arrayList, arrayList2);
                    hashSet.add(bVar2);
                }
            }
            return hashSet;
        } finally {
            d2.close();
        }
    }

    public static Set<C0048d> d(b.C.a.b bVar, String str) {
        Cursor d2 = bVar.d("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = d2.getColumnIndex(DefaultAppMeasurementEventListenerRegistrar.NAME);
            int columnIndex2 = d2.getColumnIndex("origin");
            int columnIndex3 = d2.getColumnIndex("unique");
            if (!(columnIndex == -1 || columnIndex2 == -1)) {
                if (columnIndex3 != -1) {
                    HashSet hashSet = new HashSet();
                    while (d2.moveToNext()) {
                        if ("c".equals(d2.getString(columnIndex2))) {
                            String string = d2.getString(columnIndex);
                            boolean z = true;
                            if (d2.getInt(columnIndex3) != 1) {
                                z = false;
                            }
                            C0048d a2 = a(bVar, string, z);
                            if (a2 == null) {
                                d2.close();
                                return null;
                            }
                            hashSet.add(a2);
                        }
                    }
                    d2.close();
                    return hashSet;
                }
            }
            return null;
        } finally {
            d2.close();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f3588a;
        if (str == null ? dVar.f3588a != null : !str.equals(dVar.f3588a)) {
            return false;
        }
        Map<String, a> map = this.f3589b;
        if (map == null ? dVar.f3589b != null : !map.equals(dVar.f3589b)) {
            return false;
        }
        Set<b> set = this.f3590c;
        if (set == null ? dVar.f3590c != null : !set.equals(dVar.f3590c)) {
            return false;
        }
        Set<C0048d> set2 = this.f3591d;
        if (set2 != null) {
            Set<C0048d> set3 = dVar.f3591d;
            if (set3 != null) {
                return set2.equals(set3);
            }
        }
        return true;
    }

    public int hashCode() {
        String str = this.f3588a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.f3589b;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.f3590c;
        if (set != null) {
            i2 = set.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "TableInfo{name='" + this.f3588a + '\'' + ", columns=" + this.f3589b + ", foreignKeys=" + this.f3590c + ", indices=" + this.f3591d + '}';
    }

    public static List<c> a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < count; i2++) {
            cursor.moveToPosition(i2);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static C0048d a(b.C.a.b bVar, String str, boolean z) {
        Cursor d2 = bVar.d("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = d2.getColumnIndex("seqno");
            int columnIndex2 = d2.getColumnIndex("cid");
            int columnIndex3 = d2.getColumnIndex(DefaultAppMeasurementEventListenerRegistrar.NAME);
            if (!(columnIndex == -1 || columnIndex2 == -1)) {
                if (columnIndex3 != -1) {
                    TreeMap treeMap = new TreeMap();
                    while (d2.moveToNext()) {
                        if (d2.getInt(columnIndex2) >= 0) {
                            int i2 = d2.getInt(columnIndex);
                            treeMap.put(Integer.valueOf(i2), d2.getString(columnIndex3));
                        }
                    }
                    ArrayList arrayList = new ArrayList(treeMap.size());
                    arrayList.addAll(treeMap.values());
                    C0048d dVar = new C0048d(str, z, arrayList);
                    d2.close();
                    return dVar;
                }
            }
            return null;
        } finally {
            d2.close();
        }
    }
}
