.class public final synthetic Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$fTTqq8X1OPwxJ4GHb6qyE5Yl-TQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/top_up_payment/b;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/top_up_payment/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$fTTqq8X1OPwxJ4GHb6qyE5Yl-TQ;->f$0:Lcab/snapp/passenger/units/top_up_payment/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$fTTqq8X1OPwxJ4GHb6qyE5Yl-TQ;->f$0:Lcab/snapp/passenger/units/top_up_payment/b;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->lambda$fTTqq8X1OPwxJ4GHb6qyE5Yl-TQ(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;)V

    return-void
.end method
