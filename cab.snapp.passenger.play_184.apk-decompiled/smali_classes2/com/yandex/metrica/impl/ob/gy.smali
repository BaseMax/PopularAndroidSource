.class public Lcom/yandex/metrica/impl/ob/gy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/gr<",
        "Lcom/yandex/metrica/impl/ob/mc;",
        "Lcom/yandex/metrica/impl/ob/kh$a$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0

    .line 8
    check-cast p1, Lcom/yandex/metrica/impl/ob/mc;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gy;->a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/kh$a$f;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/kh$a$f;
    .locals 3

    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a$f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a$f;-><init>()V

    .line 14
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/mc;->a:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kh$a$f;)Lcom/yandex/metrica/impl/ob/mc;
    .locals 3

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/mc;

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/mc;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/yandex/metrica/impl/ob/kh$a$f;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gy;->a(Lcom/yandex/metrica/impl/ob/kh$a$f;)Lcom/yandex/metrica/impl/ob/mc;

    move-result-object p1

    return-object p1
.end method
