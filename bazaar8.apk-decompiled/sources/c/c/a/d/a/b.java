package c.c.a.d.a;

import android.graphics.drawable.Drawable;
import android.text.Spanned;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import c.c.a.d.g.a.i;
import h.f.b.f;
import h.f.b.j;
import h.k.n;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: CoreDataBindingComponent.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4745a = new a(null);

    /* compiled from: CoreDataBindingComponent.kt */
    public static final class a {
        public a() {
        }

        public static /* synthetic */ void a(a aVar, ImageView imageView, String str, Drawable drawable, Drawable drawable2, Integer num, String str2, Float f2, int i2, Object obj) {
            aVar.a(imageView, str, drawable, drawable2, num, str2, (i2 & 64) != 0 ? Float.valueOf(0.0f) : f2);
        }

        public final void b(View view, int i2) {
            j.b(view, "view");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (!(layoutParams instanceof FrameLayout.LayoutParams)) {
                layoutParams = null;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            if (layoutParams2 != null) {
                layoutParams2.setMarginStart(i2);
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final void a(ImageView imageView, String str, Drawable drawable, Drawable drawable2, Integer num, String str2, Float f2) {
            ImageView imageView2 = imageView;
            Drawable drawable3 = drawable2;
            j.b(imageView, "imageView");
            if (drawable3 != null || num != null) {
                if (drawable3 != null) {
                    imageView.setImageDrawable(drawable2);
                }
                if (num != null) {
                    imageView.setImageResource(num.intValue());
                }
            } else if (str != null) {
                i.a(i.f4812a, imageView, str, drawable, null, str2, f2 != null ? (int) f2.floatValue() : 0, 8, null);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0028, code lost:
            if ((((java.lang.CharSequence) r5).length() == 0) != false) goto L_0x002c;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final <T> void a(android.view.View r4, T r5) {
            /*
                r3 = this;
                java.lang.String r0 = "view"
                h.f.b.j.b(r4, r0)
                r0 = 0
                r1 = 8
                if (r5 != 0) goto L_0x000b
                goto L_0x002c
            L_0x000b:
                boolean r2 = r5 instanceof java.lang.Boolean
                if (r2 == 0) goto L_0x0019
                r2 = r5
                java.lang.Boolean r2 = (java.lang.Boolean) r2
                boolean r2 = r2.booleanValue()
                if (r2 != 0) goto L_0x0019
                goto L_0x002c
            L_0x0019:
                boolean r2 = r5 instanceof java.lang.String
                if (r2 == 0) goto L_0x002b
                java.lang.CharSequence r5 = (java.lang.CharSequence) r5
                int r5 = r5.length()
                if (r5 != 0) goto L_0x0027
                r5 = 1
                goto L_0x0028
            L_0x0027:
                r5 = 0
            L_0x0028:
                if (r5 == 0) goto L_0x002b
                goto L_0x002c
            L_0x002b:
                r1 = 0
            L_0x002c:
                r4.setVisibility(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.a.b.a.a(android.view.View, java.lang.Object):void");
        }

        public final void a(TextView textView, String str) {
            CharSequence charSequence;
            j.b(textView, "view");
            if (str != null) {
                Spanned a2 = c.c.a.c.b.i.a(str);
                if (a2 != null) {
                    charSequence = n.f(a2);
                    textView.setText(charSequence);
                }
            }
            charSequence = null;
            textView.setText(charSequence);
        }

        public final void a(View view, int i2) {
            j.b(view, "view");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (!(layoutParams instanceof FrameLayout.LayoutParams)) {
                layoutParams = null;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            if (layoutParams2 != null) {
                layoutParams2.setMarginEnd(i2);
            }
        }

        public final void a(Space space, int i2) {
            j.b(space, "view");
            space.getLayoutParams().height = i2;
        }

        public final <T> void a(View view, List<? extends T> list) {
            boolean z;
            j.b(view, "view");
            int i2 = 8;
            if (list != null) {
                boolean z2 = true;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                z = true;
                                continue;
                            } else {
                                z = false;
                                continue;
                            }
                            if (z) {
                                z2 = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (!z2) {
                    i2 = 0;
                }
            }
            view.setVisibility(i2);
        }
    }

    public static final void a(View view, int i2) {
        f4745a.a(view, i2);
    }

    public static final <T> void a(View view, T t) {
        f4745a.a(view, t);
    }

    public static final <T> void a(View view, List<? extends T> list) {
        f4745a.a(view, list);
    }

    public static final void a(ImageView imageView, String str, Drawable drawable, Drawable drawable2, Integer num, String str2, Float f2) {
        f4745a.a(imageView, str, drawable, drawable2, num, str2, f2);
    }

    public static final void a(Space space, int i2) {
        f4745a.a(space, i2);
    }

    public static final void a(TextView textView, String str) {
        f4745a.a(textView, str);
    }

    public static final void b(View view, int i2) {
        f4745a.b(view, i2);
    }
}
