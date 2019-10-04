.class public final synthetic Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$aaAso_QkJ0fJRehEHUkQFoBdGVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/top_up_payment/b;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/top_up_payment/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$aaAso_QkJ0fJRehEHUkQFoBdGVw;->f$0:Lcab/snapp/passenger/units/top_up_payment/b;

    iput-boolean p2, p0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$aaAso_QkJ0fJRehEHUkQFoBdGVw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$aaAso_QkJ0fJRehEHUkQFoBdGVw;->f$0:Lcab/snapp/passenger/units/top_up_payment/b;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$aaAso_QkJ0fJRehEHUkQFoBdGVw;->f$1:Z

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->lambda$aaAso_QkJ0fJRehEHUkQFoBdGVw(Lcab/snapp/passenger/units/top_up_payment/b;ZLcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method
