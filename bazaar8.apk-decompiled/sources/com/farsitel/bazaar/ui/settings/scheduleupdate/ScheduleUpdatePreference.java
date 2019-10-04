package com.farsitel.bazaar.ui.settings.scheduleupdate;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.preference.TwoStatePreference;
import b.x.B;
import b.x.I;
import c.c.a.c.d.e;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.ScheduleUpdateItemClick;
import com.farsitel.bazaar.analytics.model.where.SettingsScreen;
import h.f.b.f;
import h.f.b.j;
import h.f.b.n;
import java.util.Arrays;
import java.util.Calendar;
import kotlin.TypeCastException;

/* compiled from: ScheduleUpdatePreference.kt */
public final class ScheduleUpdatePreference extends TwoStatePreference {
    public int S;
    public int T;
    public int U;
    public int V;
    public b W;
    public b X;
    public final a Y;

    /* compiled from: ScheduleUpdatePreference.kt */
    private final class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            j.b(compoundButton, "buttonView");
            if (!ScheduleUpdatePreference.this.a((Object) Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
                return;
            }
            ScheduleUpdatePreference.this.d(z);
            c.c.a.a.a.f4477c.a(new c.c.a.a.a.a(MetaDataStore.USERDATA_SUFFIX, new ScheduleUpdateItemClick(compoundButton.isChecked(), e.a()), new SettingsScreen()));
        }
    }

    /* compiled from: ScheduleUpdatePreference.kt */
    public interface b {
        void a();
    }

    public ScheduleUpdatePreference(Context context) {
        this(context, null, 0, 0, 14, null);
    }

    public ScheduleUpdatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
    }

    public ScheduleUpdatePreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0, 8, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ScheduleUpdatePreference(Context context, AttributeSet attributeSet, int i2, int i3, int i4, f fVar) {
        this(context, (i4 & 2) != 0 ? null : attributeSet, (i4 & 4) != 0 ? R.attr.preferenceStyle : i2, (i4 & 8) != 0 ? 0 : i3);
    }

    public final b O() {
        return this.X;
    }

    public final b P() {
        return this.W;
    }

    public final String Q() {
        int a2 = a(this.S, this.T);
        int a3 = a(this.U, this.V);
        int i2 = a2 <= a3 ? a3 - a2 : 1440 - (a2 - a3);
        return g(i2 / 60) + ':' + g(i2 % 60);
    }

    public final void R() {
        Context h2 = h();
        d((CharSequence) h2.getString(R.string.schedule_update_clarification__, new Object[]{g(this.S) + ':' + g(this.T), g(this.U) + ':' + g(this.V), Q()}));
    }

    public final int a(int i2, int i3) {
        return (i2 * 60) + i3;
    }

    public final void a(b bVar) {
        this.X = bVar;
    }

    public final void b(b bVar) {
        this.W = bVar;
    }

    public final void c(B b2) {
        if (b2 != null) {
            View c2 = b2.c((int) R.id.startTime);
            if (c2 != null) {
                c2.setOnClickListener(new a(this));
            }
        }
        if (b2 != null) {
            View c3 = b2.c((int) R.id.endTime);
            if (c3 != null) {
                c3.setOnClickListener(new b(this));
            }
        }
        View c4 = b2 != null ? b2.c((int) R.id.startTime) : null;
        if (c4 != null) {
            Button button = (Button) c4;
            View c5 = b2.c((int) R.id.endTime);
            if (c5 != null) {
                button.setText(g(this.S) + ':' + g(this.T));
                ((Button) c5).setText(g(this.U) + ':' + g(this.V));
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
    }

    public final String g(int i2) {
        n nVar = n.f14575a;
        Object[] objArr = {Integer.valueOf(i2)};
        String format = String.format("%02d", Arrays.copyOf(objArr, objArr.length));
        j.a((Object) format, "java.lang.String.format(format, *args)");
        return format;
    }

    public ScheduleUpdatePreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.Y = new a();
        d((int) R.layout.item_preference_schedule_update);
        TypedArray obtainStyledAttributes = context != null ? context.obtainStyledAttributes(attributeSet, I.CheckBoxPreference, i2, i3) : null;
        if (obtainStyledAttributes != null) {
            R();
            c(a(obtainStyledAttributes, 4, 1));
            e(a(obtainStyledAttributes, 3, 2, false));
        }
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(B b2) {
        super.a(b2);
        c(b2 != null ? b2.c((int) R.id.checkbox) : null);
        b(b2);
    }

    public final void b(Calendar calendar) {
        j.b(calendar, "calendar");
        this.S = calendar.get(11);
        this.T = calendar.get(12);
        R();
    }

    public final void a(Calendar calendar) {
        j.b(calendar, "calendar");
        this.U = calendar.get(11);
        this.V = calendar.get(12);
        R();
    }

    public void b(B b2) {
        View c2 = b2 != null ? b2.c((int) R.id.summary) : null;
        if (c2 != null) {
            View c3 = b2.c((int) R.id.timeSelectionParent);
            j.a((Object) c3, "timeView");
            a((TextView) c2, c3);
            c(b2);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0050  */
    /* JADX WARNING: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.widget.TextView r4, android.view.View r5) {
        /*
            r3 = this;
            boolean r0 = r3.P
            r1 = 0
            if (r0 == 0) goto L_0x001b
            java.lang.CharSequence r0 = r3.M()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x001b
            java.lang.CharSequence r0 = r3.M()
            r4.setText(r0)
            c.c.a.d.b.l.c(r5)
        L_0x0019:
            r5 = 0
            goto L_0x0035
        L_0x001b:
            boolean r0 = r3.P
            if (r0 != 0) goto L_0x0034
            java.lang.CharSequence r0 = r3.L()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0034
            java.lang.CharSequence r0 = r3.L()
            r4.setText(r0)
            c.c.a.d.b.l.a(r5)
            goto L_0x0019
        L_0x0034:
            r5 = 1
        L_0x0035:
            if (r5 == 0) goto L_0x0045
            java.lang.CharSequence r0 = r3.s()
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L_0x0045
            r4.setText(r0)
            r5 = 0
        L_0x0045:
            if (r5 != 0) goto L_0x0048
            goto L_0x004a
        L_0x0048:
            r1 = 8
        L_0x004a:
            int r5 = r4.getVisibility()
            if (r1 == r5) goto L_0x0053
            r4.setVisibility(r1)
        L_0x0053:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference.a(android.widget.TextView, android.view.View):void");
    }

    public final void c(View view) {
        if (view instanceof CompoundButton) {
            CompoundButton compoundButton = (CompoundButton) view;
            compoundButton.setOnCheckedChangeListener(this.Y);
            compoundButton.setChecked(this.P);
        }
    }

    public final String a(TypedArray typedArray, int i2, int i3) {
        String string = typedArray.getString(i2);
        return string != null ? string : typedArray.getString(i3);
    }

    public final boolean a(TypedArray typedArray, int i2, int i3, boolean z) {
        return typedArray.getBoolean(i2, typedArray.getBoolean(i3, z));
    }
}
