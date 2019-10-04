.class Lcom/yandex/metrica/impl/ob/hi$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/hi;->c(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 229
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hi$1;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 231
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hi$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
