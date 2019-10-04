.class public Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;
.super Ljava/lang/Object;
.source "AndroidSecurityProviderInstallListener.java"

# interfaces
.implements Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final aplsLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/kernel/net/AplsLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldagger/Lazy;)V
    .locals 0
    .param p1    # Ldagger/Lazy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/kernel/net/AplsLogger;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;->aplsLogger:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public onProviderInstallFailed(ILandroid/content/Intent;)V
    .locals 8

    .line 42
    new-instance p1, Lcom/ebay/nautilus/kernel/net/LogTrackError;

    const-string v1, "Application"

    const-string/jumbo v2, "updateAndroidSecurityProvider"

    const-string v5, "Application"

    const-string v6, "NonFatalException"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/ebay/nautilus/kernel/net/LogTrackError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iget-object p2, p0, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;->aplsLogger:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/kernel/net/AplsLogger;

    invoke-interface {p2, p1}, Lcom/ebay/nautilus/kernel/net/AplsLogger;->logError(Lcom/ebay/nautilus/kernel/net/LogTrackError;)V

    return-void
.end method

.method public onProviderInstalled()V
    .locals 0

    return-void
.end method
