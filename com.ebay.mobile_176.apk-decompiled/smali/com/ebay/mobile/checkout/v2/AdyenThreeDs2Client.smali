.class public Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;
.super Ljava/lang/Object;
.source "AdyenThreeDs2Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;,
        Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;,
        Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenEphemeralKeyParameters;,
        Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenFingerprintParameters;,
        Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;
    }
.end annotation


# static fields
.field public static final ADYEN_AUTH_PARAMETER_MISSING:Ljava/lang/String; = "ADYEN_AUTH_PARAM_MISSING"

.field public static final ADYEN_CHALLENGE_TIMEOUT_MINUTES:I = 0x5

.field public static final ADYEN_OPERATION_COMPLETED_MSG:Ljava/lang/String; = "operation_completed"

.field public static final ADYEN_OPERATION_REDIRECT:Ljava/lang/String; = "redirect"

.field public static REDIRECT_RETURN_URL:Ljava/lang/String; = "ebay://sca/v1"

.field public static final THREE_DS1_PARAM_MD:Ljava/lang/String; = "MD"

.field public static final THREE_DS1_PARAM_RESPONSE:Ljava/lang/String; = "PaRes"


# instance fields
.field protected challengeRunning:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

.field protected transaction:Lcom/adyen/threeds2/Transaction;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportChallengeErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportChallengeErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private base64decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 497
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private reportChallengeErrorToApls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 518
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportChallengeErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportChallengeErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Adyen3DS2"

    const-string v1, "challenge"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 512
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportRedirectErrorToApls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Adyen3DS2"

    const-string/jumbo v1, "redirect"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    .line 529
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAndroidChannel(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 204
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "channel"

    const-string v1, "ANDROID"

    .line 205
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "acceptHeader"

    const-string/jumbo v1, "text/html"

    .line 206
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public challengeShopper(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;)Z
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;",
            ")Z"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->isChallengeRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "challenge"

    const-string v2, "operation_started"

    .line 249
    invoke-virtual {p0, v0, p2, v2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportAdyenOperationToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->getChallengeParameters(Ljava/util/Map;)Lcom/adyen/threeds2/parameters/ChallengeParameters;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p1, "ADYEN_CHALLENGE_PARAMS_MISSING"

    .line 254
    invoke-direct {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportChallengeErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->challengeRunning:Z

    .line 259
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->pause()V

    .line 260
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->transaction:Lcom/adyen/threeds2/Transaction;

    new-instance v2, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;

    invoke-direct {v2, p0, p4, p2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$1;-><init>(Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$OnAdyenCompleteListener;Ljava/lang/String;)V

    const/4 p2, 0x5

    invoke-interface {v1, p1, p3, v2, p2}, Lcom/adyen/threeds2/Transaction;->doChallenge(Landroid/app/Activity;Lcom/adyen/threeds2/parameters/ChallengeParameters;Lcom/adyen/threeds2/ChallengeStatusReceiver;I)V

    return v0
.end method

.method protected clearChallenge()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->challengeRunning:Z

    return-void
.end method

.method protected closeTransaction()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->transaction:Lcom/adyen/threeds2/Transaction;

    invoke-interface {v0}, Lcom/adyen/threeds2/Transaction;->close()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->transaction:Lcom/adyen/threeds2/Transaction;

    return-void
.end method

.method public createThreeDs2Fingerprint(Lcom/adyen/threeds2/AuthenticationRequestParameters;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adyen/threeds2/AuthenticationRequestParameters;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 421
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v1

    .line 422
    invoke-interface {p1}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getSDKEphemeralPublicKey()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenEphemeralKeyParameters;

    invoke-interface {v1, v2, v3}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenEphemeralKeyParameters;

    const-string/jumbo v2, "sdkEncData"

    .line 423
    invoke-interface {p1}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getDeviceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sdkTransId"

    .line 424
    invoke-interface {p1}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getSDKTransactionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sdkAppId"

    .line 425
    invoke-interface {p1}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getSDKAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sdkReferenceNumber"

    .line 426
    invoke-interface {p1}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getSDKReferenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sdkEphemPubKey"

    .line 427
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "messageVersion"

    .line 428
    invoke-interface {p1}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getMessageVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected get3ds1ChallengeParameters(Ljava/util/Map;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "name"

    .line 446
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ENCODED_THREE_DS_1_REDIRECT_PARAMETERS"

    .line 448
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "value"

    .line 450
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 455
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->base64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 459
    :cond_2
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v0

    const-class v1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;

    invoke-interface {v0, p1, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;

    :cond_3
    return-object v0
.end method

.method protected getChallengeParameters(Ljava/util/Map;)Lcom/adyen/threeds2/parameters/ChallengeParameters;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adyen/threeds2/parameters/ChallengeParameters;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "name"

    .line 377
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ENCODED_THREE_DS_2_CHALLENGE_PARAMETERS"

    .line 379
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "value"

    .line 381
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 386
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->base64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 390
    :cond_2
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v1

    const-class v2, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;

    invoke-interface {v1, p1, v2}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_4

    .line 397
    new-instance v0, Lcom/adyen/threeds2/parameters/ChallengeParameters;

    invoke-direct {v0}, Lcom/adyen/threeds2/parameters/ChallengeParameters;-><init>()V

    .line 398
    iget-object v1, p1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;->threeDSServerTransID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->set3DSServerTransactionID(Ljava/lang/String;)V

    .line 399
    iget-object v1, p1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;->acsTransID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->setAcsTransactionID(Ljava/lang/String;)V

    .line 400
    iget-object v1, p1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;->acsReferenceNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->setAcsRefNumber(Ljava/lang/String;)V

    .line 401
    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenChallengeParameters;->acsSignedContent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->setAcsSignedContent(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method protected getFingerprintParameters(Ljava/lang/String;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenFingerprintParameters;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->base64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 482
    :cond_1
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getDefaultMapper()Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v0

    const-class v1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenFingerprintParameters;

    invoke-interface {v0, p1, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenFingerprintParameters;

    return-object p1
.end method

.method public getThreeDs1ResponseData(Landroid/net/Uri;)Ljava/util/Map;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "MD"

    .line 221
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaRes"

    .line 222
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, "MD"

    .line 226
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "PaRes"

    .line 228
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public identifyShopper(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/adyen/threeds2/AuthenticationRequestParameters;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adyen/threeds2/AuthenticationRequestParameters;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "fingerprint"

    const-string v2, "operation_started"

    .line 136
    invoke-virtual {p0, v1, p2, v2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportAdyenOperationToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 139
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ENCODED_THREE_DS_2_DEVICE_FINGERPRINT_PARAMETERS"

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "value"

    .line 142
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->getFingerprintParameters(Ljava/lang/String;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenFingerprintParameters;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 148
    iget-object v1, p3, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenFingerprintParameters;->directoryServerID:Ljava/lang/String;

    .line 149
    iget-object p3, p3, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$AdyenFingerprintParameters;->directoryServerPublicKey:Ljava/lang/String;

    .line 151
    new-instance v2, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;

    invoke-direct {v2, v1, p3}, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters$Builder;->build()Lcom/adyen/threeds2/parameters/ConfigParameters;

    move-result-object p3

    .line 154
    :try_start_0
    sget-object v1, Lcom/adyen/threeds2/ThreeDS2Service;->INSTANCE:Lcom/adyen/threeds2/ThreeDS2Service;

    invoke-interface {v1, p1, p3, v0, v0}, Lcom/adyen/threeds2/ThreeDS2Service;->initialize(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;Ljava/lang/String;Lcom/adyen/threeds2/customization/UiCustomization;)V
    :try_end_0
    .catch Lcom/adyen/threeds2/exception/SDKAlreadyInitializedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adyen/threeds2/exception/SDKRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportFingerprintErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p3

    .line 158
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportFingerprintErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_1
    :try_start_1
    sget-object p3, Lcom/adyen/threeds2/ThreeDS2Service;->INSTANCE:Lcom/adyen/threeds2/ThreeDS2Service;

    invoke-interface {p3, v0, v0}, Lcom/adyen/threeds2/ThreeDS2Service;->createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/adyen/threeds2/Transaction;

    move-result-object p3

    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->transaction:Lcom/adyen/threeds2/Transaction;

    .line 169
    sget-object p3, Lcom/adyen/threeds2/ThreeDS2Service;->INSTANCE:Lcom/adyen/threeds2/ThreeDS2Service;

    invoke-interface {p3, p1}, Lcom/adyen/threeds2/ThreeDS2Service;->cleanup(Landroid/content/Context;)V

    const-string p1, "fingerprint"

    const-string p3, "operation_completed"

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportAdyenOperationToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->transaction:Lcom/adyen/threeds2/Transaction;

    invoke-interface {p1}, Lcom/adyen/threeds2/Transaction;->getAuthenticationRequestParameters()Lcom/adyen/threeds2/AuthenticationRequestParameters;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportFingerprintErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p1, "ADYEN_FINGERPRINT_PARAMS_MISSING"

    .line 180
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportFingerprintErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isChallengeRunning()Z
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 108
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->challengeRunning:Z

    return v0
.end method

.method public redirectShopper(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->isChallengeRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "redirect"

    const-string v2, "operation_started"

    .line 328
    invoke-virtual {p0, v0, p2, v2}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportAdyenOperationToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->get3ds1ChallengeParameters(Ljava/util/Map;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 335
    :try_start_0
    sget-object v0, Lcom/ebay/nautilus/domain/net/ApiSettings;->adyenThreeDs1IntermediateUrl:Lcom/ebay/nautilus/domain/net/ApiSettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "ADYEN_3DS1_REDIRECT_INTERNAL_ERROR"

    .line 338
    invoke-direct {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportRedirectErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 341
    :cond_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "IssuerUrl"

    iget-object v4, p3, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;->IssuerUrl:Ljava/lang/String;

    .line 343
    invoke-static {v4, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "PaReq"

    iget-object v4, p3, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;->PaReq:Ljava/lang/String;

    .line 344
    invoke-static {v4, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "MD"

    iget-object p3, p3, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client$Adyen3DS1ChallengeParameters;->MD:Ljava/lang/String;

    .line 345
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v0, "nativeTermUrl"

    sget-object v3, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->REDIRECT_RETURN_URL:Ljava/lang/String;

    .line 346
    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 347
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->challengeRunning:Z

    .line 349
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->pause()V

    .line 350
    invoke-static {p1, p3}, Lcom/ebay/mobile/util/CustomTabsUtil;->launchCustomTabs(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string p1, "ADYEN_3DS1_REDIRECT_INTERNAL_ERROR"

    .line 355
    invoke-direct {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportRedirectErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p1, "ADYEN_CHALLENGE_PARAMS_MISSING"

    .line 360
    invoke-direct {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;->reportRedirectErrorToApls(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public reportAdyenOperationToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Adyen3DS2"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 507
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportFingerprintErrorToApls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Adyen3DS2"

    const-string v1, "fingerprint"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    .line 523
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
