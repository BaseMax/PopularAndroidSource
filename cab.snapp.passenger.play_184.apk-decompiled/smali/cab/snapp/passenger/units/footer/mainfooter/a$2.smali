.class final Lcab/snapp/passenger/units/footer/mainfooter/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/mainfooter/a;->onUnitCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/mainfooter/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/mainfooter/a;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 67
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->b(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/mainfooter/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->f(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getSnappFormattedAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/mainfooter/c;->setDestinationAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    iget-object v1, v0, Lcab/snapp/passenger/units/footer/mainfooter/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a(Lcab/snapp/passenger/units/footer/mainfooter/a;I)I

    .line 73
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->c(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getSnappFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/mainfooter/c;->setAddress(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getAvailableServiceTypesList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getAvailableServiceTypesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/AvailableServiceTypes;

    .line 79
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->getType()I

    move-result v1

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {v2}, Lcab/snapp/passenger/units/footer/mainfooter/a;->d(Lcab/snapp/passenger/units/footer/mainfooter/a;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 81
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {v1}, Lcab/snapp/passenger/units/footer/mainfooter/a;->e(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->getVehicles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->setVehiclesCount(I)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/mainfooter/a$2;->accept(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V

    return-void
.end method
