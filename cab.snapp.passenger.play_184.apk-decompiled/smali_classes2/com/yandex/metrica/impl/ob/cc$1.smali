.class Lcom/yandex/metrica/impl/ob/cc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/cc;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/bt$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/bd;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bd;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cc$1;->a:Lcom/yandex/metrica/impl/ob/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/cb;Lcom/yandex/metrica/impl/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/metrica/impl/i;",
            ")Z"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cc$1;->a:Lcom/yandex/metrica/impl/ob/bd;

    invoke-virtual {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/cb;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yandex/metrica/impl/i;)Z
    .locals 0

    .line 28
    check-cast p1, Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/cc$1;->a(Lcom/yandex/metrica/impl/ob/cb;Lcom/yandex/metrica/impl/i;)Z

    move-result p1

    return p1
.end method
