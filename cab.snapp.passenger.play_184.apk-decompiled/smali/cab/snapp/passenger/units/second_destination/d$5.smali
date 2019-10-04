.class final Lcab/snapp/passenger/units/second_destination/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/second_destination/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/k;

.field final synthetic b:Lcab/snapp/passenger/units/second_destination/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/second_destination/d;Lcom/google/android/gms/common/api/k;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$5;->b:Lcab/snapp/passenger/units/second_destination/d;

    iput-object p2, p0, Lcab/snapp/passenger/units/second_destination/d$5;->a:Lcom/google/android/gms/common/api/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$5;->b:Lcab/snapp/passenger/units/second_destination/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/second_destination/d;->e(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$5;->b:Lcab/snapp/passenger/units/second_destination/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/second_destination/d;->f(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->cancelNoLocationDialog()V

    .line 238
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$5;->b:Lcab/snapp/passenger/units/second_destination/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/second_destination/d;->g(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$5;->b:Lcab/snapp/passenger/units/second_destination/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/second_destination/d;->h(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/b;

    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d$5;->a:Lcom/google/android/gms/common/api/k;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/second_destination/b;->requestEditLocationSetting(Lcom/google/android/gms/common/api/k;)V

    .line 241
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$5;->b:Lcab/snapp/passenger/units/second_destination/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/second_destination/d;->i(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/b;->reportPopUpLocationPositiveButtonToAppMetrica()V

    :cond_1
    return-void
.end method
