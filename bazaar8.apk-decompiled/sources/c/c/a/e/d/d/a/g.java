package c.c.a.e.d.d.a;

import android.database.Cursor;
import b.z.b.b;
import b.z.x;
import java.util.concurrent.Callable;

/* compiled from: BookmarkDao_Impl */
class g implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f5040a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ i f5041b;

    public g(i iVar, x xVar) {
        this.f5041b = iVar;
        this.f5040a = xVar;
    }

    public void finalize() {
        this.f5040a.c();
    }

    public String call() {
        Cursor a2 = b.a(this.f5041b.f5044a, this.f5040a, false);
        try {
            return a2.moveToFirst() ? a2.getString(0) : null;
        } finally {
            a2.close();
        }
    }
}
