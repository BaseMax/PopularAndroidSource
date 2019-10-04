package cab.snapp.passenger.units.search;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.a.g;
import cab.snapp.passenger.data.models.GeocodeMasterModel;
import cab.snapp.passenger.data.models.ShowCaseItemDao;
import cab.snapp.passenger.data_access_layer.network.responses.FavoriteResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import javax.inject.Inject;

public final class c extends BasePresenter<SearchView, a> implements g.d {

    /* renamed from: a  reason: collision with root package name */
    TextWatcher f1155a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    o f1156b;
    @Inject
    cab.snapp.passenger.f.b.b.c c;
    private final int d = 3;
    private final int e = 100;
    private final long f = 800;
    /* access modifiers changed from: private */
    public String g;
    /* access modifiers changed from: private */
    public Timer h = new Timer();

    public final void onReadyToSearch() {
        if (getView() != null && ((SearchView) getView()).getContext() != null) {
            BaseApplication.get(((SearchView) getView()).getContext()).getAppComponent().inject(this);
            ((SearchView) getView()).showKeyboard();
            SearchView searchView = (SearchView) getView();
            this.f1155a = new TextWatcher() {

                /* renamed from: a  reason: collision with root package name */
                boolean f1157a;

                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    if (editable == null) {
                        if (c.this.getInteractor() != null) {
                            ((a) c.this.getInteractor()).handleEmptyInput();
                        }
                        return;
                    }
                    if (!this.f1157a) {
                        this.f1157a = true;
                        c cVar = c.this;
                        if (!(cVar.getInteractor() == null || ((a) cVar.getInteractor()).getSnappRideDataManager() == null)) {
                            cab.snapp.passenger.c.g snappRideDataManager = ((a) cVar.getInteractor()).getSnappRideDataManager();
                            if (!snappRideDataManager.isInRide()) {
                                cVar.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SEARCH, "[searching]");
                            }
                            if (snappRideDataManager.getCurrentState() == 4) {
                                cVar.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SEARCH, "[searching]");
                            }
                        }
                    }
                    if (editable.toString().isEmpty()) {
                        this.f1157a = false;
                        if (c.this.getInteractor() != null) {
                            ((a) c.this.getInteractor()).handleEmptyInput();
                        }
                    }
                    String unused = c.this.g = editable.toString();
                    SearchView searchView = (SearchView) c.this.getView();
                    if (searchView != null) {
                        searchView.hideEmptyView();
                        if (editable.toString().isEmpty()) {
                            searchView.hideDeleteInputTextBtn();
                            searchView.showVoiceSearchBtn();
                            c.this.a();
                        } else {
                            searchView.hideVoiceSearchBtn();
                            searchView.showDeleteInputTextBtn();
                        }
                    }
                    if (c.this.h != null) {
                        c.this.h.cancel();
                    }
                    if (c.this.g.length() >= 3 && c.this.g.length() < 100) {
                        Timer unused2 = c.this.h = new Timer();
                        c.this.h.schedule(new TimerTask() {
                            public final void run() {
                                new Handler(Looper.getMainLooper()).post(
                                /*  JADX ERROR: Method code generation error
                                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0012: INVOKE  (wrap: android.os.Handler
                                      0x0006: CONSTRUCTOR  (r0v0 android.os.Handler) = (wrap: android.os.Looper
                                      0x0002: INVOKE  (r1v0 android.os.Looper) =  android.os.Looper.getMainLooper():android.os.Looper type: STATIC) android.os.Handler.<init>(android.os.Looper):void CONSTRUCTOR), (wrap: cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A
                                      0x000f: CONSTRUCTOR  (r2v0 cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A) = (wrap: cab.snapp.passenger.units.search.c
                                      0x000b: IGET  (r1v2 cab.snapp.passenger.units.search.c) = (wrap: cab.snapp.passenger.units.search.c$1
                                      0x0009: IGET  (r1v1 cab.snapp.passenger.units.search.c$1) = (r4v0 'this' cab.snapp.passenger.units.search.c$1$1 A[THIS]) cab.snapp.passenger.units.search.c.1.1.a cab.snapp.passenger.units.search.c$1) cab.snapp.passenger.units.search.c.1.b cab.snapp.passenger.units.search.c) cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A.<init>(cab.snapp.passenger.units.search.c):void CONSTRUCTOR) android.os.Handler.post(java.lang.Runnable):boolean type: VIRTUAL in method: cab.snapp.passenger.units.search.c.1.1.run():void, dex: classes.dex
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:245)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:210)
                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:317)
                                    	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
                                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
                                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:665)
                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:596)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:776)
                                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:717)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:210)
                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:317)
                                    	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
                                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
                                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:665)
                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:596)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:210)
                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:317)
                                    	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
                                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
                                    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
                                    	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
                                    	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                                    	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
                                    	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
                                    	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
                                    	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
                                    Caused by: jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x000f: CONSTRUCTOR  (r2v0 cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A) = (wrap: cab.snapp.passenger.units.search.c
                                      0x000b: IGET  (r1v2 cab.snapp.passenger.units.search.c) = (wrap: cab.snapp.passenger.units.search.c$1
                                      0x0009: IGET  (r1v1 cab.snapp.passenger.units.search.c$1) = (r4v0 'this' cab.snapp.passenger.units.search.c$1$1 A[THIS]) cab.snapp.passenger.units.search.c.1.1.a cab.snapp.passenger.units.search.c$1) cab.snapp.passenger.units.search.c.1.b cab.snapp.passenger.units.search.c) cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A.<init>(cab.snapp.passenger.units.search.c):void CONSTRUCTOR in method: cab.snapp.passenger.units.search.c.1.1.run():void, dex: classes.dex
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:245)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:776)
                                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:717)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                                    	... 69 more
                                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A, state: NOT_LOADED
                                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:260)
                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:595)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
                                    	... 74 more
                                    */
                                /*
                                    this = this;
                                    android.os.Handler r0 = new android.os.Handler
                                    android.os.Looper r1 = android.os.Looper.getMainLooper()
                                    r0.<init>(r1)
                                    cab.snapp.passenger.units.search.c$1 r1 = cab.snapp.passenger.units.search.c.AnonymousClass1.this
                                    cab.snapp.passenger.units.search.c r1 = cab.snapp.passenger.units.search.c.this
                                    cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A r2 = new cab.snapp.passenger.units.search.-$$Lambda$qLa_40_i9gklMtE9Vr0CZKzEi_A
                                    r2.<init>(r1)
                                    r0.post(r2)
                                    cab.snapp.passenger.units.search.c$1 r0 = cab.snapp.passenger.units.search.c.AnonymousClass1.this
                                    cab.snapp.passenger.units.search.c r0 = cab.snapp.passenger.units.search.c.this
                                    cab.snapp.arch.protocol.BaseInteractor r0 = r0.getInteractor()
                                    if (r0 == 0) goto L_0x0034
                                    cab.snapp.passenger.units.search.c$1 r0 = cab.snapp.passenger.units.search.c.AnonymousClass1.this
                                    cab.snapp.passenger.units.search.c r0 = cab.snapp.passenger.units.search.c.this
                                    cab.snapp.arch.protocol.BaseInteractor r0 = r0.getInteractor()
                                    cab.snapp.passenger.units.search.a r0 = (cab.snapp.passenger.units.search.a) r0
                                    cab.snapp.passenger.units.search.c$1 r1 = cab.snapp.passenger.units.search.c.AnonymousClass1.this
                                    cab.snapp.passenger.units.search.c r1 = cab.snapp.passenger.units.search.c.this
                                    java.lang.String r1 = r1.g
                                    r0.handleSearch(r1)
                                L_0x0034:
                                    cab.snapp.passenger.units.search.c$1 r0 = cab.snapp.passenger.units.search.c.AnonymousClass1.this
                                    cab.snapp.passenger.units.search.c r0 = cab.snapp.passenger.units.search.c.this
                                    cab.snapp.passenger.f.b.b.c r0 = r0.c
                                    java.lang.String r1 = cab.snapp.passenger.f.b.b.c.C0021c.TECHNICAL
                                    java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.DATABASE
                                    java.lang.String r3 = "autocomplete request to google"
                                    r0.sendAnalyticsEvent(r1, r2, r3)
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.units.search.c.AnonymousClass1.AnonymousClass1.run():void");
                            }
                        }, 800);
                    }
                }
            };
            if (searchView != null) {
                searchView.setFocusOnSearchView();
                searchView.setSearchEtTextWatcher(this.f1155a);
            }
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        if (getView() != null && getVoiceSearchImageView().getVisibility() == 0 && (((SearchView) getView()).getContext() instanceof Activity)) {
            ShowCaseItemDao showCaseItemDao = new ShowCaseItemDao();
            showCaseItemDao.setActivity((Activity) ((SearchView) getView()).getContext());
            showCaseItemDao.setView(getVoiceSearchImageView());
            showCaseItemDao.setTitle(((SearchView) getView()).getContext().getString(R.string.voice_search));
            showCaseItemDao.setDescription(((SearchView) getView()).getContext().getString(R.string.voice_search_show_case_desc));
            this.f1156b.showTapTargetForSearch(showCaseItemDao);
        }
    }

    public final void onNoResult() {
        SearchView searchView = (SearchView) getView();
        if (searchView != null) {
            searchView.hideLoadingView();
            searchView.hideRecyclerView();
            searchView.showEmptyView();
        }
    }

    public final void onHandleTopTitle(String str) {
        SearchView searchView = (SearchView) getView();
        if (searchView != null) {
            searchView.setToolbarTitle(str);
        }
    }

    public final void onShowResults(FavoriteResponse favoriteResponse, boolean z) {
        SearchView searchView = (SearchView) getView();
        if (searchView != null) {
            searchView.hideLoadingView();
            g gVar = new g(searchView.getContext(), favoriteResponse, z, (g.d) this);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(searchView.getContext(), 1, false);
            searchView.showRecyclerView();
            searchView.loadSearchResults(linearLayoutManager, gVar);
        }
    }

    public final void onShowResults(List<GeocodeMasterModel> list, boolean z) {
        SearchView searchView = (SearchView) getView();
        if (searchView != null) {
            searchView.hideLoadingView();
            g gVar = new g(searchView.getContext(), list, z, (g.d) this);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(searchView.getContext(), 1, false);
            searchView.showRecyclerView();
            searchView.loadSearchResults(linearLayoutManager, gVar);
        }
    }

    public final void onVoiceSearchDetected(String str) {
        SearchView searchView = (SearchView) getView();
        if (searchView != null) {
            searchView.setSearchEtText(str);
        }
    }

    public final void onShowLoading() {
        SearchView searchView = (SearchView) getView();
        if (searchView != null) {
            searchView.showLoadingView();
            searchView.hideEmptyView();
            searchView.hideRecyclerView();
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).handleBack();
        }
        if (getInteractor() != null && ((a) getInteractor()).getSnappRideDataManager() != null) {
            cab.snapp.passenger.c.g snappRideDataManager = ((a) getInteractor()).getSnappRideDataManager();
            if (!snappRideDataManager.isInRide()) {
                this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SEARCH, "[back]");
            }
            if (snappRideDataManager.getCurrentState() == 4) {
                this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SEARCH, "[back]");
            }
        }
    }

    public final void onVoiceSearchClicked() {
        this.c.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Voice Search");
        if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
            cab.snapp.passenger.c.g snappRideDataManager = ((a) getInteractor()).getSnappRideDataManager();
            if (((a) getInteractor()).getSearchRequestCode() == 1342) {
                int currentState = snappRideDataManager.getCurrentState();
                if (!snappRideDataManager.isInRide()) {
                    this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[search][voice]");
                } else if (currentState == 4) {
                    this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON, "[search][voice]");
                } else {
                    this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[search][voice]");
                }
            }
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).handleVoiceSearch();
        }
    }

    public final void onDeleteInputTextClicked() {
        SearchView searchView = (SearchView) getView();
        if (searchView != null) {
            searchView.setSearchEtText(null);
            searchView.hideDeleteInputTextBtn();
            searchView.showVoiceSearchBtn();
            a();
        }
    }

    public final View getVoiceSearchImageView() {
        if (getView() == null) {
            return null;
        }
        return ((SearchView) getView()).getVoiceSearchImageView();
    }

    public final void onReadyForShowcase() {
        a();
    }

    public final void onUnavailableForShowcase() {
        this.f1156b.cancelAll();
    }

    public final void onNavigatingUp() {
        if (getView() != null) {
            ((SearchView) getView()).hideKeyboard();
        }
    }

    public final void finish() {
        if (getView() != null && ((SearchView) getView()).getContext() != null) {
            cab.snapp.c.c.tryHideKeyboard(((SearchView) getView()).getContext(), (View) getView());
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((SearchView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((SearchView) getView()).getContext(), R.color.white);
        }
    }

    public final void onItemClick(int i, GeocodeMasterModel geocodeMasterModel, boolean z) {
        if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
            cab.snapp.passenger.c.g snappRideDataManager = ((a) getInteractor()).getSnappRideDataManager();
            if (((a) getInteractor()).getSearchRequestCode() == 1342) {
                int currentState = snappRideDataManager.getCurrentState();
                if (!snappRideDataManager.isInRide()) {
                    this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[search][text]");
                } else if (currentState == 4) {
                    this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON, "[search][text]");
                } else {
                    this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[search][text]");
                }
            }
        }
        a aVar = (a) getInteractor();
        if (getView() != null) {
            ((SearchView) getView()).hideKeyboard();
        }
        if (aVar != null) {
            if (z) {
                aVar.handleGeocodeDetails(geocodeMasterModel);
            } else {
                aVar.handleFavoriteDetails(geocodeMasterModel);
            }
            aVar.onFavoriteItemClicked();
        }
    }
}
