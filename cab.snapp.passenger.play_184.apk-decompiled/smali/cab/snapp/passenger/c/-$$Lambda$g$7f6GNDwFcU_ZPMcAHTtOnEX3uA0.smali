.class public final synthetic Lcab/snapp/passenger/c/-$$Lambda$g$7f6GNDwFcU_ZPMcAHTtOnEX3uA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/c/g;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/c/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/-$$Lambda$g$7f6GNDwFcU_ZPMcAHTtOnEX3uA0;->f$0:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/c/-$$Lambda$g$7f6GNDwFcU_ZPMcAHTtOnEX3uA0;->f$0:Lcab/snapp/passenger/c/g;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/c/g;->lambda$7f6GNDwFcU_ZPMcAHTtOnEX3uA0(Lcab/snapp/passenger/c/g;Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;)V

    return-void
.end method