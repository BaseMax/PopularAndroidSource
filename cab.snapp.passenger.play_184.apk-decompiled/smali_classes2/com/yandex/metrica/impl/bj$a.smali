.class Lcom/yandex/metrica/impl/bj$a;
.super Lcom/yandex/metrica/impl/bj$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bj;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/bj;Lcom/yandex/metrica/impl/bj$d;)V
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/yandex/metrica/impl/bj$a;->a:Lcom/yandex/metrica/impl/bj;

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/bj$b;-><init>(Lcom/yandex/metrica/impl/bj;Lcom/yandex/metrica/impl/bj$d;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/bj;Lcom/yandex/metrica/impl/bj$d;B)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/bj$a;-><init>(Lcom/yandex/metrica/impl/bj;Lcom/yandex/metrica/impl/bj$d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj$a;->a:Lcom/yandex/metrica/impl/bj;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/bj;)Lcom/yandex/metrica/impl/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ah;->b()V

    .line 142
    invoke-super {p0}, Lcom/yandex/metrica/impl/bj$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj$a;->b:Lcom/yandex/metrica/impl/bj$d;

    .line 1153
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj$a;->a:Lcom/yandex/metrica/impl/bj;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bj;->b(Lcom/yandex/metrica/impl/bj;)Lcom/yandex/metrica/impl/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/metrica/impl/x;->b()Landroid/content/Context;

    move-result-object v1

    .line 1154
    invoke-static {v1}, Lcom/yandex/metrica/impl/bo;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1155
    invoke-static {v0}, Lcom/yandex/metrica/impl/bj$d;->b(Lcom/yandex/metrica/impl/bj$d;)Lcom/yandex/metrica/impl/i;

    move-result-object v3

    invoke-static {v0}, Lcom/yandex/metrica/impl/bj$d;->a(Lcom/yandex/metrica/impl/bj$d;)Lcom/yandex/metrica/impl/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bf;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/impl/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1157
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bj$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
