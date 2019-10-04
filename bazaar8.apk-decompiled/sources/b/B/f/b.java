package b.b.f;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* compiled from: ActionMode */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public Object f1946a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1947b;

    /* compiled from: ActionMode */
    public interface a {
        void a(b bVar);

        boolean a(b bVar, Menu menu);

        boolean a(b bVar, MenuItem menuItem);

        boolean b(b bVar, Menu menu);
    }

    public abstract void a();

    public abstract void a(int i2);

    public abstract void a(View view);

    public abstract void a(CharSequence charSequence);

    public void a(Object obj) {
        this.f1946a = obj;
    }

    public abstract View b();

    public abstract void b(int i2);

    public abstract void b(CharSequence charSequence);

    public abstract Menu c();

    public abstract MenuInflater d();

    public abstract CharSequence e();

    public Object f() {
        return this.f1946a;
    }

    public abstract CharSequence g();

    public boolean h() {
        return this.f1947b;
    }

    public abstract void i();

    public abstract boolean j();

    public void a(boolean z) {
        this.f1947b = z;
    }
}
