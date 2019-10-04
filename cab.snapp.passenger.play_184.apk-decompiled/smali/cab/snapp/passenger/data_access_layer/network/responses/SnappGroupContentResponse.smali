.class public Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private final DATABASE_KEY:Ljava/lang/String;

.field private banners:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "banners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private serviceTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "service_types"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field private services:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "services"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private webhostBackUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "back_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    const-string v0, "SNAPP_GROUP_RESPONSE_JEY"

    .line 20
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->DATABASE_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->banners:Ljava/util/List;

    return-object v0
.end method

.method public getServiceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->serviceTypes:Ljava/util/List;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->services:Ljava/util/List;

    return-object v0
.end method

.method public getWebhostBackUrl()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->webhostBackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public save(J)V
    .locals 2

    .line 75
    const-class v0, Lcab/snapp/passenger/d/a;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse$1;

    invoke-direct {v1, p0, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse$1;-><init>(Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;J)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    return-void
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->banners:Ljava/util/List;

    return-void
.end method

.method public setServiceTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->serviceTypes:Ljava/util/List;

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->services:Ljava/util/List;

    return-void
.end method

.method public setWebhostBackUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->webhostBackUrl:Ljava/lang/String;

    return-void
.end method
