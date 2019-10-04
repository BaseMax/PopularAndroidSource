package b.z;

import android.content.Context;
import androidx.room.RoomDatabase;
import b.C.a.c;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* renamed from: b.z.c  reason: case insensitive filesystem */
/* compiled from: DatabaseConfiguration */
public class C0354c {

    /* renamed from: a  reason: collision with root package name */
    public final c.C0015c f3609a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f3610b;

    /* renamed from: c  reason: collision with root package name */
    public final String f3611c;

    /* renamed from: d  reason: collision with root package name */
    public final RoomDatabase.c f3612d;

    /* renamed from: e  reason: collision with root package name */
    public final List<RoomDatabase.b> f3613e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f3614f;

    /* renamed from: g  reason: collision with root package name */
    public final RoomDatabase.JournalMode f3615g;

    /* renamed from: h  reason: collision with root package name */
    public final Executor f3616h;

    /* renamed from: i  reason: collision with root package name */
    public final Executor f3617i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f3618j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f3619k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f3620l;
    public final Set<Integer> m;

    public C0354c(Context context, String str, c.C0015c cVar, RoomDatabase.c cVar2, List<RoomDatabase.b> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set) {
        this.f3609a = cVar;
        this.f3610b = context;
        this.f3611c = str;
        this.f3612d = cVar2;
        this.f3613e = list;
        this.f3614f = z;
        this.f3615g = journalMode;
        this.f3616h = executor;
        this.f3617i = executor2;
        this.f3618j = z2;
        this.f3619k = z3;
        this.f3620l = z4;
        this.m = set;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001e, code lost:
        if (r4.contains(java.lang.Integer.valueOf(r3)) != false) goto L_0x0021;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(int r3, int r4) {
        /*
            r2 = this;
            r0 = 1
            r1 = 0
            if (r3 <= r4) goto L_0x0006
            r4 = 1
            goto L_0x0007
        L_0x0006:
            r4 = 0
        L_0x0007:
            if (r4 == 0) goto L_0x000e
            boolean r4 = r2.f3620l
            if (r4 == 0) goto L_0x000e
            return r1
        L_0x000e:
            boolean r4 = r2.f3619k
            if (r4 == 0) goto L_0x0021
            java.util.Set<java.lang.Integer> r4 = r2.m
            if (r4 == 0) goto L_0x0022
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            boolean r3 = r4.contains(r3)
            if (r3 != 0) goto L_0x0021
            goto L_0x0022
        L_0x0021:
            r0 = 0
        L_0x0022:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.z.C0354c.a(int, int):boolean");
    }
}
