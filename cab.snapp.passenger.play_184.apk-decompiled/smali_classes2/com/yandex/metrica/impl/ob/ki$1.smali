.class final Lcom/yandex/metrica/impl/ob/ki$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/yandex/metrica/impl/bq$a$a;",
        "Lcom/yandex/metrica/impl/av$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 251
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 253
    sget-object v0, Lcom/yandex/metrica/impl/bq$a$a;->b:Lcom/yandex/metrica/impl/bq$a$a;

    sget-object v1, Lcom/yandex/metrica/impl/av$a;->b:Lcom/yandex/metrica/impl/av$a;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ki$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/yandex/metrica/impl/bq$a$a;->a:Lcom/yandex/metrica/impl/bq$a$a;

    sget-object v1, Lcom/yandex/metrica/impl/av$a;->a:Lcom/yandex/metrica/impl/av$a;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ki$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
