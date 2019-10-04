.class public final Lcab/snapp/passenger/units/snapp_charge_transactions/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;",
        "Lcab/snapp/passenger/units/snapp_charge_transactions/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/a/b;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->b:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->b:Z

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->hideLoading()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->pressBack()V

    :cond_0
    return-void
.end method

.method public final onBeforeRequest()V
    .locals 2

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->b:Z

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getRideHistoryCurrentPage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->showLoading()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    const v1, 0x7f06012a

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->setStatusBarColor(I)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->setAdapter(Lcab/snapp/passenger/a/b;)V

    return-void

    .line 232
    :cond_1
    new-instance v0, Lcab/snapp/passenger/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcab/snapp/passenger/a/b;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->setAdapter(Lcab/snapp/passenger/a/b;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 239
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->onRequestSuccess(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V

    return-void

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 245
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/snapp_charge_transactions/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->requestNextPage()V

    :cond_4
    return-void
.end method

.method public final onReachedToTheEndOfList()V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->requestNextPage()V

    :cond_1
    return-void
.end method

.method public final onRequestError()V
    .locals 2

    .line 179
    invoke-direct {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a()V

    .line 180
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->showRequestError(I)V

    :cond_0
    return-void
.end method

.method public final onRequestSuccess(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V
    .locals 5

    .line 139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/a/b;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a()V

    if-eqz p1, :cond_a

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 1116
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1121
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/snapp_charge_transactions/a;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getRideHistoryCurrentPage()I

    move-result v2

    if-gt v2, v1, :cond_5

    iget-object v2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v2}, Lcab/snapp/passenger/a/b;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 1123
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->showEmptyList()V

    goto :goto_1

    .line 1127
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->hideEmptyList()V

    .line 155
    :cond_6
    :goto_1
    iget-object v2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v2}, Lcab/snapp/passenger/a/b;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 2093
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/a/b$a;

    invoke-virtual {v3}, Lcab/snapp/passenger/a/b$a;->isLoadingItem()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2095
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2098
    :try_start_0
    iget-object v3, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lcab/snapp/passenger/a/b;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 159
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 161
    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/a/b;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2195
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2197
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;

    .line 2199
    invoke-static {v4}, Lcab/snapp/passenger/a/b$a;->createNormalItem(Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;)Lcab/snapp/passenger/a/b$a;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2204
    :cond_8
    :try_start_1
    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/a/b;->notifyItemRangeInserted(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 2208
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_4
    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/a/b;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2257
    invoke-static {}, Lcab/snapp/passenger/a/b$a;->createLoadingItem()Lcab/snapp/passenger/a/b$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    :try_start_2
    iget-object v2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Lcab/snapp/passenger/a/b;->notifyItemInserted(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    :catch_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    iget-object v2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->a:Lcab/snapp/passenger/a/b;

    invoke-virtual {v2}, Lcab/snapp/passenger/a/b;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->smoothScrollList(I)V

    :cond_9
    if-eqz v0, :cond_a

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->fullScrollUp()V

    :cond_a
    :goto_5
    return-void
.end method
