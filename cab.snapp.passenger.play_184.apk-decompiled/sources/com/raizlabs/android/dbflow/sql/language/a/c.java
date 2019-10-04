package com.raizlabs.android.dbflow.sql.language.a;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.language.b;
import com.raizlabs.android.dbflow.sql.language.m;
import com.raizlabs.android.dbflow.sql.language.n;
import com.raizlabs.android.dbflow.sql.language.s;
import com.raizlabs.android.dbflow.sql.language.t;
import com.raizlabs.android.dbflow.sql.language.v;
import java.util.Collection;
import org.eclipse.paho.a.a.w;

public class c<T> implements a<c<T>>, m, n<T> {
    public static final c<String> ALL_PROPERTY = new c<>((Class<?>) null, s.rawBuilder("*").build());
    public static final c<?> WILDCARD = new c<>((Class<?>) null, s.rawBuilder("?").build());

    /* renamed from: a  reason: collision with root package name */
    final Class<?> f5148a;

    /* renamed from: b  reason: collision with root package name */
    protected s f5149b;

    public static c<String> allProperty(Class<?> cls) {
        return new c(cls, s.rawBuilder("*").build()).withTable();
    }

    public c(Class<?> cls, s sVar) {
        this.f5148a = cls;
        this.f5149b = sVar;
    }

    public c(Class<?> cls, String str) {
        this.f5148a = cls;
        if (str != null) {
            this.f5149b = new s.a(str).build();
        }
    }

    public c(Class<?> cls, String str, String str2) {
        this(cls, s.builder(str).as(str2).build());
    }

    public c<T> withTable() {
        return withTable(new s.a(FlowManager.getTableName(this.f5148a)).build());
    }

    public s getNameAlias() {
        return this.f5149b;
    }

    public String getQuery() {
        return getNameAlias().getQuery();
    }

    public String getCursorKey() {
        return getNameAlias().getQuery();
    }

    public String getDefinition() {
        return getNameAlias().getFullQuery();
    }

    public String toString() {
        return getNameAlias().toString();
    }

    public Class<?> getTable() {
        return this.f5148a;
    }

    public c<T> plus(a aVar) {
        return new c<>(this.f5148a, s.joinNames(w.SINGLE_LEVEL_WILDCARD, this.f5149b.fullName(), aVar.toString()));
    }

    public c<T> minus(a aVar) {
        return new c<>(this.f5148a, s.joinNames("-", this.f5149b.fullName(), aVar.toString()));
    }

    public c<T> div(a aVar) {
        return new c<>(this.f5148a, s.joinNames(w.TOPIC_LEVEL_SEPARATOR, this.f5149b.fullName(), aVar.toString()));
    }

    public c<T> times(a aVar) {
        return new c<>(this.f5148a, s.joinNames("*", this.f5149b.fullName(), aVar.toString()));
    }

    public c<T> rem(a aVar) {
        return new c<>(this.f5148a, s.joinNames("%", this.f5149b.fullName(), aVar.toString()));
    }

    public c<T> concatenate(a aVar) {
        return new c<>(this.f5148a, s.joinNames("||", this.f5149b.fullName(), aVar.toString()));
    }

    public c<T> as(String str) {
        return new c<>(this.f5148a, getNameAlias().newBuilder().as(str).build());
    }

    public c<T> distinct() {
        return new c<>(this.f5148a, getNameAlias().newBuilder().distinct().build());
    }

    public c<T> withTable(s sVar) {
        return new c<>(this.f5148a, getNameAlias().newBuilder().withTable(sVar.getQuery()).build());
    }

    public v asc() {
        return v.fromProperty(this).ascending();
    }

    public v desc() {
        return v.fromProperty(this).descending();
    }

    public t is(m mVar) {
        return t.op(getNameAlias()).is(mVar);
    }

    public t eq(m mVar) {
        return t.op(getNameAlias()).eq(mVar);
    }

    public t isNot(m mVar) {
        return t.op(getNameAlias()).isNot(mVar);
    }

    public t notEq(m mVar) {
        return t.op(getNameAlias()).notEq(mVar);
    }

    public t like(m mVar) {
        return t.op(getNameAlias()).like(mVar);
    }

    public t glob(m mVar) {
        return t.op(getNameAlias()).glob(mVar);
    }

    public t<T> like(String str) {
        return t.op(getNameAlias()).like(str);
    }

    public t<T> notLike(String str) {
        return t.op(getNameAlias()).notLike(str);
    }

    public t<T> glob(String str) {
        return t.op(getNameAlias()).glob(str);
    }

    public t greaterThan(m mVar) {
        return t.op(getNameAlias()).greaterThan(mVar);
    }

    public t greaterThanOrEq(m mVar) {
        return t.op(getNameAlias()).greaterThanOrEq(mVar);
    }

    public t lessThan(m mVar) {
        return t.op(getNameAlias()).lessThan(mVar);
    }

