package b.b.f.a;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import b.i.k.C0259b;
import java.lang.reflect.Method;

/* compiled from: MenuItemWrapperICS */
public class p extends c implements MenuItem {

    /* renamed from: d  reason: collision with root package name */
    public final b.i.d.a.b f1907d;

    /* renamed from: e  reason: collision with root package name */
    public Method f1908e;

    /* compiled from: MenuItemWrapperICS */
    private class a extends C0259b {

        /* renamed from: d  reason: collision with root package name */
        public final ActionProvider f1909d;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f1909d = actionProvider;
        }

        public boolean a() {
            return this.f1909d.hasSubMenu();
        }

        public View c() {
            return this.f1909d.onCreateActionView();
        }

        public boolean d() {
            return this.f1909d.onPerformDefaultAction();
        }

        public void a(SubMenu subMenu) {
            this.f1909d.onPrepareSubMenu(p.this.a(subMenu));
        }
    }

    /* compiled from: MenuItemWrapperICS */
    private class b extends a implements ActionProvider.VisibilityListener {

        /* renamed from: f  reason: collision with root package name */
        public C0259b.C0035b f1911f;

        public b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        public View a(MenuItem menuItem) {
            return this.f1909d.onCreateActionView(menuItem);
        }

        public boolean b() {
            return this.f1909d.isVisible();
        }

        public boolean e() {
            return this.f1909d.overridesItemVisibility();
        }

        public void onActionProviderVisibilityChanged(boolean z) {
            C0259b.C0035b bVar = this.f1911f;
            if (bVar != null) {
                bVar.onActionProviderVisibilityChanged(z);
            }
        }

        public void a(C0259b.C0035b bVar) {
            this.f1911f = bVar;
            this.f1909d.setVisibilityListener(bVar != null ? this : null);
        }
    }

    /* compiled from: MenuItemWrapperICS */
    static class c extends FrameLayout implements b.b.f.c {

        /* renamed from: a  reason: collision with root package name */
        public final CollapsibleActionView f1913a;

        public c(View view) {
            super(view.getContext());
            this.f1913a = (CollapsibleActionView) view;
            addView(view);
        }

        public View a() {
            return (View) this.f1913a;
        }

        public void onActionViewCollapsed() {
            this.f1913a.onActionViewCollapsed();
        }

        public void onActionViewExpanded() {
            this.f1913a.onActionViewExpanded();
        }
    }

    /* compiled from: MenuItemWrapperICS */
    private class d implements MenuItem.OnActionExpandListener {

        /* renamed from: a  reason: collision with root package name */
        public final MenuItem.OnActionExpandListener f1914a;

        public d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f1914a = onActionExpandListener;
        }

        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f1914a.onMenuItemActionCollapse(p.this.a(menuItem));
        }

        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f1914a.onMenuItemActionExpand(p.this.a(menuItem));
        }
    }

    /* compiled from: MenuItemWrapperICS */
    private class e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        public final MenuItem.OnMenuItemClickListener f1916a;

        public e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f1916a = onMenuItemClickListener;
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f1916a.onMenuItemClick(p.this.a(menuItem));
        }
    }

    public p(Context context, b.i.d.a.b bVar) {
        super(context);
        if (bVar != null) {
            this.f1907d = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    public void a(boolean z) {
        try {
            if (this.f1908e == null) {
                this.f1908e = this.f1907d.getClass().getDeclaredMethod("setExclusiveCheckable", new Class[]{Boolean.TYPE});
            }
            this.f1908e.invoke(this.f1907d, new Object[]{Boolean.valueOf(z)});
        } catch (Exception e2) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
        }
    }

    public boolean collapseActionView() {
        return this.f1907d.collapseActionView();
    }

    public boolean expandActionView() {
        return this.f1907d.expandActionView();
    }

    public ActionProvider getActionProvider() {
        C0259b a2 = this.f1907d.a();
        if (a2 instanceof a) {
            return ((a) a2).f1909d;
        }
        return null;
    }

    public View getActionView() {
        View actionView = this.f1907d.getActionView();
        return actionView instanceof c ? ((c) actionView).a() : actionView;
    }

    public int getAlphabeticModifiers() {
        return this.f1907d.getAlphabeticModifiers();
    }

    public char getAlphabeticShortcut() {
        return this.f1907d.getAlphabeticShortcut();
    }

    public CharSequence getContentDescription() {
        return this.f1907d.getContentDescription();
    }

    public int getGroupId() {
        return this.f1907d.getGroupId();
    }

    public Drawable getIcon() {
        return this.f1907d.getIcon();
    }

    public ColorStateList getIconTintList() {
        return this.f1907d.getIconTintList();
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f1907d.getIconTintMode();
    }

    public Intent getIntent() {
        return this.f1907d.getIntent();
    }

    public int getItemId() {
        return this.f1907d.getItemId();
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1907d.getMenuInfo();
    }

    public int getNumericModifiers() {
        return this.f1907d.getNumericModifiers();
    }

    public char getNumericShortcut() {
        return this.f1907d.getNumericShortcut();
    }

    public int getOrder() {
        return this.f1907d.getOrder();
    }

    public SubMenu getSubMenu() {
        return a(this.f1907d.getSubMenu());
    }

    public CharSequence getTitle() {
        return this.f1907d.getTitle();
    }

    public CharSequence getTitleCondensed() {
        return this.f1907d.getTitleCondensed();
    }

    public CharSequence getTooltipText() {
        return this.f1907d.getTooltipText();
    }

    public boolean hasSubMenu() {
        return this.f1907d.hasSubMenu();
    }

    public boolean isActionViewExpanded() {
        return this.f1907d.isActionViewExpanded();
    }

    public boolean isCheckable() {
        return this.f1907d.isCheckable();
    }

    public boolean isChecked() {
        return this.f1907d.isChecked();
    }

    public boolean isEnabled() {
        return this.f1907d.isEnabled();
    }

    public boolean isVisible() {
        return this.f1907d.isVisible();
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        C0259b bVar;
        if (Build.VERSION.SDK_INT >= 16) {
            bVar = new b(this.f1836a, actionProvider);
        } else {
            bVar = new a(this.f1836a, actionProvider);
        }
        b.i.d.a.b bVar2 = this.f1907d;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.a(bVar);
        return this;
    }

    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new c(view);
        }
        this.f1907d.setActionView(view);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        this.f1907d.setAlphabeticShortcut(c2);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.f1907d.setCheckable(z);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.f1907d.setChecked(z);
        return this;
    }

    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f1907d.setContentDescription(charSequence);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.f1907d.setEnabled(z);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.f1907d.setIcon(drawable);
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1907d.setIconTintList(colorStateList);
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1907d.setIconTintMode(mode);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.f1907d.setIntent(intent);
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        this.f1907d.setNumericShortcut(c2);
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1907d.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1907d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.f1907d.setShortcut(c2, c3);
        return this;
    }

    public void setShowAsAction(int i2) {
        this.f1907d.setShowAsAction(i2);
    }

    public MenuItem setShowAsActionFlags(int i2) {
        this.f1907d.setShowAsActionFlags(i2);
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f1907d.setTitle(charSequence);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1907d.setTitleCondensed(charSequence);
        return this;
    }

    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f1907d.setTooltipText(charSequence);
        return this;
    }

    public MenuItem setVisible(boolean z) {
        return this.f1907d.setVisible(z);
    }

    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f1907d.setAlphabeticShortcut(c2, i2);
        return this;
    }

    public MenuItem setIcon(int i2) {
        this.f1907d.setIcon(i2);
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i2) {
        this.f1907d.setNumericShortcut(c2, i2);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f1907d.setShortcut(c2, c3, i2, i3);
        return this;
    }

    public MenuItem setTitle(int i2) {
        this.f1907d.setTitle(i2);
        return this;
    }

    public MenuItem setActionView(int i2) {
        this.f1907d.setActionView(i2);
        View actionView = this.f1907d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f1907d.setActionView((View) new c(actionView));
        }
        return this;
    }
}
