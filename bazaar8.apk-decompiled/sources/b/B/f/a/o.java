package b.b.f.a;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.widget.LinearLayout;
import b.b.b.a.a;
import b.b.f.a.u;
import b.b.h;
import b.i.d.a.b;
import b.i.k.C0259b;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;

/* compiled from: MenuItemImpl */
public final class o implements b {
    public View A;
    public C0259b B;
    public MenuItem.OnActionExpandListener C;
    public boolean D = false;
    public ContextMenu.ContextMenuInfo E;

    /* renamed from: a  reason: collision with root package name */
    public final int f1895a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1896b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1897c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1898d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f1899e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f1900f;

    /* renamed from: g  reason: collision with root package name */
    public Intent f1901g;

    /* renamed from: h  reason: collision with root package name */
    public char f1902h;

    /* renamed from: i  reason: collision with root package name */
    public int f1903i = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: j  reason: collision with root package name */
    public char f1904j;

    /* renamed from: k  reason: collision with root package name */
    public int f1905k = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: l  reason: collision with root package name */
    public Drawable f1906l;
    public int m = 0;
    public k n;
    public A o;
    public Runnable p;
    public MenuItem.OnMenuItemClickListener q;
    public CharSequence r;
    public CharSequence s;
    public ColorStateList t = null;
    public PorterDuff.Mode u = null;
    public boolean v = false;
    public boolean w = false;
    public boolean x = false;
    public int y = 16;
    public int z = 0;

    public o(k kVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.n = kVar;
        this.f1895a = i3;
        this.f1896b = i2;
        this.f1897c = i4;
        this.f1898d = i5;
        this.f1899e = charSequence;
        this.z = i6;
    }

    public static void a(StringBuilder sb, int i2, int i3, String str) {
        if ((i2 & i3) == i3) {
            sb.append(str);
        }
    }

    public void b(boolean z2) {
        int i2 = this.y;
        this.y = (z2 ? 2 : 0) | (i2 & -3);
        if (i2 != this.y) {
            this.n.c(false);
        }
    }

    public int c() {
        return this.f1898d;
    }

