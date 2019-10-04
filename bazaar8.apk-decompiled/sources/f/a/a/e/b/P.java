package f.a.a.e.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.f.c;
import ir.cafebazaar.inline.ux.table.TableRowDescriptor;

/* compiled from: TableRowInflater */
public class P extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public TableRowDescriptor f14088c;

    public View a(g gVar, View view) {
        LinearLayout.LayoutParams layoutParams;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(e.inlineTableRowParent);
        ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
        if (this.f14088c.b() == TableRowDescriptor.HeightCell.FIX) {
            layoutParams2.height = c.a(48);
        } else {
            layoutParams2.height = -2;
        }
        linearLayout.setLayoutParams(layoutParams2);
        int a2 = this.f14088c.a();
        for (int i2 = 0; i2 < a2; i2++) {
            if (this.f14088c.d()) {
                linearLayout.addView(b(gVar));
            }
            C1072n nVar = this.f14088c.c().get(i2);
            View a3 = nVar.a(gVar, LayoutInflater.from(a(gVar)).inflate(nVar.b(), linearLayout, false));
            if (nVar.a() == -1.0f) {
                layoutParams = new LinearLayout.LayoutParams(-2, -2);
            } else {
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
                layoutParams3.weight = nVar.a();
                layoutParams = layoutParams3;
            }
            layoutParams.gravity = 17;
            layoutParams.leftMargin = c.a(4);
            layoutParams.rightMargin = c.a(4);
            if (i2 == 0) {
                layoutParams.leftMargin *= 2;
            } else if (i2 == a2 - 1) {
                layoutParams.rightMargin *= 2;
            }
            a3.setLayoutParams(layoutParams);
            linearLayout.addView(a3);
        }
        if (this.f14088c.d()) {
            linearLayout.addView(b(gVar));
        }
        return linearLayout;
    }

    public final View b(g gVar) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(c.a(1), -1);
        View view = new View(a(gVar));
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(this.f14088c.a(gVar));
        return view;
    }

    public int b() {
        return f.inline_table_row;
    }

    public void a(TableRowDescriptor tableRowDescriptor) {
        this.f14088c = tableRowDescriptor;
    }

    public final Context a(g gVar) {
        if (gVar.f() == null) {
            return gVar.getApplicationContext();
        }
        return gVar.f();
    }
}
