.class final Lcab/snapp/passenger/units/favorite_add_address/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/favorite_add_address/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/favorite_add_address/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/favorite_add_address/d;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/d$3;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/d$3;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->c(Lcab/snapp/passenger/units/favorite_add_address/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/b;->reportPopUpLocationPositiveButtonToAppMetrica()V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
