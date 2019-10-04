package com.raizlabs.android.dbflow.sql.language;

import android.content.ContentValues;
import com.raizlabs.android.dbflow.annotation.ConflictAction;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class q<TModel> extends d<TModel> implements b {

    /* renamed from: a  reason: collision with root package name */
    private a[] f5178a;

    /* renamed from: b  reason: collision with root package name */
    private List<Collection<Object>> f5179b;
    private ConflictAction c = ConflictAction.NONE;
    private l<?> d;

    public q(Class<TModel> cls) {
        super(cls);
    }

    public final q<TModel> columns(String... strArr) {
        this.f5178a = new a[strArr.length];
        f modelAdapter = FlowManager.getModelAdapter(getTable());
        for (int i = 0; i < strArr.length; i++) {
            this.f5178a[i] = modelAdapter.getProperty(strArr[i]);
        }
        return this;
    }

    public final q<TModel> columns(a... aVarArr) {
        this.f5178a = new a[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            this.f5178a[i] = aVarArr[i];
        }
        return this;
    }

    public final q<TModel> columns(List<a> list) {
        return columns((a[]) list.toArray(new a[list.size()]));
    }

    public final q<TModel> asColumns() {
        columns(FlowManager.getModelAdapter(getTable()).getAllColumnProperties());
        return this;
    }

    public final q<TModel> asColumnValues() {
        asColumns();
        if (this.f5178a != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.f5178a.length; i++) {
                arrayList.add("?");
            }
            this.f5179b.add(arrayList);
        }
        return this;
    }

    public final q<TModel> values(Object... objArr) {
        if (this.f5179b == null) {
            this.f5179b = new ArrayList();
        }
        this.f5179b.add(Arrays.asList(objArr));
        return this;
    }

    public final q<TModel> values(Collection<Object> collection) {
        if (this.f5179b == null) {
            this.f5179b = new ArrayList();
        }
        this.f5179b.add(collection);
        return this;
    }

    public final q<TModel> columnValues(w... wVarArr) {
        String[] strArr = new String[wVarArr.length];
        Object[] objArr = new Object[wVarArr.length];
        for (int i = 0; i < wVarArr.length; i++) {
            w wVar = wVarArr[i];
            strArr[i] = wVar.columnName();
            objArr[i] = wVar.value();
        }
        return columns(strArr).values(objArr);
    }

    public final q<TModel> columnValues(u uVar) {
        int size = uVar.size();
        String[] strArr = new String[size];
        Object[] objArr = new Object[size];
        for (int i = 0; i < size; i++) {
            w wVar = uVar.getConditions().get(i);
            strArr[i] = wVar.columnName();
            objArr[i] = wVar.value();
        }
        return columns(strArr).values(objArr);
    }

    public final q<TModel> columnValues(ContentValues contentValues) {
        Set<Map.Entry<String, Object>> valueSet = contentValues.valueSet();
        String[] strArr = new String[contentValues.size()];
        Object[] objArr = new Object[contentValues.size()];
        int i = 0;
        for (Map.Entry<String, Object> key : valueSet) {
            String str = (String) key.getKey();
            strArr[i] = str;
            objArr[i] = contentValues.get(str);
            i++;
        }
        return columns(strArr).values(objArr);
    }

    public final q<TModel> select(l<?> lVar) {
        this.d = lVar;
        return this;
    }

    public final q<TModel> or(ConflictAction conflictAction) {
        this.c = conflictAction;
        return this;
    }

    public final q<TModel> orReplace() {
        return or(ConflictAction.REPLACE);
    }

    public final q<TModel> orRollback() {
        return or(ConflictAction.ROLLBACK);
    }

    public final q<TModel> orAbort() {
        return or(ConflictAction.ABORT);
    }

    public final q<TModel> orFail() {
        return or(ConflictAction.FAIL);
    }

    public final q<TModel> orIgnore() {
        return or(ConflictAction.IGNORE);
    }

    public final long executeUpdateDelete(i iVar) {
        throw new IllegalStateException("Cannot call executeUpdateDelete() from an Insert");
    }

    public final long executeUpdateDelete() {
        throw new IllegalStateException("Cannot call executeUpdateDelete() from an Insert");
    }

    public final String getQuery() {
        c cVar = new c("INSERT ");
        ConflictAction conflictAction = this.c;
        if (conflictAction != null && !conflictAction.equals(ConflictAction.NONE)) {
            cVar.append("OR").appendSpaceSeparated(this.c);
        }
        cVar.append("INTO").appendSpace().append(FlowManager.getTableName(getTable()));
        if (this.f5178a != null) {
            cVar.append("(").appendArray((Object[]) this.f5178a).append(")");
        }
        if (this.d != null) {
            cVar.appendSpace().append(this.d.getQuery());
        } else {
            List<Collection<Object>> list = this.f5179b;
            if (list == null || list.size() <= 0) {
                throw new IllegalStateException("The insert of " + FlowManager.getTableName(getTable()) + " should haveat least one value specified for the insert");
            }
            if (this.f5178a != null) {
                for (Collection<Object> size : this.f5179b) {
                    if (size.size() != this.f5178a.length) {
                        throw new IllegalStateException("The Insert of " + FlowManager.getTableName(getTable()) + " when specifyingcolumns needs to have the same amount of values and columns");
                    }
                }
            }
            cVar.append(" VALUES(");
            for (int i = 0; i < this.f5179b.size(); i++) {
                if (i > 0) {
                    cVar.append(",(");
                }
                cVar.append(c.joinArguments((CharSequence) ", ", (Iterable) this.f5179b.get(i))).append(")");
            }
        }
        return cVar.getQuery();
    }

    public final BaseModel.Action getPrimaryAction() {
        return BaseModel.Action.INSERT;
    }
}
