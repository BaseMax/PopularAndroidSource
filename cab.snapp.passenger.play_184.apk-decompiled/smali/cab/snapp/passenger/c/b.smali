.class public final Lcab/snapp/passenger/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcab/snapp/passenger/data_access_layer/a/d;

.field private c:Lcab/snapp/b/a;

.field private d:Lcab/snapp/passenger/f/b/b/c;

.field private e:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/passenger/data/models/OptionalConfig;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

.field private h:Lcab/snapp/passenger/data/models/OptionalConfig;

.field private i:Lio/reactivex/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/b;->e:Lio/reactivex/j/b;

    .line 61
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/b;->f:Lio/reactivex/j/b;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    .line 71
    iput-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    .line 85
    iput-object p2, p0, Lcab/snapp/passenger/c/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 86
    iput-object p3, p0, Lcab/snapp/passenger/c/b;->d:Lcab/snapp/passenger/f/b/b/c;

    .line 87
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/c/b;->setContext(Landroid/content/Context;)V

    .line 88
    new-instance p2, Lcab/snapp/b/a;

    invoke-direct {p2, p1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcab/snapp/passenger/c/b;->setPreferencesManager(Lcab/snapp/b/a;)V

    .line 1265
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    if-eqz p1, :cond_0

    const-string p2, "Config_Data_Manager_Key_Config"

    invoke-virtual {p1, p2}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1267
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    invoke-virtual {p1, p2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    iput-object p1, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    .line 1278
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    if-eqz p1, :cond_1

    const-string p2, "Config_Data_Manager_Key_Optional_Config"

    invoke-virtual {p1, p2}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1280
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    invoke-virtual {p1, p2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/OptionalConfig;

    iput-object p1, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    :cond_1
    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;)Lcab/snapp/passenger/data/models/OptionalConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;->getOptionalConfig()Lcab/snapp/passenger/data/models/OptionalConfig;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcab/snapp/passenger/data/models/OptionalConfig;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Config_Data_Manager_Key_Optional_Config"

    .line 255
    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    .line 173
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->e:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2236
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    if-eqz v0, :cond_0

    const-string v1, "Config_Data_Manager_Key_Config"

    .line 2240
    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2407
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getFollowedApps()Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2412
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    .line 2414
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getFollowedApps()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/c/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 2412
    invoke-static {p1, v0, v1}, Lcab/snapp/passenger/c/a;->checkDualAppsAndSendToServer(Landroid/content/Context;Ljava/util/HashMap;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 2426
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/c/b;->needFingerPrint()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2434
    :try_start_0
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAdid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2435
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2437
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->sendFingerPrint(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/c/-$$Lambda$b$IvU983UcfOu809zfOzxocvV6sXg;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/c/-$$Lambda$b$IvU983UcfOu809zfOzxocvV6sXg;-><init>(Lcab/snapp/passenger/c/b;)V

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$b$dGA9LAuA8R330oplTAg-7KEMCns;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$b$dGA9LAuA8R330oplTAg-7KEMCns;-><init>(Lcab/snapp/passenger/c/b;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/b;->i:Lio/reactivex/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2454
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 3194
    :cond_3
    :goto_1
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getMapBoxToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getMapBoxToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 3196
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->d:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->TECHNICAL:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->Problem:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MapBox Token - PassengerMasterActivity : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getMapBoxToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_4
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->d:Lcab/snapp/passenger/f/b/b/c;

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportUserAttributes(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    .line 179
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->d:Lcab/snapp/passenger/f/b/b/c;

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendUserProfileToAppmetrica(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 439
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->i:Lio/reactivex/b/c;

    if-eqz p1, :cond_0

    .line 441
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    iget-object p1, p0, Lcab/snapp/passenger/c/b;->i:Lio/reactivex/b/c;

    if-eqz p1, :cond_0

    .line 446
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;->getOptionalConfig()Lcab/snapp/passenger/data/models/OptionalConfig;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    .line 212
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->f:Lio/reactivex/j/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;->getOptionalConfig()Lcab/snapp/passenger/data/models/OptionalConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;->getOptionalConfig()Lcab/snapp/passenger/data/models/OptionalConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/b;->a(Lcab/snapp/passenger/data/models/OptionalConfig;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/b;->a(Lcab/snapp/passenger/data/models/OptionalConfig;)V

    return-void
.end method

.method public static synthetic lambda$IvU983UcfOu809zfOzxocvV6sXg(Lcab/snapp/passenger/c/b;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/b;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$TWlHMPBNd3Ok4h8nYPxlZZvzQXE(Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;)Lcab/snapp/passenger/data/models/OptionalConfig;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/c/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;)Lcab/snapp/passenger/data/models/OptionalConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_-ym4yA6OQpACuCp0C9mqitJSX0(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/b;->b(Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;)V

    return-void
.end method

.method public static synthetic lambda$aN5W9wNKQiCTAzfgyX0kmcstIz4(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method

.method public static synthetic lambda$dGA9LAuA8R330oplTAg-7KEMCns(Lcab/snapp/passenger/c/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final denyUpdate()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/OptionalConfig;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Config_Data_Manager_Key_Deny_Update_Version"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final fetchAndRefreshConfig()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/c/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->getConfig(Landroid/content/Context;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$b$aN5W9wNKQiCTAzfgyX0kmcstIz4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$b$aN5W9wNKQiCTAzfgyX0kmcstIz4;-><init>(Lcab/snapp/passenger/c/b;)V

    .line 171
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final fetchAndRefreshOptionalConfig()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data/models/OptionalConfig;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getOptionalConfig()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$b$_-ym4yA6OQpACuCp0C9mqitJSX0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$b$_-ym4yA6OQpACuCp0C9mqitJSX0;-><init>(Lcab/snapp/passenger/c/b;)V

    .line 208
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;

    .line 219
    invoke-virtual {v0, v1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;
    .locals 1

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    return-object v0
.end method

.method public final getConfigObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->e:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getMapBoxStyleUrl()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getMapBoxStyleUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getMapBoxToken()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getMapBoxToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getMapType()I
    .locals 3

    .line 359
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAbTest()Lcab/snapp/passenger/data/models/ABTestBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAbTest()Lcab/snapp/passenger/data/models/ABTestBean;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ABTestBean;->isMap()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getMapType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final getOptionalConfig()Lcab/snapp/passenger/data/models/OptionalConfig;
    .locals 1

    .line 139
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    return-object v0
.end method

.method public final getOptionalConfigObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data/models/OptionalConfig;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->f:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final isUpdateDeniedByUser()Z
    .locals 3

    .line 311
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    if-eqz v0, :cond_0

    const-string v2, "Config_Data_Manager_Key_Deny_Update_Version"

    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 314
    iget-object v2, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/OptionalConfig;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final mustUpdateApp()Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AppData;->getLatestSupportedVersionCode()I

    move-result v0

    const/16 v1, 0xb8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final needFingerPrint()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->isNeedFingerPrint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final refreshConfigForRideState()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/c/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->getConfig(Landroid/content/Context;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final removeChangeLogList()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 466
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->setPassengerChangeLogList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    .line 476
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    if-eqz v0, :cond_0

    const-string v1, "Config_Data_Manager_Key_Config"

    .line 478
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    .line 479
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    const-string v1, "Config_Data_Manager_Key_Optional_Config"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcab/snapp/passenger/c/b;->a:Landroid/content/Context;

    return-void
.end method

.method public final setPreferencesManager(Lcab/snapp/b/a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcab/snapp/passenger/c/b;->c:Lcab/snapp/b/a;

    return-void
.end method

.method public final shouldUpdateBeforeRide()Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AppData;->getLatestVersionCode()I

    move-result v0

    const/16 v1, 0xb8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/OptionalConfig;->getShowType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/OptionalConfig;->getShowType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldUpdateInRide()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->g:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AppData;->getLatestVersionCode()I

    move-result v0

    const/16 v1, 0xb8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/OptionalConfig;->getShowType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/b;->h:Lcab/snapp/passenger/data/models/OptionalConfig;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/OptionalConfig;->getShowType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
