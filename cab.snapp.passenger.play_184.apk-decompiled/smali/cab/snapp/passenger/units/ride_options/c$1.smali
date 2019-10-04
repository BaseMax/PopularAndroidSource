.class final Lcab/snapp/passenger/units/ride_options/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/ride_options/c;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/ride_options/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/ride_options/c;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$1;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$1;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->a(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$1;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->b(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/a;

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c$1;->a:Lcab/snapp/passenger/units/ride_options/c;

    iget-object v0, v0, Lcab/snapp/passenger/units/ride_options/c;->h:Lcab/snapp/passenger/data/models/RideWaiting;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/a;->addWaitingOption(Lcab/snapp/passenger/data/models/RideWaiting;)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$1;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->c(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$1;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->d(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->dismissAndCancelChooseWaitingDialog()V

    :cond_1
    return-void
.end method
