package com.raizlabs.android.dbflow.config;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Class<? extends d>> f4909a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, b> f4910b;
    private final Context c;
    private final boolean d;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Context f4911a;

        /* renamed from: b  reason: collision with root package name */
        Set<Class<? extends d>> f4912b = new HashSet();
        final Map<Class<?>, b> c = new HashMap();
        boolean d;

        public a(Context context) {
            this.f4911a = context.getApplicationContext();
        }

        public final a addDatabaseHolder(Class<? extends d> cls) {
            this.f4912b.add(cls);
            return this;
        }

        public final a addDatabaseConfig(b bVar) {
            this.c.put(bVar.databaseClass(), bVar);
            return this;
        }

        public final a openDatabasesOnInit(boolean z) {
            this.d = z;
            return this;
        }

        public final e build() {
            return new e(this);
        }
    }

    public static a builder(Context context) {
        return new a(context);
    }

    e(a aVar) {
        this.f4909a = Collections.unmodifiableSet(aVar.f4912b);
        this.f4910b = aVar.c;
        this.c = aVar.f4911a;
        this.d = aVar.d;
    }

    public final Set<Class<? extends d>> databaseHolders() {
        return this.f4909a;
    }

    public final Map<Class<?>, b> databaseConfigMap() {
        return this.f4910b;
    }

    public final b getConfigForDatabase(Class<?> cls) {
        return databaseConfigMap().get(cls);
    }

    public final Context getContext() {
        return this.c;
    }

    public final boolean openDatabasesOnInit() {
        return this.d;
    }
}
