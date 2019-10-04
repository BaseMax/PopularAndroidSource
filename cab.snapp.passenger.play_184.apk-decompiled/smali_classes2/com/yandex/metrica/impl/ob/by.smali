.class public Lcom/yandex/metrica/impl/ob/by;
.super Lcom/yandex/metrica/impl/ob/bz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/bz<",
        "Lcom/yandex/metrica/impl/ob/cm;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cv;

.field private final b:Lcom/yandex/metrica/impl/ob/du;

.field private final c:Lcom/yandex/metrica/impl/ob/cs;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bz;-><init>()V

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/cv;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cv;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/cv;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/du;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/du;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/du;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/cs;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cs;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/cs;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/impl/ob/bw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/impl/ob/bw<",
            "Lcom/yandex/metrica/impl/ob/cm;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p1

    .line 39
    sget-object v1, Lcom/yandex/metrica/impl/ob/by$1;->a:[I

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/s$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/cs;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/cv;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/du;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/cv;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/bv;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/util/List;)V

    return-object p1
.end method
