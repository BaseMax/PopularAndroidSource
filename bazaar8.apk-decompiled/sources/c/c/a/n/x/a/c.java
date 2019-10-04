package c.c.a.n.x.a;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TimePicker;
import b.o.a.C0280d;
import b.w.C0309f;
import c.c.a.c.h.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import h.f.b.f;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: TimePickerDialogFragment.kt */
public final class c extends C0280d {
    public static final a ja = new a(null);
    public TimePicker ka;
    public b la;
    public C0104c ma;
    public final d na = new d(this);
    public HashMap oa;

    /* compiled from: TimePickerDialogFragment.kt */
    public static final class a {
        public a() {
        }

        public final c a(C0104c cVar) {
            j.b(cVar, "args");
            c cVar2 = new c();
            cVar2.m(cVar.c());
            return cVar2;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: TimePickerDialogFragment.kt */
    public interface b {
        void a(int i2, int i3);
    }

    /* renamed from: c.c.a.n.x.a.c$c  reason: collision with other inner class name */
    /* compiled from: TimePickerDialogFragment.kt */
    public static final class C0104c implements C0309f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f7064a = new a(null);

        /* renamed from: b  reason: collision with root package name */
        public final int f7065b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7066c;

        /* renamed from: c.c.a.n.x.a.c$c$a */
        /* compiled from: TimePickerDialogFragment.kt */
        public static final class a {
            public a() {
            }

            public final C0104c a(Bundle bundle) {
                j.b(bundle, "bundle");
                return new C0104c(bundle.getInt("hour"), bundle.getInt("minute"));
            }

            public /* synthetic */ a(f fVar) {
                this();
            }
        }

        public C0104c(int i2, int i3) {
            this.f7065b = i2;
            this.f7066c = i3;
        }

        public static final C0104c fromBundle(Bundle bundle) {
            return f7064a.a(bundle);
        }

        public final int a() {
            return this.f7065b;
        }

        public final int b() {
            return this.f7066c;
        }

        public final Bundle c() {
            Bundle bundle = new Bundle();
            bundle.putInt("hour", this.f7065b);
            bundle.putInt("minute", this.f7066c);
            return bundle;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof C0104c) {
                    C0104c cVar = (C0104c) obj;
                    if (this.f7065b == cVar.f7065b) {
                        if (this.f7066c == cVar.f7066c) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (Integer.valueOf(this.f7065b).hashCode() * 31) + Integer.valueOf(this.f7066c).hashCode();
        }

        public String toString() {
            return "TimeDialogNavArgs(hour=" + this.f7065b + ", minute=" + this.f7066c + ")";
        }
    }

    public void Qa() {
        HashMap hashMap = this.oa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final Integer Ra() {
        if (d.a(23)) {
            TimePicker timePicker = this.ka;
            if (timePicker != null) {
                return Integer.valueOf(timePicker.getHour());
            }
            j.c("timePicker");
            throw null;
        }
        TimePicker timePicker2 = this.ka;
        if (timePicker2 != null) {
            return timePicker2.getCurrentHour();
        }
        j.c("timePicker");
        throw null;
    }

    public final Integer Sa() {
        if (d.a(23)) {
            TimePicker timePicker = this.ka;
            if (timePicker != null) {
                return Integer.valueOf(timePicker.getMinute());
            }
            j.c("timePicker");
            throw null;
        }
        TimePicker timePicker2 = this.ka;
        if (timePicker2 != null) {
            return timePicker2.getCurrentMinute();
        }
        j.c("timePicker");
        throw null;
    }

    public final b Ta() {
        return this.la;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        C0104c.a aVar = C0104c.f7064a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ma = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public final void e(int i2) {
        if (d.a(23)) {
            TimePicker timePicker = this.ka;
            if (timePicker != null) {
                timePicker.setHour(i2);
            } else {
                j.c("timePicker");
                throw null;
            }
        } else {
            TimePicker timePicker2 = this.ka;
            if (timePicker2 != null) {
                timePicker2.setCurrentHour(Integer.valueOf(i2));
            } else {
                j.c("timePicker");
                throw null;
            }
        }
    }

    public final void f(int i2) {
        if (d.a(23)) {
            TimePicker timePicker = this.ka;
            if (timePicker != null) {
                timePicker.setMinute(i2);
            } else {
                j.c("timePicker");
                throw null;
            }
        } else {
            TimePicker timePicker2 = this.ka;
            if (timePicker2 != null) {
                timePicker2.setCurrentMinute(Integer.valueOf(i2));
            } else {
                j.c("timePicker");
                throw null;
            }
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public final void a(b bVar) {
        this.la = bVar;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.dialog_time_picker, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        ((DialogButtonLayout) view.findViewById(R.id.dialogButtonLayout)).setOnClickListener(this.na);
        View findViewById = view.findViewById(R.id.edit);
        j.a((Object) findViewById, "view.findViewById(R.id.edit)");
        this.ka = (TimePicker) findViewById;
        TimePicker timePicker = this.ka;
        if (timePicker != null) {
            timePicker.setIs24HourView(true);
            Dialog Na = Na();
            if (Na != null) {
                Na.setCanceledOnTouchOutside(false);
            }
            C0104c cVar = this.ma;
            if (cVar != null) {
                e(cVar.a());
                f(cVar.b());
                return;
            }
            j.c("args");
            throw null;
        }
        j.c("timePicker");
        throw null;
    }
}
