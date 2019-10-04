package c.c.a.n.u.b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import b.w.b.b;
import c.c.a.d;
import c.c.a.d.b.e;
import c.c.a.d.b.h;
import com.farsitel.bazaar.R;
import com.google.android.material.button.MaterialButton;
import h.f.b.f;
import h.f.b.j;
import h.f.b.n;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: PostCommentFragment.kt */
public abstract class a<T> extends c.c.a.n.c.a.a<T> {
    public static final C0103a va = new C0103a(null);
    public ImageView Aa;
    public TextWatcher Ba;
    public Integer Ca = 2131821044;
    public boolean Da;
    public int Ea = R.string.submitReviewHint_Optional;
    public e wa;
    public EditText xa;
    public TextView ya;
    public MaterialButton za;

    /* renamed from: c.c.a.n.u.b.a$a  reason: collision with other inner class name */
    /* compiled from: PostCommentFragment.kt */
    public static final class C0103a {
        public C0103a() {
        }

        public /* synthetic */ C0103a(f fVar) {
            this();
        }
    }

    public Integer Va() {
        return this.Ca;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        jb();
        b(view);
    }

    public void b(View view) {
        j.b(view, "view");
        View findViewById = view.findViewById(R.id.etUserComment);
        j.a((Object) findViewById, "view.findViewById(R.id.etUserComment)");
        this.xa = (EditText) findViewById;
        View findViewById2 = view.findViewById(R.id.tvCommentCounter);
        j.a((Object) findViewById2, "view.findViewById(R.id.tvCommentCounter)");
        this.ya = (TextView) findViewById2;
        View findViewById3 = view.findViewById(R.id.btSubmitPostComment);
        j.a((Object) findViewById3, "view.findViewById(R.id.btSubmitPostComment)");
        this.za = (MaterialButton) findViewById3;
        this.Aa = (ImageView) view.findViewById(R.id.toolbarBackButton);
        ImageView imageView = this.Aa;
        if (imageView != null) {
            imageView.setOnClickListener(new b(this));
        }
        MaterialButton materialButton = this.za;
        if (materialButton != null) {
            materialButton.setOnClickListener(new c(this));
            EditText editText = this.xa;
            if (editText != null) {
                editText.setHint(db());
                EditText editText2 = this.xa;
                if (editText2 != null) {
                    e.a(editText2, 140);
                    this.Ba = mb();
                    EditText editText3 = this.xa;
                    if (editText3 != null) {
                        editText3.addTextChangedListener(this.Ba);
                    } else {
                        j.c("etReview");
                        throw null;
                    }
                } else {
                    j.c("etReview");
                    throw null;
                }
            } else {
                j.c("etReview");
                throw null;
            }
        } else {
            j.c("btSubmitPost");
            throw null;
        }
    }

    public void bb() {
        Ma();
    }

    public final MaterialButton cb() {
        MaterialButton materialButton = this.za;
        if (materialButton != null) {
            return materialButton;
        }
        j.c("btSubmitPost");
        throw null;
    }

    public int db() {
        return this.Ea;
    }

    public final EditText eb() {
        EditText editText = this.xa;
        if (editText != null) {
            return editText;
        }
        j.c("etReview");
        throw null;
    }

    public boolean fb() {
        return this.Da;
    }

    public final TextView gb() {
        TextView textView = this.ya;
        if (textView != null) {
            return textView;
        }
        j.c("tvReviewCounter");
        throw null;
    }

    public final e hb() {
        e eVar = this.wa;
        if (eVar != null) {
            return eVar;
        }
        j.c("viewModel");
        throw null;
    }

    public abstract void ib();

    public final void jb() {
        E a2 = G.a((Fragment) this, Wa()).a(e.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        e eVar = (e) a2;
        h.a(this, eVar.e(), new PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1(this));
        this.wa = eVar;
    }

    public void kb() {
        m(true);
        b.a(this).a(d.f4738a.b());
    }

    public abstract void lb();

    public void m(boolean z) {
        this.Da = z;
    }

    public final d mb() {
        return new d(this);
    }

    public void qa() {
        TextWatcher textWatcher = this.Ba;
        if (textWatcher != null) {
            EditText editText = this.xa;
            if (editText != null) {
                editText.removeTextChangedListener(textWatcher);
                this.Ba = null;
            } else {
                j.c("etReview");
                throw null;
            }
        }
        super.qa();
        Qa();
    }

    public void ta() {
        super.ta();
        if (fb()) {
            lb();
        }
        m(false);
    }

    public final void a(TextView textView, String str) {
        j.b(textView, "textView");
        j.b(str, "review");
        int length = str.length();
        int i2 = 140 - length;
        n nVar = n.f14575a;
        Locale locale = Locale.getDefault();
        j.a((Object) locale, "Locale.getDefault()");
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        String string = Ha.getResources().getString(R.string.remainCommentPlaceHolder);
        j.a((Object) string, "requireContext().resourc…remainCommentPlaceHolder)");
        Object[] objArr = {Integer.valueOf(length), 140};
        String format = String.format(locale, string, Arrays.copyOf(objArr, objArr.length));
        j.a((Object) format, "java.lang.String.format(locale, format, *args)");
        textView.setText(format);
        textView.setTextColor(b.i.b.a.a(Ha(), i2 < 20 ? R.color.c_icon_warning : R.color.c_text_caption_info));
    }
}
