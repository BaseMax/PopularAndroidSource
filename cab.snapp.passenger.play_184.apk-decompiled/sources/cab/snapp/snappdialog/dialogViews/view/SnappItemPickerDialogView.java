package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.NumberPicker;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.custom_views.PersianNumberPicker;
import cab.snapp.snappdialog.dialogViews.a.c;
import cab.snapp.snappdialog.dialogViews.a.e;

public class SnappItemPickerDialogView extends SnappDialogViewType {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public e f1503a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public PersianNumberPicker f1504b;

    public SnappItemPickerDialogView(Context context) {
        super(context);
    }

    public SnappItemPickerDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappItemPickerDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappItemPickerDialogView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public static int getLayout() {
        return a.f.item_picker_content_type;
    }

    private void a() {
        e eVar = this.f1503a;
        if (eVar != null && eVar.getItemSelectedListener() != null && this.f1503a.getItems() != null && this.f1503a.getItems().length != 0) {
            this.f1503a.getItemSelectedListener().onItemSelected(0, this.f1503a.getItems()[0]);
        }
    }

    public void setData(c cVar) {
        this.f1503a = (e) cVar;
        if (this.f1504b != null) {
            e eVar = this.f1503a;
            if (eVar != null && eVar.getItems() != null && this.f1503a.getItems().length != 0) {
                this.f1504b.setDescendantFocusability(393216);
                this.f1504b.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() {
                    public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                        if (numberPicker != null && SnappItemPickerDialogView.this.f1504b != null && SnappItemPickerDialogView.this.f1503a != null && i2 > 0 && numberPicker.getId() == SnappItemPickerDialogView.this.f1504b.getId() && SnappItemPickerDialogView.this.f1503a.getItemSelectedListener() != null && SnappItemPickerDialogView.this.f1503a.getItems() != null && SnappItemPickerDialogView.this.f1503a.getItems().length != 0 && SnappItemPickerDialogView.this.f1503a.getItems().length >= i2) {
                            int i3 = i2 - 1;
                            SnappItemPickerDialogView.this.f1503a.getItemSelectedListener().onItemSelected(i3, SnappItemPickerDialogView.this.f1503a.getItems()[i3]);
                        }
                    }
                });
                this.f1504b.setMinValue(1);
                this.f1504b.setMaxValue(this.f1503a.getItems().length);
                this.f1504b.setDisplayedValues(this.f1503a.getItems());
                this.f1504b.setWrapSelectorWheel(this.f1503a.isRepeatingEnabled());
                a();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1504b = (PersianNumberPicker) findViewById(a.e.picker_first);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }
}
