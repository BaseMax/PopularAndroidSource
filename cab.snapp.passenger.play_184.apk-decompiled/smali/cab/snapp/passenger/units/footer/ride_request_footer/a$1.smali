.class final Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/a;->onUnitCreated()V
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
.field final synthetic a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    .line 145
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_4

    .line 149
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)I

    move-result p1

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 151
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    iget-object v0, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a(Lcab/snapp/passenger/units/footer/ride_request_footer/a;I)I

    .line 153
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->d(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->disableUI()V

    .line 154
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setPackageDelivery(Z)V

    .line 155
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)I

    move-result v0

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->f(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v0, v2}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->updateServiceType(IZ)V

    return-void

    .line 158
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_5

    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_5

    .line 161
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_7

    .line 163
    :cond_5
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 165
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->startCountingPrice()V

    .line 166
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->j(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->disableUI()V

    .line 168
    :cond_6
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->k(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    :cond_7
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
