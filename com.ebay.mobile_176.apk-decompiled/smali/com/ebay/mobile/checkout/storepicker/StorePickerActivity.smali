.class public Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "StorePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroidx/appcompat/widget/SearchView$OnSuggestionListener;
.implements Lcom/ebay/mobile/checkout/storepicker/StoreLocationListener;
.implements Lcom/ebay/mobile/checkout/xoneor/CheckoutProgressStatus;
.implements Lcom/ebay/mobile/inventory/StorePickerAutocompleteDialogFragment$StorePickerAutocompleteDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;,
        Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;
    }
.end annotation


# static fields
.field public static final CHECKOUT_ERROR:Ljava/lang/String; = "checkout_error"

.field public static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "default_country_code"

.field public static final DEFAULT_POSTAL_CODE:Ljava/lang/String; = "default_postal_code"

.field public static final EXTRA_LOGISTICS_LIST:Ljava/lang/String; = "extra_logistics_list"

.field public static final EXTRA_SELECTED_STORE:Ljava/lang/String; = "extra_selected_store"

.field public static final EXTRA_SELECTED_STORE_ID:Ljava/lang/String; = "extra_selected_store_id"


# instance fields
.field private checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

.field private contentContainer:Landroid/widget/RelativeLayout;

.field defaultCountryCode:Ljava/lang/String;

.field defaultPostalCode:Ljava/lang/String;

.field private errorContainer:Landroid/widget/LinearLayout;

.field private geocodedLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private isGeocoderPresent:Z

.field private isInitialLoadComplete:Z

.field private isSearchInProgress:Z

.field private logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

.field private progressContainer:Landroid/widget/LinearLayout;

.field private searchLatitude:D

.field private searchLongitude:D

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field private selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

.field private showMap:Z

.field private storeLocationDisplayOption:Landroid/widget/TextView;

.field private storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

.field storeLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;",
            ">;"
        }
    .end annotation
.end field

