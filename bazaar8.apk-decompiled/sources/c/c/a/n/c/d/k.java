package c.c.a.n.c.d;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import c.c.a.d.b.l;
import c.c.a.e;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.RTLImageView;
import h.f.b.j;

/* compiled from: BaseRecyclerWithTitleFragment.kt */
public abstract class k<T extends RecyclerData, Params, VM extends g<T, Params>> extends f<T, Params, VM> {
    public final String wa = "";
    public int xa = R.layout.fragment_page_recycler;

    public int Ya() {
        return this.xa;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        LocalAwareTextView localAwareTextView = (LocalAwareTextView) e(e.titleTextView);
        if (localAwareTextView != null) {
            localAwareTextView.setText(rb());
        }
        sb();
        RTLImageView rTLImageView = (RTLImageView) e(e.backButton);
        if (rTLImageView != null) {
            rTLImageView.setOnClickListener(new i(this));
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public l qb() {
        l lVar = new l(0, 0, 0, null, 15, null);
        return lVar;
    }

    public String rb() {
        return this.wa;
    }

    public final void sb() {
        FrameLayout frameLayout = (FrameLayout) e(e.emptyView);
        Button button = null;
        ImageView imageView = frameLayout != null ? (ImageView) frameLayout.findViewById(R.id.emptyViewImage) : null;
        FrameLayout frameLayout2 = (FrameLayout) e(e.emptyView);
        TextView textView = frameLayout2 != null ? (TextView) frameLayout2.findViewById(R.id.emptyViewTitle) : null;
        FrameLayout frameLayout3 = (FrameLayout) e(e.emptyView);
        if (frameLayout3 != null) {
            button = (Button) frameLayout3.findViewById(R.id.emptyViewAction);
        }
        l qb = qb();
        if (imageView != null) {
            imageView.setImageResource(qb.c());
        }
        if (textView != null) {
            textView.setText(b(qb.d()));
        }
        if (qb.a() != null) {
            if (button != null) {
                button.setText(b(qb.b()));
            }
            if (button != null) {
                l.c(button);
            }
            if (button != null) {
                button.setOnClickListener(new j(qb));
            }
        } else if (button != null) {
            l.a(button);
        }
    }
}
