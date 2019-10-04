package b.b.a;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.l  reason: case insensitive filesystem */
/* compiled from: AlertDialog */
public class C0201l extends B implements DialogInterface {

    /* renamed from: c  reason: collision with root package name */
    public final AlertController f1756c = new AlertController(getContext(), this, getWindow());

    /* renamed from: b.b.a.l$a */
    /* compiled from: AlertDialog */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final AlertController.a f1757a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1758b;

        public a(Context context) {
            this(context, C0201l.b(context, 0));
        }

        public a a(View view) {
            this.f1757a.f248g = view;
            return this;
        }

        public Context b() {
            return this.f1757a.f242a;
        }

        public a(Context context, int i2) {
            this.f1757a = new AlertController.a(new ContextThemeWrapper(context, C0201l.b(context, i2)));
            this.f1758b = i2;
        }

        public a a(CharSequence charSequence) {
            this.f1757a.f249h = charSequence;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f1757a.f247f = charSequence;
            return this;
        }

        public a a(Drawable drawable) {
            this.f1757a.f245d = drawable;
            return this;
        }

        public a b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f1757a;
            aVar.f250i = charSequence;
            aVar.f252k = onClickListener;
            return this;
        }

        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f1757a;
            aVar.f253l = charSequence;
            aVar.n = onClickListener;
            return this;
        }

        public a b(View view) {
            AlertController.a aVar = this.f1757a;
            aVar.z = view;
            aVar.y = 0;
            aVar.E = false;
            return this;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f1757a.u = onKeyListener;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f1757a;
            aVar.w = listAdapter;
            aVar.x = onClickListener;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.a aVar = this.f1757a;
            aVar.v = charSequenceArr;
            aVar.J = onMultiChoiceClickListener;
            aVar.F = zArr;
            aVar.G = true;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f1757a;
            aVar.v = charSequenceArr;
            aVar.x = onClickListener;
            aVar.I = i2;
            aVar.H = true;
            return this;
        }

        public a a(ListAdapter listAdapter, int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f1757a;
            aVar.w = listAdapter;
            aVar.x = onClickListener;
            aVar.I = i2;
            aVar.H = true;
            return this;
        }

        public C0201l a() {
            C0201l lVar = new C0201l(this.f1757a.f242a, this.f1758b);
            this.f1757a.a(lVar.f1756c);
            lVar.setCancelable(this.f1757a.r);
            if (this.f1757a.r) {
                lVar.setCanceledOnTouchOutside(true);
            }
            lVar.setOnCancelListener(this.f1757a.s);
            lVar.setOnDismissListener(this.f1757a.t);
            DialogInterface.OnKeyListener onKeyListener = this.f1757a.u;
            if (onKeyListener != null) {
                lVar.setOnKeyListener(onKeyListener);
            }
            return lVar;
        }
    }

    public C0201l(Context context, int i2) {
        super(context, b(context, i2));
    }

    public static int b(Context context, int i2) {
        if (((i2 >>> 24) & 255) >= 1) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(b.b.a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1756c.b();
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f1756c.a(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.f1756c.b(i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f1756c.b(charSequence);
    }

    public ListView b() {
        return this.f1756c.a();
    }
}
