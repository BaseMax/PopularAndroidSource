.class public Lcom/yandex/metrica/impl/ob/gz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/nv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/nv;

    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/v;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/nv;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/gz;-><init>(Lcom/yandex/metrica/impl/ob/nv;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/nv;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gz;->a:Lcom/yandex/metrica/impl/ob/nv;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/gj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/gj<",
            "Lcom/yandex/metrica/impl/ob/kh$a;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/gi;

    new-instance v1, Lcom/yandex/metrica/impl/ob/gn;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/gn;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/nw;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/gz;->a:Lcom/yandex/metrica/impl/ob/nv;

    .line 33
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/nv;->a()[B

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/gz;->a:Lcom/yandex/metrica/impl/ob/nv;

    .line 34
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/nv;->b()[B

    move-result-object v4

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-direct {v2, v5, v3, v4}, Lcom/yandex/metrica/impl/ob/nw;-><init>(Ljava/lang/String;[B[B)V

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gi;-><init>(Lcom/yandex/metrica/impl/ob/gj;Lcom/yandex/metrica/impl/ob/nw;)V

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/gj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/gj<",
            "Lcom/yandex/metrica/impl/ob/kg$a;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/gi;

    new-instance v1, Lcom/yandex/metrica/impl/ob/gm;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/gm;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/nw;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/gz;->a:Lcom/yandex/metrica/impl/ob/nv;

    .line 44
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/nv;->a()[B

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/gz;->a:Lcom/yandex/metrica/impl/ob/nv;

    .line 45
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/nv;->b()[B

    move-result-object v4

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-direct {v2, v5, v3, v4}, Lcom/yandex/metrica/impl/ob/nw;-><init>(Ljava/lang/String;[B[B)V

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gi;-><init>(Lcom/yandex/metrica/impl/ob/gj;Lcom/yandex/metrica/impl/ob/nw;)V

    return-object v0
.end method
