package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class TransitionValues {
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();
    public final Map<String, Object> values = new HashMap();
    public View view;

    public boolean equals(Object obj) {
        if (obj instanceof TransitionValues) {
            TransitionValues transitionValues = (TransitionValues) obj;
            if (this.view == transitionValues.view && this.values.equals(transitionValues.values)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.view.hashCode() * 31) + this.values.hashCode();
    }

    public String toString() {
        String str = "TransitionValues@" + Integer.toHexString(hashCode()) + ":\n";
        String str2 = str + "    view = " + this.view + "\n";
        String str3 = str2 + "    values:";
        for (String next : this.values.keySet()) {
            str3 = str3 + "    " + next + ": " + this.values.get(next) + "\n";
        }
        return str3;
    }
}
