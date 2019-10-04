package com.raizlabs.android.dbflow.config;

import com.raizlabs.android.dbflow.d.e;
import com.raizlabs.android.dbflow.structure.b.f;
import com.raizlabs.android.dbflow.structure.b.l;
import java.util.HashMap;
import java.util.Map;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final C0102b f5110a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<?> f5111b;
    private final c c;
    private final f d;
    private final Map<Class<?>, g> e;
    private final e f;
    private final boolean g;
    private final String h;
    private final String i;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        C0102b f5112a;

        /* renamed from: b  reason: collision with root package name */
        final Class<?> f5113b;
        c c;
        f d;
        final Map<Class<?>, g> e = new HashMap();
        e f;
        boolean g = false;
        String h;
        String i;

        public a(Class<?> cls) {
            this.f5113b = cls;
        }

        public final a transactionManagerCreator(c cVar) {
            this.c = cVar;
            return this;
        }

        public final a helperListener(f fVar) {
            this.d = fVar;
            return this;
        }

        public final a addTableConfig(g<?> gVar) {
            this.e.put(gVar.tableClass(), gVar);
            return this;
        }

        public final a modelNotifier(e eVar) {
            this.f = eVar;
            return this;
        }

        public final a inMemory() {
            this.g = true;
            return this;
        }

        public final a databaseName(String str) {
            this.h = str;
            return this;
        }

        public final a extensionName(String str) {
            this.i = str;
            return this;
        }

        public final a openHelper(C0102b bVar) {
            this.f5112a = bVar;
            return this;
        }

        public final b build() {
            return new b(this);
        }
    }

    /* renamed from: com.raizlabs.android.dbflow.config.b$b  reason: collision with other inner class name */
    public interface C0102b {
        l createHelper(c cVar, f fVar);
    }

    public interface c {
        com.raizlabs.android.dbflow.d.a createManager(c cVar);
    }

    public static a builder(Class<?> cls) {
        return new a(cls);
    }

    public static a inMemoryBuilder(Class<?> cls) {
        return new a(cls).inMemory();
    }

    b(a aVar) {
        String str;
        this.f5110a = aVar.f5112a;
        this.f5111b = aVar.f5113b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        if (aVar.h == null) {
            this.h = aVar.f5113b.getSimpleName();
        } else {
            this.h = aVar.h;
        }
        if (aVar.i == null) {
            str = ".db";
        } else if (com.raizlabs.android.dbflow.a.isNotNullOrEmpty(aVar.i)) {
            str = "." + aVar.i;
        } else {
            str = "";
        }
        this.i = str;
    }

    public final String getDatabaseExtensionName() {
        return this.i;
    }

    public final boolean isInMemory() {
        return this.g;
    }

    public final String getDatabaseName() {
        return this.h;
    }

    public final C0102b helperCreator() {
        return this.f5110a;
    }

    public final f helperListener() {
        return this.d;
    }

    public final Class<?> databaseClass() {
        return this.f5111b;
    }

    public final c transactionManagerCreator() {
        return this.c;
    }

    public final e modelNotifier() {
        return this.f;
    }

    public final Map<Class<?>, g> tableConfigMap() {
        return this.e;
    }

    public final <TModel> g<TModel> getTableConfigForTable(Class<TModel> cls) {
        return tableConfigMap().get(cls);
    }
}
