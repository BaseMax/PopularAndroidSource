package com.farsitel.bazaar.widget.persianpicker;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import c.c.a.f;
import c.c.a.o.b.a;
import c.c.a.o.b.b;
import c.c.a.o.b.c;
import c.c.a.o.b.d;
import c.c.a.o.b.e;
import com.farsitel.bazaar.R;
import java.lang.reflect.Field;
import java.util.Date;

public class PersianDatePicker extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    public final PersianCalendar f12434a;

    /* renamed from: b  reason: collision with root package name */
    public int f12435b;

    /* renamed from: c  reason: collision with root package name */
    public int f12436c;

    /* renamed from: d  reason: collision with root package name */
    public int f12437d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f12438e;

    /* renamed from: f  reason: collision with root package name */
    public NumberPickerWithCustomFont f12439f;

    /* renamed from: g  reason: collision with root package name */
    public NumberPickerWithCustomFont f12440g;

    /* renamed from: h  reason: collision with root package name */
    public NumberPickerWithCustomFont f12441h;

    /* renamed from: i  reason: collision with root package name */
    public int f12442i;

    /* renamed from: j  reason: collision with root package name */
    public int f12443j;

    /* renamed from: k  reason: collision with root package name */
    public int f12444k;

    /* renamed from: l  reason: collision with root package name */
    public int f12445l;
    public NumberPicker.OnValueChangeListener m;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new g();

        /* renamed from: a  reason: collision with root package name */
        public long f12446a;

        public /* synthetic */ SavedState(Parcel parcel, f fVar) {
            this(parcel);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeLong(this.f12446a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f12446a = parcel.readLong();
        }
    }

    public PersianDatePicker(Context context) {
        this(context, null, -1);
    }

    public Date getDisplayDate() {
        PersianCalendar persianCalendar = new PersianCalendar();
        persianCalendar.a(this.f12439f.getValue(), this.f12440g.getValue(), this.f12441h.getValue());
        return persianCalendar.getTime();
    }

    public PersianCalendar getDisplayPersianDate() {
        PersianCalendar persianCalendar = new PersianCalendar();
        persianCalendar.a(this.f12439f.getValue(), this.f12440g.getValue(), this.f12441h.getValue());
        return persianCalendar;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setDisplayDate(new Date(savedState.f12446a));
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f12446a = getDisplayDate().getTime();
        return savedState;
    }

    public void setBackgroundColor(int i2) {
        this.f12439f.setBackgroundColor(i2);
        this.f12440g.setBackgroundColor(i2);
        this.f12441h.setBackgroundColor(i2);
    }

    public void setDisplayDate(Date date) {
        setDisplayPersianDate(new PersianCalendar(date.getTime()));
    }

    public void setDisplayPersianDate(PersianCalendar persianCalendar) {
        int j2 = persianCalendar.j();
        int h2 = persianCalendar.h();
        int g2 = persianCalendar.g();
        int i2 = 30;
        if ((h2 <= 6 || h2 >= 12 || g2 != 31) && (!e.a(j2) || g2 != 31)) {
            i2 = g2 > 29 ? 29 : g2;
        }
        this.f12436c = j2;
        this.f12435b = h2;
        this.f12437d = i2;
        int i3 = this.f12442i;
        int i4 = this.f12436c;
        if (i3 > i4) {
            this.f12442i = i4 - this.f12445l;
            this.f12439f.setMinValue(this.f12442i);
        }
        int i5 = this.f12443j;
        int i6 = this.f12436c;
        if (i5 < i6) {
            this.f12443j = i6 + this.f12445l;
            this.f12439f.setMaxValue(this.f12443j);
        }
        this.f12439f.setValue(j2);
        this.f12440g.setValue(h2);
        this.f12441h.setValue(i2);
    }

    public void setDividerColor(int i2) {
        this.f12444k = i2;
        a();
    }

    public void setMaxYear(int i2) {
        this.f12443j = i2;
        a();
    }

    public void setMinYear(int i2) {
        this.f12442i = i2;
        a();
    }

    public PersianDatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.PersianDatePicker, 0, 0);
        this.f12442i = obtainStyledAttributes.getInt(1, this.f12434a.j() - this.f12445l);
        this.f12438e = obtainStyledAttributes.getBoolean(0, false);
        this.f12437d = this.f12434a.g();
        this.f12436c = this.f12434a.j();
        this.f12435b = this.f12434a.h();
        int i2 = this.f12442i;
        int i3 = this.f12436c;
        if (i2 > i3) {
            this.f12442i = i3 - this.f12445l;
        }
        int i4 = this.f12443j;
        int i5 = this.f12436c;
        if (i4 < i5) {
            this.f12443j = i5 + this.f12445l;
        }
        obtainStyledAttributes.recycle();
    }

    public PersianDatePicker(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12445l = 0;
        this.m = new f(this);
        View inflate = LayoutInflater.from(context).inflate(R.layout.persian_date_picker, this);
        this.f12439f = (NumberPickerWithCustomFont) inflate.findViewById(R.id.yearNumberPicker);
        this.f12440g = (NumberPickerWithCustomFont) inflate.findViewById(R.id.monthNumberPicker);
        this.f12441h = (NumberPickerWithCustomFont) inflate.findViewById(R.id.dayNumberPicker);
        this.f12439f.setFormatter(c.f7129a);
        this.f12440g.setFormatter(a.f7127a);
        this.f12441h.setFormatter(b.f7128a);
        this.f12434a = new PersianCalendar();
        a(context, attributeSet);
        a();
    }

    public final void a(NumberPicker numberPicker, int i2) {
        Field[] declaredFields = NumberPicker.class.getDeclaredFields();
        int length = declaredFields.length;
        int i3 = 0;
        while (i3 < length) {
            Field field = declaredFields[i3];
            if (field.getName().equals("mSelectionDivider")) {
                field.setAccessible(true);
                try {
                    field.set(numberPicker, new ColorDrawable(i2));
                    return;
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    return;
                } catch (Resources.NotFoundException e3) {
                    e3.printStackTrace();
                    return;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return;
                }
            } else {
                i3++;
            }
        }
    }

    public final void a() {
        int i2 = this.f12444k;
        if (i2 > 0) {
            a((NumberPicker) this.f12439f, i2);
            a((NumberPicker) this.f12440g, this.f12444k);
            a((NumberPicker) this.f12441h, this.f12444k);
        }
        this.f12439f.setMinValue(this.f12442i);
        this.f12439f.setMaxValue(this.f12443j);
        int i3 = this.f12436c;
        int i4 = this.f12443j;
        if (i3 > i4) {
            this.f12436c = i4;
        }
        int i5 = this.f12436c;
        int i6 = this.f12442i;
        if (i5 < i6) {
            this.f12436c = i6;
        }
        this.f12439f.setValue(this.f12436c);
        this.f12439f.setOnValueChangedListener(this.m);
        this.f12440g.setMinValue(1);
        this.f12440g.setMaxValue(12);
        if (this.f12438e) {
            this.f12440g.setDisplayedValues(d.f7130a);
        }
        int i7 = this.f12435b;
        if (i7 < 1 || i7 > 12) {
            throw new IllegalArgumentException(String.format("Selected month (%d) must be between 1 and 12", new Object[]{Integer.valueOf(this.f12435b)}));
        }
        this.f12440g.setValue(i7);
        this.f12440g.setOnValueChangedListener(this.m);
        this.f12441h.setMinValue(1);
        this.f12441h.setMaxValue(31);
        int i8 = this.f12437d;
        if (i8 > 31 || i8 < 1) {
            throw new IllegalArgumentException(String.format("Selected day (%d) must be between 1 and 31", new Object[]{Integer.valueOf(this.f12437d)}));
        }
        int i9 = this.f12435b;
        if (i9 > 6 && i9 < 12 && i8 == 31) {
            this.f12437d = 30;
        } else if (e.a(this.f12436c) && this.f12437d == 31) {
            this.f12437d = 30;
        } else if (this.f12437d > 29) {
            this.f12437d = 29;
        }
        this.f12441h.setValue(this.f12437d);
        this.f12441h.setOnValueChangedListener(this.m);
    }
}
