package com.getkeepsafe.taptargetview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;

class f extends c {
    final View C;

    f(View view, CharSequence charSequence, CharSequence charSequence2) {
        super(charSequence, charSequence2);
        if (view != null) {
            this.C = view;
            return;
        }
        throw new IllegalArgumentException("Given null view to target");
    }

    public void onReady(final Runnable runnable) {
        View view = this.C;
        AnonymousClass1 r1 = new Runnable() {
            public final void run() {
                int[] iArr = new int[2];
                f.this.C.getLocationOnScreen(iArr);
                f fVar = f.this;
                fVar.e = new Rect(iArr[0], iArr[1], iArr[0] + fVar.C.getWidth(), iArr[1] + f.this.C.getHeight());
                if (f.this.f == null && f.this.C.getWidth() > 0 && f.this.C.getHeight() > 0) {
                    Bitmap createBitmap = Bitmap.createBitmap(f.this.C.getWidth(), f.this.C.getHeight(), Bitmap.Config.ARGB_8888);
                    f.this.C.draw(new Canvas(createBitmap));
                    f fVar2 = f.this;
                    fVar2.f = new BitmapDrawable(fVar2.C.getContext().getResources(), createBitmap);
                    f.this.f.setBounds(0, 0, f.this.f.getIntrinsicWidth(), f.this.f.getIntrinsicHeight());
                }
                runnable.run();
            }
        };
        if (ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            r1.run();
            return;
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(viewTreeObserver, view, r1) {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver f2514a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f2515b;
            final /* synthetic */ Runnable c;

            {
                this.f2514a = r1;
                this.f2515b = r2;
                this.c = r3;
            }

            public final void onGlobalLayout() {
                ViewTreeObserver viewTreeObserver;
                if (this.f2514a.isAlive()) {
                    viewTreeObserver = this.f2514a;
                } else {
                    viewTreeObserver = this.f2515b.getViewTreeObserver();
                }
                g.a(viewTreeObserver, (ViewTreeObserver.OnGlobalLayoutListener) this);
                this.c.run();
            }
        });
    }
}
