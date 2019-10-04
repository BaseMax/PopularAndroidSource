.class public Lcom/yandex/metrica/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ad;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ad;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->a:Lcom/yandex/metrica/impl/ad;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->a:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ad;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->a:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ad;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
