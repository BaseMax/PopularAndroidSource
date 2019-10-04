package b.C.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.util.Log;
import java.io.File;

/* compiled from: SupportSQLiteOpenHelper */
public interface c {

    /* compiled from: SupportSQLiteOpenHelper */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f1066a;

        public a(int i2) {
            this.f1066a = i2;
        }

        public void a(b bVar) {
        }

        public abstract void a(b bVar, int i2, int i3);

        public final void a(String str) {
            if (!str.equalsIgnoreCase(":memory:") && str.trim().length() != 0) {
                Log.w("SupportSQLite", "deleting the database file: " + str);
                try {
                    if (Build.VERSION.SDK_INT >= 16) {
                        SQLiteDatabase.deleteDatabase(new File(str));
                        return;
                    }
                    try {
                        if (!new File(str).delete()) {
                            Log.e("SupportSQLite", "Could not delete the database file " + str);
                        }
                    } catch (Exception e2) {
                        Log.e("SupportSQLite", "error while deleting corrupted database file", e2);
                    }
                } catch (Exception e3) {
                    Log.w("SupportSQLite", "delete failed: ", e3);
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0034, code lost:
            if (r0 != null) goto L_0x0036;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0036, code lost:
            r3 = r0.iterator();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x003e, code lost:
            if (r3.hasNext() != false) goto L_0x0040;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0040, code lost:
            a((java.lang.String) r3.next().second);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x004e, code lost:
            a(r3.getPath());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0055, code lost:
            throw r1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:7:0x002e, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x0030 */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x0058  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0070  */
        /* JADX WARNING: Removed duplicated region for block: B:7:0x002e A[ExcHandler: all (r1v3 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r0 
  PHI: (r0v10 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>) = (r0v3 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>), (r0v4 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>), (r0v4 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>) binds: [B:5:0x0029, B:8:0x0030, B:9:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:5:0x0029] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b(b.C.a.b r3) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Corruption reported by sqlite on database: "
                r0.append(r1)
                java.lang.String r1 = r3.getPath()
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                java.lang.String r1 = "SupportSQLite"
                android.util.Log.e(r1, r0)
                boolean r0 = r3.isOpen()
                if (r0 != 0) goto L_0x0028
                java.lang.String r3 = r3.getPath()
                r2.a((java.lang.String) r3)
                return
            L_0x0028:
                r0 = 0
                java.util.List r0 = r3.o()     // Catch:{ SQLiteException -> 0x0030, all -> 0x002e }
                goto L_0x0030
            L_0x002e:
                r1 = move-exception
                goto L_0x0034
            L_0x0030:
                r3.close()     // Catch:{ IOException -> 0x0056, all -> 0x002e }
                goto L_0x0056
            L_0x0034:
                if (r0 == 0) goto L_0x004e
                java.util.Iterator r3 = r0.iterator()
            L_0x003a:
                boolean r0 = r3.hasNext()
                if (r0 == 0) goto L_0x0055
                java.lang.Object r0 = r3.next()
                android.util.Pair r0 = (android.util.Pair) r0
                java.lang.Object r0 = r0.second
                java.lang.String r0 = (java.lang.String) r0
                r2.a((java.lang.String) r0)
                goto L_0x003a
            L_0x004e:
                java.lang.String r3 = r3.getPath()
                r2.a((java.lang.String) r3)
            L_0x0055:
                throw r1
            L_0x0056:
                if (r0 == 0) goto L_0x0070
                java.util.Iterator r3 = r0.iterator()
            L_0x005c:
                boolean r0 = r3.hasNext()
                if (r0 == 0) goto L_0x0077
                java.lang.Object r0 = r3.next()
                android.util.Pair r0 = (android.util.Pair) r0
                java.lang.Object r0 = r0.second
                java.lang.String r0 = (java.lang.String) r0
                r2.a((java.lang.String) r0)
                goto L_0x005c
            L_0x0070:
                java.lang.String r3 = r3.getPath()
                r2.a((java.lang.String) r3)
            L_0x0077:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: b.C.a.c.a.b(b.C.a.b):void");
        }

        public abstract void b(b bVar, int i2, int i3);

        public abstract void c(b bVar);

        public void d(b bVar) {
        }
    }

    /* compiled from: SupportSQLiteOpenHelper */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Context f1067a;

        /* renamed from: b  reason: collision with root package name */
        public final String f1068b;

        /* renamed from: c  reason: collision with root package name */
        public final a f1069c;

        /* compiled from: SupportSQLiteOpenHelper */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public Context f1070a;

            /* renamed from: b  reason: collision with root package name */
            public String f1071b;

            /* renamed from: c  reason: collision with root package name */
            public a f1072c;

            public a(Context context) {
                this.f1070a = context;
            }

            public b a() {
                a aVar = this.f1072c;
                if (aVar != null) {
                    Context context = this.f1070a;
                    if (context != null) {
                        return new b(context, this.f1071b, aVar);
                    }
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            public a a(String str) {
                this.f1071b = str;
                return this;
            }

            public a a(a aVar) {
                this.f1072c = aVar;
                return this;
            }
        }

        public b(Context context, String str, a aVar) {
            this.f1067a = context;
            this.f1068b = str;
            this.f1069c = aVar;
        }

        public static a a(Context context) {
            return new a(context);
        }
    }

    /* renamed from: b.C.a.c$c  reason: collision with other inner class name */
    /* compiled from: SupportSQLiteOpenHelper */
    public interface C0015c {
        c a(b bVar);
    }

    b a();

    void a(boolean z);
}
