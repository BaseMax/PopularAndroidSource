package ir.cafebazaar.inline.ui.inflaters;

import android.content.res.Resources;
import android.os.Build;
import android.text.Editable;
import android.text.Html;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import b.i.j.d;
import f.a.a.c;
import f.a.a.e;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.Theme;
import java.util.Stack;
import org.xml.sax.XMLReader;

public class TextInflater extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public String f15014c;

    /* renamed from: d  reason: collision with root package name */
    public Style f15015d = Style.normal;

    public enum Style {
        normal,
        title {
            public void a(TextView textView, Resources resources) {
                super.a(textView, resources);
                textView.setTextSize(0, resources.getDimension(c.large_text_size));
            }
        },
        centered {
            public void a(TextView textView, Resources resources) {
                super.a(textView, resources);
                textView.setGravity(17);
            }
        },
        centeredTitle {
            public void a(TextView textView, Resources resources) {
                super.a(textView, resources);
                Style.title.a(textView, resources);
                Style.centered.a(textView, resources);
            }
        },
        quoted {
            public void a(TextView textView, Resources resources) {
                super.a(textView, resources);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.setMargins(20, 0, 80, 0);
                textView.setLayoutParams(layoutParams);
            }
        };

        public void a(TextView textView, Resources resources) {
        }
    }

    public static class a implements Html.TagHandler {

        /* renamed from: a  reason: collision with root package name */
        public Theme f15017a;

        /* renamed from: b  reason: collision with root package name */
        public Stack<d<String, Integer>> f15018b = new Stack<>();

        public a(Theme theme) {
            this.f15017a = theme;
        }

        public void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
            if (!str.equals("hl")) {
                return;
            }
            if (z) {
                this.f15018b.add(new d("hl", Integer.valueOf(editable.length())));
            } else {
                editable.setSpan(new ForegroundColorSpan(this.f15017a.h()), ((Integer) this.f15018b.pop().f2756b).intValue(), editable.length(), 0);
            }
        }
    }

    public View a(g gVar, View view) {
        TextView textView = (TextView) view;
        Theme g2 = gVar.g();
        textView.setTextColor(g2.j());
        textView.setTag(e.text_style_tag, this.f15015d);
        this.f15015d.a(textView, gVar.getApplicationContext().getResources());
        String str = "&#8203;" + this.f15014c;
        if (this.f15015d == Style.title) {
            textView.setText(this.f15014c);
        } else if (Build.VERSION.SDK_INT >= 24) {
            textView.setText(Html.fromHtml(str, 0, f.a.a.f.e.a().a(textView, gVar.getApplicationContext().getResources()), new a(g2)));
        } else {
            textView.setText(Html.fromHtml(str, f.a.a.f.e.a().a(textView, gVar.getApplicationContext().getResources()), new a(g2)));
        }
        return textView;
    }

    public int b() {
        return f.inline_text;
    }

    public void c(String str) {
        this.f15014c = str;
    }

    public void a(Style style) {
        this.f15015d = style;
    }
}
