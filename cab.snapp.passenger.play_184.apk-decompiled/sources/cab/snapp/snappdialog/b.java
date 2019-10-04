package cab.snapp.snappdialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.dialogViews.a.c;
import cab.snapp.snappdialog.dialogViews.a.d;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappdialog.dialogViews.a.h;
import cab.snapp.snappdialog.dialogViews.a.i;
import cab.snapp.snappdialog.dialogViews.view.SnappCheckboxListDialogView;
import cab.snapp.snappdialog.dialogViews.view.SnappDatePickerDialogView;
import cab.snapp.snappdialog.dialogViews.view.SnappDialogViewType;
import cab.snapp.snappdialog.dialogViews.view.SnappInputTextDialogView;
import cab.snapp.snappdialog.dialogViews.view.SnappItemPickerDialogView;
import cab.snapp.snappdialog.dialogViews.view.SnappLoadingDialogView;
import cab.snapp.snappdialog.dialogViews.view.SnappMessageDialogView;
import cab.snapp.snappdialog.dialogViews.view.SnappMessageListDialogView;
import cab.snapp.snappdialog.dialogViews.view.SnappRadioListDialogView;
import java.util.UUID;
import okhttp3.internal.http.StatusLine;

public final class b extends Dialog {
    private LinearLayout A;
    private LinearLayout B;
    private LinearLayout C;
    /* access modifiers changed from: private */
    public View.OnClickListener D;
    /* access modifiers changed from: private */
    public View.OnClickListener E;
    private cab.snapp.snappdialog.b.b F;
    private cab.snapp.snappdialog.b.b G;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1461a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public String f1462b;
    /* access modifiers changed from: private */
    public String c;
    /* access modifiers changed from: private */
    public int d;
    /* access modifiers changed from: private */
    public String e;
    /* access modifiers changed from: private */
    public int f;
    private boolean g;
    /* access modifiers changed from: private */
    public int h;
    /* access modifiers changed from: private */
    public String i;
    /* access modifiers changed from: private */
    public String j;
    /* access modifiers changed from: private */
    public c k;
    /* access modifiers changed from: private */
    public boolean l;
    private Integer m;
    private SnappDialogViewType n;
    /* access modifiers changed from: private */
    public boolean o;
    private AppCompatButton p;
    private AppCompatButton q;
    private ViewGroup r;
    private FrameLayout s;
    private ImageView t;
    private FrameLayout u;
    private ImageView v;
    private AppCompatTextView w;
    private AppCompatTextView x;
    private FrameLayout y;
    private LinearLayout z;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        b f1464a;

        public a(Context context) {
            if (context != null) {
                this.f1464a = new b(context, (byte) 0);
                return;
            }
            throw new NullPointerException("Context is Null");
        }

        public final a setDialogTitle(int i) {
            b bVar = this.f1464a;
            bVar.f1462b = bVar.getContext().getString(i);
            return this;
        }

        public final a setDialogTitle(String str) {
            this.f1464a.f1462b = str;
            return this;
        }

        public final a setIcon(int i) {
            this.f1464a.d = i;
            return this;
        }

        public final a setIconFont(int i) {
            b bVar = this.f1464a;
            bVar.e = bVar.getContext().getString(i);
            return this;
        }

        public final a setDialogViewType(c cVar) {
            this.f1464a.k = cVar;
            return this;
        }

        public final a setPositiveButton(String str, View.OnClickListener onClickListener) {
            b.a(this.f1464a, str, onClickListener);
            return this;
        }

        public final a setPositiveButton(int i, View.OnClickListener onClickListener) {
            b bVar = this.f1464a;
            b.a(bVar, bVar.getContext().getString(i), onClickListener);
            return this;
        }

        public final a setPositiveButtonText(String str) {
            this.f1464a.i = str;
            return this;
        }

        public final a setPositiveButtonText(int i) {
            b bVar = this.f1464a;
            bVar.i = bVar.getContext().getString(i);
            return this;
        }

        public final a setNegativeButton(String str, View.OnClickListener onClickListener) {
            b.b(this.f1464a, str, onClickListener);
            return this;
        }

