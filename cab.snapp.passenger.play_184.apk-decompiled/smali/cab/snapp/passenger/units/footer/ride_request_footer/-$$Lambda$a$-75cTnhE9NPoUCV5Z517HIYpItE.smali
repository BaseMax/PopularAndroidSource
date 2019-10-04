.class public final synthetic Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$-75cTnhE9NPoUCV5Z517HIYpItE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$-75cTnhE9NPoUCV5Z517HIYpItE;->f$0:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    iput-object p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$-75cTnhE9NPoUCV5Z517HIYpItE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$-75cTnhE9NPoUCV5Z517HIYpItE;->f$0:Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$-75cTnhE9NPoUCV5Z517HIYpItE;->f$1:Ljava/lang/String;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->lambda$-75cTnhE9NPoUCV5Z517HIYpItE(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;)V

    return-void
.end method
