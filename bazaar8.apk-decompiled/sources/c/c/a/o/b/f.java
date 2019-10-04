package c.c.a.o.b;

import android.widget.NumberPicker;
import com.farsitel.bazaar.widget.persianpicker.PersianDatePicker;

/* compiled from: PersianDatePicker */
class f implements NumberPicker.OnValueChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PersianDatePicker f7131a;

    public f(PersianDatePicker persianDatePicker) {
        this.f7131a = persianDatePicker;
    }

    public void onValueChange(NumberPicker numberPicker, int i2, int i3) {
        boolean a2 = e.a(this.f7131a.f12439f.getValue());
        int value = this.f7131a.f12440g.getValue();
        int value2 = this.f7131a.f12441h.getValue();
        if (value < 7) {
            this.f7131a.f12441h.setMinValue(1);
            this.f7131a.f12441h.setMaxValue(31);
        } else if (value < 12) {
            if (value2 == 31) {
                this.f7131a.f12441h.setValue(30);
            }
            this.f7131a.f12441h.setMinValue(1);
            this.f7131a.f12441h.setMaxValue(30);
        } else if (value != 12) {
        } else {
            if (a2) {
                if (value2 == 31) {
                    this.f7131a.f12441h.setValue(30);
                }
                this.f7131a.f12441h.setMinValue(1);
                this.f7131a.f12441h.setMaxValue(30);
                return;
            }
            if (value2 > 29) {
                this.f7131a.f12441h.setValue(29);
            }
            this.f7131a.f12441h.setMinValue(1);
            this.f7131a.f12441h.setMaxValue(29);
        }
    }
}
