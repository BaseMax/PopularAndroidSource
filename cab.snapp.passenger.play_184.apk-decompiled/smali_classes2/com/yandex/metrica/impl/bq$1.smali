.class final Lcom/yandex/metrica/impl/bq$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/yandex/metrica/impl/bq$a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 375
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 377
    sget-object v0, Lcom/yandex/metrica/impl/bq$a$a;->a:Lcom/yandex/metrica/impl/bq$a$a;

    const-string v1, "wifi"

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bq$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/yandex/metrica/impl/bq$a$a;->b:Lcom/yandex/metrica/impl/bq$a$a;

    const-string v1, "cell"

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bq$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
