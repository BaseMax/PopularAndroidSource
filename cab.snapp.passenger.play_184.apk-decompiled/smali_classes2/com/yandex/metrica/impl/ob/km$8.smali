.class Lcom/yandex/metrica/impl/ob/km$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/km;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/km;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/km;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km$8;->c:Lcom/yandex/metrica/impl/ob/km;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/km$8;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/km$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 95
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km$8;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km$8;->c:Lcom/yandex/metrica/impl/ob/km;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/km;->a()Lcom/yandex/metrica/b;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/km$8;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/yandex/metrica/b;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
