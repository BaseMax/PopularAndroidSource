.class public Lcom/yandex/metrica/impl/ob/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bs$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:I

.field private c:Lcom/yandex/metrica/impl/ob/nq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bs;-><init>(Lcom/yandex/metrica/impl/ob/nq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/nq;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bs;->c:Lcom/yandex/metrica/impl/ob/nq;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/bs$a;
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->c:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/nq;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Ljava/lang/Long;

    .line 43
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/bs$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Ljava/lang/Long;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lcom/yandex/metrica/impl/ob/bs;->b:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/bs$a;-><init>(JJI)V

    .line 45
    iget v1, p0, Lcom/yandex/metrica/impl/ob/bs;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yandex/metrica/impl/ob/bs;->b:I

    return-object v0
.end method
