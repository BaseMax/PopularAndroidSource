.class public final synthetic Lcab/snapp/passenger/units/signup/-$$Lambda$Bld74QDJT5qdKbonbKLYCfJ3dtI;
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

    iput-object p1, p0, Lcab/snapp/passenger/units/signup/-$$Lambda$Bld74QDJT5qdKbonbKLYCfJ3dtI;->f$0:Lcab/snapp/passenger/units/signup/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/signup/-$$Lambda$Bld74QDJT5qdKbonbKLYCfJ3dtI;->f$0:Lcab/snapp/passenger/units/signup/a;

    check-cast p1, Lcab/snapp/snappnetwork/model/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/signup/a;->onGoogleGrantLoginSuccess(Lcab/snapp/snappnetwork/model/c;)V

    return-void
.end method
