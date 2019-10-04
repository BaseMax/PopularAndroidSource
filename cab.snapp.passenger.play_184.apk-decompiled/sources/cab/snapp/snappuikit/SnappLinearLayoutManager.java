package cab.snapp.snappuikit;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;

public class SnappLinearLayoutManager extends LinearLayoutManager {
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public SnappLinearLayoutManager(Context context) {
        super(context);
    }

    public SnappLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
    }

    public SnappLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
