.class public final synthetic Lcab/snapp/passenger/units/signup/-$$Lambda$QH3uC1zBovqPao63jdl4e371elw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/signup/a;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/signup/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/signup/-$$Lambda$QH3uC1zBovqPao63jdl4e371elw;->f$0:Lcab/snapp/passenger/units/signup/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/signup/-$$Lambda$QH3uC1zBovqPao63jdl4e371elw;->f$0:Lcab/snapp/passenger/units/signup/a;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/signup/a;->onLoginError(Ljava/lang/Throwable;)V

    return-void
.end method
