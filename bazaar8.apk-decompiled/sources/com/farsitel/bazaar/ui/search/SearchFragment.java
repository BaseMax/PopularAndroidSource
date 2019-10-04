package com.farsitel.bazaar.ui.search;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.c.b.i;
import c.c.a.d.a.a;
import c.c.a.d.b.h;
import c.c.a.e;
import c.c.a.n.c.a.b;
import c.c.a.n.c.c.n;
import c.c.a.n.w.c;
import c.c.a.n.w.g;
import c.c.a.n.w.k;
import c.c.a.n.w.l;
import c.c.a.n.w.o;
import c.c.a.n.w.q;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.IsVoiceSearchFeasible;
import com.farsitel.bazaar.analytics.model.what.PerformNewSearchEvent;
import com.farsitel.bazaar.analytics.model.what.VoiceSearchClick;
import com.farsitel.bazaar.analytics.model.where.SearchScreen;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.widget.RTLImageView;
import h.f.b.f;
import h.f.b.j;
import h.k.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: SearchFragment.kt */
public final class SearchFragment extends n<l, q> {
    public static final a za = new a(null);
    public String Aa;
    public c Ba;
    public c.c.a.n.w.n Ca;
    public boolean Da;
    public l Ea;
    public int Fa = R.layout.fragment_search;
    public int Ga = R.layout.empty_search;
    public SearchViewMode Ha = SearchViewMode.PREDICTION_RESULT;
    public final o Ia = new k(this);
    public HashMap Ja;

    /* compiled from: SearchFragment.kt */
    public enum SearchViewMode {
        PREDICTION_RESULT,
        SHOWING_RESULT
    }

    /* compiled from: SearchFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public static final /* synthetic */ String d(SearchFragment searchFragment) {
        String str = searchFragment.Aa;
        if (str != null) {
            return str;
        }
        j.c("queryBeforeTextChange");
        throw null;
    }

    public static final /* synthetic */ c e(SearchFragment searchFragment) {
        c cVar = searchFragment.Ba;
        if (cVar != null) {
            return cVar;
        }
        j.c("searchBoxViewModel");
        throw null;
    }

    public static final /* synthetic */ q f(SearchFragment searchFragment) {
        return (q) searchFragment.cb();
    }