    public boolean collapseActionView() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.a(this);
        }
        return false;
    }

    public char d() {
        return this.n.p() ? this.f1904j : this.f1902h;
    }

    public String e() {
        char d2 = d();
        if (d2 == 0) {
            return "";
        }
        Resources resources = this.n.e().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.n.e()).hasPermanentMenuKey()) {
            sb.append(resources.getString(h.abc_prepend_shortcut_label));
        }
        int i2 = this.n.p() ? this.f1905k : this.f1903i;
        a(sb, i2, LogFileManager.MAX_LOG_SIZE, resources.getString(h.abc_menu_meta_shortcut_label));
        a(sb, i2, CodedOutputStream.DEFAULT_BUFFER_SIZE, resources.getString(h.abc_menu_ctrl_shortcut_label));
        a(sb, i2, 2, resources.getString(h.abc_menu_alt_shortcut_label));
        a(sb, i2, 1, resources.getString(h.abc_menu_shift_shortcut_label));
        a(sb, i2, 4, resources.getString(h.abc_menu_sym_shortcut_label));
        a(sb, i2, 8, resources.getString(h.abc_menu_function_shortcut_label));
        if (d2 == 8) {
            sb.append(resources.getString(h.abc_menu_delete_shortcut_label));
        } else if (d2 == 10) {
            sb.append(resources.getString(h.abc_menu_enter_shortcut_label));
        } else if (d2 != ' ') {
            sb.append(d2);
        } else {
            sb.append(resources.getString(h.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    public boolean expandActionView() {
        if (!f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.b(this);
        }
        return false;
    }

    public boolean f() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            C0259b bVar = this.B;
            if (bVar != null) {
                this.A = bVar.a((MenuItem) this);
            }
        }
        if (this.A != null) {
            return true;
        }
        return false;
    }

    public boolean g() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        k kVar = this.n;
        if (kVar.a(kVar, (MenuItem) this)) {
            return true;
        }
        Runnable runnable = this.p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1901g != null) {
            try {
                this.n.e().startActivity(this.f1901g);
                return true;
            } catch (ActivityNotFoundException e2) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e2);
            }
        }
        C0259b bVar = this.B;
        if (bVar == null || !bVar.d()) {
            return false;
        }
        return true;
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        C0259b bVar = this.B;
        if (bVar == null) {
            return null;
        }
        this.A = bVar.a((MenuItem) this);
        return this.A;
    }

    public int getAlphabeticModifiers() {
        return this.f1905k;
    }

    public char getAlphabeticShortcut() {
        return this.f1904j;
    }

    public CharSequence getContentDescription() {
        return this.r;
    }

    public int getGroupId() {
        return this.f1896b;
    }

    public Drawable getIcon() {
        Drawable drawable = this.f1906l;
        if (drawable != null) {
            return a(drawable);
        }
        if (this.m == 0) {
            return null;
        }
        Drawable c2 = a.c(this.n.e(), this.m);
        this.m = 0;
        this.f1906l = c2;
        return a(c2);
    }

    public ColorStateList getIconTintList() {
        return this.t;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.u;
    }

    public Intent getIntent() {
        return this.f1901g;
    }

    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f1895a;
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    public int getNumericModifiers() {
        return this.f1903i;
    }

    public char getNumericShortcut() {
        return this.f1902h;
    }

    public int getOrder() {
        return this.f1897c;
    }

    public SubMenu getSubMenu() {
        return this.o;
    }

    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f1899e;
    }

    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1900f;
        if (charSequence == null) {
            charSequence = this.f1899e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    public CharSequence getTooltipText() {
        return this.s;
    }

    public boolean h() {
        return (this.y & 32) == 32;
    }

    public boolean hasSubMenu() {
        return this.o != null;
    }

    public boolean i() {
        return (this.y & 4) != 0;
    }

    public boolean isActionViewExpanded() {
        return this.D;
    }

    public boolean isCheckable() {
        return (this.y & 1) == 1;
    }

    public boolean isChecked() {
        return (this.y & 2) == 2;
    }

    public boolean isEnabled() {
        return (this.y & 16) != 0;
    }

    public boolean isVisible() {
        C0259b bVar = this.B;
        boolean z2 = true;
        if (bVar == null || !bVar.e()) {
            if ((this.y & 8) != 0) {
                z2 = false;
            }
            return z2;
        }
        if ((this.y & 8) != 0 || !this.B.b()) {
            z2 = false;
        }
        return z2;
    }

    public boolean j() {
        return (this.z & 1) == 1;
    }

    public boolean k() {
        return (this.z & 2) == 2;
    }

    public boolean l() {
        return this.n.k();
    }

    public boolean m() {
        return this.n.q() && d() != 0;
    }

    public boolean n() {
        return (this.z & 4) == 4;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.f1904j == c2) {
            return this;
        }
        this.f1904j = Character.toLowerCase(c2);
        this.n.c(false);
        return this;
    }

    public MenuItem setCheckable(boolean z2) {
        int i2 = this.y;
        this.y = z2 | (i2 & true) ? 1 : 0;
        if (i2 != this.y) {
            this.n.c(false);
        }
        return this;
    }

    public MenuItem setChecked(boolean z2) {
        if ((this.y & 4) != 0) {
            this.n.a((MenuItem) this);
        } else {
            b(z2);
        }
        return this;
    }

    public MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.y |= 16;
        } else {
            this.y &= -17;
        }
        this.n.c(false);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.m = 0;
        this.f1906l = drawable;
        this.x = true;
        this.n.c(false);
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.t = colorStateList;
        this.v = true;
        this.x = true;
        this.n.c(false);
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.u = mode;
        this.w = true;
        this.x = true;
        this.n.c(false);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.f1901g = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        if (this.f1902h == c2) {
            return this;
        }
        this.f1902h = c2;
        this.n.c(false);
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.q = onMenuItemClickListener;
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.f1902h = c2;
        this.f1904j = Character.toLowerCase(c3);
        this.n.c(false);
        return this;
    }

    public void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 == 0 || i3 == 1 || i3 == 2) {
            this.z = i2;
            this.n.c(this);
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f1899e = charSequence;
        this.n.c(false);
        A a2 = this.o;
        if (a2 != null) {
            a2.setHeaderTitle(charSequence);
        }
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1900f = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.f1899e;
        }
        this.n.c(false);
        return this;
    }

    public MenuItem setVisible(boolean z2) {
        if (e(z2)) {
            this.n.d(this);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f1899e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void a(A a2) {
        this.o = a2;
        a2.setHeaderTitle(getTitle());
    }

    public void c(boolean z2) {
        this.y = (z2 ? 4 : 0) | (this.y & -5);
    }

    public void d(boolean z2) {
        if (z2) {
            this.y |= 32;
        } else {
            this.y &= -33;
        }
    }

    public b setContentDescription(CharSequence charSequence) {
        this.r = charSequence;
        this.n.c(false);
        return this;
    }

    public b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    public b setTooltipText(CharSequence charSequence) {
        this.s = charSequence;
        this.n.c(false);
        return this;
    }

    public b setActionView(View view) {
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1) {
            int i2 = this.f1895a;
            if (i2 > 0) {
                view.setId(i2);
            }
        }
        this.n.c(this);
        return this;
    }

    public CharSequence a(u.a aVar) {
        if (aVar == null || !aVar.a()) {
            return getTitle();
        }
        return getTitleCondensed();
    }

    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        if (this.f1904j == c2 && this.f1905k == i2) {
            return this;
        }
        this.f1904j = Character.toLowerCase(c2);
        this.f1905k = KeyEvent.normalizeMetaState(i2);
        this.n.c(false);
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i2) {
        if (this.f1902h == c2 && this.f1903i == i2) {
            return this;
        }
        this.f1902h = c2;
        this.f1903i = KeyEvent.normalizeMetaState(i2);
        this.n.c(false);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f1902h = c2;
        this.f1903i = KeyEvent.normalizeMetaState(i2);
        this.f1904j = Character.toLowerCase(c3);
        this.f1905k = KeyEvent.normalizeMetaState(i3);
        this.n.c(false);
        return this;
    }

    public void b() {
        this.n.c(this);
    }

    public MenuItem setIcon(int i2) {
        this.f1906l = null;
        this.m = i2;
        this.x = true;
        this.n.c(false);
        return this;
    }

    public MenuItem setTitle(int i2) {
        setTitle((CharSequence) this.n.e().getString(i2));
        return this;
    }

    public final Drawable a(Drawable drawable) {
        if (drawable != null && this.x && (this.v || this.w)) {
            drawable = b.i.c.a.a.i(drawable).mutate();
            if (this.v) {
                b.i.c.a.a.a(drawable, this.t);
            }
            if (this.w) {
                b.i.c.a.a.a(drawable, this.u);
            }
            this.x = false;
        }
        return drawable;
    }

    public b setActionView(int i2) {
        Context e2 = this.n.e();
        setActionView(LayoutInflater.from(e2).inflate(i2, new LinearLayout(e2), false));
        return this;
    }

    public void a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    public C0259b a() {
        return this.B;
    }

    public b a(C0259b bVar) {
        C0259b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.f();
        }
        this.A = null;
        this.B = bVar;
        this.n.c(true);
        C0259b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.a((C0259b.C0035b) new n(this));
        }
        return this;
    }

    public void a(boolean z2) {
        this.D = z2;
        this.n.c(false);
    }

    public boolean e(boolean z2) {
        int i2 = this.y;
        this.y = (z2 ? 0 : 8) | (i2 & -9);
        if (i2 != this.y) {
            return true;
        }
        return false;
    }
}
