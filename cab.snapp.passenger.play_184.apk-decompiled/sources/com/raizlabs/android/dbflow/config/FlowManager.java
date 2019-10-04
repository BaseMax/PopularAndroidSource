package com.raizlabs.android.dbflow.config;

import android.content.Context;
import com.raizlabs.android.dbflow.a.h;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.e;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.d;
import com.raizlabs.android.dbflow.structure.f;
import com.raizlabs.android.dbflow.structure.g;
import java.util.HashSet;
import java.util.Map;

public class FlowManager {

    /* renamed from: a  reason: collision with root package name */
    static e f4907a;

    /* renamed from: b  reason: collision with root package name */
    private static GlobalDatabaseHolder f4908b = new GlobalDatabaseHolder();
    private static HashSet<Class<? extends d>> c = new HashSet<>();
    private static final String d = FlowManager.class.getPackage().getName();
    private static final String e = (d + ".GeneratedDatabaseHolder");

    static class GlobalDatabaseHolder extends d {
        private boolean initialized;

        private GlobalDatabaseHolder() {
            this.initialized = false;
        }

        public void add(d dVar) {
            this.databaseDefinitionMap.putAll(dVar.databaseDefinitionMap);
            this.databaseNameMap.putAll(dVar.databaseNameMap);
            this.typeConverters.putAll(dVar.typeConverters);
            this.databaseClassLookupMap.putAll(dVar.databaseClassLookupMap);
            this.initialized = true;
        }

        public boolean isInitialized() {
            return this.initialized;
        }
    }

    public static class a extends RuntimeException {
        public a() {
        }

        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }

