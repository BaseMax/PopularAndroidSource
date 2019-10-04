package f.a.a.e.b;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import c.c.a.d.c.b;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.c.a;

/* compiled from: VideoCommentInflater */
public class U extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public a f14091c;

    /* renamed from: d  reason: collision with root package name */
    public b f14092d = f.a.a.b.a.f13938b;

    public void a(a aVar) {
        this.f14091c = aVar;
    }

    public int b() {
        return f.inline_video_comment;
    }

    public View a(g gVar, View view) {
        int i2;
        int i3;
        int i4;
        TextView textView = (TextView) view.findViewById(e.tv_inline_comment_name);
        TextView textView2 = (TextView) view.findViewById(e.tv_inline_comment_date);
        TextView textView3 = (TextView) view.findViewById(e.tv_inline_comment_body);
        ImageView imageView = (ImageView) view.findViewById(e.inline_comment_report);
        textView3.setText(this.f14091c.c());
        textView2.setText(this.f14091c.d());
        textView.setText(this.f14091c.b());
        if (gVar.g() != null) {
            i4 = gVar.g().h();
            i3 = gVar.g().j();
            i2 = gVar.g().a();
        } else {
            i3 = b.i.b.a.a(gVar.getApplicationContext(), f.a.a.b.inline_comment_text_color);
            i4 = b.i.b.a.a(gVar.getApplicationContext(), f.a.a.b.inline_comment_primary_color);
            i2 = b.i.b.a.a(gVar.getApplicationContext(), f.a.a.b.inline_comment_background_color);
        }
        textView.setTextColor(i4);
        textView2.setTextColor(i4);
        b.i.c.a.a.b(imageView.getDrawable(), i4);
        textView3.setTextColor(i3);
        view.setBackgroundColor(i2);
        imageView.setOnClickListener(new T(this, gVar));
        return view;
    }
}
