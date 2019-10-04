.class public Lcom/yandex/metrica/impl/ob/ow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/pa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/pa<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/pa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ow;->a:Lcom/yandex/metrica/impl/ob/pa;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/yandex/metrica/impl/ob/oy;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ow;->a:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/oy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 30
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/ox;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/oy;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ox;-><init>(Ljava/lang/String;)V

    throw v0
.end method
