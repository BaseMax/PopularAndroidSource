.class public final synthetic Lcab/snapp/passenger/units/ride_rating/-$$Lambda$9nAkdWu5K9XHIsLmjCMfkIvSOIk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/ride_rating/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/ride_rating/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$9nAkdWu5K9XHIsLmjCMfkIvSOIk;->f$0:Lcab/snapp/passenger/units/ride_rating/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$9nAkdWu5K9XHIsLmjCMfkIvSOIk;->f$0:Lcab/snapp/passenger/units/ride_rating/a;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_rating/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;)V

    return-void
.end method
