.class public final synthetic Lcab/snapp/passenger/units/charge/-$$Lambda$a$fQxkRkg9MYKdCDgW5hYQWhhBc3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/charge/a;

.field private final synthetic f$1:Lcab/snapp/passenger/units/charge/c;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$fQxkRkg9MYKdCDgW5hYQWhhBc3A;->f$0:Lcab/snapp/passenger/units/charge/a;

    iput-object p2, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$fQxkRkg9MYKdCDgW5hYQWhhBc3A;->f$1:Lcab/snapp/passenger/units/charge/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$fQxkRkg9MYKdCDgW5hYQWhhBc3A;->f$0:Lcab/snapp/passenger/units/charge/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$a$fQxkRkg9MYKdCDgW5hYQWhhBc3A;->f$1:Lcab/snapp/passenger/units/charge/c;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/charge/a;->lambda$fQxkRkg9MYKdCDgW5hYQWhhBc3A(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/units/charge/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V

    return-void
.end method
