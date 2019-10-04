.class public Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "StorePickerMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ebay/app/DialogFragmentCallback;
.implements Lcom/ebay/mobile/checkout/storepicker/StoreSelectionFragmentListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private cameraMoveStartReason:I

.field private cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

.field private day1:Landroid/widget/TextView;

.field private day2:Landroid/widget/TextView;

.field private day3:Landroid/widget/TextView;

.field private day4:Landroid/widget/TextView;

.field private day5:Landroid/widget/TextView;

.field private day6:Landroid/widget/TextView;

.field private day7:Landroid/widget/TextView;

.field private ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

.field private hasGps:Z

.field private hours1:Landroid/widget/TextView;

.field private hours2:Landroid/widget/TextView;

.field private hours3:Landroid/widget/TextView;

.field private hours4:Landroid/widget/TextView;

.field private hours5:Landroid/widget/TextView;

.field private hours6:Landroid/widget/TextView;

.field private hours7:Landroid/widget/TextView;

.field private isMapLoaded:Z

.field private isMapReady:Z

.field private isMyLocationButtonClicked:Z

.field private locationListener:Landroid/location/LocationListener;

.field private markersOnMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private pickupProgramsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;",
            ">;"
        }
    .end annotation
.end field

.field private previousSelectedMarkerPosition:I

.field private searchThisArea:Landroid/widget/Button;

.field private searchThisAreaLatitude:D

.field private searchThisAreaLongitude:D

.field private selectedLocationId:Ljava/lang/String;

.field private selectedMarkerIcon:Landroid/graphics/Bitmap;

.field private selectedMarkerPosition:I

.field private selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

.field private selectedStoreLocationContainer:Landroid/widget/LinearLayout;

.field private storeAddress1:Landroid/widget/TextView;

.field private storeAddress2:Landroid/widget/TextView;

.field private storeCityPostalCode:Landroid/widget/TextView;

.field private storeDistance:Landroid/widget/TextView;

.field private storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

.field private storeLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
            ">;"
        }
    .end annotation
.end field

.field private storeName:Landroid/widget/TextView;

.field private storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

.field private unSelectedMarkerIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->locationListener:Landroid/location/LocationListener;

    .line 80
    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    .line 82
    iput v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->previousSelectedMarkerPosition:I

    return-void
.end method