        public a(Throwable th) {
            super(th);
        }
    }

    public static String getTableName(Class<?> cls) {
        f<?> b2 = b(cls);
        if (b2 != null) {
            return b2.getTableName();
        }
        g<?> c2 = c(cls);
        if (c2 != null) {
            return c2.getViewName();
        }
        a("ModelAdapter/ModelViewAdapter", cls);
        return null;
    }

    public static Class<?> getTableClassForName(String str, String str2) {
        c database = getDatabase(str);
        Class<?> modelClassForName = database.getModelClassForName(str2);
        if (modelClassForName == null) {
            modelClassForName = database.getModelClassForName(c.quote(str2));
            if (modelClassForName == null) {
                throw new IllegalArgumentException(String.format("The specified table %1s was not found. Did you forget to add the @Table annotation and point it to %1s?", new Object[]{str2, str}));
            }
        }
        return modelClassForName;
    }

    public static Class<?> getTableClassForName(Class<?> cls, String str) {
        c database = getDatabase(cls);
        Class<?> modelClassForName = database.getModelClassForName(str);
        if (modelClassForName == null) {
            modelClassForName = database.getModelClassForName(c.quote(str));
            if (modelClassForName == null) {
                throw new IllegalArgumentException(String.format("The specified table %1s was not found. Did you forget to add the @Table annotation and point it to %1s?", new Object[]{str, cls}));
            }
        }
        return modelClassForName;
    }

    public static c getDatabaseForTable(Class<?> cls) {
        a();
        c databaseForTable = f4908b.getDatabaseForTable(cls);
        if (databaseForTable != null) {
            return databaseForTable;
        }
        throw new d("Model object: " + cls.getName() + " is not registered with a Database. Did you forget an annotation?");
    }

    public static c getDatabase(Class<?> cls) {
        a();
        c database = f4908b.getDatabase(cls);
        if (database != null) {
            return database;
        }
        throw new d("Database: " + cls.getName() + " is not a registered Database. Did you forget the @Database annotation?");
    }

    public static String getDatabaseName(Class<?> cls) {
        return getDatabase(cls).getDatabaseName();
    }

    public static i getWritableDatabaseForTable(Class<?> cls) {
        return getDatabaseForTable(cls).getWritableDatabase();
    }

    public static c getDatabase(String str) {
        a();
        c database = f4908b.getDatabase(str);
        if (database != null) {
            return database;
        }
        throw new d("The specified database" + str + " was not found. Did you forget the @Database annotation?");
    }

    public static i getWritableDatabase(String str) {
        return getDatabase(str).getWritableDatabase();
    }

    public static i getWritableDatabase(Class<?> cls) {
        return getDatabase(cls).getWritableDatabase();
    }

    public static void initModule(Class<? extends d> cls) {
        a(cls);
    }

    public static e getConfig() {
        e eVar = f4907a;
        if (eVar != null) {
            return eVar;
        }
        throw new IllegalStateException("Configuration is not initialized. Please call init(FlowConfig) in your application class.");
    }

    private static void a(Class<? extends d> cls) {
        if (!c.contains(cls)) {
            try {
                d dVar = (d) cls.newInstance();
                if (dVar != null) {
                    f4908b.add(dVar);
                    c.add(cls);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                throw new a("Cannot load ".concat(String.valueOf(cls)), th);
            }
        }
    }

    public static void reset() {
        for (Map.Entry value : f4908b.databaseClassLookupMap.entrySet()) {
            ((c) value.getValue()).reset();
        }
        f4908b.reset();
        c.clear();
    }

    public static synchronized void close() {
        synchronized (FlowManager.class) {
            for (Map.Entry value : f4908b.databaseClassLookupMap.entrySet()) {
                ((c) value.getValue()).close();
            }
            f4907a = null;
            f4908b = new GlobalDatabaseHolder();
            c.clear();
        }
    }

    public static Context getContext() {
        e eVar = f4907a;
        if (eVar != null) {
            return eVar.getContext();
        }
        throw new IllegalStateException("You must provide a valid FlowConfig instance. We recommend calling init() in your application class.");
    }

    public static void init(Context context) {
        init(new e.a(context).build());
    }

    public static void init(e eVar) {
        f4907a = eVar;
        try {
            a(Class.forName(e));
        } catch (a e2) {
            FlowLog.log(FlowLog.Level.W, e2.getMessage());
        } catch (ClassNotFoundException unused) {
            FlowLog.log(FlowLog.Level.W, "Could not find the default GeneratedDatabaseHolder");
        }
        if (!eVar.databaseHolders().isEmpty()) {
            for (Class<? extends d> a2 : eVar.databaseHolders()) {
                a(a2);
            }
        }
        if (eVar.openDatabasesOnInit()) {
            for (c writableDatabase : f4908b.getDatabaseDefinitions()) {
                writableDatabase.getWritableDatabase();
            }
        }
    }

    public static h getTypeConverterForClass(Class<?> cls) {
        a();
        return f4908b.getTypeConverterForClass(cls);
    }

    public static synchronized void destroy() {
        synchronized (FlowManager.class) {
            for (Map.Entry value : f4908b.databaseClassLookupMap.entrySet()) {
                ((c) value.getValue()).destroy();
            }
            f4907a = null;
            f4908b = new GlobalDatabaseHolder();
            c.clear();
        }
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.lang.Class<TModel>, java.lang.Class] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <TModel> com.raizlabs.android.dbflow.structure.b<TModel> getInstanceAdapter(java.lang.Class<TModel> r2) {
        /*
            com.raizlabs.android.dbflow.structure.f r0 = b(r2)
            if (r0 != 0) goto L_0x0010
            com.raizlabs.android.dbflow.structure.g r0 = c(r2)
            if (r0 != 0) goto L_0x0010
            com.raizlabs.android.dbflow.structure.h r0 = d(r2)
        L_0x0010:
            if (r0 != 0) goto L_0x0017
            java.lang.String r1 = "InstanceAdapter"
            a(r1, r2)
        L_0x0017:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.raizlabs.android.dbflow.config.FlowManager.getInstanceAdapter(java.lang.Class):com.raizlabs.android.dbflow.structure.b");
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.lang.Class<TModel>, java.lang.Class] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <TModel> com.raizlabs.android.dbflow.structure.i<TModel> getRetrievalAdapter(java.lang.Class<TModel> r2) {
        /*
            com.raizlabs.android.dbflow.structure.f r0 = b(r2)
            if (r0 != 0) goto L_0x0010
            com.raizlabs.android.dbflow.structure.g r0 = c(r2)
            if (r0 != 0) goto L_0x0010
            com.raizlabs.android.dbflow.structure.h r0 = d(r2)
        L_0x0010:
            if (r0 != 0) goto L_0x0017
            java.lang.String r1 = "RetrievalAdapter"
            a(r1, r2)
        L_0x0017:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.raizlabs.android.dbflow.config.FlowManager.getRetrievalAdapter(java.lang.Class):com.raizlabs.android.dbflow.structure.i");
    }

    public static <TModel> f<TModel> getModelAdapter(Class<TModel> cls) {
        f<TModel> b2 = b(cls);
        if (b2 == null) {
            a("ModelAdapter", cls);
        }
        return b2;
    }

    public static <TModelView> g<TModelView> getModelViewAdapter(Class<TModelView> cls) {
        g<TModelView> c2 = c(cls);
        if (c2 == null) {
            a("ModelViewAdapter", cls);
        }
        return c2;
    }

    public static <TQueryModel> com.raizlabs.android.dbflow.structure.h<TQueryModel> getQueryModelAdapter(Class<TQueryModel> cls) {
        com.raizlabs.android.dbflow.structure.h<TQueryModel> d2 = d(cls);
        if (d2 == null) {
            a("QueryModelAdapter", cls);
        }
        return d2;
    }

    public static com.raizlabs.android.dbflow.d.e getModelNotifierForTable(Class<?> cls) {
        return getDatabaseForTable(cls).getModelNotifier();
    }

    public static com.raizlabs.android.dbflow.d.h newRegisterForTable(Class<?> cls) {
        return getModelNotifierForTable(cls).newRegister();
    }

    private static <T> f<T> b(Class<T> cls) {
        return getDatabaseForTable(cls).getModelAdapterForTable(cls);
    }

    private static <T> g<T> c(Class<T> cls) {
        return getDatabaseForTable(cls).getModelViewAdapterForTable(cls);
    }

    private static <T> com.raizlabs.android.dbflow.structure.h<T> d(Class<T> cls) {
        return getDatabaseForTable(cls).getQueryModelAdapterForQueryClass(cls);
    }

    public static boolean isDatabaseIntegrityOk(String str) {
        return getDatabase(str).getHelper().isDatabaseIntegrityOk();
    }

    private static void a(String str, Class<?> cls) {
        throw new IllegalArgumentException("Cannot find " + str + " for " + cls + ". Ensure the class is annotated with proper annotation.");
    }

    private static void a() {
        if (!f4908b.isInitialized()) {
            throw new IllegalStateException("The global database holder is not initialized. Ensure you call FlowManager.init() before accessing the database.");
        }
    }
}
