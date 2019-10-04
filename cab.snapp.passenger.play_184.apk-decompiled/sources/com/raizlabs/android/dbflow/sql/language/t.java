package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.a.h;
import com.raizlabs.android.dbflow.annotation.Collate;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.paho.a.a.w;

public final class t<T> extends c implements n<T> {
    private h g;
    private boolean h;

    public static class a<T> extends c implements com.raizlabs.android.dbflow.sql.b {
        private T g;

        /* synthetic */ a(t tVar, Object obj, byte b2) {
            this(tVar, obj);
        }

        private a(t<T> tVar, T t) {
            super(tVar.c);
            this.f5160a = String.format(" %1s ", new Object[]{"BETWEEN"});
            this.f5161b = t;
            this.f = true;
            this.d = tVar.postArgument();
        }

        public final a<T> and(T t) {
            this.g = t;
            return this;
        }

        public final T secondValue() {
            return this.g;
        }

        public final void appendConditionToQuery(c cVar) {
            cVar.append(columnName()).append(operation()).append(convertObjectToString(value(), true)).appendSpaceSeparated("AND").append(convertObjectToString(secondValue(), true)).appendSpace().appendOptional(postArgument());
        }

        public final String getQuery() {
            c cVar = new c();
            appendConditionToQuery(cVar);
            return cVar.getQuery();
        }
    }

    public static class b<T> extends c implements com.raizlabs.android.dbflow.sql.b {
        private List<T> g;

        /* synthetic */ b(t tVar, Object obj, boolean z, Object[] objArr, byte b2) {
            this(tVar, obj, z, (T[]) objArr);
        }

        /* synthetic */ b(t tVar, Collection collection, boolean z, byte b2) {
            this(tVar, collection, z);
        }

        @SafeVarargs
        private b(t<T> tVar, T t, boolean z, T... tArr) {
            super(tVar.a());
            this.g = new ArrayList();
            this.g.add(t);
            Collections.addAll(this.g, tArr);
            Object[] objArr = new Object[1];
            objArr[0] = z ? "IN" : "NOT IN";
            this.f5160a = String.format(" %1s ", objArr);
        }

        private b(t<T> tVar, Collection<T> collection, boolean z) {
            super(tVar.a());
            this.g = new ArrayList();
            this.g.addAll(collection);
            Object[] objArr = new Object[1];
            objArr[0] = z ? "IN" : "NOT IN";
            this.f5160a = String.format(" %1s ", objArr);
        }

        public final b<T> and(T t) {
            this.g.add(t);
            return this;
        }

        public final void appendConditionToQuery(c cVar) {
            cVar.append(columnName()).append(operation()).append("(").append(u.joinArguments(",", this.g, this)).append(")");
        }

        public final String getQuery() {
            c cVar = new c();
            appendConditionToQuery(cVar);
            return cVar.getQuery();
        }
    }

    public static String convertValueToString(Object obj) {
        return c.convertValueToString(obj, false);
    }

    public static <T> t<T> op(s sVar) {
        return new t<>(sVar);
    }

    public static <T> t<T> op(s sVar, h hVar, boolean z) {
        return new t<>(sVar, hVar, z);
    }

    private t(s sVar) {
        super(sVar);
    }

    private t(s sVar, h hVar, boolean z) {
        super(sVar);
        this.g = hVar;
        this.h = z;
    }

    public final void appendConditionToQuery(c cVar) {
        cVar.append(columnName()).append(operation());
        if (this.f) {
            cVar.append(convertObjectToString(value(), true));
        }
        if (postArgument() != null) {
            cVar.appendSpace().append(postArgument());
        }
    }

    public final t<T> is(T t) {
        this.f5160a = "=";
        return value(t);
    }

    public final t<T> eq(T t) {
        return is(t);
    }

    public final t<T> isNot(T t) {
        this.f5160a = "!=";
        return value(t);
    }

    public final t<T> notEq(T t) {
        return isNot(t);
    }

    public final t<T> like(String str) {
        this.f5160a = String.format(" %1s ", new Object[]{"LIKE"});
        return value(str);
    }

