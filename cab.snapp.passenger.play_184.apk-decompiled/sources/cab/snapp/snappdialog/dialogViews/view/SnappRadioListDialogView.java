package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.a.c;
import cab.snapp.snappdialog.dialogViews.a.i;

public class SnappRadioListDialogView extends SnappDialogViewType {

    /* renamed from: a  reason: collision with root package name */
    i f1512a = null;

    /* renamed from: b  reason: collision with root package name */
    c f1513b;
    AppCompatTextView c;
    RecyclerView d;

    public SnappRadioListDialogView(Context context) {
        super(context);
    }

    public SnappRadioListDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappRadioListDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappRadioListDialogView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public static int getLayout() {
        return a.f.radio_list_content_type;
    }

    public void setDirection(int i) {
        if (i == 1001) {
            this.c.setTextDirection(3);
            this.c.setGravity(3);
            return;
        }
        if (i == 1002) {
            this.c.setGravity(5);
            this.c.setTextDirection(4);
        }
    }

    public void setData(cab.snapp.snappdialog.dialogViews.a.c cVar) {
        this.f1512a = (i) cVar;
        i iVar = this.f1512a;
        if (this.c != null && iVar != null) {
            if (iVar.getMessage() != null && !iVar.getMessage().isEmpty()) {
                this.c.setVisibility(0);
                this.c.setText(iVar.getMessage());
            }
            if (iVar.getMessageList() != null && !iVar.getMessageList().isEmpty()) {
                this.f1513b = new c(getContext(), iVar.getMessageList(), iVar.getDefaultCheckedItemPosition(), iVar.getSingleItemSelectedListener());
                this.d.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
                this.d.setAdapter(this.f1513b);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.c = (AppCompatTextView) findViewById(a.e.list_content_type_message);
        this.d = (RecyclerView) findViewById(a.e.list_content_type_recycler);
    }
}
