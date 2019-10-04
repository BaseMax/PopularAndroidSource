package com.a.a.c;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.ScrollView;
import android.widget.TextView;
import io.fabric.sdk.android.services.settings.o;
import java.util.concurrent.CountDownLatch;

final class f {

    /* renamed from: a  reason: collision with root package name */
    private final b f1753a;

    /* renamed from: b  reason: collision with root package name */
    private final AlertDialog.Builder f1754b;

    interface a {
        void sendUserReportsWithoutPrompting(boolean z);
    }

    static class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f1759a;

        /* renamed from: b  reason: collision with root package name */
        final CountDownLatch f1760b;

        private b() {
            this.f1759a = false;
            this.f1760b = new CountDownLatch(1);
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        /* access modifiers changed from: package-private */
        public final void a(boolean z) {
            this.f1759a = z;
            this.f1760b.countDown();
        }
    }

    public static f create(Activity activity, o oVar, final a aVar) {
        final b bVar = new b((byte) 0);
        s sVar = new s(activity, oVar);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String message = sVar.getMessage();
        float f = activity.getResources().getDisplayMetrics().density;
        int i = (int) (5.0f * f);
        TextView textView = new TextView(activity);
        textView.setAutoLinkMask(15);
        textView.setText(message);
        textView.setTextAppearance(activity, 16973892);
        textView.setPadding(i, i, i, i);
        textView.setFocusable(false);
        ScrollView scrollView = new ScrollView(activity);
        scrollView.setPadding((int) (14.0f * f), (int) (2.0f * f), (int) (10.0f * f), (int) (f * 12.0f));
        scrollView.addView(textView);
        builder.setView(scrollView).setTitle(sVar.getTitle()).setCancelable(false).setNeutralButton(sVar.getSendButtonTitle(), new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                bVar.a(true);
                dialogInterface.dismiss();
            }
        });
        if (oVar.showCancelButton) {
            builder.setNegativeButton(sVar.getCancelButtonTitle(), new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    bVar.a(false);
                    dialogInterface.dismiss();
                }
            });
        }
        if (oVar.showAlwaysSendButton) {
            builder.setPositiveButton(sVar.getAlwaysSendButtonTitle(), new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    aVar.sendUserReportsWithoutPrompting(true);
                    bVar.a(true);
                    dialogInterface.dismiss();
                }
            });
        }
        return new f(builder, bVar);
    }

    private f(AlertDialog.Builder builder, b bVar) {
        this.f1753a = bVar;
        this.f1754b = builder;
    }

    public final void show() {
        this.f1754b.show();
    }

    public final void await() {
        try {
            this.f1753a.f1760b.await();
        } catch (InterruptedException unused) {
        }
    }

    public final boolean getOptIn() {
        return this.f1753a.f1759a;
    }
}
