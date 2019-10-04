.class public final synthetic Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$a1dp9CE7GnJ52kGxXWGfHqC1LsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/favorite_add_address/b;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$a1dp9CE7GnJ52kGxXWGfHqC1LsI;->f$0:Lcab/snapp/passenger/units/favorite_add_address/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$a1dp9CE7GnJ52kGxXWGfHqC1LsI;->f$0:Lcab/snapp/passenger/units/favorite_add_address/b;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->lambda$a1dp9CE7GnJ52kGxXWGfHqC1LsI(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V

    return-void
.end method
