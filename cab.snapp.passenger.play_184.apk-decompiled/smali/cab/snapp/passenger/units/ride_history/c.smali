.class public final Lcab/snapp/passenger/units/ride_history/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/ride_history/RideHistoryView;",
        "Lcab/snapp/passenger/units/ride_history/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/a/h;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_history/c;->b:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_history/c;->b:Z

    .line 282
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->hideLoading()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/a/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/a/h$a;->getRideHistoryInfo()Lcab/snapp/passenger/data/models/RideHistoryInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_history/a;->navigateToRideHistoryDetails(Lcab/snapp/passenger/data/models/RideHistoryInfo;)V

    return-void
.end method

.method private static synthetic b(Lcab/snapp/passenger/a/h$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcab/snapp/passenger/a/h$a;->getRideHistoryInfo()Lcab/snapp/passenger/data/models/RideHistoryInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic c(Lcab/snapp/passenger/a/h$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/a/h$a;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$QoZMTX8VQfLxiYsE-JKu4oWgAxM(Lcab/snapp/passenger/a/h$a;)Z
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/ride_history/c;->b(Lcab/snapp/passenger/a/h$a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$lreBnhDwqtVMw746_ocEaZSuVPc(Lcab/snapp/passenger/units/ride_history/c;Lcab/snapp/passenger/a/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ride_history/c;->a(Lcab/snapp/passenger/a/h$a;)V

    return-void
.end method

.method public static synthetic lambda$oO4E-1DiOorV9r-6EGYNNHufsSg(Lcab/snapp/passenger/a/h$a;)Z
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/ride_history/c;->c(Lcab/snapp/passenger/a/h$a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onBackButtonClicked()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onBeforeRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_history/c;->b:Z

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history/a;->getRideHistoryCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->showLoading()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->setAdapter(Lcab/snapp/passenger/a/h;)V

    return-void

    .line 82
    :cond_0
    new-instance v0, Lcab/snapp/passenger/a/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcab/snapp/passenger/a/h;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->setAdapter(Lcab/snapp/passenger/a/h;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v0}, Lcab/snapp/passenger/a/h;->getItemClicks()Lio/reactivex/z;

    move-result-object v0

    .line 1295
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1299
    sget-object v1, Lcab/snapp/passenger/units/ride_history/-$$Lambda$c$oO4E-1DiOorV9r-6EGYNNHufsSg;->INSTANCE:Lcab/snapp/passenger/units/ride_history/-$$Lambda$c$oO4E-1DiOorV9r-6EGYNNHufsSg;

    .line 1300
    invoke-virtual {v0, v1}, Lio/reactivex/z;->filter(Lio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/units/ride_history/-$$Lambda$c$QoZMTX8VQfLxiYsE-JKu4oWgAxM;->INSTANCE:Lcab/snapp/passenger/units/ride_history/-$$Lambda$c$QoZMTX8VQfLxiYsE-JKu4oWgAxM;

    .line 1301
    invoke-virtual {v0, v1}, Lio/reactivex/z;->filter(Lio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/ride_history/-$$Lambda$c$lreBnhDwqtVMw746_ocEaZSuVPc;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_history/-$$Lambda$c$lreBnhDwqtVMw746_ocEaZSuVPc;-><init>(Lcab/snapp/passenger/units/ride_history/c;)V

    .line 1302
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    :cond_2
    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ride_history/c;->onRequestSuccess(Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V

    return-void

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_history/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_history/a;->requestNextPage()V

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->setStatusBarColor()V

    return-void
.end method

.method public final onReachedToTheEndOfList()V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_history/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history/a;->requestNextPage()V

    :cond_1
    return-void
.end method

.method public final onRequestError()V
    .locals 2

    .line 127
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_history/c;->a()V

    .line 128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->showRequestError(I)V

    :cond_0
    return-void
.end method

.method public final onRequestSuccess(Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V
    .locals 5

    .line 141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v0}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 148
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_history/c;->a()V

    if-eqz p1, :cond_b

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    .line 2184
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 2189
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/ride_history/a;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/ride_history/a;->getRideHistoryCurrentPage()I

    move-result v2

    if-gt v2, v1, :cond_5

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v2}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 2191
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->showEmptyList()V

    goto :goto_1

    .line 2195
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->hideEmptyList()V

    .line 157
    :cond_6
    :goto_1
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v2}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 2262
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/a/h$a;

    invoke-virtual {v3}, Lcab/snapp/passenger/a/h$a;->isLoadingItem()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2264
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2267
    :try_start_0
    iget-object v3, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lcab/snapp/passenger/a/h;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 159
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/ride_history/a;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/ride_history/a;->getRideHistoryCurrentPage()I

    move-result v2

    if-ne v2, v1, :cond_8

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v1}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 161
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v1}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 3207
    invoke-static {p1}, Lcab/snapp/passenger/a/h$a;->createHeaderItem(Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)Lcab/snapp/passenger/a/h$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_8
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 166
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v1}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 3237
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3239
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/data/models/RideHistoryInfo;

    .line 3241
    invoke-static {v4}, Lcab/snapp/passenger/a/h$a;->createNormalItem(Lcab/snapp/passenger/data/models/RideHistoryInfo;)Lcab/snapp/passenger/a/h$a;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3246
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/a/h;->notifyItemRangeInserted(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :catch_1
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v1}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 4217
    invoke-static {}, Lcab/snapp/passenger/a/h$a;->createLoadingItem()Lcab/snapp/passenger/a/h$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4221
    :try_start_2
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Lcab/snapp/passenger/a/h;->notifyItemInserted(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    :catch_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history/c;->a:Lcab/snapp/passenger/a/h;

    invoke-virtual {v2}, Lcab/snapp/passenger/a/h;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->smoothScrollList(I)V

    :cond_a
    if-eqz v0, :cond_b

    .line 173
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->fullScrollUp()V

    :cond_b
    :goto_4
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 105
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
