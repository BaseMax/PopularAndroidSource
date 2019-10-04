.class public final synthetic Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6rnNTwf8iQr9mVcmLdMXLokP2vY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/mainheader/a;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6rnNTwf8iQr9mVcmLdMXLokP2vY;->f$0:Lcab/snapp/passenger/units/mainheader/a;

    iput-object p2, p0, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6rnNTwf8iQr9mVcmLdMXLokP2vY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6rnNTwf8iQr9mVcmLdMXLokP2vY;->f$0:Lcab/snapp/passenger/units/mainheader/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6rnNTwf8iQr9mVcmLdMXLokP2vY;->f$1:Ljava/lang/String;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/mainheader/a;->lambda$6rnNTwf8iQr9mVcmLdMXLokP2vY(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;)V

    return-void
.end method
