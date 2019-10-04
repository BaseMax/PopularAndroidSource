package f.a.a.e.a;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import f.a.a.e.g;
import java.util.Collection;

/* compiled from: GradualChangePropagator */
public class j implements c {

    /* renamed from: a  reason: collision with root package name */
    public a f14035a;

    /* compiled from: GradualChangePropagator */
    public interface a {
        int a(p pVar);
    }

    public j(a aVar) {
        this.f14035a = aVar;
    }

    public void a(Collection<p> collection, View view, g gVar) {
        Handler handler = new Handler(Looper.getMainLooper());
        for (p next : collection) {
            int a2 = this.f14035a.a(next);
            if (a2 >= 0) {
                handler.postDelayed(new i(this, next, view, gVar), (long) a2);
            }
        }
    }
}
