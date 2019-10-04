.class public abstract Lcom/yandex/metrica/impl/ob/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bb;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ay;->a:Lcom/yandex/metrica/impl/ob/ar;

    .line 27
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ay;->a:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/ar;->a(Lcom/yandex/metrica/impl/ob/bb;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ay;->a:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/ar;->b(Lcom/yandex/metrica/impl/ob/bb;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ay;->b()Lcom/yandex/metrica/impl/ob/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ay;->b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/ar;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ay;->a:Lcom/yandex/metrica/impl/ob/ar;

    return-object v0
.end method

.method protected abstract b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V
.end method