    public final t<T> notLike(String str) {
        this.f5160a = String.format(" %1s ", new Object[]{"NOT LIKE"});
        return value(str);
    }

    public final t<T> glob(String str) {
        this.f5160a = String.format(" %1s ", new Object[]{"GLOB"});
        return value(str);
    }

    public final t<T> value(Object obj) {
        this.f5161b = obj;
        this.f = true;
        return this;
    }

    public final t<T> greaterThan(T t) {
        this.f5160a = ">";
        return value(t);
    }

    public final t<T> greaterThanOrEq(T t) {
        this.f5160a = ">=";
        return value(t);
    }

    public final t<T> lessThan(T t) {
        this.f5160a = "<";
        return value(t);
    }

    public final t<T> lessThanOrEq(T t) {
        this.f5160a = "<=";
        return value(t);
    }

    public final t<T> plus(T t) {
        return a(t, w.SINGLE_LEVEL_WILDCARD);
    }

    public final t<T> minus(T t) {
        return a(t, "-");
    }

    public final t<T> div(T t) {
        return a(t, w.TOPIC_LEVEL_SEPARATOR);
    }

    public final t<T> times(T t) {
        return a(t, "*");
    }

    public final t<T> rem(T t) {
        return a(t, "%");
    }

    public final t<T> operation(String str) {
        this.f5160a = str;
        return this;
    }

    public final t<T> collate(String str) {
        this.d = "COLLATE ".concat(String.valueOf(str));
        return this;
    }

    public final t<T> collate(Collate collate) {
        if (collate.equals(Collate.NONE)) {
            this.d = null;
        } else {
            collate(collate.name());
        }
        return this;
    }

    public final t<T> postfix(String str) {
        this.d = str;
        return this;
    }

    public final t<T> isNull() {
        this.f5160a = String.format(" %1s ", new Object[]{"IS NULL"});
        return this;
    }

    public final t<T> isNotNull() {
        this.f5160a = String.format(" %1s ", new Object[]{"IS NOT NULL"});
        return this;
    }

    public final t<T> separator(String str) {
        this.e = str;
        return this;
    }

    public final t is(m mVar) {
        return a(mVar, "=");
    }

    public final t eq(m mVar) {
        return a(mVar, "=");
    }

    public final t isNot(m mVar) {
        return a(mVar, "!=");
    }

    public final t notEq(m mVar) {
        return a(mVar, "!=");
    }

    public final t<T> like(m mVar) {
        return like(mVar.getQuery());
    }

    public final t<T> glob(m mVar) {
        return glob(mVar.getQuery());
    }

    public final t<T> greaterThan(m mVar) {
        return a(mVar, ">");
    }

    public final t<T> greaterThanOrEq(m mVar) {
        return a(mVar, ">=");
    }

    public final t<T> lessThan(m mVar) {
        return a(mVar, "<");
    }

    public final t<T> lessThanOrEq(m mVar) {
        return a(mVar, "<=");
    }

    public final a between(m mVar) {
        return new a(this, mVar, (byte) 0);
    }

    public final b in(m mVar, m... mVarArr) {
        b bVar = new b(this, mVar, true, mVarArr, (byte) 0);
        return bVar;
    }

    public final b notIn(m mVar, m... mVarArr) {
        b bVar = new b(this, mVar, false, mVarArr, (byte) 0);
        return bVar;
    }

    public final b notIn(b bVar, b[] bVarArr) {
        b bVar2 = new b(this, bVar, false, (Object[]) bVarArr, (byte) 0);
        return bVar2;
    }

    public final t is(b bVar) {
        return a(bVar, "=");
    }

    public final t eq(b bVar) {
        return a(bVar, "=");
    }

    public final t isNot(b bVar) {
        return a(bVar, "!=");
    }

    public final t notEq(b bVar) {
        return a(bVar, "!=");
    }

    public final t<T> like(b bVar) {
        return a(bVar, "LIKE");
    }

    public final t notLike(m mVar) {
        return a(mVar, "NOT LIKE");
    }

    public final t notLike(b bVar) {
        return a(bVar, "NOT LIKE");
    }

    public final t<T> glob(b bVar) {
        return a(bVar, "GLOB");
    }

