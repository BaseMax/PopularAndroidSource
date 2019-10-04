.class public final synthetic Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$96XxI_ISHDX8GsnRWun9pb9ZmWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/charge_select_amount/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/charge_select_amount/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$96XxI_ISHDX8GsnRWun9pb9ZmWk;->f$0:Lcab/snapp/passenger/units/charge_select_amount/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$96XxI_ISHDX8GsnRWun9pb9ZmWk;->f$0:Lcab/snapp/passenger/units/charge_select_amount/a;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/charge_select_amount/a;->lambda$96XxI_ISHDX8GsnRWun9pb9ZmWk(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;)V

    return-void
.end method
