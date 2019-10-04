.class Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;
.super Landroid/os/AsyncTask;
.source "StorePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPudoLocationsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;",
        ">;>;"
    }
.end annotation


# instance fields
.field private auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;"
        }
    .end annotation
.end field

.field private countryCode:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private pickupProgramIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postalCode:Ljava/lang/String;

.field private site:Lcom/ebay/nautilus/domain/EbaySite;

.field final synthetic this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/util/Set;DDLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/app/Authentication;",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/nautilus/domain/EbaySite;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;DD",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 673
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 674
    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 675
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    .line 676
    iput-object p4, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 677
    iput-object p5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->pickupProgramIds:Ljava/util/Set;

    .line 678
    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->latitude:Ljava/lang/Double;

    .line 679
    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->longitude:Ljava/lang/Double;

    .line 680
    iput-object p10, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->countryCode:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p5    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/app/Authentication;",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/nautilus/domain/EbaySite;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 661
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 662
    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 663
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    .line 664
    iput-object p4, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 665
    iput-object p5, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->pickupProgramIds:Ljava/util/Set;

    .line 666
    iput-object p6, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->postalCode:Ljava/lang/String;

    .line 667
    iput-object p7, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->countryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/ebay/nautilus/domain/content/Content;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;",
            ">;"
        }
    .end annotation

    .line 686
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object p1

    .line 688
    invoke-virtual {p1}, Lcom/ebay/mobile/dcs/DcsHelper;->getPudoPickupStationSearchRadius()I

    move-result v0

    .line 689
    invoke-virtual {p1}, Lcom/ebay/mobile/dcs/DcsHelper;->getPudoPickupStationSearchUnits()Ljava/lang/String;

    move-result-object v6

    .line 692
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->postalCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v12, 0x0

    if-nez p1, :cond_0

    .line 693
    new-instance p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->pickupProgramIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->postalCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->countryCode:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;-><init>(Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/domain/EbaySite;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->latitude:Ljava/lang/Double;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->longitude:Ljava/lang/Double;

    if-eqz p1, :cond_1

    .line 696
    new-instance p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->pickupProgramIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->latitude:Ljava/lang/Double;

    .line 697
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v11, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->countryCode:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;-><init>(Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/domain/EbaySite;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, v12

    .line 703
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 705
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getConnector()Lcom/ebay/nautilus/kernel/net/Connector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/net/Connector;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse;

    .line 706
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    .line 710
    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v3, p1, v2}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$200(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsRequest;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :cond_2
    new-instance p1, Lcom/ebay/nautilus/domain/content/Content;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse;->payload:Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;

    invoke-direct {p1, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object p1

    :cond_3
    return-object v12

    .line 718
    :catch_0
    new-instance p1, Lcom/ebay/nautilus/domain/content/Content;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v1, 0x0

    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getDataIsNull()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-direct {p1, v12, v0}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 647
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->doInBackground([Ljava/lang/Void;)Lcom/ebay/nautilus/domain/content/Content;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;",
            ">;)V"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$300(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 729
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->stopProgress()V

    .line 731
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$402(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;)Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 732
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    iput-object v1, v0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    .line 736
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    .line 737
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;

    .line 743
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 745
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getShortMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v1

    .line 753
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 755
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$500(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_6

    .line 763
    iget-object v0, p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;->errors:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 764
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 767
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;

    const/4 v0, 0x1

    goto :goto_0

    .line 771
    :cond_2
    iget-object v0, p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;->errorMessages:Lcom/ebay/nautilus/domain/net/dataobject/ErrorMessageContainer;

    if-eqz v0, :cond_3

    .line 774
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/dataobject/ErrorMessageContainer;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 775
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 777
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 784
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    .line 786
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->context:Ljava/lang/ref/WeakReference;

    .line 787
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-virtual {v1, v6}, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;->getLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-static {p1, v5, v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$500(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :cond_4
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerPudoLocationsResponse$PudoLocationsPayload;->locations:Ljava/util/ArrayList;

    iput-object p1, v1, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    .line 793
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$600(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)V

    :cond_5
    :goto_2
    move p1, v2

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_3
    const/4 v0, 0x0

    .line 796
    :goto_4
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$700(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 798
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$300(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->onStoreSelected(I)V

    .line 799
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$800(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 800
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$800(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->onStoreSelected(I)V

    .line 802
    :cond_7
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$300(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    iget-object v2, v2, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationRecyclerFragment;->loadData(Ljava/util/ArrayList;ZZ)V

    .line 803
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$800(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 804
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$800(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    iget-object v0, v0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->storeLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerMapFragment;->loadStores(Ljava/util/ArrayList;)V

    .line 806
    :cond_8
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {p1, v3}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$702(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Z)Z

    .line 807
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {p1, v4}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$902(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Z)Z

    :cond_9
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 647
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$GetPudoLocationsLoader;->onPostExecute(Lcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method
