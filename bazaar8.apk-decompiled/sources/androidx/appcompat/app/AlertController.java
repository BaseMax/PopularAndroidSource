package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import b.b.a.B;
import b.b.f;
import b.b.j;
import b.i.k.z;
import java.lang.ref.WeakReference;

public class AlertController {
    public NestedScrollView A;
    public int B = 0;
    public Drawable C;
    public ImageView D;
    public TextView E;
    public TextView F;
    public View G;
    public ListAdapter H;
    public int I = -1;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public boolean P;
    public int Q = 0;
    public Handler R;
    public final View.OnClickListener S = new C0192c(this);

    /* renamed from: a  reason: collision with root package name */
    public final Context f228a;

    /* renamed from: b  reason: collision with root package name */
    public final B f229b;

    /* renamed from: c  reason: collision with root package name */
    public final Window f230c;

    /* renamed from: d  reason: collision with root package name */
    public final int f231d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f232e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f233f;

    /* renamed from: g  reason: collision with root package name */
    public ListView f234g;

    /* renamed from: h  reason: collision with root package name */
    public View f235h;

    /* renamed from: i  reason: collision with root package name */
    public int f236i;

    /* renamed from: j  reason: collision with root package name */
    public int f237j;

    /* renamed from: k  reason: collision with root package name */
    public int f238k;

    /* renamed from: l  reason: collision with root package name */
    public int f239l;
    public int m;
    public boolean n = false;
    public Button o;
    public CharSequence p;
    public Message q;
    public Drawable r;
    public Button s;
    public CharSequence t;
    public Message u;
    public Drawable v;
    public Button w;
    public CharSequence x;
    public Message y;
    public Drawable z;

    public static class RecycleListView extends ListView {

        /* renamed from: a  reason: collision with root package name */
        public final int f240a;

