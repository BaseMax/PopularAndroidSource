package cab.snapp.passenger.units.search;

import android.content.Context;
import android.content.Intent;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data.models.AutocompletePrediction;
import cab.snapp.passenger.data.models.CedarGeocodeResult;
import cab.snapp.passenger.data.models.GeoCodeModel;
import cab.snapp.passenger.data.models.GeocodeMasterModel;
import cab.snapp.passenger.data.models.OnActivityResultModel;
import cab.snapp.passenger.data.models.PlaceDetail;
import cab.snapp.passenger.data.models.PlaceDetailLocation;
import cab.snapp.passenger.data.models.PlaceLatLng;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.GeocodeRequest;
import cab.snapp.passenger.data_access_layer.network.responses.AutocompletePredictionResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CedarSearchResponse;
import cab.snapp.passenger.data_access_layer.network.responses.FavoriteResponse;
import cab.snapp.passenger.data_access_layer.network.responses.PlaceDetailResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.f.p;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.b;
import io.reactivex.ag;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {

    /* renamed from: a  reason: collision with root package name */
    FavoriteResponse f1150a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    o f1151b;
    @Inject
    g c;
    @Inject
    h d;
    @Inject
    e e;
    @Inject
    d f;
    @Inject
    c g;
    private int h = 0;
    private int i = 9999;
    private boolean j = false;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    private void a() {
        if (this.f1150a == null) {
            this.f.getFavorites().subscribe(new ag<FavoriteResponse>() {
                public final void onComplete() {
                }

                public final void onSubscribe(io.reactivex.b.c cVar) {
                    a.this.addDisposable(cVar);
                    if (a.this.getPresenter() != null) {
                        ((c) a.this.getPresenter()).onShowLoading();
                    }
                }

                public final void onNext(FavoriteResponse favoriteResponse) {
                    if (favoriteResponse != null) {
                        a aVar = a.this;
                        aVar.f1150a = favoriteResponse;
                        if (aVar.getPresenter() != null) {
                            ((c) a.this.getPresenter()).onShowResults(favoriteResponse, false);
                        }
                    }
                }

                public final void onError(Throwable th) {
                    if (a.this.getPresenter() != null) {
                        ((c) a.this.getPresenter()).onNoResult();
                    }
                }
            });
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onShowResults(this.f1150a, false);
        }
    }

    public int getSearchRequestCode() {
        return this.i;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String str, AutocompletePredictionResponse autocompletePredictionResponse) throws Exception {
        c cVar = (c) getPresenter();
        char c2 = (autocompletePredictionResponse.getPoweredBy() == null || !autocompletePredictionResponse.getPoweredBy().toLowerCase().contains("smapp")) ? (char) 600 : 601;
        if (autocompletePredictionResponse.getPredictions() == null || autocompletePredictionResponse.getPredictions().isEmpty()) {
            a(str);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (AutocompletePrediction next : autocompletePredictionResponse.getPredictions()) {
            if (!(next == null || next.getStructuredFormatting() == null)) {
                arrayList.add(GeocodeMasterModel.from(next));
            }
        }
        if (this.j) {
            if (arrayList.size() > 0 && arrayList.get(0) != null && ((GeocodeMasterModel) arrayList.get(0)).getName().equals(str)) {
                this.d.addResult(Integer.valueOf(this.i), (GeocodeMasterModel) arrayList.get(0));
                handleBack();
            } else if (cVar != null) {
                if (arrayList.isEmpty() || c2 != 601) {
                    cVar.onShowResults((List<GeocodeMasterModel>) arrayList, false);
                } else {
                    cVar.onShowResults((List<GeocodeMasterModel>) arrayList, true);
                }
            }
            this.j = false;
            return;
        }
        if (cVar != null) {
            if (arrayList.isEmpty() || c2 != 601) {
                cVar.onShowResults((List<GeocodeMasterModel>) arrayList, false);
            } else {
                cVar.onShowResults((List<GeocodeMasterModel>) arrayList, true);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String str, Throwable th) throws Exception {
        a(str);
    }

    private void a(String str) {
        if (str != null && !str.isEmpty()) {
            GeocodeRequest geocodeRequest = new GeocodeRequest();
            geocodeRequest.setPhrase(str);
            addDisposable(this.f.getCedarSearch(geocodeRequest).subscribe(new io.reactivex.e.g(str) {
                private final /* synthetic */ String f$1;

                {
                    this.f$1 = r2;
                }

                public final void accept(Object obj) {
                    a.this.a(this.f$1, (CedarSearchResponse) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.b((Throwable) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String str, CedarSearchResponse cedarSearchResponse) throws Exception {
        c cVar = (c) getPresenter();
        if (this.j) {
            if (cedarSearchResponse.getCedarGeocodeResults() != null && cedarSearchResponse.getCedarGeocodeResults().size() > 0 && cedarSearchResponse.getCedarGeocodeResults().get(0) != null && cedarSearchResponse.getCedarGeocodeResults().get(0).getName().equals(str)) {
                this.d.addResult(Integer.valueOf(this.i), GeocodeMasterModel.from(cedarSearchResponse.getCedarGeocodeResults().get(0)));
                handleBack();
            } else if (cVar != null) {
                cVar.onNoResult();
            }
            this.j = false;
        } else if (cedarSearchResponse.getCedarGeocodeResults() == null || cedarSearchResponse.getCedarGeocodeResults().size() <= 0) {
            if (cVar != null) {
                cVar.onNoResult();
            }
        } else {
            ArrayList arrayList = new ArrayList();
            for (CedarGeocodeResult from : cedarSearchResponse.getCedarGeocodeResults()) {
                arrayList.add(GeocodeMasterModel.from(from));
            }
            if (cVar != null) {
                cVar.onShowResults((List<GeocodeMasterModel>) arrayList, false);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onNoResult();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(PlaceDetailResponse placeDetailResponse) throws Exception {
        if (placeDetailResponse != null && placeDetailResponse.getPlaceDetail() != null) {
            PlaceDetail placeDetail = placeDetailResponse.getPlaceDetail();
            GeoCodeModel geoCodeModel = new GeoCodeModel();
            geoCodeModel.setId(placeDetail.getPlaceId());
            if (!(placeDetail.getGeometry() == null || placeDetail.getGeometry().getLocation() == null)) {
                PlaceDetailLocation location = placeDetail.getGeometry().getLocation();
                geoCodeModel.setLatLng(new PlaceLatLng(location.getLatitude(), location.getLongitude()));
            }
            this.d.addResult(Integer.valueOf(this.i), GeocodeMasterModel.from(placeDetail));
            handleBack();
        }
    }

    private static String b() {
        int savedLocale = cab.snapp.passenger.f.g.getSavedLocale();
        if (savedLocale == 10) {
            return "fa-IR";
        }
        if (savedLocale != 20) {
            return savedLocale != 30 ? "fa-IR" : "fr-FR";
        }
        return "en-GB";
    }

    public void onActivityResultModelReceived(OnActivityResultModel onActivityResultModel) {
        if (getActivity() != null && !getActivity().isFinishing() && onActivityResultModel != null && onActivityResultModel.getResultCode() == -1 && onActivityResultModel.getRequestCode() == 40001 && onActivityResultModel.getData() != null) {
            ArrayList<String> stringArrayListExtra = onActivityResultModel.getData().getStringArrayListExtra("android.speech.extra.RESULTS");
            if (stringArrayListExtra != null && stringArrayListExtra.get(0) != null && !stringArrayListExtra.get(0).isEmpty()) {
                this.j = true;
                if (getPresenter() != null) {
                    ((c) getPresenter()).onVoiceSearchDetected(stringArrayListExtra.get(0));
                }
            }
        }
    }

    public void handleVoiceSearch() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            if (getActivity().getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() == 0) {
                b.makeText((Context) getActivity(), "Recognizer Not Present").textColor(getActivity().getResources().getColor(R.color.cherry)).show();
            } else {
                Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                intent.putExtra("android.speech.extra.LANGUAGE", "fa");
                intent.putExtra("android.speech.extra.LANGUAGE_PREFERENCE", "fa");
                intent.putExtra("android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE", "fa");
                intent.putExtra("android.speech.extra.PROMPT", getActivity().getResources().getString(R.string.voice_search));
                getActivity().startActivityForResult(intent, 40001);
            }
            if (this.i == 1342) {
                if (this.c.getCurrentState() == 2) {
                    c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "searchButton[voiceSearch]").addOuterKeyToCurrentAsValue("selectServiceType").build());
                } else if (this.c.getCurrentState() == 4) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[voiceSearch]").addOuterKeyToCurrentAsValue("driverAssigned").build());
                } else if (this.c.getCurrentState() == 5) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[voiceSearch]").addOuterKeyToCurrentAsValue("driverArrived").build());
                } else if (this.c.getCurrentState() == 6) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[voiceSearch]").addOuterKeyToCurrentAsValue("Boarded").build());
                }
            } else if (this.c.getCurrentState() == 0) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("searchButton", "voiceSearch").addOuterKeyToCurrentAsValue("setOrigin").build());
            } else if (this.c.getCurrentState() == 1) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("searchButton", "voiceSearch").addOuterKeyToCurrentAsValue("setDestination").build());
            }
        }
    }

    public void handleSearch(String str) {
        if (str == null || str.isEmpty()) {
            a();
            return;
        }
        String trim = str.trim();
        if (trim != null && !trim.isEmpty()) {
            addDisposable(this.f.getAutoCompletePredictions(trim, b(), this.e.getSavedLocation()).subscribe(new io.reactivex.e.g(trim) {
                private final /* synthetic */ String f$1;

                {
                    this.f$1 = r2;
                }

                public final void accept(Object obj) {
                    a.this.a(this.f$1, (AutocompletePredictionResponse) obj);
                }
            }, new io.reactivex.e.g(trim) {
                private final /* synthetic */ String f$1;

                {
                    this.f$1 = r2;
                }

                public final void accept(Object obj) {
                    a.this.a(this.f$1, (Throwable) obj);
                }
            }));
        }
    }

    public void handleGeocodeDetails(GeocodeMasterModel geocodeMasterModel) {
        if (geocodeMasterModel != null) {
            if (geocodeMasterModel.hasLatLng()) {
                this.d.addResult(Integer.valueOf(this.i), geocodeMasterModel);
                int currentState = this.c.getCurrentState();
                if (currentState == 0) {
                    p.requestLogSelectOriginItem(this.f, geocodeMasterModel.getId());
                } else if (currentState == 1) {
                    p.requestLogSelectDestinationItem(this.f, geocodeMasterModel.getId());
                } else if (currentState == 2) {
                    p.requestLogSelectSecondDestinationItem(this.f, geocodeMasterModel.getId());
                }
                handleBack();
                return;
            }
            String id = geocodeMasterModel.getId();
            if (id != null && !id.isEmpty()) {
                addDisposable(this.f.getPlaceDetails(id, b()).subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((PlaceDetailResponse) obj);
                    }
                }, $$Lambda$a$Anf5uIUkZamGgPABmosgZhVy0V4.INSTANCE));
            }
        }
    }

    public void handleFavoriteDetails(GeocodeMasterModel geocodeMasterModel) {
        if (geocodeMasterModel != null) {
            this.d.addResult(Integer.valueOf(this.i), geocodeMasterModel);
            handleBack();
        }
    }

    public void handleEmptyInput() {
        if (this.f1150a != null && getPresenter() != null) {
            ((c) getPresenter()).onShowResults(this.f1150a, false);
        }
    }

    public void onFavoriteItemClicked() {
        if (this.i == 1342) {
            if (this.c.getCurrentState() == 2) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "searchButton[favoritSelect]").addOuterKeyToCurrentAsValue("selectServiceType").build());
            } else if (this.c.getCurrentState() == 4) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[favoritSelect]").addOuterKeyToCurrentAsValue("driverAssigned").build());
            } else if (this.c.getCurrentState() == 5) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[favoritSelect]").addOuterKeyToCurrentAsValue("driverArrived").build());
            } else if (this.c.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[favoritSelect]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        } else if (this.c.getCurrentState() == 0) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("searchButton", "favoritSelect").addOuterKeyToCurrentAsValue("setOrigin").build());
        } else if (this.c.getCurrentState() == 1) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("searchButton", "favoritSelect").addOuterKeyToCurrentAsValue("setDestination").build());
        }
    }

    public g getSnappRideDataManager() {
        return this.c;
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            BaseController controller = getController();
            if (controller != null) {
                if (controller instanceof SearchController) {
                    if (controller.getArguments() != null) {
                        if (controller.getArguments().containsKey(SearchController.KEY_IS_PUSHED_FOR)) {
                            this.h = controller.getArguments().getInt(SearchController.KEY_IS_PUSHED_FOR);
                        }
                        if (controller.getArguments().containsKey(SearchController.KEY_SEARCH_REQUEST_CODE)) {
                            this.i = controller.getArguments().getInt(SearchController.KEY_SEARCH_REQUEST_CODE);
                        }
                    }
                    int i2 = this.h;
                    int i3 = i2 != 1 ? i2 != 2 ? R.string.search : R.string.where_do_you_go : R.string.where_are_you;
                    if (getPresenter() != null) {
                        ((c) getPresenter()).onHandleTopTitle(controller.getResources().getString(i3));
                    }
                }
                if (getRouter() != null) {
                    ((e) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
                }
            }
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(RootActivity.getPrivateChannelId(), new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.onActivityResultModelReceived((OnActivityResultModel) obj);
                }
            }));
            a();
            if (getPresenter() != null) {
                ((c) getPresenter()).onReadyToSearch();
                ((c) getPresenter()).setStatusBarColor();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (getPresenter() != null) {
            ((c) getPresenter()).onReadyForShowcase();
        }
        this.g.reportScreenName("Search Page");
    }

    public void onUnitPause() {
        super.onUnitPause();
        if (getPresenter() != null) {
            ((c) getPresenter()).onUnavailableForShowcase();
            this.f1151b.cancelAll();
        }
    }

    public void handleBack() {
        if (this.c.getCurrentState() == 0) {
            this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_SEARCH_ORIGIN, "[back]");
        } else if (this.c.getCurrentState() == 1) {
            this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_SEARCH_DESTINATION, "[back]");
        }
        if (getPresenter() != null) {
            ((c) getPresenter()).finish();
        }
        if (getRouter() != null) {
            ((e) getRouter()).navigateUp(getActivity());
            ((c) getPresenter()).onNavigatingUp();
        }
    }
}
