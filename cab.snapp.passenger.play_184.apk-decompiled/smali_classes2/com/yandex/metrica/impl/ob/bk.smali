.class public Lcom/yandex/metrica/impl/ob/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bc;
.implements Lcom/yandex/metrica/impl/ob/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/bc;",
        "Lcom/yandex/metrica/impl/ob/be<",
        "Lcom/yandex/metrica/impl/ob/ac<",
        "Lcom/yandex/metrica/impl/ob/bj;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/ak;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/bk;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/ac;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/bf;Lcom/yandex/metrica/impl/ob/az;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bb;
    .locals 2

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/z;

    .line 38
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/az;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/az;->b()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lcom/yandex/metrica/impl/ob/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/yandex/metrica/impl/ob/as;

    invoke-direct {p3, p0}, Lcom/yandex/metrica/impl/ob/as;-><init>(Lcom/yandex/metrica/impl/ob/be;)V

    .line 37
    invoke-virtual {p2, v0, p4, p3}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ae;)Lcom/yandex/metrica/impl/ob/ad;

    move-result-object p2

    check-cast p2, Lcom/yandex/metrica/impl/ob/ar;

    .line 43
    new-instance p3, Lcom/yandex/metrica/impl/ob/bj;

    invoke-direct {p3, p1, p2}, Lcom/yandex/metrica/impl/ob/bj;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;)V

    return-object p3
.end method

.method public synthetic b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/aj;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/bk;->d(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/z;",
            "Lcom/yandex/metrica/impl/ob/t;",
            "Lcom/yandex/metrica/impl/an;",
            ")",
            "Lcom/yandex/metrica/impl/ob/ac<",
            "Lcom/yandex/metrica/impl/ob/bj;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/yandex/metrica/impl/ob/av;

    .line 59
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->f()Lcom/yandex/metrica/impl/bs;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/av;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/bs;)V

    return-object v6
.end method

.method public d(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/an;)Lcom/yandex/metrica/impl/ob/bm;
    .locals 8

    .line 69
    new-instance v7, Lcom/yandex/metrica/impl/ob/bm;

    .line 74
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ls;->a()Lcom/yandex/metrica/impl/ob/ls;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/me;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/me;-><init>()V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/ob/md;)V

    return-object v7
.end method
