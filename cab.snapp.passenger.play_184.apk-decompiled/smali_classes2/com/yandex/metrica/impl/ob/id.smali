.class Lcom/yandex/metrica/impl/ob/id;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/hz;
    .locals 2

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/ig$b;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ig$b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/yandex/metrica/impl/ob/ig$a;

    invoke-direct {v1, p2, p3}, Lcom/yandex/metrica/impl/ob/ig$a;-><init>(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ig$b;->a(Lcom/yandex/metrica/impl/ob/ig$a;)Lcom/yandex/metrica/impl/ob/ig;

    move-result-object p2

    .line 24
    new-instance p3, Lcom/yandex/metrica/impl/ob/hz;

    .line 26
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->f()Lcom/yandex/metrica/impl/bs;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/hz;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/bs;)V

    return-object p3
.end method
