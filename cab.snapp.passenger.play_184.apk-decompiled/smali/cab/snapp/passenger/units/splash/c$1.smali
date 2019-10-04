.class final Lcab/snapp/passenger/units/splash/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/splash/c;->onNoInternetConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/splash/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/splash/c;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/c$1;->a:Lcab/snapp/passenger/units/splash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/c$1;->a:Lcab/snapp/passenger/units/splash/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/splash/c;->a(Lcab/snapp/passenger/units/splash/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/c$1;->a:Lcab/snapp/passenger/units/splash/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/splash/c;->b(Lcab/snapp/passenger/units/splash/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/SplashView;->showTryAgainButton()V

    :cond_0
    return-void
.end method
