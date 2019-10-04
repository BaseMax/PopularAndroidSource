.class public Lcom/yandex/metrica/impl/ob/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/gr<",
        "Lcom/yandex/metrica/impl/ob/hq;",
        "Lcom/yandex/metrica/impl/ob/kh$a$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0

    .line 16
    check-cast p1, Lcom/yandex/metrica/impl/ob/hq;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gt;->a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/kh$a$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kh$a$c;)Lcom/yandex/metrica/impl/ob/hq;
    .locals 11

    .line 43
    new-instance v10, Lcom/yandex/metrica/impl/ob/hq;

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$c;->b:J

    iget v3, p1, Lcom/yandex/metrica/impl/ob/kh$a$c;->c:F

    iget v4, p1, Lcom/yandex/metrica/impl/ob/kh$a$c;->d:I

    iget v5, p1, Lcom/yandex/metrica/impl/ob/kh$a$c;->e:I

    iget-wide v6, p1, Lcom/yandex/metrica/impl/ob/kh$a$c;->f:J

    iget v8, p1, Lcom/yandex/metrica/impl/ob/kh$a$c;->g:I

    iget-boolean v9, p1, Lcom/yandex/metrica/impl/ob/kh$a$c;->h:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/hq;-><init>(JFIIJIZ)V

    return-object v10
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/kh$a$c;
    .locals 3

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a$c;-><init>()V

    .line 27
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/hq;->c:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->b:J

    .line 28
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hq;->d:F

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->c:F

    .line 29
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hq;->e:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->d:I

    .line 30
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hq;->f:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->e:I

    .line 31
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/hq;->g:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->f:J

    .line 32
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hq;->h:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->g:I

    .line 33
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/hq;->i:Z

    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->h:Z

    return-object v0
.end method

.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/yandex/metrica/impl/ob/kh$a$c;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gt;->a(Lcom/yandex/metrica/impl/ob/kh$a$c;)Lcom/yandex/metrica/impl/ob/hq;

    move-result-object p1

    return-object p1
.end method
