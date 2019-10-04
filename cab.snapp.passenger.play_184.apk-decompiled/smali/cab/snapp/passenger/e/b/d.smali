.class public final Lcab/snapp/passenger/e/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideContext(Landroid/app/Application;)Landroid/content/Context;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method public final provideDeepLinkHelper()Lcab/snapp/passenger/f/b;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 151
    new-instance v0, Lcab/snapp/passenger/f/b;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b;-><init>()V

    return-object v0
.end method

.method public final provideEventManager(Landroid/content/Context;Lcab/snapp/passenger/b/a;)Lcab/snapp/b;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 74
    new-instance v0, Lcab/snapp/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcab/snapp/b;-><init>(Landroid/content/Context;ZLcab/snapp/c;)V

    return-object v0
.end method

.method public final provideEventManagerConfig(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/network/b;Lcab/snapp/snappnetwork/c;)Lcab/snapp/passenger/b/a;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 67
    new-instance v0, Lcab/snapp/passenger/b/a;

    invoke-direct {v0, p1, p2, p3}, Lcab/snapp/passenger/b/a;-><init>(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/network/b;Lcab/snapp/snappnetwork/c;)V

    return-object v0
.end method

.method public final provideInterceptors(Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/authenticator/c;)Ljava/util/List;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/f/b/b/c;",
            "Lcab/snapp/authenticator/c;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/a/a;

    invoke-direct {v1, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/a/a;-><init>(Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/authenticator/c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final provideNetworkModules(Lcab/snapp/snappnetwork/c;Lcab/snapp/b/a;Lcab/snapp/passenger/b/b;)Lcab/snapp/passenger/data_access_layer/network/b;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 114
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/b;-><init>(Lcab/snapp/snappnetwork/c;Lcab/snapp/b/a;)V

    .line 118
    invoke-virtual {p3, v0}, Lcab/snapp/passenger/b/b;->setNetworkModules(Lcab/snapp/passenger/data_access_layer/network/b;)V

    return-object v0
.end method

.method public final provideNetworkTokenHelper(Landroid/content/Context;Lcab/snapp/authenticator/c;)Lcab/snapp/passenger/b/b;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 85
    new-instance v0, Lcab/snapp/passenger/b/b;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/b/b;-><init>(Landroid/content/Context;Lcab/snapp/authenticator/c;)V

    return-object v0
.end method

.method public final provideSharedPreferenceManager(Landroid/app/Application;)Lcab/snapp/b/a;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 194
    new-instance v0, Lcab/snapp/b/a;

    invoke-direct {v0, p1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final provideSnappAccountManager(Landroid/app/Application;Ljava/lang/Class;)Lcab/snapp/authenticator/c;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcab/snapp/authenticator/c;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcab/snapp/authenticator/c$a;

    invoke-direct {v0}, Lcab/snapp/authenticator/c$a;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lcab/snapp/authenticator/c$a;->with(Landroid/content/Context;)Lcab/snapp/authenticator/c$a;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p2}, Lcab/snapp/authenticator/c$a;->setAuthenticatorActivity(Ljava/lang/Class;)Lcab/snapp/authenticator/c$a;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcab/snapp/authenticator/c$a;->build()Lcab/snapp/authenticator/c;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lcab/snapp/authenticator/c;->initDefault(Lcab/snapp/authenticator/c;)V

    .line 60
    invoke-static {}, Lcab/snapp/authenticator/c;->getInstance()Lcab/snapp/authenticator/c;

    move-result-object p1

    return-object p1
.end method

.method public final provideSnappConfigDataManager(Landroid/app/Application;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/c/b;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 127
    new-instance v0, Lcab/snapp/passenger/c/b;

    invoke-direct {v0, p1, p2, p3}, Lcab/snapp/passenger/c/b;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)V

    return-object v0
.end method

.method public final provideSnappDataLayer(Lcab/snapp/authenticator/c;Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/passenger/data_access_layer/network/b;)Lcab/snapp/passenger/data_access_layer/a/d;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 48
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-direct {v0, p1, p2, p3}, Lcab/snapp/passenger/data_access_layer/a/d;-><init>(Lcab/snapp/authenticator/c;Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/passenger/data_access_layer/network/b;)V

    return-object v0
.end method

.method public final provideSnappFavoritesDataManager(Landroid/app/Application;Lcab/snapp/passenger/data_access_layer/a/d;)Lcab/snapp/passenger/c/c;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 166
    new-instance v0, Lcab/snapp/passenger/c/c;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/c/c;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V

    return-object v0
.end method

.method public final provideSnappGroupDataManager(Lcab/snapp/passenger/data_access_layer/a/d;)Lcab/snapp/passenger/c/d;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 173
    new-instance v0, Lcab/snapp/passenger/c/d;

    invoke-direct {v0, p1}, Lcab/snapp/passenger/c/d;-><init>(Lcab/snapp/passenger/data_access_layer/a/d;)V

    return-object v0
.end method

.method public final provideSnappLocationDataManager(Landroid/app/Application;)Lcab/snapp/passenger/c/e;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 187
    new-instance v0, Lcab/snapp/passenger/c/e;

    invoke-direct {v0, p1}, Lcab/snapp/passenger/c/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final provideSnappNetworkClient(Ljava/util/List;Lcab/snapp/passenger/b/b;)Lcab/snapp/snappnetwork/c;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lcab/snapp/passenger/b/b;",
            ")",
            "Lcab/snapp/snappnetwork/c;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcab/snapp/snappnetwork/c;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcab/snapp/snappnetwork/c;-><init>(Lcab/snapp/snappnetwork/h;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final provideSnappProfileDataManager(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/c/f;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 180
    new-instance v0, Lcab/snapp/passenger/c/f;

    invoke-direct {v0, p1, p2, p3}, Lcab/snapp/passenger/c/f;-><init>(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)V

    return-object v0
.end method

.method public final provideSnappRideDataManager(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/c/e;Lcab/snapp/passenger/b/a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/b;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/c/g;
    .locals 8
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 139
    new-instance v7, Lcab/snapp/passenger/c/g;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p6

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcab/snapp/passenger/c/g;-><init>(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/c/e;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/passenger/b/a;Lcab/snapp/b;)V

    return-object v7
.end method

.method public final provideSnappSearchDataManager()Lcab/snapp/passenger/c/h;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 159
    new-instance v0, Lcab/snapp/passenger/c/h;

    invoke-direct {v0}, Lcab/snapp/passenger/c/h;-><init>()V

    return-object v0
.end method