.field private storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->geocodedLocations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->geocodedLocations:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->reportErrorToApls(Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->renderError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->populateStoreHours()V

    return-void
.end method

.method static synthetic access$700(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isInitialLoadComplete:Z

    return p0
.end method

.method static synthetic access$702(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isInitialLoadComplete:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    return-object p0
.end method

.method static synthetic access$902(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isSearchInProgress:Z

    return p1
.end method

.method private getSelectedPudoDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getSelectedLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->pickupAndDropOffDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    if-eqz v2, :cond_0

    .line 489
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->pudoProgramId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->hasPudoProgramId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->pudoProgramId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getFirstLogisticsPlanWithProgramId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 497
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->pickupAndDropOffDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private loadPudoLocation(DD)V
    .locals 14

    move-object v11, p0

    .line 340
    iget-object v0, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->errorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v12, 0x0

    const v0, 0x7f0a03b9

    .line 341
    invoke-virtual {p0, v0, v12}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->enableMenuItem(IZ)V

    .line 342
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->startProgress()V

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isSearchInProgress:Z

    move-wide v6, p1

    .line 345
    iput-wide v6, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLatitude:D

    move-wide/from16 v8, p3

    .line 346
    iput-wide v8, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLongitude:D

    const/4 v0, 0x0

    .line 347
    iput-object v0, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 349
    iget-object v0, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    .line 352
    new-instance v13, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v3

    .line 353
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    iget-object v4, v0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v0, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getPickupProgramsId()Ljava/util/Set;

    move-result-object v5

    iget-object v10, v11, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultCountryCode:Ljava/lang/String;

    move-object v0, v13

    move-object v1, p0

    move-wide v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;-><init>(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/util/Set;DDLjava/lang/String;)V

    new-array v0, v12, [Ljava/lang/Void;

    .line 354
    invoke-virtual {v13, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private onError(Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->errorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->errorContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V

    :cond_0
    return-void
.end method

.method private populateStoreHours()V
    .locals 8

    .line 836
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 837
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 839
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 841
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->getStoreHours()Ljava/util/Map;

    move-result-object v2

    .line 843
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 844
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 846
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/ebay/mobile/util/PickupUtil;->getDayOfWeekFromNumber(I)Ljava/lang/String;

    move-result-object v5

    .line 847
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/storepicker/Interval;

    .line 848
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/experience/storepicker/Interval;->open:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/ebay/mobile/util/PickupUtil;->convertHour(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 849
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/storepicker/Interval;->close:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/ebay/mobile/util/PickupUtil;->convertHour(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    .line 854
    iput-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->storeHours:Ljava/util/Map;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private renderError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 828
    new-instance v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 829
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    iput-object p2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    .line 830
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    iput-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    .line 831
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->onError(Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)V

    return-void
.end method

.method private reportErrorToApls(Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V
    .locals 9

    .line 815
    new-instance v8, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;->getServiceName()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;->getOperationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getDomain()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 820
    invoke-interface {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/ebay/nautilus/kernel/net/LogTrackError;->setErrorCode(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/ebay/nautilus/kernel/net/LogTrackError;->setLongErrorMessage(Ljava/lang/String;)V

    .line 822
    invoke-static {v8}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogErrorData(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    return-void
.end method


# virtual methods
.method public hideContent()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->contentContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->contentContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1092

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 289
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getSelectedPudoDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 290
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->startProgress()V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-string v0, "extra_validated_account_number"

    .line 295
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->locationUUID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->pudoProgramId:Ljava/lang/String;

    invoke-static {p3, v1, p2, v0, v2}, Lcom/ebay/mobile/util/PickupUtil;->getPudoResultIntentWithoutShippingServiceId(Landroid/content/Intent;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 300
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAutocompleteItemSelected(Landroidx/fragment/app/DialogFragment;)V
    .locals 4

    .line 639
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    if-eqz v0, :cond_0

    .line 641
    check-cast p1, Lcom/ebay/mobile/inventory/StorePickerAutocompleteDialogFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/inventory/StorePickerAutocompleteDialogFragment;->getSelectedAddress()Landroid/location/Address;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 643
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->loadPudoLocation(DD)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 538
    :pswitch_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 539
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 542
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    const v1, 0x10b0001

    const/high16 v2, 0x10b0000

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    .line 545
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 546
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    const v0, 0x7f121105

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    .line 547
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    .line 552
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 553
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    const v0, 0x7f121106

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x1

    .line 554
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a11cf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 123
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00e3

    .line 125
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showBackButton()V

    const v0, 0x7f12110e

    .line 127
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->setTitle(I)V

    const v0, 0x7f0a11d0

    .line 129
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0cb4

    .line 130
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->progressContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a14a0

    .line 131
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->contentContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a05f3

    .line 132
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->errorContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a11cf

    .line 133
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a11d3

    .line 136
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 137
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 138
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f12110d

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 140
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 142
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isGeocoderPresent:Z

    .line 143
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isGeocoderPresent:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v11, Landroidx/cursoradapter/widget/SimpleCursorAdapter;

    const v6, 0x1090003

    const/4 v7, 0x0

    const-string/jumbo v4, "suggest_text_1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [I

    const v1, 0x1020014

    aput v1, v9, v2

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/SearchView;->setSuggestionsAdapter(Landroidx/cursoradapter/widget/CursorAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$OnSuggestionListener;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SearchView;->setSuggestionsAdapter(Landroidx/cursoradapter/widget/CursorAdapter;)V

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "extra_selected_store"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const-string v0, "checkout_error"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    const-string v0, "is_initial_load_complete"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isInitialLoadComplete:Z

    const-string/jumbo v0, "search_latitude"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLatitude:D

    const-string/jumbo v0, "search_longitude"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLongitude:D

    const-string v0, "is_search_in_progress"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isSearchInProgress:Z

    const-string/jumbo v0, "show_map"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    const-string v0, "extra_store_locations"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    .line 163
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->onError(Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)V

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_logistics_list"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    const-string v0, "default_postal_code"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultPostalCode:Ljava/lang/String;

    const-string v0, "default_country_code"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultCountryCode:Ljava/lang/String;

    .line 172
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 173
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->groupPickupProgramsById()Ljava/util/HashMap;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getSelectedLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v1

    if-nez v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getFirstLogisticsPlan()Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 183
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->pickupAndDropOffDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    if-eqz v1, :cond_3

    .line 185
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->locationId:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "selected_location_id"

    .line 187
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "pickup_programs_key"

    .line 198
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "pickup_programs_value"

    .line 199
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultCountryCode:Ljava/lang/String;

    .line 205
    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/address/Address;->countryHasReversedPostalCode(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const-string v1, "country_code"

    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a11cc

    .line 209
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    iput-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    .line 210
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    if-nez v3, :cond_7

    .line 212
    new-instance v3, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    invoke-direct {v3}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;-><init>()V

    iput-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    .line 213
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    invoke-virtual {v3, p1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    .line 215
    invoke-virtual {v3, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_7
    const v1, 0x7f0a11d7

    .line 220
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    iput-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    .line 221
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    if-nez v3, :cond_8

    .line 223
    new-instance v3, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    invoke-direct {v3}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;-><init>()V

    iput-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    .line 224
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    invoke-virtual {v3, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 229
    :cond_8
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    if-eqz p1, :cond_9

    .line 231
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    const v1, 0x7f121106

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 236
    :cond_9
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    const v1, 0x7f121105

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 240
    :goto_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultPostalCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isInitialLoadComplete:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    if-nez p1, :cond_a

    .line 242
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->startProgress()V

    .line 244
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p1

    .line 245
    new-instance v0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v6

    .line 246
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iget-object v7, p1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->getPickupProgramsId()Ljava/util/Set;

    move-result-object v8

    iget-object v9, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultPostalCode:Ljava/lang/String;

    iget-object v10, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->defaultCountryCode:Ljava/lang/String;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;-><init>(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 247
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 249
    :cond_a
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isSearchInProgress:Z

    if-eqz p1, :cond_b

    iget-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLatitude:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_b

    iget-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLongitude:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_b

    .line 250
    iget-wide v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLatitude:D

    iget-wide v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLongitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->loadPudoLocation(DD)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03b9

    const v1, 0x7f1202b8

    .line 429
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onMapReady(Z)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationDisplayOption:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 415
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storePickerMapFragment:Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->loadStores(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onMenuContinueClicked(Landroid/view/MenuItem;)Z
    .locals 4

    .line 442
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->logisticsList:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    if-eqz p1, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getSelectedPudoDetails()Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 447
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->pudoProgramId:Ljava/lang/String;

    .line 448
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->getAccountNumberRequirement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONAL"

    .line 450
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "REQUIRED"

    .line 451
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->locationUUID:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;->pudoProgramId:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/ebay/mobile/util/PickupUtil;->getPudoResultIntentWithoutShippingServiceId(Landroid/content/Intent;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 470
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 471
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->finish()V

    goto :goto_1

    .line 453
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_provider_id"

    .line 454
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->providerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_account_number"

    .line 457
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/PickupAndDropOffDetails;->personalAccountNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_is_account_number_optional"

    const-string v2, "OPTIONAL"

    .line 462
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 460
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x1092

    .line 463
    invoke-virtual {p0, v1, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v2, 0x7f0a03b9

    invoke-virtual {p0, p1, v2, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->enableMenuItem(Landroid/view/Menu;IZ)V

    return v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 329
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isGeocoderPresent:Z

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 331
    new-instance v0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    iget-object v1, v1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;-><init>(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getSuggestionsAdapter()Landroidx/cursoradapter/widget/CursorAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .line 312
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isGeocoderPresent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;

    .line 315
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v2

    iget-object v2, v2, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-direct {v0, p0, p0, v2, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;-><init>(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 316
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->setIsOnQueryTextSubmit(Z)V

    .line 317
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p1

    .line 320
    :cond_0
    const-class p1, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/view/util/DialogManager;

    const v0, 0x7f120735

    .line 321
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120734

    .line 322
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p1, v0, v2, v1}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 256
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "extra_selected_store"

    .line 257
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "checkout_error"

    .line 258
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "is_initial_load_complete"

    .line 259
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isInitialLoadComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "search_latitude"

    .line 260
    iget-wide v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLatitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v0, "search_longitude"

    .line 261
    iget-wide v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchLongitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "is_search_in_progress"

    .line 262
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->isSearchInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "show_map"

    .line 263
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "extra_store_locations"

    .line 264
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onStoreSelected(Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;I)V
    .locals 2

    const v0, 0x7f0a03b9

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 383
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->enableMenuItem(IZ)V

    .line 384
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 388
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->enableMenuItem(IZ)V

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->selectedStore:Lcom/ebay/nautilus/domain/data/experience/storepicker/PudoLocation;

    .line 392
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a11cc

    .line 394
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    const v1, 0x7f0a11d7

    .line 396
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    .line 398
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->showMap:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->onStoreSelected(I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0, p2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->onStoreSelected(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSuggestionClick(I)Z
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->onSuggestionSelect(I)Z

    move-result p1

    return p1
.end method

.method public onSuggestionSelect(I)Z
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocationRecyclerFragment:Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->geocodedLocations:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->geocodedLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->geocodedLocations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->loadPudoLocation(DD)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public searchStores(DD)V
    .locals 0

    .line 422
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->loadPudoLocation(DD)V

    .line 423
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public startProgress()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->contentContainer:Landroid/widget/RelativeLayout;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->progressContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->progressContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->hideContent()V

    return-void
.end method

.method public stopProgress()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->progressContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->progressContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->contentContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->contentContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->contentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    :cond_1
    return-void
.end method
