.class public final Lcab/snapp/passenger/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcab/snapp/passenger/data_access_layer/a/d;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/c/d;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/d;->a:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/d;->b:Ljava/util/List;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/d;->c:Ljava/util/List;

    return-void
.end method

.method private a(J)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getSnappGroupContents()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$d$zsDm42t_f7IkudJvW78MJ8rlo8Q;

    invoke-direct {v1, p0, p1, p2}, Lcab/snapp/passenger/c/-$$Lambda$d$zsDm42t_f7IkudJvW78MJ8rlo8Q;-><init>(Lcab/snapp/passenger/c/d;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(JLcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, p3, v0, p1, p2}, Lcab/snapp/passenger/c/d;->a(Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;ZJ)V

    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;ZJ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->getServiceTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/d;->a:Ljava/util/List;

    .line 118
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->getServices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/d;->b:Ljava/util/List;

    .line 119
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->getBanners()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/d;->c:Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->getWebhostBackUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/d;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p1, p3, p4}, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->save(J)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$zsDm42t_f7IkudJvW78MJ8rlo8Q(Lcab/snapp/passenger/c/d;JLcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/c/d;->a(JLcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;)V

    return-void
.end method


# virtual methods
.method public final fetchContents(J)Lio/reactivex/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 63
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/x;->select([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/d/b;

    .line 64
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/y;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/w;

    sget-object v3, Lcab/snapp/passenger/d/c;->type:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/16 v4, 0x3ea

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/l;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->querySingle()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/d/b;

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Lcab/snapp/passenger/d/b;->getLastModificationTimestamp()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    .line 70
    new-instance v2, Lcom/google/gson/e;

    invoke-direct {v2}, Lcom/google/gson/e;-><init>()V

    .line 73
    :try_start_0
    invoke-virtual {v1}, Lcab/snapp/passenger/d/b;->getJsonString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;

    .line 74
    invoke-direct {p0, v2, v0, p1, p2}, Lcab/snapp/passenger/c/d;->a(Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;ZJ)V

    if-eqz v2, :cond_0

    .line 77
    invoke-static {v2}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/c/d;->a(J)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-virtual {v1}, Lcab/snapp/passenger/d/b;->delete()Z

    .line 90
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/c/d;->a(J)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 95
    :cond_1
    invoke-virtual {v1}, Lcab/snapp/passenger/d/b;->delete()Z

    .line 96
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/c/d;->a(J)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 101
    :cond_2
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/c/d;->a(J)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final getBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getServiceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getWebhostBackUrl()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isContentValid()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .locals 2

    .line 226
    const-class v0, Lcab/snapp/passenger/d/b;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/w;

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/j;->table(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/w;)V

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/c/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final setBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;)V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcab/snapp/passenger/c/d;->c:Ljava/util/List;

    return-void
.end method

.method public final setServiceTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcab/snapp/passenger/c/d;->a:Ljava/util/List;

    return-void
.end method

.method public final setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcab/snapp/passenger/c/d;->b:Ljava/util/List;

    return-void
.end method
