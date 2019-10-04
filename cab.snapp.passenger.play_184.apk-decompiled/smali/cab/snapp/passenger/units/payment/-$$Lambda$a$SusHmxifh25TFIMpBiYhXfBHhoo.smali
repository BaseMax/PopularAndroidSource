.class public final synthetic Lcab/snapp/passenger/units/payment/-$$Lambda$a$SusHmxifh25TFIMpBiYhXfBHhoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/payment/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/payment/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$a$SusHmxifh25TFIMpBiYhXfBHhoo;->f$0:Lcab/snapp/passenger/units/payment/a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$a$SusHmxifh25TFIMpBiYhXfBHhoo;->f$0:Lcab/snapp/passenger/units/payment/a;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/payment/a;->lambda$SusHmxifh25TFIMpBiYhXfBHhoo(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