    public t lessThanOrEq(m mVar) {
        return t.op(getNameAlias()).lessThanOrEq(mVar);
    }

    public t.a between(m mVar) {
        return t.op(getNameAlias()).between(mVar);
    }

    public t.b in(m mVar, m... mVarArr) {
        return t.op(getNameAlias()).in(mVar, mVarArr);
    }

    public t.b notIn(m mVar, m... mVarArr) {
        return t.op(getNameAlias()).notIn(mVar, mVarArr);
    }

    public t is(b bVar) {
        return t.op(getNameAlias()).is(bVar);
    }

    public t isNull() {
        return t.op(getNameAlias()).isNull();
    }

    public t eq(b bVar) {
        return t.op(getNameAlias()).eq(bVar);
    }

    public t isNot(b bVar) {
        return t.op(getNameAlias()).isNot(bVar);
    }

    public t isNotNull() {
        return t.op(getNameAlias()).isNotNull();
    }

    public t notEq(b bVar) {
        return t.op(getNameAlias()).notEq(bVar);
    }

    public t like(b bVar) {
        return t.op(getNameAlias()).like(bVar);
    }

    public t notLike(m mVar) {
        return t.op(getNameAlias()).notLike(mVar);
    }

    public t notLike(b bVar) {
        return t.op(getNameAlias()).notLike(bVar);
    }

    public t glob(b bVar) {
        return t.op(getNameAlias()).glob(bVar);
    }

    public t greaterThan(b bVar) {
        return t.op(getNameAlias()).greaterThan(bVar);
    }

    public t greaterThanOrEq(b bVar) {
        return t.op(getNameAlias()).greaterThanOrEq(bVar);
    }

    public t lessThan(b bVar) {
        return t.op(getNameAlias()).lessThan(bVar);
    }

    public t lessThanOrEq(b bVar) {
        return t.op(getNameAlias()).lessThanOrEq(bVar);
    }

    public t.a between(b bVar) {
        return t.op(getNameAlias()).between(bVar);
    }

    public t.b in(b bVar, b... bVarArr) {
        return t.op(getNameAlias()).in(bVar, bVarArr);
    }

    public t.b notIn(b bVar, b... bVarArr) {
        return t.op(getNameAlias()).notIn(bVar, bVarArr);
    }

    public t concatenate(m mVar) {
        return t.op(getNameAlias()).concatenate(mVar);
    }

    public t plus(b bVar) {
        return t.op(getNameAlias()).plus(bVar);
    }

    public t minus(b bVar) {
        return t.op(getNameAlias()).minus(bVar);
    }

    public t div(b bVar) {
        return t.op(getNameAlias()).div(bVar);
    }

    public t times(b bVar) {
        return t.op(getNameAlias()).times(bVar);
    }

    public t rem(b bVar) {
        return t.op(getNameAlias()).rem(bVar);
    }

    public t<T> is(T t) {
        return t.op(getNameAlias()).is(t);
    }

    public t<T> eq(T t) {
        return t.op(getNameAlias()).eq(t);
    }

    public t<T> isNot(T t) {
        return t.op(getNameAlias()).isNot(t);
    }

    public t<T> notEq(T t) {
        return t.op(getNameAlias()).notEq(t);
    }

    public t<T> greaterThan(T t) {
        return t.op(getNameAlias()).greaterThan(t);
    }

    public t<T> greaterThanOrEq(T t) {
        return t.op(getNameAlias()).greaterThanOrEq(t);
    }

    public t<T> lessThan(T t) {
        return t.op(getNameAlias()).lessThan(t);
    }

    public t<T> lessThanOrEq(T t) {
        return t.op(getNameAlias()).lessThanOrEq(t);
    }

    public t.a<T> between(T t) {
        return t.op(getNameAlias()).between(t);
    }

    public t.b<T> in(T t, T... tArr) {
        return t.op(getNameAlias()).in(t, tArr);
    }

    public t.b<T> notIn(T t, T... tArr) {
        return t.op(getNameAlias()).notIn(t, tArr);
    }

    public t.b<T> in(Collection<T> collection) {
        return t.op(getNameAlias()).in(collection);
    }

    public t.b<T> notIn(Collection<T> collection) {
        return t.op(getNameAlias()).notIn(collection);
    }

    public t<T> concatenate(T t) {
        return t.op(getNameAlias()).concatenate((Object) t);
    }

    public t<T> plus(T t) {
        return t.op(getNameAlias()).plus(t);
    }

    public t<T> minus(T t) {
        return t.op(getNameAlias()).minus(t);
    }

    public t<T> div(T t) {
        return t.op(getNameAlias()).div(t);
    }

    public t<T> times(T t) {
        return t.op(getNameAlias()).times(t);
    }

    public t<T> rem(T t) {
        return t.op(getNameAlias()).rem(t);
    }
}
