.class public Lcom/yandex/metrica/impl/bn;
.super Lcom/yandex/metrica/impl/am;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bn$g;,
        Lcom/yandex/metrica/impl/bn$d;,
        Lcom/yandex/metrica/impl/bn$h;,
        Lcom/yandex/metrica/impl/bn$a;,
        Lcom/yandex/metrica/impl/bn$f;,
        Lcom/yandex/metrica/impl/bn$e;,
        Lcom/yandex/metrica/impl/bn$c;,
        Lcom/yandex/metrica/impl/bn$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/gf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/yandex/metrica/impl/am;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/gf;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bn;->a:Lcom/yandex/metrica/impl/ob/gf;

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/ja;)I
    .locals 1

    .line 82
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->a()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/yandex/metrica/impl/bn;->a:Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gf;->a(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/am$a;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/bn$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bn$1;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/ja;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/bn;->a:Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/gf;->b(I)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gf;->i()V

    .line 92
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->b()Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->j()V

    return-void
.end method
