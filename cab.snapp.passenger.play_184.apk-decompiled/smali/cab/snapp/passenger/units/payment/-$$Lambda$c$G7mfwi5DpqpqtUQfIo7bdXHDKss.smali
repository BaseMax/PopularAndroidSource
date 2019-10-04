.class public final synthetic Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/payment/c;

.field private final synthetic f$1:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z

.field private final synthetic f$4:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

.field private final synthetic f$5:Lcab/snapp/passenger/data/models/SnappUssd;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/payment/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;IZLcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;Lcab/snapp/passenger/data/models/SnappUssd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$0:Lcab/snapp/passenger/units/payment/c;

    iput-object p2, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$1:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    iput p3, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$2:I

    iput-boolean p4, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$3:Z

    iput-object p5, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$4:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    iput-object p6, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$5:Lcab/snapp/passenger/data/models/SnappUssd;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$0:Lcab/snapp/passenger/units/payment/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$1:Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    iget v2, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$2:I

    iget-boolean v3, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$3:Z

    iget-object v4, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$4:Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    iget-object v5, p0, Lcab/snapp/passenger/units/payment/-$$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss;->f$5:Lcab/snapp/passenger/data/models/SnappUssd;

    move-object v6, p1

    check-cast v6, Ljava/lang/Integer;

    invoke-static/range {v0 .. v6}, Lcab/snapp/passenger/units/payment/c;->lambda$G7mfwi5DpqpqtUQfIo7bdXHDKss(Lcab/snapp/passenger/units/payment/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;IZLcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;Lcab/snapp/passenger/data/models/SnappUssd;Ljava/lang/Integer;)V

    return-void
.end method
