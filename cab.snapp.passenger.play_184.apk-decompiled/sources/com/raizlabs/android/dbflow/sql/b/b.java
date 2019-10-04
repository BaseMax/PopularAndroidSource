package com.raizlabs.android.dbflow.sql.b;

import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;
import java.util.ArrayList;
import java.util.List;

public final class b<TModel> extends c<TModel, List<TModel>> {
    public b(Class<TModel> cls) {
        super(cls);
    }

    public final List<TModel> load(String str) {
        return (List) super.load(str);
    }

    public final List<TModel> load(String str, List<TModel> list) {
        return (List) super.load(str, list);
    }

    public final List<TModel> load(i iVar, String str) {
        return (List) super.load(iVar, str);
    }

    public final List<TModel> load(i iVar, String str, List<TModel> list) {
        return (List) super.load(iVar, str, list);
    }

    public final List<TModel> load(j jVar) {
        return (List) super.load(jVar);
    }

    public final List<TModel> load(j jVar, List<TModel> list) {
        if (list == null) {
            list = new ArrayList<>();
        } else {
            list.clear();
        }
        return (List) super.load(jVar, list);
    }

    public final List<TModel> convertToData(j jVar, List<TModel> list) {
        if (list == null) {
            list = new ArrayList<>();
        } else {
            list.clear();
        }
        if (jVar.moveToFirst()) {
            do {
                Object newInstance = getInstanceAdapter().newInstance();
                getInstanceAdapter().loadFromCursor(jVar, newInstance);
                list.add(newInstance);
            } while (jVar.moveToNext());
        }
        return list;
    }
}
