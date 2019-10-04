package b.x;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.preference.DialogPreference;
import b.b.a.C0201l;
import b.o.a.C0280d;
import b.o.a.C0285i;

/* compiled from: PreferenceDialogFragmentCompat */
public abstract class o extends C0280d implements DialogInterface.OnClickListener {
    public DialogPreference ja;
    public CharSequence ka;
    public CharSequence la;
    public CharSequence ma;
    public CharSequence na;
    public int oa;
    public BitmapDrawable pa;
    public int qa;

    public DialogPreference Qa() {
        if (this.ja == null) {
            this.ja = (DialogPreference) ((DialogPreference.a) Y()).a(C().getString("key"));
        }
        return this.ja;
    }

    public boolean Ra() {
        return false;
    }

    public final void a(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    public void a(C0201l.a aVar) {
    }

    public View b(Context context) {
        int i2 = this.oa;
        if (i2 == 0) {
            return null;
        }
        return LayoutInflater.from(context).inflate(i2, null);
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        Fragment Y = Y();
        if (Y instanceof DialogPreference.a) {
            DialogPreference.a aVar = (DialogPreference.a) Y;
            String string = C().getString("key");
            if (bundle == null) {
                this.ja = (DialogPreference) aVar.a(string);
                this.ka = this.ja.O();
                this.la = this.ja.Q();
                this.ma = this.ja.P();
                this.na = this.ja.N();
                this.oa = this.ja.M();
                Drawable L = this.ja.L();
                if (L == null || (L instanceof BitmapDrawable)) {
                    this.pa = (BitmapDrawable) L;
                    return;
                }
                Bitmap createBitmap = Bitmap.createBitmap(L.getIntrinsicWidth(), L.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                L.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                L.draw(canvas);
                this.pa = new BitmapDrawable(S(), createBitmap);
                return;
            }
            this.ka = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.la = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.ma = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.na = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.oa = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.pa = new BitmapDrawable(S(), bitmap);
                return;
            }
            return;
        }
        throw new IllegalStateException("Target fragment must implement TargetFragment interface");
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.ka);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.la);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.ma);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.na);
        bundle.putInt("PreferenceDialogFragment.layout", this.oa);
        BitmapDrawable bitmapDrawable = this.pa;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    public abstract void m(boolean z);

    public Dialog n(Bundle bundle) {
        C0285i x = x();
        this.qa = -2;
        C0201l.a aVar = new C0201l.a(x);
        aVar.b(this.ka);
        aVar.a((Drawable) this.pa);
        aVar.b(this.la, this);
        aVar.a(this.ma, (DialogInterface.OnClickListener) this);
        View b2 = b((Context) x);
        if (b2 != null) {
            b(b2);
            aVar.b(b2);
        } else {
            aVar.a(this.na);
        }
        a(aVar);
        C0201l a2 = aVar.a();
        if (Ra()) {
            a((Dialog) a2);
        }
        return a2;
    }

    public void onClick(DialogInterface dialogInterface, int i2) {
        this.qa = i2;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        m(this.qa == -1);
    }

    public void b(View view) {
        View findViewById = view.findViewById(16908299);
        if (findViewById != null) {
            CharSequence charSequence = this.na;
            int i2 = 8;
            if (!TextUtils.isEmpty(charSequence)) {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i2 = 0;
            }
            if (findViewById.getVisibility() != i2) {
                findViewById.setVisibility(i2);
            }
        }
    }
}
