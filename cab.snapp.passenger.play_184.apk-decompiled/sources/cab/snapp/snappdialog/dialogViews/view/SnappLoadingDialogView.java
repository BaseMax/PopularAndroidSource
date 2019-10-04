package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.dialogViews.a.c;
import cab.snapp.snappdialog.dialogViews.a.f;

public class SnappLoadingDialogView extends SnappDialogViewType {

    /* renamed from: a  reason: collision with root package name */
    f f1506a = null;

    /* renamed from: b  reason: collision with root package name */
    private AppCompatTextView f1507b;

    public SnappLoadingDialogView(Context context) {
        super(context);
    }

    public SnappLoadingDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappLoadingDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappLoadingDialogView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public static int getLayout() {
        return a.f.loading_content_type;
    }

    public void setData(c cVar) {
        this.f1506a = (f) cVar;
        f fVar = this.f1506a;
        if (this.f1507b != null && fVar != null && fVar.getTitle() != null && !fVar.getTitle().isEmpty()) {
            this.f1507b.setText(fVar.getTitle());
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1507b = (AppCompatTextView) findViewById(a.e.loading_content_type_title_tv);
    }
}
