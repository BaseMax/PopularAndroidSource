package c.c.a.n.c.c.b;

import android.content.Context;
import android.widget.TextView;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VitrinBindingAdapater.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0091a f6316a = new C0091a(null);

    /* renamed from: c.c.a.n.c.c.b.a$a  reason: collision with other inner class name */
    /* compiled from: VitrinBindingAdapater.kt */
    public static final class C0091a {
        public C0091a() {
        }

        public final void a(TextView textView, PageAppItem pageAppItem) {
            String str;
            j.b(textView, "textView");
            j.b(pageAppItem, "app");
            Context context = textView.getContext();
            if (pageAppItem.getCanBeInstalled()) {
                str = context.getString(R.string.free);
            } else {
                str = context.getString(R.string.price_placeholder, new Object[]{Integer.valueOf(pageAppItem.getPrice() / 10)});
            }
            textView.setText(str);
        }

        public /* synthetic */ C0091a(f fVar) {
            this();
        }
    }

    public static final void a(TextView textView, PageAppItem pageAppItem) {
        f6316a.a(textView, pageAppItem);
    }
}
