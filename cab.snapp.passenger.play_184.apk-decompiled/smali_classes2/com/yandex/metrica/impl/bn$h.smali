.class Lcom/yandex/metrica/impl/bn$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/am$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .line 191
    const-class v0, Lcom/yandex/metrica/impl/ob/ma;

    .line 192
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ha$a;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/ha;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/ha;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/gk;

    move-result-object p1

    .line 193
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/gk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ma;

    .line 194
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ma;->a()Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v1

    iget-wide v2, v0, Lcom/yandex/metrica/impl/ob/ma;->r:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Z)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/ma$a;->a(J)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ma$a;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/gk;->a(Ljava/lang/Object;)V

    return-void
.end method
