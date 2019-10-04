.class public final synthetic Lcab/snapp/passenger/c/-$$Lambda$BhjUjWF60IMQ1sYB6fdB2wGXNLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lio/reactivex/j/a;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/j/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/-$$Lambda$BhjUjWF60IMQ1sYB6fdB2wGXNLY;->f$0:Lio/reactivex/j/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/c/-$$Lambda$BhjUjWF60IMQ1sYB6fdB2wGXNLY;->f$0:Lio/reactivex/j/a;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;

    invoke-virtual {v0, p1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method
