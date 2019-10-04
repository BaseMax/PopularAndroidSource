package androidx.navigation.ui;

import android.view.Menu;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavGraph;
import java.util.HashSet;
import java.util.Set;

public final class AppBarConfiguration {
    private final DrawerLayout mDrawerLayout;
    private final OnNavigateUpListener mFallbackOnNavigateUpListener;
    private final Set<Integer> mTopLevelDestinations;

    public static final class Builder {
        private DrawerLayout mDrawerLayout;
        private OnNavigateUpListener mFallbackOnNavigateUpListener;
        private final Set<Integer> mTopLevelDestinations = new HashSet();

        public Builder(NavGraph navGraph) {
            this.mTopLevelDestinations.add(Integer.valueOf(NavigationUI.findStartDestination(navGraph).getId()));
        }

        public Builder(Menu menu) {
            int size = menu.size();
            for (int i = 0; i < size; i++) {
                this.mTopLevelDestinations.add(Integer.valueOf(menu.getItem(i).getItemId()));
            }
        }

        public Builder(int... iArr) {
            for (int valueOf : iArr) {
                this.mTopLevelDestinations.add(Integer.valueOf(valueOf));
            }
        }

        public Builder(Set<Integer> set) {
            this.mTopLevelDestinations.addAll(set);
        }

        public final Builder setDrawerLayout(DrawerLayout drawerLayout) {
            this.mDrawerLayout = drawerLayout;
            return this;
        }

        public final Builder setFallbackOnNavigateUpListener(OnNavigateUpListener onNavigateUpListener) {
            this.mFallbackOnNavigateUpListener = onNavigateUpListener;
            return this;
        }

        public final AppBarConfiguration build() {
            return new AppBarConfiguration(this.mTopLevelDestinations, this.mDrawerLayout, this.mFallbackOnNavigateUpListener);
        }
    }

    public interface OnNavigateUpListener {
        boolean onNavigateUp();
    }

    private AppBarConfiguration(Set<Integer> set, DrawerLayout drawerLayout, OnNavigateUpListener onNavigateUpListener) {
        this.mTopLevelDestinations = set;
        this.mDrawerLayout = drawerLayout;
        this.mFallbackOnNavigateUpListener = onNavigateUpListener;
    }

    public final Set<Integer> getTopLevelDestinations() {
        return this.mTopLevelDestinations;
    }

    public final DrawerLayout getDrawerLayout() {
        return this.mDrawerLayout;
    }

    public final OnNavigateUpListener getFallbackOnNavigateUpListener() {
        return this.mFallbackOnNavigateUpListener;
    }
}
