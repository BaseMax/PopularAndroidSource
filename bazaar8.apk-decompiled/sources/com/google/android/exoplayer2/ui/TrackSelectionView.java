package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import c.e.a.a.l.j;
import c.e.a.a.m.e;
import c.e.a.a.m.l;
import c.e.a.a.m.m;
import c.e.a.a.m.q;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TrackSelectionView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    public final int f12842a;

    /* renamed from: b  reason: collision with root package name */
    public final LayoutInflater f12843b;

    /* renamed from: c  reason: collision with root package name */
    public final CheckedTextView f12844c;

    /* renamed from: d  reason: collision with root package name */
    public final CheckedTextView f12845d;

    /* renamed from: e  reason: collision with root package name */
    public final a f12846e;

    /* renamed from: f  reason: collision with root package name */
    public final SparseArray<DefaultTrackSelector.SelectionOverride> f12847f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f12848g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f12849h;

    /* renamed from: i  reason: collision with root package name */
    public q f12850i;

    /* renamed from: j  reason: collision with root package name */
    public CheckedTextView[][] f12851j;

    /* renamed from: k  reason: collision with root package name */
    public j.a f12852k;

    /* renamed from: l  reason: collision with root package name */
    public int f12853l;
    public TrackGroupArray m;
    public boolean n;
    public b o;

    private class a implements View.OnClickListener {
        public a() {
        }

        public void onClick(View view) {
            TrackSelectionView.this.a(view);
        }
    }

    public interface b {
        void a(boolean z, List<DefaultTrackSelector.SelectionOverride> list);
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public final void b() {
        this.n = true;
        this.f12847f.clear();
    }

    public final boolean c() {
        return this.f12849h && this.m.f12699b > 1;
    }

    public final void d() {
        this.f12844c.setChecked(this.n);
        this.f12845d.setChecked(!this.n && this.f12847f.size() == 0);
        for (int i2 = 0; i2 < this.f12851j.length; i2++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = this.f12847f.get(i2);
            int i3 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f12851j;
                if (i3 >= checkedTextViewArr[i2].length) {
                    break;
                }
                checkedTextViewArr[i2][i3].setChecked(selectionOverride != null && selectionOverride.a(i3));
                i3++;
            }
        }
    }

    public final void e() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f12852k == null) {
            this.f12844c.setEnabled(false);
            this.f12845d.setEnabled(false);
            return;
        }
        this.f12844c.setEnabled(true);
        this.f12845d.setEnabled(true);
        this.m = this.f12852k.b(this.f12853l);
        this.f12851j = new CheckedTextView[this.m.f12699b][];
        boolean c2 = c();
        int i2 = 0;
        while (true) {
            TrackGroupArray trackGroupArray = this.m;
            if (i2 < trackGroupArray.f12699b) {
                TrackGroup a2 = trackGroupArray.a(i2);
                boolean a3 = a(i2);
                this.f12851j[i2] = new CheckedTextView[a2.f12695a];
                for (int i3 = 0; i3 < a2.f12695a; i3++) {
                    if (i3 == 0) {
                        addView(this.f12843b.inflate(l.exo_list_divider, this, false));
                    }
                    CheckedTextView checkedTextView = (CheckedTextView) this.f12843b.inflate((a3 || c2) ? 17367056 : 17367055, this, false);
                    checkedTextView.setBackgroundResource(this.f12842a);
                    checkedTextView.setText(this.f12850i.a(a2.a(i3)));
                    if (this.f12852k.a(this.f12853l, i2, i3) == 4) {
                        checkedTextView.setFocusable(true);
                        checkedTextView.setTag(Pair.create(Integer.valueOf(i2), Integer.valueOf(i3)));
                        checkedTextView.setOnClickListener(this.f12846e);
                    } else {
                        checkedTextView.setFocusable(false);
                        checkedTextView.setEnabled(false);
                    }
                    this.f12851j[i2][i3] = checkedTextView;
                    addView(checkedTextView);
                }
                i2++;
            } else {
                d();
                return;
            }
        }
    }

    public boolean getIsDisabled() {
        return this.n;
    }

    public List<DefaultTrackSelector.SelectionOverride> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f12847f.size());
        for (int i2 = 0; i2 < this.f12847f.size(); i2++) {
            arrayList.add(this.f12847f.valueAt(i2));
        }
        return arrayList;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f12848g != z) {
            this.f12848g = z;
            e();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f12849h != z) {
            this.f12849h = z;
            if (!z && this.f12847f.size() > 1) {
                for (int size = this.f12847f.size() - 1; size > 0; size--) {
                    this.f12847f.remove(size);
                }
            }
            e();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f12844c.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(q qVar) {
        C0737e.a(qVar);
        this.f12850i = qVar;
        e();
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(View view) {
        if (view == this.f12844c) {
            b();
        } else if (view == this.f12845d) {
            a();
        } else {
            b(view);
        }
        d();
        b bVar = this.o;
        if (bVar != null) {
            bVar.a(getIsDisabled(), getOverrides());
        }
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        setOrientation(1);
        this.f12847f = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        this.f12842a = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        this.f12843b = LayoutInflater.from(context);
        this.f12846e = new a();
        this.f12850i = new e(getResources());
        this.m = TrackGroupArray.f12698a;
        this.f12844c = (CheckedTextView) this.f12843b.inflate(17367055, this, false);
        this.f12844c.setBackgroundResource(this.f12842a);
        this.f12844c.setText(m.exo_track_selection_none);
        this.f12844c.setEnabled(false);
        this.f12844c.setFocusable(true);
        this.f12844c.setOnClickListener(this.f12846e);
        this.f12844c.setVisibility(8);
        addView(this.f12844c);
        addView(this.f12843b.inflate(l.exo_list_divider, this, false));
        this.f12845d = (CheckedTextView) this.f12843b.inflate(17367055, this, false);
        this.f12845d.setBackgroundResource(this.f12842a);
        this.f12845d.setText(m.exo_track_selection_auto);
        this.f12845d.setEnabled(false);
        this.f12845d.setFocusable(true);
        this.f12845d.setOnClickListener(this.f12846e);
        addView(this.f12845d);
    }

    public final void b(View view) {
        this.n = false;
        Pair pair = (Pair) view.getTag();
        int intValue = ((Integer) pair.first).intValue();
        int intValue2 = ((Integer) pair.second).intValue();
        DefaultTrackSelector.SelectionOverride selectionOverride = this.f12847f.get(intValue);
        C0737e.a(this.f12852k);
        if (selectionOverride == null) {
            if (!this.f12849h && this.f12847f.size() > 0) {
                this.f12847f.clear();
            }
            this.f12847f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, intValue2));
            return;
        }
        int i2 = selectionOverride.f12767c;
        int[] iArr = selectionOverride.f12766b;
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean a2 = a(intValue);
        boolean z = a2 || c();
        if (!isChecked || !z) {
            if (isChecked) {
                return;
            }
            if (a2) {
                this.f12847f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, a(iArr, intValue2)));
            } else {
                this.f12847f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, intValue2));
            }
        } else if (i2 == 1) {
            this.f12847f.remove(intValue);
        } else {
            this.f12847f.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, b(iArr, intValue2)));
        }
    }

    public final void a() {
        this.n = false;
        this.f12847f.clear();
    }

    public final boolean a(int i2) {
        if (!this.f12848g || this.m.a(i2).f12695a <= 1 || this.f12852k.a(this.f12853l, i2, false) == 0) {
            return false;
        }
        return true;
    }

    public static int[] a(int[] iArr, int i2) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[copyOf.length - 1] = i2;
        return copyOf;
    }

    public static int[] b(int[] iArr, int i2) {
        int[] iArr2 = new int[(iArr.length - 1)];
        int i3 = 0;
        for (int i4 : iArr) {
            if (i4 != i2) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return iArr2;
    }
}
