.class public final Lcom/yandex/metrica/impl/ob/my;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/mu;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/mn;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/mx;Lcom/yandex/metrica/impl/ob/mx;Lcom/yandex/metrica/impl/ob/mx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/mx<",
            "Lcom/yandex/metrica/impl/ob/mn;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/mx<",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/mu;",
            ">;>;",
            "Lcom/yandex/metrica/impl/ob/mx<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/mx;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/mn;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/my;->b:Lcom/yandex/metrica/impl/ob/mn;

    .line 29
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/mx;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/my;->a:Ljava/util/List;

    .line 30
    invoke-interface {p3}, Lcom/yandex/metrica/impl/ob/mx;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/my;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/mu;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/my;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lcom/yandex/metrica/impl/ob/mn;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/my;->b:Lcom/yandex/metrica/impl/ob/mn;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/my;->c:Ljava/util/List;

    return-object v0
.end method
