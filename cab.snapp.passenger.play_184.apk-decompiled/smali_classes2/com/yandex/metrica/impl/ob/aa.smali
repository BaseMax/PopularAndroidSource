.class public Lcom/yandex/metrica/impl/ob/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CU::",
        "Lcom/yandex/metrica/impl/ob/bb;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/ag<",
        "TCU;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TCU;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/aa;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TCU;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aa;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCU;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aa;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/ob/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCU;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aa;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/aa;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/aa;->b:Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/aa;->b:Z

    return v0
.end method
