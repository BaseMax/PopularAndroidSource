.class Lcom/yandex/metrica/impl/ah$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ah;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ah;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah$2;->a:Lcom/yandex/metrica/impl/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/yandex/metrica/impl/ah$2;->a:Lcom/yandex/metrica/impl/ah;

    invoke-static {p2}, Lcom/yandex/metrica/IMetricaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yandex/metrica/IMetricaService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ah;->a(Lcom/yandex/metrica/impl/ah;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 113
    iget-object p1, p0, Lcom/yandex/metrica/impl/ah$2;->a:Lcom/yandex/metrica/impl/ah;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ah;->b(Lcom/yandex/metrica/impl/ah;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/yandex/metrica/impl/ah$2;->a:Lcom/yandex/metrica/impl/ah;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ah;->a(Lcom/yandex/metrica/impl/ah;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 121
    iget-object p1, p0, Lcom/yandex/metrica/impl/ah$2;->a:Lcom/yandex/metrica/impl/ah;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ah;->c(Lcom/yandex/metrica/impl/ah;)V

    return-void
.end method
