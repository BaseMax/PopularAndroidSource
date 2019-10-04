package com.farsitel.bazaar.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import c.c.a.d.d;
import c.c.a.d.e;
import c.c.a.d.h;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: DialogButtonLayout.kt */
public final class DialogButtonLayout extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public HashMap f12190a;

    /* compiled from: DialogButtonLayout.kt */
    public interface a {

        /* renamed from: com.farsitel.bazaar.core.widget.DialogButtonLayout$a$a  reason: collision with other inner class name */
        /* compiled from: DialogButtonLayout.kt */
        public static final class C0136a {
            public static void a(a aVar) {
            }

            public static void b(a aVar) {
            }

            public static void c(a aVar) {
            }
        }

        void a();

        void onCancel();

        void onCommit();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DialogButtonLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        j.b(context, "context");
        j.b(attributeSet, "attrs");
        RelativeLayout.inflate(context, e.view_dialog_buttons, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.DialogButtonLayout);
        String string = obtainStyledAttributes.getString(h.DialogButtonLayout_commit);
        String string2 = obtainStyledAttributes.getString(h.DialogButtonLayout_cancel);
        String string3 = obtainStyledAttributes.getString(h.DialogButtonLayout_neutral);
        boolean z = true;
        if (string == null || string.length() == 0) {
            AppCompatButton appCompatButton = (AppCompatButton) a(d.commitButton);
            j.a((Object) appCompatButton, "commitButton");
            appCompatButton.setVisibility(8);
        } else {
            AppCompatButton appCompatButton2 = (AppCompatButton) a(d.commitButton);
            j.a((Object) appCompatButton2, "commitButton");
            appCompatButton2.setVisibility(0);
            AppCompatButton appCompatButton3 = (AppCompatButton) a(d.commitButton);
            j.a((Object) appCompatButton3, "commitButton");
            appCompatButton3.setText(string);
        }
        setCancelText(string2);
        if (!(string3 == null || string3.length() == 0)) {
            z = false;
        }
        if (z) {
            AppCompatButton appCompatButton4 = (AppCompatButton) a(d.neutralButton);
            j.a((Object) appCompatButton4, "neutralButton");
            appCompatButton4.setVisibility(8);
        } else {
            AppCompatButton appCompatButton5 = (AppCompatButton) a(d.neutralButton);
            j.a((Object) appCompatButton5, "neutralButton");
            appCompatButton5.setVisibility(0);
            AppCompatButton appCompatButton6 = (AppCompatButton) a(d.neutralButton);
            j.a((Object) appCompatButton6, "neutralButton");
            appCompatButton6.setText(string3);
        }
        obtainStyledAttributes.recycle();
    }

    public View a(int i2) {
        if (this.f12190a == null) {
            this.f12190a = new HashMap();
        }
        View view = (View) this.f12190a.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i2);
        this.f12190a.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public final void setCancelText(String str) {
        if (str == null || str.length() == 0) {
            AppCompatButton appCompatButton = (AppCompatButton) a(d.cancelButton);
            j.a((Object) appCompatButton, "cancelButton");
            appCompatButton.setVisibility(8);
            return;
        }
        AppCompatButton appCompatButton2 = (AppCompatButton) a(d.cancelButton);
        j.a((Object) appCompatButton2, "cancelButton");
        appCompatButton2.setVisibility(0);
        AppCompatButton appCompatButton3 = (AppCompatButton) a(d.cancelButton);
        j.a((Object) appCompatButton3, "cancelButton");
        appCompatButton3.setText(str);
    }

    public final void setCommitText(String str) {
        j.b(str, "text");
        AppCompatButton appCompatButton = (AppCompatButton) a(d.commitButton);
        j.a((Object) appCompatButton, "commitButton");
        appCompatButton.setText(str);
    }

    public final void setNeutralText(String str) {
        j.b(str, "text");
        AppCompatButton appCompatButton = (AppCompatButton) a(d.neutralButton);
        j.a((Object) appCompatButton, "neutralButton");
        appCompatButton.setText(str);
    }

    public final void setOnClickListener(a aVar) {
        j.b(aVar, "onClickListener");
        ((AppCompatButton) a(d.commitButton)).setOnClickListener(new a(aVar));
        ((AppCompatButton) a(d.neutralButton)).setOnClickListener(new b(aVar));
        ((AppCompatButton) a(d.cancelButton)).setOnClickListener(new c(aVar));
    }
}
