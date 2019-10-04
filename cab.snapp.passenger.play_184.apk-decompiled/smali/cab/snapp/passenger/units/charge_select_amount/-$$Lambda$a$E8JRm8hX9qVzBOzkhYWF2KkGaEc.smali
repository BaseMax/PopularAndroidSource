.class public final synthetic Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/charge_select_amount/a;

.field private final synthetic f$1:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

.field private final synthetic f$2:Lcab/snapp/passenger/units/charge_select_amount/c;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/units/charge_select_amount/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;->f$0:Lcab/snapp/passenger/units/charge_select_amount/a;

    iput-object p2, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;->f$1:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    iput-object p3, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;->f$2:Lcab/snapp/passenger/units/charge_select_amount/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;->f$0:Lcab/snapp/passenger/units/charge_select_amount/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;->f$1:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    iget-object v2, p0, Lcab/snapp/passenger/units/charge_select_amount/-$$Lambda$a$E8JRm8hX9qVzBOzkhYWF2KkGaEc;->f$2:Lcab/snapp/passenger/units/charge_select_amount/c;

    check-cast p1, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

    invoke-static {v0, v1, v2, p1}, Lcab/snapp/passenger/units/charge_select_amount/a;->lambda$E8JRm8hX9qVzBOzkhYWF2KkGaEc(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/units/charge_select_amount/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V

    return-void
.end method
