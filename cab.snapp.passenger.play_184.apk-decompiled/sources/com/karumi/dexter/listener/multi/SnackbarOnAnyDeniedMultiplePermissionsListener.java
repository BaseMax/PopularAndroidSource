package com.karumi.dexter.listener.multi;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.google.android.material.snackbar.Snackbar;
import com.karumi.dexter.MultiplePermissionsReport;

public class SnackbarOnAnyDeniedMultiplePermissionsListener extends BaseMultiplePermissionsListener {
    private final String buttonText;
    private final int duration;
    private final View.OnClickListener onButtonClickListener;
    private final Snackbar.a snackbarCallback;
    private final String text;
    private final View view;

    public static class Builder {
        private String buttonText;
        private int duration = 0;
        private View.OnClickListener onClickListener;
        private Snackbar.a snackbarCallback;
        private final String text;
        /* access modifiers changed from: private */
        public final View view;

        private Builder(View view2, String str) {
            this.view = view2;
            this.text = str;
        }

        public static Builder with(View view2, int i) {
            return with(view2, view2.getContext().getString(i));
        }

        public static Builder with(View view2, String str) {
            return new Builder(view2, str);
        }

        public SnackbarOnAnyDeniedMultiplePermissionsListener build() {
            SnackbarOnAnyDeniedMultiplePermissionsListener snackbarOnAnyDeniedMultiplePermissionsListener = new SnackbarOnAnyDeniedMultiplePermissionsListener(this.view, this.text, this.buttonText, this.onClickListener, this.snackbarCallback, this.duration);
            return snackbarOnAnyDeniedMultiplePermissionsListener;
        }

        public Builder withButton(int i, View.OnClickListener onClickListener2) {
            return withButton(this.view.getContext().getString(i), onClickListener2);
        }

        public Builder withButton(String str, View.OnClickListener onClickListener2) {
            this.buttonText = str;
            this.onClickListener = onClickListener2;
            return this;
        }

        public Builder withCallback(Snackbar.a aVar) {
            this.snackbarCallback = aVar;
            return this;
        }

        public Builder withDuration(int i) {
            this.duration = i;
            return this;
        }

        public Builder withOpenSettingsButton(int i) {
            return withOpenSettingsButton(this.view.getContext().getString(i));
        }

        public Builder withOpenSettingsButton(String str) {
            this.buttonText = str;
            this.onClickListener = new View.OnClickListener() {
                public void onClick(View view) {
                    Context context = Builder.this.view.getContext();
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + context.getPackageName()));
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.setFlags(268435456);
                    context.startActivity(intent);
                }
            };
            return this;
        }
    }

    private SnackbarOnAnyDeniedMultiplePermissionsListener(View view2, String str, String str2, View.OnClickListener onClickListener, Snackbar.a aVar, int i) {
        this.view = view2;
        this.text = str;
        this.buttonText = str2;
        this.onButtonClickListener = onClickListener;
        this.snackbarCallback = aVar;
        this.duration = i;
    }

    private void showSnackbar() {
        Snackbar make = Snackbar.make(this.view, (CharSequence) this.text, this.duration);
        String str = this.buttonText;
        if (str != null) {
            View.OnClickListener onClickListener = this.onButtonClickListener;
            if (onClickListener != null) {
                make.setAction((CharSequence) str, onClickListener);
            }
        }
        Snackbar.a aVar = this.snackbarCallback;
        if (aVar != null) {
            make.setCallback(aVar);
        }
        make.show();
    }

    public void onPermissionsChecked(MultiplePermissionsReport multiplePermissionsReport) {
        super.onPermissionsChecked(multiplePermissionsReport);
        if (!multiplePermissionsReport.areAllPermissionsGranted()) {
            showSnackbar();
        }
    }
}
