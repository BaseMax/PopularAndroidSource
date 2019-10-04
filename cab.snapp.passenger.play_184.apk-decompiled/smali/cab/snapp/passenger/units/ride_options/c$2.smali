.class final Lcab/snapp/passenger/units/ride_options/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/ride_options/c;->onConfirmationNeeded(Ljava/lang/String;)V
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

    .line 470
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$2;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 474
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$2;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->e(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$2;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->f(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/a;->confirmToInformDriver()V

    .line 478
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$2;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->g(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 480
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$2;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->h(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->hideLoading()V

    .line 481
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/c$2;->a:Lcab/snapp/passenger/units/ride_options/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/ride_options/c;->i(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->dismissConfirmationDialog()V

    :cond_1
    return-void
.end method
