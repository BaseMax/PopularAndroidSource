package b.z;

import androidx.room.RoomDatabase;
import h.c.b;
import h.f.b.f;
import java.util.concurrent.Callable;

/* renamed from: b.z.a  reason: case insensitive filesystem */
/* compiled from: CoroutinesRoom.kt */
public final class C0352a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0047a f3584a = new C0047a(null);

    /* renamed from: b.z.a$a  reason: collision with other inner class name */
    /* compiled from: CoroutinesRoom.kt */
    public static final class C0047a {
        public C0047a() {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0023, code lost:
            if (r0 != null) goto L_0x0032;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final <R> java.lang.Object a(androidx.room.RoomDatabase r3, boolean r4, java.util.concurrent.Callable<R> r5, h.c.b<? super R> r6) {
            /*
                r2 = this;
                boolean r0 = r3.n()
                if (r0 == 0) goto L_0x0011
                boolean r0 = r3.l()
                if (r0 == 0) goto L_0x0011
                java.lang.Object r3 = r5.call()
                return r3
            L_0x0011:
                h.c.e r0 = r6.b()
                b.z.D$a r1 = b.z.D.f3577a
                h.c.e$b r0 = r0.get(r1)
                b.z.D r0 = (b.z.D) r0
                if (r0 == 0) goto L_0x0026
                h.c.c r0 = r0.a()
                if (r0 == 0) goto L_0x0026
                goto L_0x0032
            L_0x0026:
                if (r4 == 0) goto L_0x002d
                i.a.C r3 = b.z.C0353b.b(r3)
                goto L_0x0031
            L_0x002d:
                i.a.C r3 = b.z.C0353b.a(r3)
            L_0x0031:
                r0 = r3
            L_0x0032:
                androidx.room.CoroutinesRoom$Companion$execute$2 r3 = new androidx.room.CoroutinesRoom$Companion$execute$2
                r4 = 0
                r3.<init>(r5, r4)
                java.lang.Object r3 = i.a.C1099e.a(r0, r3, r6)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: b.z.C0352a.C0047a.a(androidx.room.RoomDatabase, boolean, java.util.concurrent.Callable, h.c.b):java.lang.Object");
        }

        public /* synthetic */ C0047a(f fVar) {
            this();
        }
    }

    public static final <R> Object a(RoomDatabase roomDatabase, boolean z, Callable<R> callable, b<? super R> bVar) {
        return f3584a.a(roomDatabase, z, callable, bVar);
    }
}
