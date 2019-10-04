.class public Lcom/yandex/metrica/impl/ob/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/yandex/metrica/impl/ob/ah;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/bz<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/bz<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bt;->a:Lcom/yandex/metrica/impl/ob/bz;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/bw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/i;",
            ")",
            "Lcom/yandex/metrica/impl/ob/bw<",
            "TT;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bt;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bz;->a(I)Lcom/yandex/metrica/impl/ob/bw;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bt$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/i;",
            "Lcom/yandex/metrica/impl/ob/bt$a<",
            "TT;>;)Z"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bt;->a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 36
    invoke-interface {p2, v1, p1}, Lcom/yandex/metrica/impl/ob/bt$a;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
