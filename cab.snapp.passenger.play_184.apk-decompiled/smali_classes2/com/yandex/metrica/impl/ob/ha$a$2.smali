.class Lcom/yandex/metrica/impl/ob/ha$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ha$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/ha<",
        "Lcom/yandex/metrica/impl/ob/ki$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/gk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/yandex/metrica/impl/ob/gk<",
            "Lcom/yandex/metrica/impl/ob/ki$a;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/ob/gl;

    .line 60
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fq;->b()Lcom/yandex/metrica/impl/ob/fl;

    move-result-object p1

    new-instance v1, Lcom/yandex/metrica/impl/ob/gz;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/gz;-><init>()V

    .line 61
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gz;->b()Lcom/yandex/metrica/impl/ob/gj;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/gu;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/gu;-><init>()V

    const-string v3, "provided_request_state"

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/yandex/metrica/impl/ob/gl;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/gj;Lcom/yandex/metrica/impl/ob/gr;)V

    return-object v0
.end method
