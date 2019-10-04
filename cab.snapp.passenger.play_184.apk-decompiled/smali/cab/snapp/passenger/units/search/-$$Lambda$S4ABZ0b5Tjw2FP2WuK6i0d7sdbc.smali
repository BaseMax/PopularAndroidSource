.class public final synthetic Lcab/snapp/passenger/units/search/-$$Lambda$S4ABZ0b5Tjw2FP2WuK6i0d7sdbc;
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

    iput-object p1, p0, Lcab/snapp/passenger/units/search/-$$Lambda$S4ABZ0b5Tjw2FP2WuK6i0d7sdbc;->f$0:Lcab/snapp/passenger/units/search/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/search/-$$Lambda$S4ABZ0b5Tjw2FP2WuK6i0d7sdbc;->f$0:Lcab/snapp/passenger/units/search/a;

    check-cast p1, Lcab/snapp/passenger/data/models/OnActivityResultModel;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/search/a;->onActivityResultModelReceived(Lcab/snapp/passenger/data/models/OnActivityResultModel;)V

    return-void
.end method
