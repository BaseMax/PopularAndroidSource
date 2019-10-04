.class Lcom/yandex/metrica/impl/bn$f;
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
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 161
    new-instance v0, Lcom/yandex/metrica/impl/ob/gg;

    .line 162
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fq;->e()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/gg;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 164
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gg;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gg;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/gg;

    .line 168
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gg;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gg;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/gg;

    :cond_1
    return-void
.end method
