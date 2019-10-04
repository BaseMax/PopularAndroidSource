.class Lcom/yandex/metrica/impl/bn$e;
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
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    .line 141
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/yandex/metrica/impl/ob/gf;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    .line 1147
    new-instance v0, Lcom/yandex/metrica/impl/ob/gg;

    .line 1148
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/fq;->e()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/yandex/metrica/impl/ob/gg;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gg;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/ma;->r:J

    const/4 p1, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    .line 1151
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/gf;->c(I)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_3

    .line 1153
    :cond_2
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/gf;->c(Z)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gf;->i()V

    :cond_3
    return-void
.end method
