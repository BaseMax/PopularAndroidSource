.class public final synthetic Lcab/snapp/passenger/units/payment/-$$Lambda$a$YFCnbouK0ZvDqURIR8zX9oHL6qM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/payment/a;

.field private final synthetic f$1:Ljava/lang/Double;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/payment/a;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$a$YFCnbouK0ZvDqURIR8zX9oHL6qM;->f$0:Lcab/snapp/passenger/units/payment/a;

    iput-object p2, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$a$YFCnbouK0ZvDqURIR8zX9oHL6qM;->f$1:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$a$YFCnbouK0ZvDqURIR8zX9oHL6qM;->f$0:Lcab/snapp/passenger/units/payment/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$a$YFCnbouK0ZvDqURIR8zX9oHL6qM;->f$1:Ljava/lang/Double;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/payment/a;->lambda$YFCnbouK0ZvDqURIR8zX9oHL6qM(Lcab/snapp/passenger/units/payment/a;Ljava/lang/Double;Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;)V

    return-void
.end method
