.class public final Lcom/yandex/metrica/impl/ob/jn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/jh;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/jh;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jn;->c:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/jn;->a:Lcom/yandex/metrica/impl/ob/pa;

    .line 30
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/jn;->b:Lcom/yandex/metrica/impl/ob/jh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/yandex/metrica/impl/ob/jh;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jn;->b:Lcom/yandex/metrica/impl/ob/jh;

    return-object v0
.end method

.method public final c()Lcom/yandex/metrica/impl/ob/pa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jn;->a:Lcom/yandex/metrica/impl/ob/pa;

    return-object v0
.end method