        public final a setNegativeButton(int i, View.OnClickListener onClickListener) {
            b bVar = this.f1464a;
            b.b(bVar, bVar.getContext().getString(i), onClickListener);
            return this;
        }

        public final a setNegativeButtonText(String str) {
            this.f1464a.j = str;
            return this;
        }

        public final a setNegativeButtonText(int i) {
            b bVar = this.f1464a;
            bVar.j = bVar.getContext().getString(i);
            return this;
        }

        public final a dismissOnButtonClick(int i) {
            if (i == 401) {
                this.f1464a.D = this.f1464a.F;
            } else if (i == 402) {
                this.f1464a.E = this.f1464a.G;
            }
            return this;
        }

        public final a setTopImageUrl(String str) {
            this.f1464a.c = str;
            return this;
        }

        public final a setTheme(int i) {
            this.f1464a.h = i;
            return this;
        }

        public final a setButtonWidthProportion(int i) {
            this.f1464a.f = i;
            return this;
        }

        public final a setButtonOrientation(int i) {
            b.e(this.f1464a, i);
            return this;
        }

        public final a setCancelable(boolean z) {
            this.f1464a.setCancelable(z);
            return this;
        }

        public final a showOnBuild(boolean z) {
            this.f1464a.l = z;
            return this;
        }

        public final a isErrorInformation(boolean z) {
            this.f1464a.o = z;
            return this;
        }

