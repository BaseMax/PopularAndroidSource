package androidx.navigation;

import android.os.Bundle;

public final class NavAction {
    private Bundle mDefaultArguments;
    private final int mDestinationId;
    private NavOptions mNavOptions;

    public NavAction(int i) {
        this(i, null);
    }

    public NavAction(int i, NavOptions navOptions) {
        this(i, navOptions, null);
    }

    public NavAction(int i, NavOptions navOptions, Bundle bundle) {
        this.mDestinationId = i;
        this.mNavOptions = navOptions;
        this.mDefaultArguments = bundle;
    }

    public final int getDestinationId() {
        return this.mDestinationId;
    }

    public final void setNavOptions(NavOptions navOptions) {
        this.mNavOptions = navOptions;
    }

    public final NavOptions getNavOptions() {
        return this.mNavOptions;
    }

    public final Bundle getDefaultArguments() {
        return this.mDefaultArguments;
    }

    public final void setDefaultArguments(Bundle bundle) {
        this.mDefaultArguments = bundle;
    }
}
