package cab.snapp.snappdialog.b;

import android.app.Activity;
import android.view.View;

public final class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private cab.snapp.snappdialog.b f1465a;

    /* renamed from: b  reason: collision with root package name */
    private View.OnClickListener f1466b;

    public b(View.OnClickListener onClickListener, cab.snapp.snappdialog.b bVar) {
        this.f1466b = onClickListener;
        this.f1465a = bVar;
    }

    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f1466b;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        cab.snapp.snappdialog.b bVar = this.f1465a;
        if (bVar != null && (!(bVar.getContext() instanceof Activity) || !((Activity) this.f1465a.getContext()).isFinishing())) {
            if (this.f1465a.isShowing()) {
                this.f1465a.dismiss();
            }
            this.f1465a.cancel();
            this.f1465a.releaseMemory();
        }
    }
}
