package f.a.a.g.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import f.a.a.b;
import f.a.a.d;
import f.a.a.e;
import f.a.a.e.b.b.A;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.inflaters.inputs.AddressInputInflater;
import ir.cafebazaar.inline.ux.flow.actions.SpeechRecognizeAction;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AddressPopup */
public class n extends A<a> implements p {

    /* renamed from: d  reason: collision with root package name */
    public d f14364d;

    /* renamed from: e  reason: collision with root package name */
    public View f14365e;

    /* renamed from: f  reason: collision with root package name */
    public View f14366f;

    /* renamed from: g  reason: collision with root package name */
    public View f14367g;

    /* renamed from: h  reason: collision with root package name */
    public o f14368h = new q();

    /* renamed from: i  reason: collision with root package name */
    public AddressInputInflater.AddressType f14369i;

    /* renamed from: j  reason: collision with root package name */
    public a f14370j = new e(this);

    /* renamed from: k  reason: collision with root package name */
    public BroadcastReceiver f14371k = new f(this);

    /* compiled from: AddressPopup */
    interface a {
        void a(a aVar);

        void b(a aVar);
    }

    public n(g gVar) {
        super(gVar);
        this.f14368h.a((p) this);
    }

    public final void f() {
        View findViewById = this.f14367g.findViewById(e.address_accept);
        AppCompatEditText appCompatEditText = (AppCompatEditText) this.f14367g.findViewById(e.address_content);
        AppCompatTextView appCompatTextView = (AppCompatTextView) this.f14367g.findViewById(e.address_accept_text);
        SpeechRecognizeAction speechRecognizeAction = new SpeechRecognizeAction((EditText) appCompatEditText);
        appCompatTextView.setTextColor(d().f().getResources().getColor(b.dark_green));
        Drawable drawable = d().f().getResources().getDrawable(d.ic_check);
        b.i.c.a.a.b(drawable, d().f().getResources().getColor(b.dark_green));
        appCompatTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        findViewById.setOnClickListener(new l(this, appCompatEditText));
        ((AppCompatImageButton) this.f14367g.findViewById(e.address_voice_btn)).setOnClickListener(new m(this, speechRecognizeAction, appCompatEditText));
    }

    public final void g() {
        View findViewById = this.f14366f.findViewById(e.title_accept);
        View findViewById2 = this.f14366f.findViewById(e.title_delete);
        AppCompatEditText appCompatEditText = (AppCompatEditText) this.f14366f.findViewById(e.title_content);
        AppCompatTextView appCompatTextView = (AppCompatTextView) this.f14366f.findViewById(e.title_delete_text);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) this.f14366f.findViewById(e.title_accept_text);
        SpeechRecognizeAction speechRecognizeAction = new SpeechRecognizeAction((EditText) appCompatEditText);
        appCompatTextView2.setTextColor(d().f().getResources().getColor(b.dark_green));
        Drawable drawable = d().f().getResources().getDrawable(d.ic_check);
        b.i.c.a.a.b(drawable, d().f().getResources().getColor(b.dark_green));
        appCompatTextView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        appCompatTextView.setTextColor(-12303292);
        Drawable drawable2 = d().f().getResources().getDrawable(d.ic_delete);
        b.i.c.a.a.b(drawable2, -12303292);
        appCompatTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable2, (Drawable) null);
        ((AppCompatImageButton) this.f14366f.findViewById(e.title_voice_btn)).setOnClickListener(new h(this, speechRecognizeAction, appCompatEditText));
        findViewById.setOnClickListener(new i(this, appCompatEditText));
        findViewById2.setOnClickListener(new k(this));
    }

    public final void h() {
        b.t.a.b.a(b()).a(this.f14371k);
    }

    public View a(LayoutInflater layoutInflater, g gVar) {
        View inflate = layoutInflater.inflate(f.inline_address_popup, null);
        c(inflate);
        this.f14368h.b();
        return inflate;
    }

    public final void b(View view) {
        this.f14364d = new d(d().f(), new ArrayList(), this.f14370j);
        ((ListView) view.findViewById(e.list)).setAdapter(this.f14364d);
    }

    public final void c(View view) {
        this.f14365e = view.findViewById(e.list_container);
        this.f14366f = view.findViewById(e.title_container);
        this.f14367g = view.findViewById(e.address_container);
        b(view);
        a(view);
        g();
        f();
    }

    public final void a(View view) {
        ((TextView) view.findViewById(e.add)).setText(b().getResources().getString(f.a.a.g.new_address));
        Drawable drawable = d().f().getResources().getDrawable(d.ic_add);
        b.i.c.a.a.b(drawable, -1);
        ((AppCompatImageView) view.findViewById(e.addIcon)).setImageDrawable(drawable);
        view.findViewById(e.addButtonContainer).setOnClickListener(new g(this));
    }

    public Context b() {
        return d().f().getApplicationContext();
    }

    public void a(List<a> list) {
        f.a.a.f.f.a(d().f().getApplicationContext(), this.f14365e.getWindowToken());
        this.f14366f.setVisibility(8);
        this.f14367g.setVisibility(8);
        this.f14365e.setVisibility(0);
        this.f14364d.a(list);
    }

    public void a(String str, boolean z) {
        this.f14365e.setVisibility(8);
        this.f14367g.setVisibility(8);
        this.f14366f.setVisibility(0);
        EditText editText = (EditText) this.f14366f.findViewById(e.title_content);
        View findViewById = this.f14366f.findViewById(e.title_delete);
        View findViewById2 = this.f14366f.findViewById(e.title_divider);
        editText.setText(str);
        editText.requestFocus();
        f.a.a.f.f.a(d().f().getApplicationContext(), (View) editText);
        if (z) {
            findViewById2.setVisibility(0);
            findViewById.setVisibility(0);
            return;
        }
        findViewById2.setVisibility(8);
        findViewById.setVisibility(8);
    }

    public void a(String str) {
        this.f14365e.setVisibility(8);
        this.f14366f.setVisibility(8);
        this.f14367g.setVisibility(0);
        EditText editText = (EditText) this.f14367g.findViewById(e.address_content);
        editText.setText(str);
        editText.requestFocus();
        f.a.a.f.f.a(d().f().getApplicationContext(), (View) editText);
    }

    public void a(a aVar) {
        c().a(aVar);
        a();
    }
}
