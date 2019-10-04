package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.NumberPicker;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.c.a;
import cab.snapp.snappdialog.custom_views.PersianNumberPicker;
import cab.snapp.snappdialog.dialogViews.a.b;
import cab.snapp.snappdialog.dialogViews.a.c;
import java.util.ArrayList;
import java.util.List;

public class SnappDatePickerDialogView extends SnappDialogViewType {

    /* renamed from: a  reason: collision with root package name */
    private b f1495a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f1496b;
    private List<String> c = new ArrayList();
    private List<String> d = new ArrayList();
    /* access modifiers changed from: private */
    public a e = new a();
    /* access modifiers changed from: private */
    public PersianNumberPicker f;
    /* access modifiers changed from: private */
    public PersianNumberPicker g;
    /* access modifiers changed from: private */
    public PersianNumberPicker h;

    public SnappDatePickerDialogView(Context context) {
        super(context);
    }

    public SnappDatePickerDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappDatePickerDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappDatePickerDialogView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public static int getLayout() {
        return a.f.date_picker_content_type;
    }

    /* access modifiers changed from: private */
    public void a() {
        b bVar = this.f1495a;
        if (bVar != null && bVar.getDateSelectedListener() != null) {
            this.f1495a.getDateSelectedListener().onDateSelected(this.e);
        }
    }

    public void setData(c cVar) {
        this.f1495a = (b) cVar;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f = (PersianNumberPicker) findViewById(a.e.picker_first);
        this.g = (PersianNumberPicker) findViewById(a.e.picker_second);
        this.h = (PersianNumberPicker) findViewById(a.e.picker_third);
        if (this.f != null && this.g != null && this.h != null) {
            cab.snapp.snappdialog.d.a aVar = new cab.snapp.snappdialog.d.a();
            int iranianYear = aVar.getIranianYear();
            int iranianMonth = aVar.getIranianMonth();
            int iranianDay = aVar.getIranianDay();
            if (getContext() != null) {
                if (getContext().getResources() != null) {
                    this.f1496b = getContext().getResources().getStringArray(a.C0025a.month_list);
                }
                for (int i = 1; i <= 31; i++) {
                    this.d.add(cab.snapp.snappdialog.d.b.convertToCorrectLanguage(getContext(), String.valueOf(i)));
                }
                for (int i2 = 1300; i2 <= iranianYear; i2++) {
                    this.c.add(cab.snapp.snappdialog.d.b.convertToCorrectLanguage(getContext(), String.valueOf(i2)));
                }
            }
            this.f.setDescendantFocusability(393216);
            this.g.setDescendantFocusability(393216);
            this.h.setDescendantFocusability(393216);
            AnonymousClass1 r3 = new NumberPicker.OnValueChangeListener() {
                public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    if (numberPicker != null && SnappDatePickerDialogView.this.f != null && SnappDatePickerDialogView.this.g != null && SnappDatePickerDialogView.this.h != null && numberPicker == SnappDatePickerDialogView.this.f && SnappDatePickerDialogView.this.e != null) {
                        SnappDatePickerDialogView.this.e.setYear(i2);
                        SnappDatePickerDialogView.this.a();
                    }
                }
            };
            AnonymousClass2 r7 = new NumberPicker.OnValueChangeListener() {
                public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    if (numberPicker != null && SnappDatePickerDialogView.this.f != null && SnappDatePickerDialogView.this.g != null && SnappDatePickerDialogView.this.h != null && numberPicker == SnappDatePickerDialogView.this.g) {
                        if (i2 <= 6) {
                            SnappDatePickerDialogView.this.h.setMaxValue(31);
                        } else {
                            if (SnappDatePickerDialogView.this.h.getValue() == 31 && SnappDatePickerDialogView.this.e != null) {
                                SnappDatePickerDialogView.this.e.setDay(30);
                            }
                            SnappDatePickerDialogView.this.h.setMaxValue(30);
                        }
                        if (SnappDatePickerDialogView.this.e != null) {
                            SnappDatePickerDialogView.this.e.setMonth(i2);
                            SnappDatePickerDialogView.this.a();
                        }
                    }
                }
            };
            AnonymousClass3 r8 = new NumberPicker.OnValueChangeListener() {
                public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    if (numberPicker != null && SnappDatePickerDialogView.this.f != null && SnappDatePickerDialogView.this.g != null && SnappDatePickerDialogView.this.h != null && numberPicker.getId() == SnappDatePickerDialogView.this.h.getId() && SnappDatePickerDialogView.this.e != null) {
                        SnappDatePickerDialogView.this.e.setDay(i2);
                        SnappDatePickerDialogView.this.a();
                    }
                }
            };
            this.f.setOnValueChangedListener(r3);
            this.g.setOnValueChangedListener(r7);
            this.h.setOnValueChangedListener(r8);
            this.f.setMinValue(1300);
            this.f.setMaxValue(iranianYear);
            this.f.setWrapSelectorWheel(true);
            List<String> list = this.c;
            if (list != null) {
                this.f.setDisplayedValues((String[]) list.toArray(new String[list.size()]));
            }
            this.g.setMinValue(1);
            this.g.setMaxValue(12);
            String[] strArr = this.f1496b;
            if (strArr != null) {
                this.g.setDisplayedValues(strArr);
            }
            this.h.setMinValue(1);
            this.h.setMaxValue(31);
            List<String> list2 = this.d;
            if (list2 != null) {
                this.h.setDisplayedValues((String[]) list2.toArray(new String[list2.size()]));
            }
            this.f.setValue(iranianYear);
            this.g.setValue(iranianMonth);
            this.h.setValue(iranianDay);
            cab.snapp.snappdialog.c.a aVar2 = this.e;
            if (aVar2 != null) {
                aVar2.setYear(iranianYear);
                this.e.setMonth(iranianMonth);
                this.e.setDay(iranianDay);
                a();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }
}
