.class final Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;-><init>(Lcab/snapp/passenger/units/splash/SplashView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/splash/SplashView;

.field final synthetic b:Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;Lcab/snapp/passenger/units/splash/SplashView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$1;->b:Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$1;->a:Lcab/snapp/passenger/units/splash/SplashView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$1;->a:Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/SplashView;->onTryAgainButtonClicked()V

    return-void
.end method