        /* renamed from: b  reason: collision with root package name */
        public final int f241b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public void a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f240a, getPaddingRight(), z2 ? getPaddingBottom() : this.f241b);
            }
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.RecycleListView);
            this.f241b = obtainStyledAttributes.getDimensionPixelOffset(j.RecycleListView_paddingBottomNoButtons, -1);
            this.f240a = obtainStyledAttributes.getDimensionPixelOffset(j.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    public static class a {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean E = false;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public int I = -1;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;
        public C0011a O;
        public boolean P = true;

        /* renamed from: a  reason: collision with root package name */
        public final Context f242a;

        /* renamed from: b  reason: collision with root package name */
        public final LayoutInflater f243b;

        /* renamed from: c  reason: collision with root package name */
        public int f244c = 0;

        /* renamed from: d  reason: collision with root package name */
        public Drawable f245d;

        /* renamed from: e  reason: collision with root package name */
        public int f246e = 0;

        /* renamed from: f  reason: collision with root package name */
        public CharSequence f247f;

        /* renamed from: g  reason: collision with root package name */
        public View f248g;

        /* renamed from: h  reason: collision with root package name */
        public CharSequence f249h;

        /* renamed from: i  reason: collision with root package name */
        public CharSequence f250i;

        /* renamed from: j  reason: collision with root package name */
        public Drawable f251j;

        /* renamed from: k  reason: collision with root package name */
        public DialogInterface.OnClickListener f252k;

        /* renamed from: l  reason: collision with root package name */
        public CharSequence f253l;
        public Drawable m;
        public DialogInterface.OnClickListener n;
        public CharSequence o;
        public Drawable p;
        public DialogInterface.OnClickListener q;
        public boolean r;
        public DialogInterface.OnCancelListener s;
        public DialogInterface.OnDismissListener t;
        public DialogInterface.OnKeyListener u;
        public CharSequence[] v;
        public ListAdapter w;
        public DialogInterface.OnClickListener x;
        public int y;
        public View z;

        /* renamed from: androidx.appcompat.app.AlertController$a$a  reason: collision with other inner class name */
        public interface C0011a {
            void a(ListView listView);
        }

        public a(Context context) {
            this.f242a = context;
            this.r = true;
            this.f243b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void a(AlertController alertController) {
            View view = this.f248g;
            if (view != null) {
                alertController.b(view);
            } else {
                CharSequence charSequence = this.f247f;
                if (charSequence != null) {
                    alertController.b(charSequence);
                }
                Drawable drawable = this.f245d;
                if (drawable != null) {
                    alertController.a(drawable);
                }
                int i2 = this.f244c;
                if (i2 != 0) {
                    alertController.b(i2);
                }
                int i3 = this.f246e;
                if (i3 != 0) {
                    alertController.b(alertController.a(i3));
                }
            }
            CharSequence charSequence2 = this.f249h;
            if (charSequence2 != null) {
                alertController.a(charSequence2);
            }
            if (!(this.f250i == null && this.f251j == null)) {
                alertController.a(-1, this.f250i, this.f252k, (Message) null, this.f251j);
            }
            if (!(this.f253l == null && this.m == null)) {
                alertController.a(-2, this.f253l, this.n, (Message) null, this.m);
            }
            if (!(this.o == null && this.p == null)) {
                alertController.a(-3, this.o, this.q, (Message) null, this.p);
            }
            if (!(this.v == null && this.K == null && this.w == null)) {
                b(alertController);
            }
            View view2 = this.z;
            if (view2 == null) {
                int i4 = this.y;
                if (i4 != 0) {
                    alertController.c(i4);
                }
            } else if (this.E) {
                alertController.a(view2, this.A, this.B, this.C, this.D);
            } else {
                alertController.c(view2);
            }
        }

        /* JADX WARNING: type inference failed for: r9v0, types: [android.widget.ListAdapter] */
        /* JADX WARNING: type inference failed for: r9v6 */
        /* JADX WARNING: type inference failed for: r9v7 */
        /* JADX WARNING: type inference failed for: r2v6, types: [android.widget.SimpleCursorAdapter] */
        /* JADX WARNING: type inference failed for: r1v19, types: [b.b.a.i] */
        /* JADX WARNING: type inference failed for: r1v20, types: [b.b.a.h] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void b(androidx.appcompat.app.AlertController r12) {
            /*
                r11 = this;
                android.view.LayoutInflater r0 = r11.f243b
                int r1 = r12.L
                r2 = 0
                android.view.View r0 = r0.inflate(r1, r2)
                androidx.appcompat.app.AlertController$RecycleListView r0 = (androidx.appcompat.app.AlertController.RecycleListView) r0
                boolean r1 = r11.G
                r8 = 1
                if (r1 == 0) goto L_0x0033
                android.database.Cursor r4 = r11.K
                if (r4 != 0) goto L_0x0026
                b.b.a.h r9 = new b.b.a.h
                android.content.Context r3 = r11.f242a
                int r4 = r12.M
                r5 = 16908308(0x1020014, float:2.3877285E-38)
                java.lang.CharSequence[] r6 = r11.v
                r1 = r9
                r2 = r11
                r7 = r0
                r1.<init>(r2, r3, r4, r5, r6, r7)
                goto L_0x0067
            L_0x0026:
                b.b.a.i r9 = new b.b.a.i
                android.content.Context r3 = r11.f242a
                r5 = 0
                r1 = r9
                r2 = r11
                r6 = r0
                r7 = r12
                r1.<init>(r2, r3, r4, r5, r6, r7)
                goto L_0x0067
            L_0x0033:
                boolean r1 = r11.H
                if (r1 == 0) goto L_0x003a
                int r1 = r12.N
                goto L_0x003c
            L_0x003a:
                int r1 = r12.O
            L_0x003c:
                r4 = r1
                android.database.Cursor r5 = r11.K
                r1 = 16908308(0x1020014, float:2.3877285E-38)
                if (r5 == 0) goto L_0x0059
                android.widget.SimpleCursorAdapter r9 = new android.widget.SimpleCursorAdapter
                android.content.Context r3 = r11.f242a
                java.lang.String[] r6 = new java.lang.String[r8]
                java.lang.String r2 = r11.L
                r7 = 0
                r6[r7] = r2
                int[] r10 = new int[r8]
                r10[r7] = r1
                r2 = r9
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                goto L_0x0067
            L_0x0059:
                android.widget.ListAdapter r9 = r11.w
                if (r9 == 0) goto L_0x005e
                goto L_0x0067
            L_0x005e:
                androidx.appcompat.app.AlertController$c r9 = new androidx.appcompat.app.AlertController$c
                android.content.Context r2 = r11.f242a
                java.lang.CharSequence[] r3 = r11.v
                r9.<init>(r2, r4, r1, r3)
            L_0x0067:
                androidx.appcompat.app.AlertController$a$a r1 = r11.O
                if (r1 == 0) goto L_0x006e
                r1.a(r0)
            L_0x006e:
                r12.H = r9
                int r1 = r11.I
                r12.I = r1
                android.content.DialogInterface$OnClickListener r1 = r11.x
                if (r1 == 0) goto L_0x0081
                b.b.a.j r1 = new b.b.a.j
                r1.<init>(r11, r12)
                r0.setOnItemClickListener(r1)
                goto L_0x008d
            L_0x0081:
                android.content.DialogInterface$OnMultiChoiceClickListener r1 = r11.J
                if (r1 == 0) goto L_0x008d
                b.b.a.k r1 = new b.b.a.k
                r1.<init>(r11, r0, r12)
                r0.setOnItemClickListener(r1)
            L_0x008d:
                android.widget.AdapterView$OnItemSelectedListener r1 = r11.N
                if (r1 == 0) goto L_0x0094
                r0.setOnItemSelectedListener(r1)
            L_0x0094:
                boolean r1 = r11.H
                if (r1 == 0) goto L_0x009c
                r0.setChoiceMode(r8)
                goto L_0x00a4
            L_0x009c:
                boolean r1 = r11.G
                if (r1 == 0) goto L_0x00a4
                r1 = 2
                r0.setChoiceMode(r1)
            L_0x00a4:
                r12.f234g = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.a.b(androidx.appcompat.app.AlertController):void");
        }
    }

    private static final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        public WeakReference<DialogInterface> f254a;

        public b(DialogInterface dialogInterface) {
            this.f254a = new WeakReference<>(dialogInterface);
        }

        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == -3 || i2 == -2 || i2 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f254a.get(), message.what);
            } else if (i2 == 1) {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static class c extends ArrayAdapter<CharSequence> {
        public c(Context context, int i2, int i3, CharSequence[] charSequenceArr) {
            super(context, i2, i3, charSequenceArr);
        }

        public long getItemId(int i2) {
            return (long) i2;
        }

        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, B b2, Window window) {
        this.f228a = context;
        this.f229b = b2;
        this.f230c = window;
        this.R = new b(b2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, j.AlertDialog, b.b.a.alertDialogStyle, 0);
        this.J = obtainStyledAttributes.getResourceId(j.AlertDialog_android_layout, 0);
        this.K = obtainStyledAttributes.getResourceId(j.AlertDialog_buttonPanelSideLayout, 0);
        this.L = obtainStyledAttributes.getResourceId(j.AlertDialog_listLayout, 0);
        this.M = obtainStyledAttributes.getResourceId(j.AlertDialog_multiChoiceItemLayout, 0);
        this.N = obtainStyledAttributes.getResourceId(j.AlertDialog_singleChoiceItemLayout, 0);
        this.O = obtainStyledAttributes.getResourceId(j.AlertDialog_listItemLayout, 0);
        this.P = obtainStyledAttributes.getBoolean(j.AlertDialog_showTitle, true);
        this.f231d = obtainStyledAttributes.getDimensionPixelSize(j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        b2.a(1);
    }

    public static boolean a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(b.b.a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            return true;
        }
        return false;
    }

    public void b() {
        this.f229b.setContentView(c());
        d();
    }

    public final int c() {
        int i2 = this.K;
        if (i2 == 0) {
            return this.J;
        }
        if (this.Q == 1) {
            return i2;
        }
        return this.J;
    }

    public final void d() {
        View findViewById = this.f230c.findViewById(f.parentPanel);
        View findViewById2 = findViewById.findViewById(f.topPanel);
        View findViewById3 = findViewById.findViewById(f.contentPanel);
        View findViewById4 = findViewById.findViewById(f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById.findViewById(f.customPanel);
        c(viewGroup);
        View findViewById5 = viewGroup.findViewById(f.topPanel);
        View findViewById6 = viewGroup.findViewById(f.contentPanel);
        View findViewById7 = viewGroup.findViewById(f.buttonPanel);
        ViewGroup a2 = a(findViewById5, findViewById2);
        ViewGroup a3 = a(findViewById6, findViewById3);
        ViewGroup a4 = a(findViewById7, findViewById4);
        b(a3);
        a(a4);
        d(a2);
        char c2 = 0;
        boolean z2 = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z3 = (a2 == null || a2.getVisibility() == 8) ? false : true;
        boolean z4 = (a4 == null || a4.getVisibility() == 8) ? false : true;
        if (!z4 && a3 != null) {
            View findViewById8 = a3.findViewById(f.textSpacerNoButtons);
            if (findViewById8 != null) {
                findViewById8.setVisibility(0);
            }
        }
        if (z3) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (!(this.f233f == null && this.f234g == null)) {
                view = a2.findViewById(f.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (a3 != null) {
            View findViewById9 = a3.findViewById(f.textSpacerNoTitle);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        }
        ListView listView = this.f234g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z3, z4);
        }
        if (!z2) {
            View view2 = this.f234g;
            if (view2 == null) {
                view2 = this.A;
            }
            if (view2 != null) {
                if (z4) {
                    c2 = 2;
                }
                a(a3, view2, z3 | c2 ? 1 : 0, 3);
            }
        }
        ListView listView2 = this.f234g;
        if (listView2 != null) {
            ListAdapter listAdapter = this.H;
            if (listAdapter != null) {
                listView2.setAdapter(listAdapter);
                int i2 = this.I;
                if (i2 > -1) {
                    listView2.setItemChecked(i2, true);
                    listView2.setSelection(i2);
                }
            }
        }
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void b(CharSequence charSequence) {
        this.f232e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void c(int i2) {
        this.f235h = null;
        this.f236i = i2;
        this.n = false;
    }

    public void b(View view) {
        this.G = view;
    }

    public void b(int i2) {
        this.C = null;
        this.B = i2;
        ImageView imageView = this.D;
        if (imageView == null) {
            return;
        }
        if (i2 != 0) {
            imageView.setVisibility(0);
            this.D.setImageResource(this.B);
            return;
        }
        imageView.setVisibility(8);
    }

    public void c(View view) {
        this.f235h = view;
        this.f236i = 0;
        this.n = false;
    }

    public void a(CharSequence charSequence) {
        this.f233f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public final void c(ViewGroup viewGroup) {
        View view = this.f235h;
        boolean z2 = false;
        if (view == null) {
            view = this.f236i != 0 ? LayoutInflater.from(this.f228a).inflate(this.f236i, viewGroup, false) : null;
        }
        if (view != null) {
            z2 = true;
        }
        if (!z2 || !a(view)) {
            this.f230c.setFlags(131072, 131072);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) this.f230c.findViewById(f.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.n) {
                frameLayout.setPadding(this.f237j, this.f238k, this.f239l, this.m);
            }
            if (this.f234g != null) {
                ((LinearLayoutCompat.a) viewGroup.getLayoutParams()).f425a = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        this.f235h = view;
        this.f236i = 0;
        this.n = true;
        this.f237j = i2;
        this.f238k = i3;
        this.f239l = i4;
        this.m = i5;
    }

    public boolean b(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.a(keyEvent);
    }

    public final void b(ViewGroup viewGroup) {
        this.A = (NestedScrollView) this.f230c.findViewById(f.scrollView);
        this.A.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        this.F = (TextView) viewGroup.findViewById(16908299);
        TextView textView = this.F;
        if (textView != null) {
            CharSequence charSequence = this.f233f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                this.A.removeView(this.F);
                if (this.f234g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(this.A);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(this.f234g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroup.setVisibility(8);
                }
            }
        }
    }

    public void a(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.x = charSequence;
            this.y = message;
            this.z = drawable;
        } else if (i2 == -2) {
            this.t = charSequence;
            this.u = message;
            this.v = drawable;
        } else if (i2 == -1) {
            this.p = charSequence;
            this.q = message;
            this.r = drawable;
        } else {
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void a(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView == null) {
            return;
        }
        if (drawable != null) {
            imageView.setVisibility(0);
            this.D.setImageDrawable(drawable);
            return;
        }
        imageView.setVisibility(8);
    }

    public int a(int i2) {
        TypedValue typedValue = new TypedValue();
        this.f228a.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId;
    }

    public final void d(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f230c.findViewById(f.title_template).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f230c.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f232e)) || !this.P) {
            this.f230c.findViewById(f.title_template).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        this.E = (TextView) this.f230c.findViewById(f.alertTitle);
        this.E.setText(this.f232e);
        int i2 = this.B;
        if (i2 != 0) {
            this.D.setImageResource(i2);
            return;
        }
        Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
            return;
        }
        this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
        this.D.setVisibility(8);
    }

    public ListView a() {
        return this.f234g;
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.a(keyEvent);
    }

    public final ViewGroup a(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void a(ViewGroup viewGroup, View view, int i2, int i3) {
        View findViewById = this.f230c.findViewById(f.scrollIndicatorUp);
        View findViewById2 = this.f230c.findViewById(f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            z.a(view, i2, i3);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        View view2 = null;
        if (findViewById != null && (i2 & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 == null || (i2 & 2) != 0) {
            view2 = findViewById2;
        } else {
            viewGroup.removeView(findViewById2);
        }
        if (findViewById != null || view2 != null) {
            if (this.f233f != null) {
                this.A.setOnScrollChangeListener(new C0193d(this, findViewById, view2));
                this.A.post(new C0194e(this, findViewById, view2));
                return;
            }
            ListView listView = this.f234g;
            if (listView != null) {
                listView.setOnScrollListener(new C0195f(this, findViewById, view2));
                this.f234g.post(new C0196g(this, findViewById, view2));
                return;
            }
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (view2 != null) {
                viewGroup.removeView(view2);
            }
        }
    }

    public static void a(View view, View view2, View view3) {
        int i2 = 0;
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            if (!view.canScrollVertically(1)) {
                i2 = 4;
            }
            view3.setVisibility(i2);
        }
    }

    public final void a(ViewGroup viewGroup) {
        boolean z2;
        this.o = (Button) viewGroup.findViewById(16908313);
        this.o.setOnClickListener(this.S);
        boolean z3 = true;
        if (!TextUtils.isEmpty(this.p) || this.r != null) {
            this.o.setText(this.p);
            Drawable drawable = this.r;
            if (drawable != null) {
                int i2 = this.f231d;
                drawable.setBounds(0, 0, i2, i2);
                this.o.setCompoundDrawables(this.r, null, null, null);
            }
            this.o.setVisibility(0);
            z2 = true;
        } else {
            this.o.setVisibility(8);
            z2 = false;
        }
        this.s = (Button) viewGroup.findViewById(16908314);
        this.s.setOnClickListener(this.S);
        if (!TextUtils.isEmpty(this.t) || this.v != null) {
            this.s.setText(this.t);
            Drawable drawable2 = this.v;
            if (drawable2 != null) {
                int i3 = this.f231d;
                drawable2.setBounds(0, 0, i3, i3);
                this.s.setCompoundDrawables(this.v, null, null, null);
            }
            this.s.setVisibility(0);
            z2 |= true;
        } else {
            this.s.setVisibility(8);
        }
        this.w = (Button) viewGroup.findViewById(16908315);
        this.w.setOnClickListener(this.S);
        if (!TextUtils.isEmpty(this.x) || this.z != null) {
            this.w.setText(this.x);
            Drawable drawable3 = this.r;
            if (drawable3 != null) {
                int i4 = this.f231d;
                drawable3.setBounds(0, 0, i4, i4);
                this.o.setCompoundDrawables(this.r, null, null, null);
            }
            this.w.setVisibility(0);
            z2 |= true;
        } else {
            this.w.setVisibility(8);
        }
        if (a(this.f228a)) {
            if (z2) {
                a(this.o);
            } else if (z2) {
                a(this.s);
            } else if (z2) {
                a(this.w);
            }
        }
        if (!z2) {
            z3 = false;
        }
        if (!z3) {
            viewGroup.setVisibility(8);
        }
    }

    public final void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }
}
