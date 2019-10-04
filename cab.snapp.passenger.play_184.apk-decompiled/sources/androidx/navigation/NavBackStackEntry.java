package androidx.navigation;

import android.os.Bundle;

final class NavBackStackEntry {
    private final Bundle mArgs;
    private final NavDestination mDestination;

    NavBackStackEntry(NavDestination navDestination, Bundle bundle) {
        this.mDestination = navDestination;
        this.mArgs = bundle;
    }

    public final NavDestination getDestination() {
        return this.mDestination;
    }

    public final Bundle getArguments() {
        return this.mArgs;
    }
}
