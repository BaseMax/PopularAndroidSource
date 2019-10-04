package androidx.navigation.ui;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.core.app.NotificationCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

abstract class AbstractAppBarOnDestinationChangedListener implements NavController.OnDestinationChangedListener {
    private ValueAnimator mAnimator;
    private DrawerArrowDrawable mArrowDrawable;
    private final Context mContext;
    private final WeakReference<DrawerLayout> mDrawerLayoutWeakReference;
    private final Set<Integer> mTopLevelDestinations;

    /* access modifiers changed from: protected */
    public abstract void setNavigationIcon(Drawable drawable, int i);

    /* access modifiers changed from: protected */
    public abstract void setTitle(CharSequence charSequence);

    AbstractAppBarOnDestinationChangedListener(Context context, AppBarConfiguration appBarConfiguration) {
        this.mContext = context;
        this.mTopLevelDestinations = appBarConfiguration.getTopLevelDestinations();
        DrawerLayout drawerLayout = appBarConfiguration.getDrawerLayout();
        if (drawerLayout != null) {
            this.mDrawerLayoutWeakReference = new WeakReference<>(drawerLayout);
        } else {
            this.mDrawerLayoutWeakReference = null;
        }
    }

    public void onDestinationChanged(NavController navController, NavDestination navDestination, Bundle bundle) {
        WeakReference<DrawerLayout> weakReference = this.mDrawerLayoutWeakReference;
        DrawerLayout drawerLayout = weakReference != null ? (DrawerLayout) weakReference.get() : null;
        if (this.mDrawerLayoutWeakReference == null || drawerLayout != null) {
            CharSequence label = navDestination.getLabel();
            if (!TextUtils.isEmpty(label)) {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(label);
                while (matcher.find()) {
                    String group = matcher.group(1);
                    if (bundle == null || !bundle.containsKey(group)) {
                        throw new IllegalArgumentException("Could not find " + group + " in " + bundle + " to fill label " + label);
                    }
                    matcher.appendReplacement(stringBuffer, "");
                    stringBuffer.append(bundle.get(group).toString());
                }
                matcher.appendTail(stringBuffer);
                setTitle(stringBuffer);
            }
            boolean matchDestinations = NavigationUI.matchDestinations(navDestination, this.mTopLevelDestinations);
            boolean z = false;
            if (drawerLayout != null || !matchDestinations) {
                if (drawerLayout != null && matchDestinations) {
                    z = true;
                }
                setActionBarUpIndicator(z);
                return;
            }
            setNavigationIcon(null, 0);
            return;
        }
        navController.removeOnDestinationChangedListener(this);
    }

    private void setActionBarUpIndicator(boolean z) {
        boolean z2;
        if (this.mArrowDrawable == null) {
            this.mArrowDrawable = new DrawerArrowDrawable(this.mContext);
            z2 = false;
        } else {
            z2 = true;
        }
        setNavigationIcon(this.mArrowDrawable, z ? R.string.nav_app_bar_open_drawer_description : R.string.nav_app_bar_navigate_up_description);
        float f = z ? 0.0f : 1.0f;
        if (z2) {
            float progress = this.mArrowDrawable.getProgress();
            ValueAnimator valueAnimator = this.mAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.mAnimator = ObjectAnimator.ofFloat(this.mArrowDrawable, NotificationCompat.CATEGORY_PROGRESS, new float[]{progress, f});
            this.mAnimator.start();
            return;
        }
        this.mArrowDrawable.setProgress(f);
    }
}
