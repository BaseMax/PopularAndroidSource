.class public final synthetic Lcab/snapp/passenger/units/search/-$$Lambda$a$JyJcRZmTjhxW6X4WC8vx_Qlx_R4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/search/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/search/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/search/-$$Lambda$a$JyJcRZmTjhxW6X4WC8vx_Qlx_R4;->f$0:Lcab/snapp/passenger/units/search/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/search/-$$Lambda$a$JyJcRZmTjhxW6X4WC8vx_Qlx_R4;->f$0:Lcab/snapp/passenger/units/search/a;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/search/a;->lambda$JyJcRZmTjhxW6X4WC8vx_Qlx_R4(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;)V

    return-void
.end method
