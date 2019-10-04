.class final Lcab/snapp/passenger/units/search/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/search/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/search/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/search/a;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/a;->e(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/a;->f(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/search/c;->onNoResult()V

    :cond_0
    return-void
.end method

.method public final onNext(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    iput-object p1, v0, Lcab/snapp/passenger/units/search/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    .line 156
    invoke-static {v0}, Lcab/snapp/passenger/units/search/a;->c(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/search/a;->d(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/search/c;->onShowResults(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;Z)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/search/a$1;->onNext(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/search/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 144
    iget-object p1, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/a;->a(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcab/snapp/passenger/units/search/a$1;->a:Lcab/snapp/passenger/units/search/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/search/a;->b(Lcab/snapp/passenger/units/search/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/search/c;->onShowLoading()V

    :cond_0
    return-void
.end method
