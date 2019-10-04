package b.b.f;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import b.b.f.a.p;
import b.b.f.a.v;
import b.b.f.b;
import b.f.i;
import java.util.ArrayList;

/* compiled from: SupportActionModeWrapper */
public class f extends ActionMode {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1960a;

    /* renamed from: b  reason: collision with root package name */
    public final b f1961b;

    /* compiled from: SupportActionModeWrapper */
    public static class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        public final ActionMode.Callback f1962a;

        /* renamed from: b  reason: collision with root package name */
        public final Context f1963b;

        /* renamed from: c  reason: collision with root package name */
        public final ArrayList<f> f1964c = new ArrayList<>();

        /* renamed from: d  reason: collision with root package name */
        public final i<Menu, Menu> f1965d = new i<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f1963b = context;
            this.f1962a = callback;
        }

        public boolean a(b bVar, Menu menu) {
            return this.f1962a.onCreateActionMode(b(bVar), a(menu));
        }

        public boolean b(b bVar, Menu menu) {
            return this.f1962a.onPrepareActionMode(b(bVar), a(menu));
        }

        public boolean a(b bVar, MenuItem menuItem) {
            return this.f1962a.onActionItemClicked(b(bVar), new p(this.f1963b, (b.i.d.a.b) menuItem));
        }

        public ActionMode b(b bVar) {
            int size = this.f1964c.size();
            for (int i2 = 0; i2 < size; i2++) {
                f fVar = this.f1964c.get(i2);
                if (fVar != null && fVar.f1961b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f1963b, bVar);
            this.f1964c.add(fVar2);
            return fVar2;
        }

        public void a(b bVar) {
            this.f1962a.onDestroyActionMode(b(bVar));
        }

        public final Menu a(Menu menu) {
            Menu menu2 = this.f1965d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            v vVar = new v(this.f1963b, (b.i.d.a.a) menu);
            this.f1965d.put(menu, vVar);
            return vVar;
        }
    }

    public f(Context context, b bVar) {
        this.f1960a = context;
        this.f1961b = bVar;
    }

    public void finish() {
        this.f1961b.a();
    }

    public View getCustomView() {
        return this.f1961b.b();
    }

    public Menu getMenu() {
        return new v(this.f1960a, (b.i.d.a.a) this.f1961b.c());
    }

    public MenuInflater getMenuInflater() {
        return this.f1961b.d();
    }

    public CharSequence getSubtitle() {
        return this.f1961b.e();
    }

    public Object getTag() {
        return this.f1961b.f();
    }

    public CharSequence getTitle() {
        return this.f1961b.g();
    }

    public boolean getTitleOptionalHint() {
        return this.f1961b.h();
    }

    public void invalidate() {
        this.f1961b.i();
    }

    public boolean isTitleOptional() {
        return this.f1961b.j();
    }

    public void setCustomView(View view) {
        this.f1961b.a(view);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1961b.a(charSequence);
    }

    public void setTag(Object obj) {
        this.f1961b.a(obj);
    }

    public void setTitle(CharSequence charSequence) {
        this.f1961b.b(charSequence);
    }

    public void setTitleOptionalHint(boolean z) {
        this.f1961b.a(z);
    }

    public void setSubtitle(int i2) {
        this.f1961b.a(i2);
    }

    public void setTitle(int i2) {
        this.f1961b.b(i2);
    }
}
