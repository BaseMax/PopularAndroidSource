package f.a.a.e;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import f.a.a.e.c.b;

/* compiled from: InlineProgressDialog */
public class m extends Dialog {
    public m(Context context) {
        super(context);
        requestWindowFeature(1);
        setCanceledOnTouchOutside(false);
        ProgressBar progressBar = new ProgressBar(context);
        if (Build.VERSION.SDK_INT >= 11) {
            progressBar.setLayerType(1, null);
        }
        progressBar.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        progressBar.setIndeterminateDrawable(new b(-1));
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setContentView(progressBar);
        getWindow().setLayout(-1, -2);
    }
}
