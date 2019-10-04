.class Lcom/yandex/metrica/impl/ob/fg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/ff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fg$a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/a/a;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fg$a;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p1}, Lorg/a/a;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/a/a;->getJSONObject(I)Lorg/a/c;

    move-result-object v1

    .line 38
    new-instance v2, Lcom/yandex/metrica/impl/ob/ff;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/impl/ob/ff;-><init>(Lorg/a/c;)V

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/fg$a;->a(Lcom/yandex/metrica/impl/ob/ff;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ff;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ff;

    return-object p1
.end method

.method public a()Lorg/a/a;
    .locals 3

    .line 47
    new-instance v0, Lorg/a/a;

    invoke-direct {v0}, Lorg/a/a;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fg$a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/ff;

    .line 49
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ff;->a()Lorg/a/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/a/a;->put(Ljava/lang/Object;)Lorg/a/a;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ff;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg$a;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ff;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
