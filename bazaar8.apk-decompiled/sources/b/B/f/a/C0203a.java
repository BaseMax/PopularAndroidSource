package b.b.f.a;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import b.i.c.a.a;
import b.i.d.a.b;
import b.i.k.C0259b;
import com.crashlytics.android.core.CodedOutputStream;

/* renamed from: b.b.f.a.a  reason: case insensitive filesystem */
/* compiled from: ActionMenuItem */
public class C0203a implements b {

    /* renamed from: a  reason: collision with root package name */
    public final int f1814a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1815b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1816c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1817d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f1818e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f1819f;

    /* renamed from: g  reason: collision with root package name */
    public Intent f1820g;

    /* renamed from: h  reason: collision with root package name */
    public char f1821h;

    /* renamed from: i  reason: collision with root package name */
    public int f1822i = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: j  reason: collision with root package name */
    public char f1823j;

    /* renamed from: k  reason: collision with root package name */
    public int f1824k = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: l  reason: collision with root package name */
    public Drawable f1825l;
    public int m = 0;
    public Context n;
    public MenuItem.OnMenuItemClickListener o;
    public CharSequence p;
    public CharSequence q;
    public ColorStateList r = null;
    public PorterDuff.Mode s = null;
    public boolean t = false;
    public boolean u = false;
    public int v = 16;

    public C0203a(Context context, int i2, int i3, int i4, int i5, CharSequence charSequence) {
        this.n = context;
        this.f1814a = i3;
        this.f1815b = i2;
        this.f1816c = i4;
        this.f1817d = i5;
        this.f1818e = charSequence;
    }

    public b a(C0259b bVar) {
        throw new UnsupportedOperationException();
    }

    public C0259b a() {
        return null;
    }

    public final void b() {
        if (this.f1825l == null) {
            return;
        }
        if (this.t || this.u) {
            this.f1825l = a.i(this.f1825l);
            this.f1825l = this.f1825l.mutate();
            if (this.t) {
                a.a(this.f1825l, this.r);
            }
            if (this.u) {
                a.a(this.f1825l, this.s);
            }
        }
    }

    public boolean collapseActionView() {
        return false;
    }

    public boolean expandActionView() {
        return false;
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    public View getActionView() {
        return null;
    }

    public int getAlphabeticModifiers() {
        return this.f1824k;
    }

    public char getAlphabeticShortcut() {
        return this.f1823j;
    }

    public CharSequence getContentDescription() {
        return this.p;
    }

    public int getGroupId() {
        return this.f1815b;
    }

    public Drawable getIcon() {
        return this.f1825l;
    }

    public ColorStateList getIconTintList() {
        return this.r;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.s;
    }

    public Intent getIntent() {
        return this.f1820g;
    }

    public int getItemId() {
        return this.f1814a;
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    public int getNumericModifiers() {
        return this.f1822i;
    }

    public char getNumericShortcut() {
        return this.f1821h;
    }

    public int getOrder() {
        return this.f1817d;
    }

    public SubMenu getSubMenu() {
        return null;
    }

    public CharSequence getTitle() {
        return this.f1818e;
    }

    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1819f;
        return charSequence != null ? charSequence : this.f1818e;
    }

    public CharSequence getTooltipText() {
        return this.q;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isActionViewExpanded() {
        return false;
    }

    public boolean isCheckable() {
        return (this.v & 1) != 0;
    }

    public boolean isChecked() {
        return (this.v & 2) != 0;
    }

    public boolean isEnabled() {
        return (this.v & 16) != 0;
    }

    public boolean isVisible() {
        return (this.v & 8) == 0;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        this.f1823j = Character.toLowerCase(c2);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.v = z | (this.v & true) ? 1 : 0;
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.v = (z ? 2 : 0) | (this.v & -3);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.v = (z ? 16 : 0) | (this.v & -17);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.f1825l = drawable;
        this.m = 0;
        b();
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.r = colorStateList;
        this.t = true;
        b();
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.s = mode;
        this.u = true;
        b();
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.f1820g = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        this.f1821h = c2;
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.o = onMenuItemClickListener;
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.f1821h = c2;
        this.f1823j = Character.toLowerCase(c3);
        return this;
    }

    public void setShowAsAction(int i2) {
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f1818e = charSequence;
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1819f = charSequence;
        return this;
    }

    public MenuItem setVisible(boolean z) {
        int i2 = 8;
        int i3 = this.v & 8;
        if (z) {
            i2 = 0;
        }
        this.v = i3 | i2;
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f1823j = Character.toLowerCase(c2);
        this.f1824k = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    public b setContentDescription(CharSequence charSequence) {
        this.p = charSequence;
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i2) {
        this.f1821h = c2;
        this.f1822i = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    public b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    public MenuItem setTitle(int i2) {
        this.f1818e = this.n.getResources().getString(i2);
        return this;
    }

    public b setTooltipText(CharSequence charSequence) {
        this.q = charSequence;
        return this;
    }

    public b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f1821h = c2;
        this.f1822i = KeyEvent.normalizeMetaState(i2);
        this.f1823j = Character.toLowerCase(c3);
        this.f1824k = KeyEvent.normalizeMetaState(i3);
        return this;
    }

    public b setActionView(int i2) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setIcon(int i2) {
        this.m = i2;
        this.f1825l = b.i.b.a.c(this.n, i2);
        b();
        return this;
    }
}
