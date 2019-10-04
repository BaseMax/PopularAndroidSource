package f.a.a.e.a;

import android.view.View;
import com.crashlytics.android.Crashlytics;
import f.a.a.d.a;
import f.a.a.e.g;
import f.a.a.e.j;
import ir.cafebazaar.inline.ui.changers.exceptions.UnchangeablePropertyException;
import ir.cafebazaar.inline.ui.changers.exceptions.ViewNotFoundException;

/* compiled from: ViewChanger */
public abstract class p implements a {

    /* renamed from: a  reason: collision with root package name */
    public q f14042a;

    /* renamed from: b  reason: collision with root package name */
    public f.a.a.e.a.a.a f14043b;

    public void a(q qVar) {
        this.f14042a = qVar;
    }

    public q b() {
        return this.f14042a;
    }

    public abstract void b(View view, g gVar);

    public abstract boolean c();

    public f.a.a.e.a.a.a a() {
        return this.f14043b;
    }

    public void a(f.a.a.e.a.a.a aVar) {
        this.f14043b = aVar;
    }

    public View a(View view) {
        return b().a(view);
    }

    public void a(View view, g gVar) {
        if (c()) {
            try {
                View a2 = a(view);
                f.a.a.e.a.a.a a3 = a();
                if (a3 != null) {
                    a3.a(this, a2, gVar);
                } else {
                    b(a2, gVar);
                }
            } catch (UnchangeablePropertyException | ViewNotFoundException e2) {
                Crashlytics.logException(e2);
                new j(gVar, gVar.f().getString(f.a.a.g.error_general), gVar.f().getString(f.a.a.g.error_try_again_later), e2.toString());
            } catch (Exception e3) {
                Crashlytics.logException(e3);
            }
        }
    }
}
