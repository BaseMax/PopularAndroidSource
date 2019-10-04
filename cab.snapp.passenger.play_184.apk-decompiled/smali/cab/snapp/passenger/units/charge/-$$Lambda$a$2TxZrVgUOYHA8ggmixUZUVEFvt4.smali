.class public final synthetic Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/charge/a;

.field private final synthetic f$1:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

.field private final synthetic f$2:Lcab/snapp/passenger/data/models/charge/QuickCharge;

.field private final synthetic f$3:Lcab/snapp/passenger/units/charge/c;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/QuickCharge;Lcab/snapp/passenger/units/charge/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$0:Lcab/snapp/passenger/units/charge/a;

    iput-object p2, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$1:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    iput-object p3, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$2:Lcab/snapp/passenger/data/models/charge/QuickCharge;

    iput-object p4, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$3:Lcab/snapp/passenger/units/charge/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$0:Lcab/snapp/passenger/units/charge/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$1:Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;

    iget-object v2, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$2:Lcab/snapp/passenger/data/models/charge/QuickCharge;

    iget-object v3, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$2TxZrVgUOYHA8ggmixUZUVEFvt4;->f$3:Lcab/snapp/passenger/units/charge/c;

    check-cast p1, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

    invoke-static {v0, v1, v2, v3, p1}, Lcab/snapp/passenger/units/charge/a;->lambda$2TxZrVgUOYHA8ggmixUZUVEFvt4(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/QuickCharge;Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;)V

    return-void
.end method
