.class public abstract Lcom/yandex/metrica/impl/ob/jq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/jg;
.implements Lcom/yandex/metrica/impl/ob/jz;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/ji;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ji;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/yandex/metrica/impl/ob/jq;->b:I

    .line 35
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/jq;->a:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/jq;->c:Lcom/yandex/metrica/impl/ob/pa;

    .line 37
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/jq;->d:Lcom/yandex/metrica/impl/ob/ji;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/impl/ob/ke$a$a;
    .locals 2

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/ob/ke$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ke$a$a;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jq;->d()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ke$a$a;->c:I

    .line 64
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ke$a$a;->b:[B

    .line 65
    new-instance v1, Lcom/yandex/metrica/impl/ob/ke$a$c;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ke$a$c;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ke$a$a;->e:Lcom/yandex/metrica/impl/ob/ke$a$c;

    .line 66
    new-instance v1, Lcom/yandex/metrica/impl/ob/ke$a$b;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ke$a$b;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ke$a$a;->d:Lcom/yandex/metrica/impl/ob/ke$a$b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/yandex/metrica/impl/ob/jq;->b:I

    return v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/ji;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jq;->d:Lcom/yandex/metrica/impl/ob/ji;

    return-object v0
.end method

.method protected f()Z
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jq;->c:Lcom/yandex/metrica/impl/ob/pa;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/oy;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jq;->d()I

    move-result v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/jx;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is skipped because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/oy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