    public final void Ab() {
        E a2 = G.a((Fragment) this, Ra()).a(c.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        c cVar = (c) a2;
        h.a(this, cVar.g(), new SearchFragment$createSearchBoxViewModel$$inlined$createViewModel$lambda$1(this));
        a(SearchViewMode.PREDICTION_RESULT);
        cVar.a("");
        this.Ba = cVar;
    }

    public final void Bb() {
        RTLImageView rTLImageView = (RTLImageView) e(e.backButton);
        j.a((Object) rTLImageView, "backButton");
        c.c.a.d.b.l.c(rTLImageView);
        RTLImageView rTLImageView2 = (RTLImageView) e(e.searchButton);
        j.a((Object) rTLImageView2, "searchButton");
        c.c.a.d.b.l.a(rTLImageView2);
    }

    public final void Cb() {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        a.C0074a aVar = c.c.a.d.a.a.f4744b;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        String language = aVar.a(Ha2).n().getLanguage();
        intent.putExtra("android.speech.extra.LANGUAGE", language);
        intent.putExtra("android.speech.extra.LANGUAGE_PREFERENCE", language);
        intent.putExtra("android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE", language);
        intent.putExtra("android.speech.extra.PROMPT", b((int) R.string.voice_search_speak_message));
        try {
            startActivityForResult(intent, 4576);
            b.a(this, new IsVoiceSearchFeasible(true), null, null, 6, null);
        } catch (ActivityNotFoundException unused) {
            b.a(this, new IsVoiceSearchFeasible(false), null, null, 6, null);
            Qa().a(Ha().getString(R.string.voice_search_not_supported));
        }
    }

    public final void Db() {
        RTLImageView rTLImageView = (RTLImageView) e(e.searchButton);
        j.a((Object) rTLImageView, "searchButton");
        c.c.a.d.b.l.c(rTLImageView);
        RTLImageView rTLImageView2 = (RTLImageView) e(e.backButton);
        j.a((Object) rTLImageView2, "backButton");
        c.c.a.d.b.l.a(rTLImageView2);
    }

    public final View.OnClickListener Eb() {
        return new f(this);
    }

    public final void Fb() {
        c.c.a.n.w.n nVar = new c.c.a.n.w.n(this.Ia);
        nVar.a(new g(this));
        this.Ca = nVar;
        RecyclerView recyclerView = (RecyclerView) e(e.searchAutocompleteRecyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(Ha()));
        RecyclerView recyclerView2 = (RecyclerView) recyclerView.findViewById(e.searchAutocompleteRecyclerView);
        j.a((Object) recyclerView2, "searchAutocompleteRecyclerView");
        c.c.a.n.w.n nVar2 = this.Ca;
        if (nVar2 != null) {
            recyclerView2.setAdapter(nVar2);
        } else {
            j.c("searchHistoryAdapter");
            throw null;
        }
    }

    public final q Gb() {
        String str;
        q qVar = (q) cb();
        if (qVar.r()) {
            qVar.a((CharSequence) null);
        }
        CharSequence q = qVar.q();
        boolean z = false;
        if (!(q == null || m.a(q))) {
            String a2 = Za().a();
            if (a2 == null || a2.length() == 0) {
                z = true;
            }
            if (z) {
                a(SearchViewMode.PREDICTION_RESULT);
            } else {
                a(SearchViewMode.SHOWING_RESULT);
            }
            str = String.valueOf(qVar.q());
        } else {
            String a3 = Za().a();
            if (a3 == null || m.a(a3)) {
                z = true;
            }
            if (z) {
                a(SearchViewMode.PREDICTION_RESULT);
                str = Za().a();
            } else {
                a(SearchViewMode.SHOWING_RESULT);
                if (qVar.q() != null) {
                    str = String.valueOf(qVar.q());
                } else {
                    str = Za().a();
                }
            }
        }
        c(str);
        return qVar;
    }

    public void La() {
        HashMap hashMap = this.Ja;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Wa() {
        return this.Ga;
    }

    public int Ya() {
        return this.Fa;
    }

    public View e(int i2) {
        if (this.Ja == null) {
            this.Ja = new HashMap();
        }
        View view = (View) this.Ja.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ja.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean m() {
        String a2 = Za().a();
        if ((a2 == null || a2.length() == 0) || this.Ha != SearchViewMode.PREDICTION_RESULT) {
            return super.m();
        }
        a(SearchViewMode.SHOWING_RESULT);
        return true;
    }

    public void mb() {
        AppCompatEditText appCompatEditText = (AppCompatEditText) e(e.searchEditText);
        if (appCompatEditText != null) {
            Editable text = appCompatEditText.getText();
            if (text != null) {
                if (text.length() > 0) {
                    super.mb();
                }
            }
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final void zb() {
        ((AppCompatEditText) e(e.searchEditText)).requestFocus();
        f.a.a.f.f.a(Ha(), (View) (AppCompatEditText) e(e.searchEditText));
        AppCompatEditText appCompatEditText = (AppCompatEditText) e(e.searchEditText);
        j.a((Object) appCompatEditText, "searchEditText");
        Editable text = appCompatEditText.getText();
        if (text != null) {
            text.clear();
        }
        c.c.a.n.w.n nVar = this.Ca;
        if (nVar != null) {
            nVar.a(new ArrayList());
            a(SearchViewMode.PREDICTION_RESULT);
            return;
        }
        j.c("searchHistoryAdapter");
        throw null;
    }

    public SearchScreen Sa() {
        AppCompatEditText appCompatEditText = (AppCompatEditText) e(e.searchEditText);
        j.a((Object) appCompatEditText, "searchEditText");
        return new SearchScreen(String.valueOf(appCompatEditText.getText()));
    }

    public l Za() {
        l lVar = this.Ea;
        if (lVar != null) {
            return lVar;
        }
        j.c("searchFragmentArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        l.a aVar = l.f7048a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Ea = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public final void e(List<SearchHistoryItem> list) {
        if (list != null) {
            c.c.a.n.w.n nVar = this.Ca;
            if (nVar != null) {
                nVar.a(new ArrayList(list));
            } else {
                j.c("searchHistoryAdapter");
                throw null;
            }
        }
    }

    public void f(Bundle bundle) {
        super.f(bundle);
        Gb();
    }

    public q jb() {
        E a2 = G.a((Fragment) this, Ra()).a(q.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (q) a2;
    }

    public final void b(String str, String str2, String str3) {
        c.c.a.i.c.a(b.w.b.b.a(this), c.c.a.n.w.m.f7052a.a(str, str2, str3));
    }

    public final void c(Resource<? extends List<SearchHistoryItem>> resource) {
        if (j.a((Object) resource != null ? resource.d() : null, (Object) ResourceState.Success.f12179a)) {
            e((List<SearchHistoryItem>) (List) resource.a());
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void c(View view) {
        j.b(view, "view");
        super.c(view);
        View.OnClickListener Eb = Eb();
        ((AppCompatImageView) e(e.voiceSearchButton)).setOnClickListener(Eb);
        ((AppCompatImageView) e(e.clearSearchInputButton)).setOnClickListener(Eb);
        ((RTLImageView) e(e.backButton)).setOnClickListener(Eb);
        ((RTLImageView) e(e.searchButton)).setOnClickListener(Eb);
        RecyclerView recyclerView = (RecyclerView) e(e.searchAutocompleteRecyclerView);
        j.a((Object) recyclerView, "searchAutocompleteRecyclerView");
        c.c.a.d.b.l.a(recyclerView);
        ((AppCompatEditText) e(e.searchEditText)).requestFocus();
        ((AppCompatEditText) e(e.searchEditText)).addTextChangedListener(new c.c.a.n.w.h(this));
        ((AppCompatEditText) e(e.searchEditText)).setOnEditorActionListener(new i(this));
        ((AppCompatEditText) e(e.searchEditText)).setOnTouchListener(new j(this));
        String a2 = Za().a();
        if (a2 == null || a2.length() == 0) {
            f.a.a.f.f.a(Ha(), (View) (AppCompatEditText) e(e.searchEditText));
        }
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        Fb();
        Ab();
    }

    public final void a(SearchViewMode searchViewMode) {
        this.Ha = searchViewMode;
        int i2 = c.c.a.n.w.e.f7041a[searchViewMode.ordinal()];
        if (i2 == 1) {
            RecyclerView recyclerView = (RecyclerView) e(e.searchAutocompleteRecyclerView);
            j.a((Object) recyclerView, "searchAutocompleteRecyclerView");
            c.c.a.d.b.l.c(recyclerView);
            c.c.a.d.b.l.a(_a());
        } else if (i2 == 2) {
            RecyclerView recyclerView2 = (RecyclerView) e(e.searchAutocompleteRecyclerView);
            j.a((Object) recyclerView2, "searchAutocompleteRecyclerView");
            c.c.a.d.b.l.a(recyclerView2);
            c.c.a.d.b.l.c(_a());
        }
    }

    public <Section> void a(Section section) {
        if (section instanceof VitrinItem.Movie) {
            String a2 = Za().a();
            if (a2 == null) {
                a2 = "";
            }
            VitrinItem.Movie movie = (VitrinItem.Movie) section;
            c(a2, movie.getSlug(), movie.getReferrer());
        } else if (section instanceof VitrinItem.App) {
            String a3 = Za().a();
            if (a3 == null) {
                a3 = "";
            }
            VitrinItem.App app = (VitrinItem.App) section;
            c(a3, app.getSlug(), app.getReferrer());
        } else {
            super.a(section);
        }
    }

    public final void c(String str, String str2, String str3) {
        if (((AppCompatEditText) e(e.searchEditText)) != null) {
            String a2 = Za().a();
            String str4 = "";
            if (a2 == null || m.a(a2)) {
                c cVar = this.Ba;
                if (cVar != null) {
                    cVar.a(str4);
                } else {
                    j.c("searchBoxViewModel");
                    throw null;
                }
            }
            if (str2 != null) {
                str4 = str2;
            }
            b.a(this, new PerformNewSearchEvent(str, str4, c.c.a.c.d.e.a()), null, null, 6, null);
            if (m.a(str)) {
                ((AppCompatEditText) e(e.searchEditText)).startAnimation(AnimationUtils.loadAnimation(x(), R.anim.wrong_field));
            } else if (((q) cb()).f(str)) {
                l lVar = new l(str, str2, null, 4, null);
                if (!j.a((Object) lVar, (Object) Za())) {
                    if (str3 == null) {
                        str3 = c.c.a.c.d.e.a();
                    }
                    b(str, str2, str3);
                    ((q) cb()).b(((q) cb()).q());
                } else {
                    a(SearchViewMode.SHOWING_RESULT);
                    _a().l(0);
                }
                c.c.a.d.b.f.a(this, null, 1, null);
            } else {
                ((AppCompatEditText) e(e.searchEditText)).startAnimation(AnimationUtils.loadAnimation(x(), R.anim.wrong_field));
                Qa().a(b((int) R.string.control_search_input));
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r1 != null) goto L_0x001d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static /* synthetic */ void a(com.farsitel.bazaar.ui.search.SearchFragment r0, java.lang.String r1, java.lang.String r2, java.lang.String r3, int r4, java.lang.Object r5) {
        /*
            r5 = r4 & 1
            if (r5 == 0) goto L_0x001d
            int r1 = c.c.a.e.searchEditText
            android.view.View r1 = r0.e((int) r1)
            androidx.appcompat.widget.AppCompatEditText r1 = (androidx.appcompat.widget.AppCompatEditText) r1
            if (r1 == 0) goto L_0x001b
            android.text.Editable r1 = r1.getText()
            if (r1 == 0) goto L_0x001b
            java.lang.String r1 = r1.toString()
            if (r1 == 0) goto L_0x001b
            goto L_0x001d
        L_0x001b:
            java.lang.String r1 = ""
        L_0x001d:
            r5 = r4 & 2
            if (r5 == 0) goto L_0x0022
            r2 = 0
        L_0x0022:
            r4 = r4 & 4
            if (r4 == 0) goto L_0x002a
            java.lang.String r3 = c.c.a.c.d.e.a()
        L_0x002a:
            r0.c(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.search.SearchFragment.a(com.farsitel.bazaar.ui.search.SearchFragment, java.lang.String, java.lang.String, java.lang.String, int, java.lang.Object):void");
    }

    public final void a(SearchHistoryItem searchHistoryItem) {
        c.c.a.n.w.n nVar = this.Ca;
        if (nVar != null) {
            int i2 = -1;
            int i3 = 0;
            for (Object next : nVar.e()) {
                int i4 = i3 + 1;
                if (i3 >= 0) {
                    if (j.a((Object) ((SearchHistoryItem) next).a(), (Object) searchHistoryItem.a())) {
                        i2 = i3;
                    }
                    i3 = i4;
                } else {
                    h.a.l.b();
                    throw null;
                }
            }
            if (i2 >= 0) {
                nVar.e().remove(i2);
                nVar.e(i2);
                return;
            }
            return;
        }
        j.c("searchHistoryAdapter");
        throw null;
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        if (i2 == 4576 && i3 == -1 && intent != null) {
            String str = intent.getStringArrayListExtra("android.speech.extra.RESULTS").get(0);
            j.a((Object) str, "spokenText");
            String b2 = Za().b();
            if (b2 == null) {
                b2 = c.c.a.c.d.e.a();
            }
            b.a(this, new VoiceSearchClick(str, str, b2), null, null, 6, null);
            c(str.toString());
            a(this, null, null, null, 7, null);
        }
    }

    public final void c(String str) {
        AppCompatEditText appCompatEditText = (AppCompatEditText) e(e.searchEditText);
        String str2 = null;
        appCompatEditText.setText(str != null ? i.a(str) : null);
        if (str != null) {
            appCompatEditText.clearFocus();
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.searchEmptyTextView);
        j.a((Object) appCompatTextView, "searchEmptyTextView");
        boolean z = true;
        Object[] objArr = new Object[1];
        if (str != null) {
            if (str != null) {
                str2 = h.k.n.f(str).toString();
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
        }
        objArr[0] = str2;
        appCompatTextView.setText(a((int) R.string.search_empty_placeholder, objArr));
        if (str != null && !m.a(str)) {
            z = false;
        }
        if (z) {
            Db();
        } else {
            Bb();
        }
    }
}
