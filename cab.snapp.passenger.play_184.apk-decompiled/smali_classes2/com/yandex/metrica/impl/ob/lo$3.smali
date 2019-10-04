.class Lcom/yandex/metrica/impl/ob/lo$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/yandex/metrica/impl/ob/lo$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/lo;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/lo;)V
    .locals 1

    .line 218
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lo$3;->a:Lcom/yandex/metrica/impl/ob/lo;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 220
    new-instance p1, Lcom/yandex/metrica/impl/ob/lo$3$1;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/lo$3$1;-><init>(Lcom/yandex/metrica/impl/ob/lo$3;)V

    const-string v0, "p"

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/lo$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
