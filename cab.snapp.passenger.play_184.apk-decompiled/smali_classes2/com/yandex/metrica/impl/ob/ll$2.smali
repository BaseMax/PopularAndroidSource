.class final Lcom/yandex/metrica/impl/ob/ll$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/yandex/metrica/impl/av$a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 51
    sget-object v0, Lcom/yandex/metrica/impl/av$a;->a:Lcom/yandex/metrica/impl/av$a;

    const-string v1, "wifi"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ll$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/yandex/metrica/impl/av$a;->b:Lcom/yandex/metrica/impl/av$a;

    const-string v1, "cell"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ll$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/av$a;->c:Lcom/yandex/metrica/impl/av$a;

    const-string v1, "offline"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ll$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/yandex/metrica/impl/av$a;->d:Lcom/yandex/metrica/impl/av$a;

    const-string v1, "undefined"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ll$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
