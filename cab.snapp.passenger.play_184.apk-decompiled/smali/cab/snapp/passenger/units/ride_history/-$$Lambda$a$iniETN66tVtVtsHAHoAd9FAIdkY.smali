.class public final synthetic Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/ride_history/a;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcab/snapp/passenger/units/ride_history/c;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/ride_history/a;ILcab/snapp/passenger/units/ride_history/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;->f$0:Lcab/snapp/passenger/units/ride_history/a;

    iput p2, p0, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;->f$1:I

    iput-object p3, p0, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;->f$2:Lcab/snapp/passenger/units/ride_history/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;->f$0:Lcab/snapp/passenger/units/ride_history/a;

    iget v1, p0, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;->f$1:I

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;->f$2:Lcab/snapp/passenger/units/ride_history/c;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

    invoke-static {v0, v1, v2, p1}, Lcab/snapp/passenger/units/ride_history/a;->lambda$iniETN66tVtVtsHAHoAd9FAIdkY(Lcab/snapp/passenger/units/ride_history/a;ILcab/snapp/passenger/units/ride_history/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V

    return-void
.end method
