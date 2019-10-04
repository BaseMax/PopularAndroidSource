.class public final Lcab/snapp/passenger/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;>;"
        }
    .end annotation
.end field

.field protected c:Landroid/content/Context;

.field private d:Lcab/snapp/b/a;

.field private e:Lcab/snapp/passenger/data_access_layer/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    .line 36
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/c;->b:Lio/reactivex/j/b;

    .line 55
    iput-object p1, p0, Lcab/snapp/passenger/c/c;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcab/snapp/passenger/c/c;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 1223
    iget-object p2, p0, Lcab/snapp/passenger/c/c;->d:Lcab/snapp/b/a;

    if-eqz p2, :cond_0

    const-string v0, "shared_pref_key_favorites"

    invoke-virtual {p2, v0}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1225
    new-instance p2, Lcab/snapp/b/a;

    iget-object v1, p0, Lcab/snapp/passenger/c/c;->c:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    goto :goto_0

    .line 1229
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    .line 58
    :goto_0
    new-instance p2, Lcab/snapp/b/a;

    invoke-direct {p2, p1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 2071
    iput-object p2, p0, Lcab/snapp/passenger/c/c;->d:Lcab/snapp/b/a;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;)Lcab/snapp/passenger/data/models/FavoriteModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    new-instance v0, Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;-><init>()V

    .line 153
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->setLat(D)V

    .line 154
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->setLng(D)V

    .line 155
    new-instance p0, Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-direct {p0}, Lcab/snapp/passenger/data/models/FavoriteModel;-><init>()V

    .line 156
    invoke-virtual {p0, p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->setName(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p3}, Lcab/snapp/passenger/data/models/FavoriteModel;->setDetailAddress(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p4}, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;->getFavId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->setId(I)V

    .line 159
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->setFormattedAddress(Lcab/snapp/passenger/data/models/FormattedAddress;)V

    return-object p0
.end method

.method private static synthetic a(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;->getFavoriteModelList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->b:Lio/reactivex/j/b;

    iget-object v1, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(ILjava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3259
    iget-object p2, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/FavoriteModel;

    .line 3261
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3263
    iget-object p1, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->b()V

    .line 182
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->a()V

    return-void
.end method

.method private synthetic a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2296
    iget-object p4, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/FavoriteModel;

    .line 2298
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2300
    invoke-virtual {v0, p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->setName(Ljava/lang/String;)V

    .line 2301
    invoke-virtual {v0, p3}, Lcab/snapp/passenger/data/models/FavoriteModel;->setDetailAddress(Ljava/lang/String;)V

    .line 200
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->b()V

    .line 201
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->a()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3278
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3282
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 164
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->b()V

    .line 165
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->a()V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4246
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->d:Lcab/snapp/b/a;

    if-eqz v0, :cond_0

    const-string v1, "shared_pref_key_favorites"

    .line 4248
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 124
    :cond_1
    iput-object p1, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    .line 126
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->b()V

    .line 127
    invoke-direct {p0}, Lcab/snapp/passenger/c/c;->a()V

    return-void
.end method

.method private static synthetic b(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->d:Lcab/snapp/b/a;

    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    const-string v2, "shared_pref_key_favorites"

    invoke-virtual {v0, v2, v1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$-otmpkhtIrrBY0GEx4DIHs1XzbA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;)Lcab/snapp/passenger/data/models/FavoriteModel;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;)Lcab/snapp/passenger/data/models/FavoriteModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$RAFZXDI7en_o0MOygVvgEqZl8-A(Lcab/snapp/passenger/c/c;Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/c;->a(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    return-void
.end method

.method public static synthetic lambda$Wg0GNg26ejMc7d2IeUB_Xfzs2XU(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/c/c;->b(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$XdzU9gjkAljR_rvrLh5y9A7mwKo(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/c/c;->a(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$c8XPB09DL4ipcLHlT9Cg-Te3rkI(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/c/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ldBz7u2WTCfvvvPYJiKvfL-OuLI(Lcab/snapp/passenger/c/c;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/c/c;->a(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$wPX37AC5fLqCPf-MYL4MGUhTNu8(Lcab/snapp/passenger/c/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/c/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$x15Bw9A9wQoOi1S_4lEWA-JJxNY(Lcab/snapp/passenger/c/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/c;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->setName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->setLat(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p3}, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->setLng(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p4}, Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;->setDetailedAddress(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcab/snapp/passenger/c/c;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->saveFavorite(Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;

    invoke-direct {v1, p2, p3, p1, p4}, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/c/-$$Lambda$c$RAFZXDI7en_o0MOygVvgEqZl8-A;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/c/-$$Lambda$c$RAFZXDI7en_o0MOygVvgEqZl8-A;-><init>(Lcab/snapp/passenger/c/c;)V

    .line 162
    invoke-virtual {p1, p2}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final edit(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/passenger/data_access_layer/a/d;->editFavorite(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;

    invoke-virtual {v0, v1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$c$wPX37AC5fLqCPf-MYL4MGUhTNu8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcab/snapp/passenger/c/-$$Lambda$c$wPX37AC5fLqCPf-MYL4MGUhTNu8;-><init>(Lcab/snapp/passenger/c/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final fetchAndRefreshData()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getFavorites()Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;

    .line 113
    invoke-virtual {v0, v1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$c$x15Bw9A9wQoOi1S_4lEWA-JJxNY;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$c$x15Bw9A9wQoOi1S_4lEWA-JJxNY;-><init>(Lcab/snapp/passenger/c/c;)V

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final getCachedData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public final observeData()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->b:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final remove(I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->deleteFavorite(I)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/c/-$$Lambda$c$Wg0GNg26ejMc7d2IeUB_Xfzs2XU;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$c$Wg0GNg26ejMc7d2IeUB_Xfzs2XU;

    invoke-virtual {v0, v1}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$c$ldBz7u2WTCfvvvPYJiKvfL-OuLI;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/c/-$$Lambda$c$ldBz7u2WTCfvvvPYJiKvfL-OuLI;-><init>(Lcab/snapp/passenger/c/c;I)V

    .line 179
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcab/snapp/passenger/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
