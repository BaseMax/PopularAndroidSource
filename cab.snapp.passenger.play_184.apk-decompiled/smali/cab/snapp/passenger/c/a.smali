.class public final Lcab/snapp/passenger/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lio/reactivex/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    sget-object p0, Lcab/snapp/passenger/c/a;->a:Lio/reactivex/b/c;

    invoke-interface {p0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    sget-object p0, Lcab/snapp/passenger/c/a;->a:Lio/reactivex/b/c;

    invoke-interface {p0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public static checkDualAppsAndSendToServer(Landroid/content/Context;Ljava/util/HashMap;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 44
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {v3}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lcab/snapp/passenger/data_access_layer/network/requests/FollowedAppsRequest;

    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/FollowedAppsRequest;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/FollowedAppsRequest;->setStatuses(Ljava/util/Map;)V

    .line 59
    invoke-virtual {p2, p0}, Lcab/snapp/passenger/data_access_layer/a/d;->sendAppStatus(Lcab/snapp/passenger/data_access_layer/network/requests/FollowedAppsRequest;)Lio/reactivex/z;

    move-result-object p0

    sget-object p1, Lcab/snapp/passenger/c/-$$Lambda$a$GAWyKOb1iDshc023BL-AtaEeEIk;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$a$GAWyKOb1iDshc023BL-AtaEeEIk;

    sget-object p2, Lcab/snapp/passenger/c/-$$Lambda$a$EOFx0EeQy3V4pnpJopgsTkdbwK4;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$a$EOFx0EeQy3V4pnpJopgsTkdbwK4;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p0

    sput-object p0, Lcab/snapp/passenger/c/a;->a:Lio/reactivex/b/c;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic lambda$EOFx0EeQy3V4pnpJopgsTkdbwK4(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/c/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$GAWyKOb1iDshc023BL-AtaEeEIk(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/c/a;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method
