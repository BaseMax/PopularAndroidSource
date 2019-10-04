.class Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;
.super Landroid/os/AsyncTask;
.source "LogisticsAccountNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidateAccountNumberLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse$AccountNumberValidationPayLoad;",
        ">;>;"
    }
.end annotation


# instance fields
.field private accountNumberToValidate:Ljava/lang/String;

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

.field private pudoProviderId:Ljava/lang/String;

.field private site:Lcom/ebay/nautilus/domain/EbaySite;

.field final synthetic this$0:Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 283
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->context:Ljava/lang/ref/WeakReference;

    .line 284
    iput-object p4, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 285
    iput-object p5, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->pudoProviderId:Ljava/lang/String;

    .line 286
    iput-object p6, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->accountNumberToValidate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/ebay/nautilus/domain/content/Content;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse$AccountNumberValidationPayLoad;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationRequest;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->pudoProviderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->accountNumberToValidate:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationRequest;-><init>(Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getConnector()Lcom/ebay/nautilus/kernel/net/Connector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ebay/nautilus/kernel/net/Connector;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse;

    .line 301
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 302
    sget-object v2, Lcom/ebay/nautilus/kernel/content/ResultStatus;->CANCELED:Lcom/ebay/nautilus/kernel/content/ResultStatus;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse;->payload:Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse$AccountNumberValidationPayLoad;

    invoke-direct {v0, p1, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0

    .line 307
    :catch_0
    new-instance p1, Lcom/ebay/nautilus/domain/content/Content;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getDataIsNull()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 269
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->doInBackground([Ljava/lang/Void;)Lcom/ebay/nautilus/domain/content/Content;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse$AccountNumberValidationPayLoad;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->accountNumberToValidate:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->access$000(Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;Lcom/ebay/nautilus/domain/content/Content;Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->this$0:Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->access$102(Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->onPostExecute(Lcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method
