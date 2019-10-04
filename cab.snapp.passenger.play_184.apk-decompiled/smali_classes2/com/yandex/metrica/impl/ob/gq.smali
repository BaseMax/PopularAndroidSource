.class public Lcom/yandex/metrica/impl/ob/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/gr<",
        "Lcom/yandex/metrica/impl/ob/hl;",
        "Lcom/yandex/metrica/impl/ob/kh$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/gt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/gt;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gt;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/gq;->a:Lcom/yandex/metrica/impl/ob/gt;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0

    .line 17
    check-cast p1, Lcom/yandex/metrica/impl/ob/hl;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gq;->a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/kh$a$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kh$a$a;)Lcom/yandex/metrica/impl/ob/hl;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 40
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/gq;->a:Lcom/yandex/metrica/impl/ob/gt;

    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/kh$a$a;->b:Lcom/yandex/metrica/impl/ob/kh$a$c;

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/gt;->a(Lcom/yandex/metrica/impl/ob/kh$a$c;)Lcom/yandex/metrica/impl/ob/hq;

    move-result-object v2

    .line 41
    new-instance v17, Lcom/yandex/metrica/impl/ob/hl;

    iget-wide v4, v2, Lcom/yandex/metrica/impl/ob/hq;->c:J

    iget v6, v2, Lcom/yandex/metrica/impl/ob/hq;->d:F

    iget v7, v2, Lcom/yandex/metrica/impl/ob/hq;->e:I

    iget v8, v2, Lcom/yandex/metrica/impl/ob/hq;->f:I

    iget-wide v9, v2, Lcom/yandex/metrica/impl/ob/hq;->g:J

    iget v11, v2, Lcom/yandex/metrica/impl/ob/hq;->h:I

    iget-boolean v12, v2, Lcom/yandex/metrica/impl/ob/hq;->i:Z

    iget-wide v13, v1, Lcom/yandex/metrica/impl/ob/kh$a$a;->c:J

    iget-wide v1, v1, Lcom/yandex/metrica/impl/ob/kh$a$a;->d:J

    move-object/from16 v3, v17

    move-wide v15, v1

    invoke-direct/range {v3 .. v16}, Lcom/yandex/metrica/impl/ob/hl;-><init>(JFIIJIZJJ)V

    return-object v17
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/kh$a$a;
    .locals 3

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a$a;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gq;->a:Lcom/yandex/metrica/impl/ob/gt;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/gt;->a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/kh$a$c;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$a;->b:Lcom/yandex/metrica/impl/ob/kh$a$c;

    .line 30
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/hl;->b:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$a;->d:J

    .line 31
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/hl;->a:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$a;->c:J

    return-object v0
.end method

.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/yandex/metrica/impl/ob/kh$a$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gq;->a(Lcom/yandex/metrica/impl/ob/kh$a$a;)Lcom/yandex/metrica/impl/ob/hl;

    move-result-object p1

    return-object p1
.end method
