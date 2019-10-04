.class Lcom/yandex/metrica/impl/ob/ep;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/yandex/metrica/impl/ob/gf;

.field private b:Ljava/lang/String;

.field private c:Lcom/yandex/metrica/impl/ob/eo;

.field private d:Lcom/yandex/metrica/impl/ob/ma;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/gf;

    .line 40
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/eo;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/eo;-><init>()V

    .line 37
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/ep;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/gf;Lcom/yandex/metrica/impl/ob/eo;Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/gf;Lcom/yandex/metrica/impl/ob/eo;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ep;->b:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ep;->a:Lcom/yandex/metrica/impl/ob/gf;

    .line 63
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ep;->c:Lcom/yandex/metrica/impl/ob/eo;

    .line 64
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ep;->d:Lcom/yandex/metrica/impl/ob/ma;

    .line 66
    new-instance p1, Lcom/yandex/metrica/impl/ob/w;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ep;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/w;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 5

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ep;->c:Lcom/yandex/metrica/impl/ob/eo;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ep;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ep;->a:Lcom/yandex/metrica/impl/ob/gf;

    .line 50
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/gf;->g()Z

    move-result v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ep;->d:Lcom/yandex/metrica/impl/ob/ma;

    .line 49
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/eo;->a(Landroid/os/Bundle;Ljava/lang/String;ZLcom/yandex/metrica/impl/ob/ma;)V

    return-object v0
.end method
