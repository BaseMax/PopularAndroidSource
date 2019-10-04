package com.getkeepsafe.taptargetview;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toolbar;
import java.util.ArrayList;
import java.util.Stack;

final class d extends f {

    static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Toolbar f2510a;

        a(Toolbar toolbar) {
            this.f2510a = toolbar;
        }

        public final CharSequence getNavigationContentDescription() {
            return this.f2510a.getNavigationContentDescription();
        }

        public final void setNavigationContentDescription(CharSequence charSequence) {
            this.f2510a.setNavigationContentDescription(charSequence);
        }

        public final void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i) {
            this.f2510a.findViewsWithText(arrayList, charSequence, i);
        }

        public final Drawable getNavigationIcon() {
            return this.f2510a.getNavigationIcon();
        }

        public final Drawable getOverflowIcon() {
            if (Build.VERSION.SDK_INT >= 23) {
                return this.f2510a.getOverflowIcon();
            }
            return null;
        }

        public final int getChildCount() {
            return this.f2510a.getChildCount();
        }

        public final View getChildAt(int i) {
            return this.f2510a.getChildAt(i);
        }

        public final Object internalToolbar() {
            return this.f2510a;
        }
    }

    static class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final androidx.appcompat.widget.Toolbar f2511a;

        b(androidx.appcompat.widget.Toolbar toolbar) {
            this.f2511a = toolbar;
        }

        public final CharSequence getNavigationContentDescription() {
            return this.f2511a.getNavigationContentDescription();
        }

        public final void setNavigationContentDescription(CharSequence charSequence) {
            this.f2511a.setNavigationContentDescription(charSequence);
        }

        public final void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i) {
            this.f2511a.findViewsWithText(arrayList, charSequence, i);
        }

        public final Drawable getNavigationIcon() {
            return this.f2511a.getNavigationIcon();
        }

        public final Drawable getOverflowIcon() {
            return this.f2511a.getOverflowIcon();
        }

        public final int getChildCount() {
            return this.f2511a.getChildCount();
        }

        public final View getChildAt(int i) {
            return this.f2511a.getChildAt(i);
        }

        public final Object internalToolbar() {
            return this.f2511a;
        }
    }

    interface c {
        void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i);

        View getChildAt(int i);

        int getChildCount();

        CharSequence getNavigationContentDescription();

        Drawable getNavigationIcon();

        Drawable getOverflowIcon();

        Object internalToolbar();

        void setNavigationContentDescription(CharSequence charSequence);
    }

    d(androidx.appcompat.widget.Toolbar toolbar, int i, CharSequence charSequence, CharSequence charSequence2) {
        super(toolbar.findViewById(i), charSequence, charSequence2);
    }

    d(Toolbar toolbar, int i, CharSequence charSequence, CharSequence charSequence2) {
        super(toolbar.findViewById(i), charSequence, charSequence2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    d(androidx.appcompat.widget.Toolbar toolbar, boolean z, CharSequence charSequence, CharSequence charSequence2) {
        super(z ? b(toolbar) : c(toolbar), charSequence, charSequence2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    d(Toolbar toolbar, boolean z, CharSequence charSequence, CharSequence charSequence2) {
        super(z ? b(toolbar) : c(toolbar), charSequence, charSequence2);
    }

    private static c a(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Given null instance");
        } else if (obj instanceof androidx.appcompat.widget.Toolbar) {
            return new b((androidx.appcompat.widget.Toolbar) obj);
        } else {
            if (obj instanceof Toolbar) {
                return new a((Toolbar) obj);
            }
            throw new IllegalStateException("Couldn't provide proper toolbar proxy instance");
        }
    }

    private static View b(Object obj) {
        c a2 = a(obj);
        CharSequence navigationContentDescription = a2.getNavigationContentDescription();
        boolean z = !TextUtils.isEmpty(navigationContentDescription);
        if (!z) {
            navigationContentDescription = "taptarget-findme";
        }
        a2.setNavigationContentDescription(navigationContentDescription);
        ArrayList arrayList = new ArrayList(1);
        a2.findViewsWithText(arrayList, navigationContentDescription, 2);
        if (!z) {
            a2.setNavigationContentDescription(null);
        }
        if (arrayList.size() > 0) {
            return (View) arrayList.get(0);
        }
        Drawable navigationIcon = a2.getNavigationIcon();
        if (navigationIcon != null) {
            int childCount = a2.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = a2.getChildAt(i);
                if ((childAt instanceof ImageButton) && ((ImageButton) childAt).getDrawable() == navigationIcon) {
                    return childAt;
                }
            }
            throw new IllegalStateException("Could not find navigation view for Toolbar!");
        }
        throw new IllegalStateException("Toolbar does not have a navigation view set!");
    }

    private static View c(Object obj) {
        c a2 = a(obj);
        Drawable overflowIcon = a2.getOverflowIcon();
        if (overflowIcon != null) {
            Stack stack = new Stack();
            stack.push((ViewGroup) a2.internalToolbar());
            while (!stack.empty()) {
                ViewGroup viewGroup = (ViewGroup) stack.pop();
                int childCount = viewGroup.getChildCount();
                int i = 0;
                while (true) {
                    if (i < childCount) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt instanceof ViewGroup) {
                            stack.push((ViewGroup) childAt);
                        } else if ((childAt instanceof ImageView) && ((ImageView) childAt).getDrawable() == overflowIcon) {
                            return childAt;
                        }
                        i++;
                    }
                }
            }
        }
        try {
            return (View) b.a(b.a(b.a(a2.internalToolbar(), "mMenuView"), "mPresenter"), "mOverflowButton");
        } catch (NoSuchFieldException e) {
            throw new IllegalStateException("Could not find overflow view for Toolbar!", e);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unable to access overflow view for Toolbar!", e2);
        }
    }
}
