.class public final synthetic Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$KU2sbpZOP2dHhwcUyvat8qpt2fE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/request_ride_waiting/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/request_ride_waiting/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$KU2sbpZOP2dHhwcUyvat8qpt2fE;->f$0:Lcab/snapp/passenger/units/request_ride_waiting/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$KU2sbpZOP2dHhwcUyvat8qpt2fE;->f$0:Lcab/snapp/passenger/units/request_ride_waiting/a;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->lambda$KU2sbpZOP2dHhwcUyvat8qpt2fE(Lcab/snapp/passenger/units/request_ride_waiting/a;Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;)V

    return-void
.end method
