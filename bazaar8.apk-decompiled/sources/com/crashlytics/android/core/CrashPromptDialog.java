package com.crashlytics.android.core;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.ScrollView;
import android.widget.TextView;
import e.a.a.a.a.g.p;
import java.util.concurrent.CountDownLatch;

public class CrashPromptDialog {
    public final AlertDialog.Builder dialog;
    public final OptInLatch latch;

    interface AlwaysSendCallback {
        void sendUserReportsWithoutPrompting(boolean z);
    }

    private static class OptInLatch {
        public final CountDownLatch latch;
        public boolean send;

        public OptInLatch() {
            this.send = false;
            this.latch = new CountDownLatch(1);
        }

        public void await() {
            try {
                this.latch.await();
            } catch (InterruptedException unused) {
            }
        }

        public boolean getOptIn() {
            return this.send;
        }

        public void setOptIn(boolean z) {
            this.send = z;
            this.latch.countDown();
        }
    }

    public CrashPromptDialog(AlertDialog.Builder builder, OptInLatch optInLatch) {
        this.latch = optInLatch;
        this.dialog = builder;
    }

    public static CrashPromptDialog create(Activity activity, p pVar, final AlwaysSendCallback alwaysSendCallback) {
        final OptInLatch optInLatch = new OptInLatch();
        DialogStringResolver dialogStringResolver = new DialogStringResolver(activity, pVar);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        ScrollView createDialogView = createDialogView(activity, dialogStringResolver.getMessage());
        builder.setView(createDialogView).setTitle(dialogStringResolver.getTitle()).setCancelable(false).setNeutralButton(dialogStringResolver.getSendButtonTitle(), new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i2) {
                optInLatch.setOptIn(true);
                dialogInterface.dismiss();
            }
        });
        if (pVar.f13829d) {
            builder.setNegativeButton(dialogStringResolver.getCancelButtonTitle(), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i2) {
                    optInLatch.setOptIn(false);
                    dialogInterface.dismiss();
                }
            });
        }
        if (pVar.f13831f) {
            builder.setPositiveButton(dialogStringResolver.getAlwaysSendButtonTitle(), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i2) {
                    alwaysSendCallback.sendUserReportsWithoutPrompting(true);
                    optInLatch.setOptIn(true);
                    dialogInterface.dismiss();
                }
            });
        }
        return new CrashPromptDialog(builder, optInLatch);
    }

    public static ScrollView createDialogView(Activity activity, String str) {
        float f2 = activity.getResources().getDisplayMetrics().density;
        int dipsToPixels = dipsToPixels(f2, 5);
        TextView textView = new TextView(activity);
        textView.setAutoLinkMask(15);
        textView.setText(str);
        textView.setTextAppearance(activity, 16973892);
        textView.setPadding(dipsToPixels, dipsToPixels, dipsToPixels, dipsToPixels);
        textView.setFocusable(false);
        ScrollView scrollView = new ScrollView(activity);
        scrollView.setPadding(dipsToPixels(f2, 14), dipsToPixels(f2, 2), dipsToPixels(f2, 10), dipsToPixels(f2, 12));
        scrollView.addView(textView);
        return scrollView;
    }

    public static int dipsToPixels(float f2, int i2) {
        return (int) (f2 * ((float) i2));
    }

    public void await() {
        this.latch.await();
    }

    public boolean getOptIn() {
        return this.latch.getOptIn();
    }

    public void show() {
        this.dialog.show();
    }
}
