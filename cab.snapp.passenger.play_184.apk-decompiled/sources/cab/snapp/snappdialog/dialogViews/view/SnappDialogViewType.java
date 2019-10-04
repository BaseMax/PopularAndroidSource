package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import cab.snapp.snappdialog.dialogViews.a.c;

public abstract class SnappDialogViewType extends LinearLayout {
    public abstract void setData(c cVar);

    public SnappDialogViewType(Context context) {
        super(context);
    }

    public SnappDialogViewType(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappDialogViewType(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappDialogViewType(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
