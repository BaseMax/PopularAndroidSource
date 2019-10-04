package b.i.d.a;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.MenuItem;
import android.view.View;
import b.i.k.C0259b;

/* compiled from: SupportMenuItem */
public interface b extends MenuItem {
    b a(C0259b bVar);

    C0259b a();

    boolean collapseActionView();

    boolean expandActionView();

    View getActionView();

    int getAlphabeticModifiers();

    CharSequence getContentDescription();

    ColorStateList getIconTintList();

    PorterDuff.Mode getIconTintMode();

    int getNumericModifiers();

    CharSequence getTooltipText();

    boolean isActionViewExpanded();

    MenuItem setActionView(int i2);

    MenuItem setActionView(View view);

    MenuItem setAlphabeticShortcut(char c2, int i2);

    b setContentDescription(CharSequence charSequence);

    MenuItem setIconTintList(ColorStateList colorStateList);

    MenuItem setIconTintMode(PorterDuff.Mode mode);

    MenuItem setNumericShortcut(char c2, int i2);

    MenuItem setShortcut(char c2, char c3, int i2, int i3);

    void setShowAsAction(int i2);

    MenuItem setShowAsActionFlags(int i2);

    b setTooltipText(CharSequence charSequence);
}
