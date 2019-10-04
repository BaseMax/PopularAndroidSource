.class public final Lcom/yandex/metrica/impl/ob/oy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/pa;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "*>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/oy;->a:Z

    .line 24
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/oy;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/pa;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "*>;)",
            "Lcom/yandex/metrica/impl/ob/oy;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/oy;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/metrica/impl/ob/oy;-><init>(Lcom/yandex/metrica/impl/ob/pa;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/pa;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/metrica/impl/ob/oy;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/oy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/yandex/metrica/impl/ob/oy;-><init>(Lcom/yandex/metrica/impl/ob/pa;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/oy;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/oy;->b:Ljava/lang/String;

    return-object v0
.end method