.method private setMyLocationButton(Landroid/app/Activity;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 295
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hasGps:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_LOCATION:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showSelectedMarker()V
    .locals 3

    .line 369
    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    .line 370
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    if-le v0, v1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 373
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 374
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/high16 v2, 0x41480000    # 12.5f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    .line 375
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMapLoaded:Z

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 377
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public loadStores(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedStoreLocationContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 305
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocations:Ljava/util/ArrayList;

    .line 306
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 309
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMapReady:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    .line 312
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 316
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    if-eqz v3, :cond_1

    .line 323
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->latitude:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v7, v3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->longitude:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 324
    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 328
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->unSelectedMarkerIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 329
    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->unSelectedMarkerIcon:Landroid/graphics/Bitmap;

    .line 330
    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    goto :goto_1

    .line 332
    :cond_2
    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 334
    :goto_1
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 335
    invoke-virtual {v4, v3}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    .line 336
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->locationUUID:Ljava/lang/String;

    .line 339
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedLocationId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    .line 342
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    if-eqz v5, :cond_1

    .line 344
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    iget v6, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    invoke-interface {v5, v3, v6}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;->onStoreSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V

    .line 345
    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    .line 354
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 356
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 357
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    .line 359
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->showSelectedMarker()V

    .line 361
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMapLoaded:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_5

    .line 362
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method public onCameraIdle()V
    .locals 8

    .line 552
    iget v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraMoveStartReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMyLocationButtonClicked:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMyLocationButtonClicked:Z

    .line 555
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 558
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 559
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-eqz v0, :cond_1

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisArea:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 563
    iput-wide v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLatitude:D

    .line 564
    iput-wide v4, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLongitude:D

    :cond_1
    return-void
.end method

.method public onCameraMoveStarted(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraMoveStartReason:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0e72

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisArea:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 590
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLatitude:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLongitude:D

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    .line 591
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    iget-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLatitude:D

    iget-wide v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLongitude:D

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;->searchStores(DD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string/jumbo v0, "selected_location_id"

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedLocationId:Ljava/lang/String;

    const-string v0, "pickup_programs_key"

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "pickup_programs_value"

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->pickupProgramsById:Ljava/util/Map;

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->pickupProgramsById:Ljava/util/Map;

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const p3, 0x7f0d00e4

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0e72

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisArea:Landroid/widget/Button;

    const p2, 0x7f0a0eca

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedStoreLocationContainer:Landroid/widget/LinearLayout;

    .line 138
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisArea:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a11d8

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeName:Landroid/widget/TextView;

    const p2, 0x7f0a11bf

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeAddress1:Landroid/widget/TextView;

    const p2, 0x7f0a11c0

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeAddress2:Landroid/widget/TextView;

    const p2, 0x7f0a11c6

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeCityPostalCode:Landroid/widget/TextView;

    const p2, 0x7f0a11c7

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeDistance:Landroid/widget/TextView;

    const p2, 0x7f0a11d4

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070498

    .line 148
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f07049a

    .line 149
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 150
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 151
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 152
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedStoreLocationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, p3, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const p2, 0x7f0a11c8

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    const p2, 0x7f0a11d9

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    const p2, 0x7f0a0508

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day1:Landroid/widget/TextView;

    const p2, 0x7f0a079c

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours1:Landroid/widget/TextView;

    const p2, 0x7f0a0509

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day2:Landroid/widget/TextView;

    const p2, 0x7f0a079d

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours2:Landroid/widget/TextView;

    const p2, 0x7f0a050a

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day3:Landroid/widget/TextView;

    const p2, 0x7f0a079e

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours3:Landroid/widget/TextView;

    const p2, 0x7f0a050b

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day4:Landroid/widget/TextView;

    const p2, 0x7f0a079f

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours4:Landroid/widget/TextView;

    const p2, 0x7f0a050c

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day5:Landroid/widget/TextView;

    const p2, 0x7f0a07a0

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours5:Landroid/widget/TextView;

    const p2, 0x7f0a050d

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day6:Landroid/widget/TextView;

    const p2, 0x7f0a07a1

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours6:Landroid/widget/TextView;

    const p2, 0x7f0a050e

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day7:Landroid/widget/TextView;

    const p2, 0x7f0a07a2

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours7:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/util/LocationUtil;->handleDialogFragmentResult(Landroidx/fragment/app/DialogFragment;IILandroid/content/Context;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 239
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->showSelectedMarker()V

    .line 243
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisArea:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onMapLoaded()V
    .locals 2

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMapLoaded:Z

    .line 406
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 407
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40d00000    # 6.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMapReady:Z

    .line 264
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 265
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 266
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 267
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;)V

    .line 268
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 269
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->onResume()V

    .line 271
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    invoke-interface {p1, v0}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;->onMapReady(Z)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hasGps:Z

    .line 278
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hasGps:Z

    if-eqz v0, :cond_1

    .line 279
    invoke-static {p1}, Lcom/ebay/mobile/util/LocationUtil;->primeLastLocationFromGps(Landroid/content/Context;)V

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storePickerMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 285
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 286
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 414
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 416
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 417
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    .line 420
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    iget v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    invoke-interface {v2, v1, v3}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;->onStoreSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V

    .line 423
    :cond_0
    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->previousSelectedMarkerPosition:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 425
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->markersOnMap:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->previousSelectedMarkerPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_2

    .line 428
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->unSelectedMarkerIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->unSelectedMarkerIcon:Landroid/graphics/Bitmap;

    .line 430
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 432
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 435
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 436
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_1

    :cond_3
    const/high16 v1, 0x43520000    # 210.0f

    .line 438
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 440
    :goto_1
    iget p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->previousSelectedMarkerPosition:I

    const/4 p1, 0x0

    .line 443
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocations:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 444
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocations:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    if-eqz p1, :cond_6

    .line 449
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedStoreLocationContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 450
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->name:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-static {v1, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 451
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeAddress1:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->address1:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 452
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeAddress2:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->address2:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 453
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeCityPostalCode:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->city:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 454
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeDistance:Landroid/widget/TextView;

    const v3, 0x7f121109

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->distance:Ljava/lang/Double;

    aput-object v6, v5, v0

    invoke-virtual {p0, v3, v5}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 456
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->name:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 458
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->pickupProgramsById:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 460
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->pickupProgramsById:Ljava/util/Map;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->pudoProgramId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;

    if-eqz v1, :cond_5

    .line 463
    iget-boolean v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;->ebayPlusEligible:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v3, :cond_5

    .line 465
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 466
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupProgram;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/ebay/android/widget/RemoteImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->ebayPlusLogo:Lcom/ebay/android/widget/RemoteImageView;

    invoke-static {v1, v2}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 472
    :cond_5
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day1:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 473
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours1:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 474
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day2:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 475
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours2:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 476
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day3:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 477
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours3:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 478
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day4:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 479
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours4:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 480
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day5:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 481
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours5:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 482
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day6:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 483
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours6:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 484
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day7:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 485
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours7:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 488
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->storeHours:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 490
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 491
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 519
    :pswitch_0
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day7:Landroid/widget/TextView;

    invoke-static {v5, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 520
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours7:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 515
    :pswitch_1
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day6:Landroid/widget/TextView;

    invoke-static {v5, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 516
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours6:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 511
    :pswitch_2
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day5:Landroid/widget/TextView;

    invoke-static {v5, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 512
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours5:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 507
    :pswitch_3
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day4:Landroid/widget/TextView;

    invoke-static {v5, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 508
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours4:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 503
    :pswitch_4
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day3:Landroid/widget/TextView;

    invoke-static {v5, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 504
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours3:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 499
    :pswitch_5
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day2:Landroid/widget/TextView;

    invoke-static {v5, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 500
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours2:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 495
    :pswitch_6
    iget-object v5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->day1:Landroid/widget/TextView;

    invoke-static {v5, v3, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 496
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hours1:Landroid/widget/TextView;

    invoke-static {v3, v2, v4}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMyLocationButtonClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->isMyLocationButtonClicked:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 387
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/BaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/mobile/util/PermissionUtil;->verifyPermissionGranted(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 232
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->setMyLocationButton(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 250
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "selected_store"

    .line 251
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "storeLocations"

    .line 252
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "selected_marker_position"

    .line 253
    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "previous_selected_marker_position"

    .line 254
    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->previousSelectedMarkerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "camera_move_start_reason"

    .line 255
    iget v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraMoveStartReason:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "search_this_area_latitude"

    .line 256
    iget-wide v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLatitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v0, "search_this_area_longitude"

    .line 257
    iget-wide v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLongitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public onStoreSelected(I)V
    .locals 2

    .line 535
    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 538
    iput v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->previousSelectedMarkerPosition:I

    const/4 p1, 0x0

    .line 539
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedLocationId:Ljava/lang/String;

    .line 540
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 541
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selected_location_id"

    .line 542
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 544
    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraMoveStartReason:I

    .line 545
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisArea:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 179
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocationListener:Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.location.gps"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hasGps:Z

    .line 195
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->hasGps:Z

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/LocationUtil;->primeLastLocationFromGps(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_LOCATION:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 199
    sget-object p1, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_LOCATION:[Ljava/lang/String;

    const/4 v0, 0x1

    const v1, 0x7f120907

    const v2, 0x7f12090e

    invoke-static {p0, p1, v0, v1, v2}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;III)Z

    goto :goto_0

    .line 190
    :catch_0
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement both StoreLocationListener and CheckoutProgressStatus"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a11d6

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0802e5

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 210
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_2

    .line 211
    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    invoke-static {p1}, Lcom/ebay/mobile/util/PickupUtil;->getBitmap(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->unSelectedMarkerIcon:Landroid/graphics/Bitmap;

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0802e6

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 213
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_3

    .line 214
    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    invoke-static {p1}, Lcom/ebay/mobile/util/PickupUtil;->getBitmap(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerIcon:Landroid/graphics/Bitmap;

    :cond_3
    if-eqz p2, :cond_4

    const-string/jumbo p1, "selected_store"

    .line 218
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const-string/jumbo p1, "storeLocations"

    .line 219
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocations:Ljava/util/ArrayList;

    const-string/jumbo p1, "selected_marker_position"

    .line 220
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->selectedMarkerPosition:I

    const-string p1, "previous_selected_marker_position"

    .line 221
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->previousSelectedMarkerPosition:I

    const-string p1, "camera_move_start_reason"

    .line 222
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->cameraMoveStartReason:I

    const-string/jumbo p1, "search_this_area_latitude"

    .line 223
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLatitude:D

    const-string/jumbo p1, "search_this_area_longitude"

    .line 224
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->searchThisAreaLongitude:D

    .line 225
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->loadStores(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
