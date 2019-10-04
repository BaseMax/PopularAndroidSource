package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.a.c;

public final class x {
    public static y select(a... aVarArr) {
        return new y(aVarArr);
    }

    public static y selectCountOf(a... aVarArr) {
        return new y(r.count(aVarArr));
    }

    public static <TModel> ac<TModel> update(Class<TModel> cls) {
        return new ac<>(cls);
    }

    public static <TModel> q<TModel> insert(Class<TModel> cls) {
        return new q<>(cls);
    }

    public static j delete() {
        return new j();
    }

    public static <TModel> l<TModel> delete(Class<TModel> cls) {
        return delete().from(cls);
    }

    public static <TModel> o<TModel> index(String str) {
        return new o<>(str);
    }

    public static aa createTrigger(String str) {
        return aa.create(str);
    }

    public static <TReturn> g<TReturn> caseWhen(w wVar) {
        return new f().when(wVar);
    }

    public static <TReturn> f<TReturn> _case(c<TReturn> cVar) {
        return new f<>(cVar);
    }

    public static <TReturn> f<TReturn> _case(a aVar) {
        return new f<>(aVar);
    }
}
