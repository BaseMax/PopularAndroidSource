.class final Lcab/snapp/passenger/units/second_destination/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/second_destination/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/second_destination/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/second_destination/d;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$1;->a:Lcab/snapp/passenger/units/second_destination/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d$1;->a:Lcab/snapp/passenger/units/second_destination/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/second_destination/d;->a(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->reportPopUpLocationPositiveButtonToAppMetrica()V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
