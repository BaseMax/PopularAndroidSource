.class public final synthetic Lcab/snapp/passenger/units/about_us/-$$Lambda$a$_Xt_5eOZc3pjbYTPWcmXNnT7bg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/about_us/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/about_us/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/about_us/-$$Lambda$a$_Xt_5eOZc3pjbYTPWcmXNnT7bg4;->f$0:Lcab/snapp/passenger/units/about_us/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/-$$Lambda$a$_Xt_5eOZc3pjbYTPWcmXNnT7bg4;->f$0:Lcab/snapp/passenger/units/about_us/a;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;

    invoke-static {v0, p1}, Lcab/snapp/passenger/units/about_us/a;->lambda$_Xt_5eOZc3pjbYTPWcmXNnT7bg4(Lcab/snapp/passenger/units/about_us/a;Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;)V

    return-void
.end method
