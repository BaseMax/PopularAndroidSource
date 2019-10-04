.class Lcom/yandex/metrica/impl/bi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/bj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;Ljava/util/Map;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/yandex/metrica/impl/bf;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/yandex/metrica/impl/bf;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yandex/metrica/impl/bi$1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/yandex/metrica/impl/bi$1;->b:Lcom/yandex/metrica/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/i;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/bi$1;->b:Lcom/yandex/metrica/impl/bf;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bi;->b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/bf;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    return-object p1
.end method
