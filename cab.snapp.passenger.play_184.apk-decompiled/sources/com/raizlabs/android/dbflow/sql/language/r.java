package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.SQLiteType;
import com.raizlabs.android.dbflow.sql.language.a.c;
import com.raizlabs.android.dbflow.sql.language.a.d;
import java.util.ArrayList;
import java.util.List;

public final class r extends c {
    private final List<com.raizlabs.android.dbflow.sql.language.a.a> c;
    private List<String> d;
    private final com.raizlabs.android.dbflow.sql.language.a.a e;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final com.raizlabs.android.dbflow.sql.language.a.a f5180a;

        /* synthetic */ a(com.raizlabs.android.dbflow.sql.language.a.a aVar, byte b2) {
            this(aVar);
        }

        private a(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
            this.f5180a = aVar;
        }

        public final com.raizlabs.android.dbflow.sql.language.a.a as(SQLiteType sQLiteType) {
            return new r("CAST", new c(this.f5180a.getTable(), this.f5180a.getNameAlias().newBuilder().shouldAddIdentifierToAliasName(false).as(sQLiteType.name()).build()));
        }
    }

    public static r avg(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        return new r("AVG", aVarArr);
    }

    public static r count(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        return new r("COUNT", aVarArr);
    }

    public static r group_concat(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        return new r("GROUP_CONCAT", aVarArr);
    }

    public static r max(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        return new r("MAX", aVarArr);
    }

    public static r min(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        return new r("MIN", aVarArr);
    }

    public static r sum(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        return new r("SUM", aVarArr);
    }

    public static r total(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        return new r("TOTAL", aVarArr);
    }

    public static a cast(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
        return new a(aVar, (byte) 0);
    }

    public static r replace(com.raizlabs.android.dbflow.sql.language.a.a aVar, String str, String str2) {
        return new r("REPLACE", aVar, d.from(str), d.from(str2));
    }

    public static r strftime(String str, String str2, String... strArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(d.from(str));
        arrayList.add(d.from(str2));
        for (String from : strArr) {
            arrayList.add(d.from(from));
        }
        return new r("strftime", (com.raizlabs.android.dbflow.sql.language.a.a[]) arrayList.toArray(new com.raizlabs.android.dbflow.sql.language.a.a[arrayList.size()]));
    }

    public static r datetime(long j, String... strArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(d.from(j));
        for (String from : strArr) {
            arrayList.add(d.from(from));
        }
        return new r("datetime", (com.raizlabs.android.dbflow.sql.language.a.a[]) arrayList.toArray(new com.raizlabs.android.dbflow.sql.language.a.a[arrayList.size()]));
    }

    public static r date(String str, String... strArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(d.from(str));
        for (String from : strArr) {
            arrayList.add(d.from(from));
        }
        return new r("date", (com.raizlabs.android.dbflow.sql.language.a.a[]) arrayList.toArray(new com.raizlabs.android.dbflow.sql.language.a.a[arrayList.size()]));
    }

    public static r ifNull(com.raizlabs.android.dbflow.sql.language.a.a aVar, com.raizlabs.android.dbflow.sql.language.a.a aVar2) {
        return new r("IFNULL", aVar, aVar2);
    }

    public static r nullIf(com.raizlabs.android.dbflow.sql.language.a.a aVar, com.raizlabs.android.dbflow.sql.language.a.a aVar2) {
        return new r("NULLIF", aVar, aVar2);
    }

    public r(com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        this(null, aVarArr);
    }

    public r(String str, com.raizlabs.android.dbflow.sql.language.a.a... aVarArr) {
        super((Class<?>) null, (String) null);
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = new c((Class<?>) null, s.rawBuilder(str).build());
        if (aVarArr.length == 0) {
            this.c.add(c.ALL_PROPERTY);
            return;
        }
        for (com.raizlabs.android.dbflow.sql.language.a.a addProperty : aVarArr) {
            addProperty(addProperty);
        }
    }

    public final r plus(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
        return append(aVar, " +");
    }

    public final r minus(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
        return append(aVar, " -");
    }

    public final c div(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
        return append(aVar, " /");
    }

    public final c times(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
        return append(aVar, " *");
    }

    public final c rem(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
        return append(aVar, " %");
    }

    public final r addProperty(com.raizlabs.android.dbflow.sql.language.a.a aVar) {
        return append(aVar, ",");
    }

    public final r append(com.raizlabs.android.dbflow.sql.language.a.a aVar, String str) {
        if (this.c.size() == 1 && this.c.get(0) == c.ALL_PROPERTY) {
            this.c.remove(0);
        }
        this.c.add(aVar);
        this.d.add(str);
        return this;
    }

    public final s getNameAlias() {
        if (this.f5149b == null) {
            String query = this.e.getQuery();
            if (query == null) {
                query = "";
            }
            String str = query + "(";
            List<com.raizlabs.android.dbflow.sql.language.a.a> list = this.c;
            for (int i = 0; i < list.size(); i++) {
                com.raizlabs.android.dbflow.sql.language.a.a aVar = list.get(i);
                if (i > 0) {
                    str = str + this.d.get(i) + " ";
                }
                str = str + aVar.toString();
            }
            this.f5149b = s.rawBuilder(str + ")").build();
        }
        return this.f5149b;
    }
}