    public final t<T> greaterThan(b bVar) {
        return a(bVar, ">");
    }

    public final t<T> greaterThanOrEq(b bVar) {
        return a(bVar, ">=");
    }

    public final t<T> lessThan(b bVar) {
        return a(bVar, "<");
    }

    public final t<T> lessThanOrEq(b bVar) {
        return a(bVar, "<=");
    }

    public final t plus(m mVar) {
        return a(mVar, w.SINGLE_LEVEL_WILDCARD);
    }

    public final t minus(m mVar) {
        return a(mVar, "-");
    }

    public final t div(m mVar) {
        return a(mVar, w.TOPIC_LEVEL_SEPARATOR);
    }

    public final t times(m mVar) {
        return a(mVar, "*");
    }

    public final t rem(m mVar) {
        return a(mVar, "%");
    }

    public final t plus(b bVar) {
        return a(bVar, w.SINGLE_LEVEL_WILDCARD);
    }

    public final t minus(b bVar) {
        return a(bVar, "-");
    }

    public final t div(b bVar) {
        return a(bVar, w.TOPIC_LEVEL_SEPARATOR);
    }

    public final t times(b bVar) {
        return a(bVar, "*");
    }

    public final t rem(b bVar) {
        return a(bVar, "%");
    }

    public final a between(b bVar) {
        return new a(this, bVar, (byte) 0);
    }

    public final b in(b bVar, b... bVarArr) {
        b bVar2 = new b(this, bVar, true, bVarArr, (byte) 0);
        return bVar2;
    }

    public final String getQuery() {
        c cVar = new c();
        appendConditionToQuery(cVar);
        return cVar.getQuery();
    }

    public final t<T> concatenate(Object obj) {
        Object obj2;
        this.f5160a = new c("=").append(columnName()).toString();
        h hVar = this.g;
        if (hVar == null && obj != null) {
            hVar = FlowManager.getTypeConverterForClass(obj.getClass());
        }
        if (hVar != null && this.h) {
            obj = hVar.getDBValue(obj);
        }
        if ((obj instanceof String) || (obj instanceof n) || (obj instanceof Character)) {
            this.f5160a = String.format("%1s %1s ", new Object[]{this.f5160a, "||"});
        } else if (obj instanceof Number) {
            this.f5160a = String.format("%1s %1s ", new Object[]{this.f5160a, w.SINGLE_LEVEL_WILDCARD});
        } else {
            Object[] objArr = new Object[1];
            if (obj != null) {
                obj2 = obj.getClass();
            } else {
                obj2 = "null";
            }
            objArr[0] = obj2;
            throw new IllegalArgumentException(String.format("Cannot concatenate the %1s", objArr));
        }
        this.f5161b = obj;
        this.f = true;
        return this;
    }

    public final t<T> concatenate(m mVar) {
        return concatenate((Object) mVar);
    }

    public final a<T> between(T t) {
        return new a<>(this, t, (byte) 0);
    }

    @SafeVarargs
    public final b<T> in(T t, T... tArr) {
        b bVar = new b(this, t, true, tArr, (byte) 0);
        return bVar;
    }

    @SafeVarargs
    public final b<T> notIn(T t, T... tArr) {
        b bVar = new b(this, t, false, tArr, (byte) 0);
        return bVar;
    }

    public final b<T> in(Collection<T> collection) {
        return new b<>(this, (Collection) collection, true, (byte) 0);
    }

    public final b<T> notIn(Collection<T> collection) {
        return new b<>(this, (Collection) collection, false, (byte) 0);
    }

    public final String convertObjectToString(Object obj, boolean z) {
        h hVar = this.g;
        if (hVar == null) {
            return super.convertObjectToString(obj, z);
        }
        try {
            if (this.h) {
                obj = hVar.getDBValue(obj);
            }
        } catch (ClassCastException e) {
            FlowLog.log(FlowLog.Level.W, (Throwable) e);
        }
        return c.convertValueToString(obj, z, false);
    }

    private t<T> a(Object obj, String str) {
        this.f5160a = str;
        return value(obj);
    }
}
