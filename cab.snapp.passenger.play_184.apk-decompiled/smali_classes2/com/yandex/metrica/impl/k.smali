.class public Lcom/yandex/metrica/impl/k;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/k$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/lu;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    .line 87
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/lu;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    const-string v2, "Uuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    const-string v2, "DeviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->c:Ljava/lang/String;

    const-string v2, "DeviceIdHash"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->e:Ljava/lang/String;

    const-string v2, "AdUrlGet"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ma;->f:Ljava/lang/String;

    const-string v2, "AdUrlReport"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nr;->a()J

    move-result-wide v1

    const-string v3, "ServerTimeOffset"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 78
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/no;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Clids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/k$a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->a:Lcom/yandex/metrica/impl/k$a;

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Lcom/yandex/metrica/impl/k$a;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/k$a;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