        public final b build() {
            b.d(this.f1464a);
            return this.f1464a;
        }
    }

    /* synthetic */ b(Context context, byte b2) {
        this(context);
    }

    private b(Context context) {
        super(context);
        this.f1461a = false;
        this.f1462b = null;
        this.f = 201;
        this.g = true;
        this.h = 1;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = false;
        this.m = 0;
        this.o = false;
        this.F = new cab.snapp.snappdialog.b.b(this.D, this);
        this.G = new cab.snapp.snappdialog.b.b(this.E, this);
    }

    public final Integer getDialogId() {
        return this.m;
    }

    public final String getTitle() {
        return this.f1462b;
    }

    public final String getTopImageUrl() {
        return this.c;
    }

    public final int getIconRes() {
        return this.d;
    }

    public final String getIconFont() {
        return this.e;
    }

    public final int getSnappDialogButtonProportion() {
        return this.f;
    }

    public final boolean isHorizontalButtonMode() {
        return this.g;
    }

    public final int getSnappDialogTheme() {
        return this.h;
    }

    public final View.OnClickListener getPositiveButtonClickListener() {
        return this.D;
    }

    public final View.OnClickListener getNegativeButtonClickListener() {
        return this.E;
    }

    public final String getPositiveButtonText() {
        return this.i;
    }

    public final String getNegativeButtonText() {
        return this.j;
    }

    public final c getDialogDataType() {
        return this.k;
    }

    public final boolean isShouldShowOnBuild() {
        return this.l;
    }

    public final boolean isLoading() {
        return this.f1461a;
    }

    public final boolean isErrorInformation() {
        return this.o;
    }

    public final ViewGroup getRootView() {
        return this.r;
    }

    private void a(View view) {
        if (view != null) {
            this.p = (AppCompatButton) view.findViewById(a.e.dialog_button_positive);
            this.q = (AppCompatButton) view.findViewById(a.e.dialog_button_negative);
            if (Build.VERSION.SDK_INT >= 21) {
                this.r.setClipToOutline(true);
            }
        }
    }

    public final void releaseMemory() {
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
    }

    public final void show() {
        super.show();
        this.r.post(new Runnable() {
            public final void run() {
                if (b.this.getWindow() != null && b.this.k != null && b.this.k.getType() == 305) {
                    b.this.getWindow().setSoftInputMode(20);
                }
            }
        });
    }

    static /* synthetic */ void a(b bVar, String str, View.OnClickListener onClickListener) {
        bVar.i = str;
        if (bVar.D == null) {
            bVar.D = onClickListener;
        }
    }

    static /* synthetic */ void b(b bVar, String str, View.OnClickListener onClickListener) {
        bVar.j = str;
        if (bVar.E == null) {
            bVar.E = onClickListener;
        }
    }

    static /* synthetic */ void e(b bVar, int i2) {
        if (i2 != 101) {
            if (i2 == 102) {
                bVar.g = false;
            }
            return;
        }
        bVar.g = true;
    }

    static /* synthetic */ void d(b bVar) {
        if (bVar.getWindow() != null) {
            bVar.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            bVar.getWindow().requestFeature(1);
        }
        bVar.m = Integer.valueOf(UUID.randomUUID().hashCode());
        bVar.r = (RelativeLayout) LayoutInflater.from(bVar.getContext()).inflate(a.f.dialog_base_layout, null, false);
        bVar.s = (FrameLayout) bVar.r.findViewById(a.e.dialog_base_content_frame);
        bVar.t = (ImageView) bVar.r.findViewById(a.e.dialog_base_top_image);
        bVar.u = (FrameLayout) bVar.r.findViewById(a.e.dialog_base_icon_layout);
        bVar.v = (ImageView) bVar.r.findViewById(a.e.dialog_base_icon);
        bVar.w = (AppCompatTextView) bVar.r.findViewById(a.e.dialog_base_icon_font);
        bVar.x = (AppCompatTextView) bVar.r.findViewById(a.e.dialog_base_title);
        bVar.y = (FrameLayout) bVar.r.findViewById(a.e.dialog_button_area_layout);
        bVar.z = (LinearLayout) bVar.r.findViewById(a.e.dialog_base_vertical_button_area_green);
        bVar.A = (LinearLayout) bVar.r.findViewById(a.e.dialog_base_horizontal_button_area_green);
        bVar.B = (LinearLayout) bVar.r.findViewById(a.e.dialog_base_vertical_button_area_dark);
        bVar.C = (LinearLayout) bVar.r.findViewById(a.e.dialog_base_horizontal_button_area_dark);
        if (bVar.f1462b != null) {
            if (bVar.h == 0 && bVar.o) {
                bVar.x.setTextColor(bVar.getContext().getResources().getColor(a.b.cherry));
            }
            bVar.x.setVisibility(0);
            bVar.x.setText(bVar.f1462b);
        }
        if (!bVar.f1461a) {
            if (bVar.d != 0) {
                bVar.u.setVisibility(0);
                bVar.v.setVisibility(0);
                bVar.v.setImageResource(bVar.d);
            } else if (bVar.e != null) {
                bVar.u.setVisibility(0);
                bVar.w.setVisibility(0);
                bVar.w.setText(bVar.e);
                if (bVar.getContext().getResources() != null) {
                    bVar.w.setTextColor(bVar.getContext().getResources().getColor(a.b.green_blue));
                }
            }
        }
        if (!bVar.f1461a) {
            String str = bVar.c;
            if (str != null && !str.isEmpty()) {
                bVar.t.setVisibility(0);
                com.bumptech.glide.c.with(bVar.getContext()).load(bVar.c).into(bVar.t);
            }
        }
        c cVar = bVar.k;
        if (cVar != null) {
            bVar.n = null;
            switch (cVar.getType()) {
                case 301:
                    bVar.n = (SnappMessageDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappMessageDialogView.getLayout(), bVar.getRootView(), false);
                    ((SnappMessageDialogView) bVar.n).setDirection(((g) bVar.k).getDirection());
                    break;
                case 302:
                    bVar.n = (SnappMessageListDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappMessageListDialogView.getLayout(), bVar.getRootView(), false);
                    ((SnappMessageListDialogView) bVar.n).setDirection(((h) bVar.k).getDirection());
                    break;
                case 303:
                    bVar.n = (SnappRadioListDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappRadioListDialogView.getLayout(), bVar.getRootView(), false);
                    ((SnappRadioListDialogView) bVar.n).setDirection(((i) bVar.k).getDirection());
                    break;
                case 304:
                    bVar.n = (SnappCheckboxListDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappCheckboxListDialogView.getLayout(), bVar.getRootView(), false);
                    ((SnappCheckboxListDialogView) bVar.n).setDirection(((cab.snapp.snappdialog.dialogViews.a.a) bVar.k).getDirection());
                    break;
                case 305:
                    bVar.n = (SnappInputTextDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappInputTextDialogView.getLayout(), bVar.getRootView(), false);
                    ((SnappInputTextDialogView) bVar.n).setDirection(((d) bVar.k).getDirection());
                    break;
                case 306:
                    bVar.n = (SnappLoadingDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappLoadingDialogView.getLayout(), bVar.getRootView(), false);
                    bVar.f1461a = true;
                    break;
                case StatusLine.HTTP_TEMP_REDIRECT /*307*/:
                    bVar.n = (SnappDatePickerDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappDatePickerDialogView.getLayout(), bVar.getRootView(), false);
                    break;
                case StatusLine.HTTP_PERM_REDIRECT /*308*/:
                    bVar.n = (SnappItemPickerDialogView) LayoutInflater.from(bVar.getContext()).inflate(SnappItemPickerDialogView.getLayout(), bVar.getRootView(), false);
                    break;
            }
            SnappDialogViewType snappDialogViewType = bVar.n;
            if (snappDialogViewType != null) {
                snappDialogViewType.setData(bVar.k);
                FrameLayout frameLayout = bVar.s;
                if (frameLayout != null) {
                    if (frameLayout.getChildCount() > 0) {
                        bVar.s.removeAllViews();
                    }
                    bVar.s.addView(bVar.n);
                }
            }
            if (bVar.f1461a) {
                bVar.A.setVisibility(8);
                bVar.z.setVisibility(8);
                bVar.C.setVisibility(8);
                bVar.B.setVisibility(8);
            } else {
                int i2 = bVar.h;
                if (i2 != 0) {
                    if (i2 == 1) {
                        if (bVar.g) {
                            bVar.A.setVisibility(0);
                            bVar.z.setVisibility(8);
                            bVar.C.setVisibility(8);
                            bVar.B.setVisibility(8);
                            bVar.a((View) bVar.A);
                        } else {
                            bVar.A.setVisibility(8);
                            bVar.z.setVisibility(0);
                            bVar.C.setVisibility(8);
                            bVar.B.setVisibility(8);
                            bVar.a((View) bVar.z);
                        }
                    }
                } else if (bVar.g) {
                    bVar.A.setVisibility(8);
                    bVar.z.setVisibility(8);
                    bVar.C.setVisibility(0);
                    bVar.B.setVisibility(8);
                    bVar.a((View) bVar.C);
                } else {
                    bVar.A.setVisibility(8);
                    bVar.z.setVisibility(8);
                    bVar.C.setVisibility(8);
                    bVar.B.setVisibility(0);
                    bVar.a((View) bVar.B);
                }
            }
            if (!bVar.f1461a) {
                AppCompatButton appCompatButton = bVar.p;
                if (appCompatButton != null) {
                    String str2 = bVar.i;
                    if (str2 != null) {
                        appCompatButton.setText(str2);
                        bVar.p.setVisibility(0);
                    }
                    bVar.p.setOnClickListener(bVar.D);
                }
                AppCompatButton appCompatButton2 = bVar.q;
                if (appCompatButton2 != null) {
                    if (bVar.j != null) {
                        appCompatButton2.setVisibility(0);
                        bVar.q.setText(bVar.j);
                    }
                    bVar.q.setOnClickListener(bVar.E);
                }
            }
            if (!bVar.f1461a && bVar.g) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) bVar.p.getLayoutParams();
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) bVar.q.getLayoutParams();
                switch (bVar.f) {
                    case 201:
                        layoutParams.weight = 5.0f;
                        layoutParams2.weight = 5.0f;
                        break;
                    case 202:
                        layoutParams.weight = 6.0f;
                        layoutParams2.weight = 4.0f;
                        break;
                    case 203:
                        layoutParams.weight = 4.0f;
                        layoutParams2.weight = 6.0f;
                        break;
                }
                bVar.p.setLayoutParams(layoutParams);
                bVar.q.setLayoutParams(layoutParams2);
            }
            bVar.setContentView(bVar.getRootView());
            if (bVar.l) {
                bVar.show();
                return;
            }
            return;
        }
        throw new IllegalStateException("View type should be implemented for dialog");
    }
}
