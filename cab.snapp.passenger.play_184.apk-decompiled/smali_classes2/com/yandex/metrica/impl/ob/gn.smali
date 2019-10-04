.class public Lcom/yandex/metrica/impl/ob/gn;
.super Lcom/yandex/metrica/impl/ob/gh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/gh<",
        "Lcom/yandex/metrica/impl/ob/kh$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/gh;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/yandex/metrica/impl/ob/e;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/gn;->c()Lcom/yandex/metrica/impl/ob/kh$a;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Lcom/yandex/metrica/impl/ob/kh$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2607
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a;-><init>()V

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;[B)Lcom/yandex/metrica/impl/ob/e;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/kh$a;

    return-object p1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/gn;->c()Lcom/yandex/metrica/impl/ob/kh$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gn;->a([B)Lcom/yandex/metrica/impl/ob/kh$a;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/yandex/metrica/impl/ob/kh$a;
    .locals 2

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a;-><init>()V

    .line 21
    new-instance v1, Lcom/yandex/metrica/impl/ob/kh$a$b;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/kh$a$b;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a;->j:Lcom/yandex/metrica/impl/ob/kh$a$b;

    return-object v0
.end method
