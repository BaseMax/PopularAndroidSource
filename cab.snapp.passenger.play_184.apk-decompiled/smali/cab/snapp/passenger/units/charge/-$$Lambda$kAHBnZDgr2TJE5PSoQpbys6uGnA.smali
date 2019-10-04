.class public final synthetic Lcab/snapp/passenger/units/charge/-$$Lambda$kAHBnZDgr2TJE5PSoQpbys6uGnA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcab/snapp/passenger/units/charge_recently/e;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/charge/ChargeView;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/charge/ChargeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$kAHBnZDgr2TJE5PSoQpbys6uGnA;->f$0:Lcab/snapp/passenger/units/charge/ChargeView;

    return-void
.end method


# virtual methods
.method public final onRecentMobileNumberSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/units/charge/-$$Lambda$kAHBnZDgr2TJE5PSoQpbys6uGnA;->f$0:Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->setMobileNumberEtText(Ljava/lang/String;)V

    return-void
.end method
