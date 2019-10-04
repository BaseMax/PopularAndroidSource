package b.H.a.d;

import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import b.H.a.b;
import b.H.a.c.C0181b;
import b.H.a.c.p;
import b.H.a.d;
import b.H.a.e;
import b.H.a.m;
import b.H.i;
import java.util.LinkedList;

/* compiled from: CancelWorkRunnable */
public abstract class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final b f1541a = new b();

    public i a() {
        return this.f1541a;
    }

    public abstract void b();

    public void run() {
        try {
            b();
            this.f1541a.a(i.f1647a);
        } catch (Throwable th) {
            this.f1541a.a(new i.a.C0019a(th));
        }
    }

    public void a(m mVar, String str) {
        a(mVar.g(), str);
        mVar.e().d(str);
        for (d a2 : mVar.f()) {
            a2.a(str);
        }
    }

    public void a(m mVar) {
        e.a(mVar.c(), mVar.g(), mVar.f());
    }

    public final void a(WorkDatabase workDatabase, String str) {
        p v = workDatabase.v();
        C0181b p = workDatabase.p();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            WorkInfo.State c2 = v.c(str2);
            if (!(c2 == WorkInfo.State.SUCCEEDED || c2 == WorkInfo.State.FAILED)) {
                v.a(WorkInfo.State.CANCELLED, str2);
            }
            linkedList.addAll(p.a(str2));
        }
    }

    public static c a(String str, m mVar) {
        return new a(mVar, str);
    }

    public static c a(String str, m mVar, boolean z) {
        return new b(mVar, str, z);
    }
}
