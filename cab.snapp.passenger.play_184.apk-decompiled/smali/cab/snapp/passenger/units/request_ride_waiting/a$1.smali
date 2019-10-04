.class final Lcab/snapp/passenger/units/request_ride_waiting/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/request_ride_waiting/a;->onUnitCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/request_ride_waiting/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/request_ride_waiting/a;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 406
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_3

    .line 408
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->a(Lcab/snapp/passenger/units/request_ride_waiting/a;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-nez p1, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    iget-object p1, p1, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 414
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->b(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->c(Lcab/snapp/passenger/units/request_ride_waiting/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 416
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->d(Lcab/snapp/passenger/units/request_ride_waiting/a;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 417
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->e(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->f(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onReleaseResources()V

    .line 421
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->g(Lcab/snapp/passenger/units/request_ride_waiting/a;)Z

    .line 422
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->h(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/e;->navigateUp()V

    return-void

    .line 427
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->i(Lcab/snapp/passenger/units/request_ride_waiting/a;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 430
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_4

    .line 432
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->j(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 434
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    iget-object p1, p1, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 435
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->k(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRideReallotted()Z

    move-result v0

    iget-object v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->a:Lcab/snapp/passenger/units/request_ride_waiting/a;

    iget-object v1, v1, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getStName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onReallotment(ZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/a$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
