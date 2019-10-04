.class public abstract Lcom/yandex/metrica/impl/at;
.super Lcom/yandex/metrica/impl/aq;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ap;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ap;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yandex/metrica/impl/aq;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->a:Lcom/yandex/metrica/impl/ap;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->a:Lcom/yandex/metrica/impl/ap;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->l()I

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->m()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->n()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ap;->a(I[BLjava/util/Map;)Z

    move-result v0

    return v0
.end method
