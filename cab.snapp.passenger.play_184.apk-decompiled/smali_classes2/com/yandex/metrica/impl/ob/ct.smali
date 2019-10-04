.class public Lcom/yandex/metrica/impl/ob/ct;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fq;

.field private final b:Lcom/yandex/metrica/impl/ob/ir;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/fq;Lcom/yandex/metrica/impl/ob/ir;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 34
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/fq;

    .line 35
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Lcom/yandex/metrica/impl/ob/ir;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 5

    .line 39
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ct;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->A()Lcom/yandex/metrica/impl/ob/gb;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gb;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/fq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fq;->d()Lcom/yandex/metrica/impl/ob/fu;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ct;->b:Lcom/yandex/metrica/impl/ob/ir;

    .line 53
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ct;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ir;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->o()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Ljava/util/List;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->f(Lcom/yandex/metrica/impl/i;)V

    .line 59
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/fu;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
