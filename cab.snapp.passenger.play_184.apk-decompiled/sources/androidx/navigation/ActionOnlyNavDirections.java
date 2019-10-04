package androidx.navigation;

import android.os.Bundle;

public final class ActionOnlyNavDirections implements NavDirections {
    private final int mActionId;

    public ActionOnlyNavDirections(int i) {
        this.mActionId = i;
    }

    public final int getActionId() {
        return this.mActionId;
    }

    public final Bundle getArguments() {
        return new Bundle();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && getActionId() == ((ActionOnlyNavDirections) obj).getActionId();
    }

    public final int hashCode() {
        return getActionId() + 31;
    }

    public final String toString() {
        return "ActionOnlyNavDirections(actionId=" + getActionId() + ")";
    }
}
