package b.H.a.a.b;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import b.H.a.a.b.f;
import b.H.a.b.d;
import b.H.a.c.o;
import b.H.f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ConstraintsCommandHandler */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1338a = f.a("ConstraintsCmdHandler");

    /* renamed from: b  reason: collision with root package name */
    public final Context f1339b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1340c;

    /* renamed from: d  reason: collision with root package name */
    public final f f1341d;

    /* renamed from: e  reason: collision with root package name */
    public final d f1342e = new d(this.f1339b, null);

    public c(Context context, int i2, f fVar) {
        this.f1339b = context;
        this.f1340c = i2;
        this.f1341d = fVar;
    }

    public void a() {
        List<o> a2 = this.f1341d.d().g().v().a();
        ConstraintProxy.a(this.f1339b, a2);
        this.f1342e.c(a2);
        ArrayList<o> arrayList = new ArrayList<>(a2.size());
        long currentTimeMillis = System.currentTimeMillis();
        for (o next : a2) {
            String str = next.f1466c;
            if (currentTimeMillis >= next.a() && (!next.b() || this.f1342e.a(str))) {
                arrayList.add(next);
            }
        }
        for (o oVar : arrayList) {
            String str2 = oVar.f1466c;
            Intent a3 = b.a(this.f1339b, str2);
            f.a().a(f1338a, String.format("Creating a delay_met command for workSpec with id (%s)", new Object[]{str2}), new Throwable[0]);
            f fVar = this.f1341d;
            fVar.a((Runnable) new f.a(fVar, a3, this.f1340c));
        }
        this.f1342e.a();
    }
}
