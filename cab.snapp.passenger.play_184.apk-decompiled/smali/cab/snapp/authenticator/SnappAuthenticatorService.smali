.class public Lcab/snapp/authenticator/SnappAuthenticatorService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcab/snapp/authenticator/SnappAuthenticatorService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1084
    :cond_0
    sget-object p1, Lcab/snapp/authenticator/b;->a:Ljava/lang/Class;

    if-nez p1, :cond_1

    return-object v0

    .line 29
    :cond_1
    new-instance p1, Lcab/snapp/authenticator/a;

    .line 2084
    sget-object v0, Lcab/snapp/authenticator/b;->a:Ljava/lang/Class;

    .line 29
    invoke-direct {p1, p0, v0}, Lcab/snapp/authenticator/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {p1}, Lcab/snapp/authenticator/a;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
