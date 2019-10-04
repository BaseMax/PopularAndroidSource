.class Lcom/yandex/metrica/impl/bn$a;
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
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 179
    new-instance v0, Lcom/yandex/metrica/impl/ob/gg;

    .line 180
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fq;->e()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gg;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gg;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    .line 183
    const-class v1, Lcom/yandex/metrica/impl/ob/ma;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/ha$a;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/ha;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ob/ha;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/gk;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/gk;->a(Ljava/lang/Object;)V

    return-void
.end method
