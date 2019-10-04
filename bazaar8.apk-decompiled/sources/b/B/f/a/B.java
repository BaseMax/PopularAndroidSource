package b.b.f.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import b.i.d.a.c;

/* compiled from: SubMenuWrapperICS */
public class B extends v implements SubMenu {

    /* renamed from: e  reason: collision with root package name */
    public final c f1813e;

    public B(Context context, c cVar) {
        super(context, cVar);
        this.f1813e = cVar;
    }

    public void clearHeader() {
        this.f1813e.clearHeader();
    }

    public MenuItem getItem() {
        return a(this.f1813e.getItem());
    }

    public SubMenu setHeaderIcon(int i2) {
        this.f1813e.setHeaderIcon(i2);
        return this;
    }

    public SubMenu setHeaderTitle(int i2) {
        this.f1813e.setHeaderTitle(i2);
        return this;
    }

    public SubMenu setHeaderView(View view) {
        this.f1813e.setHeaderView(view);
        return this;
    }

    public SubMenu setIcon(int i2) {
        this.f1813e.setIcon(i2);
        return this;
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f1813e.setHeaderIcon(drawable);
        return this;
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f1813e.setHeaderTitle(charSequence);
        return this;
    }

    public SubMenu setIcon(Drawable drawable) {
        this.f1813e.setIcon(drawable);
        return this;
    }
}
