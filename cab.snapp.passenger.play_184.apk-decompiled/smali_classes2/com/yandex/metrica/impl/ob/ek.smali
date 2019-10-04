.class public Lcom/yandex/metrica/impl/ob/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Lcom/yandex/metrica/impl/ob/en;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ek;->a:J

    return-wide v0
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/ek;
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ek;->a:J

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/en;)Lcom/yandex/metrica/impl/ob/ek;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ek;->d:Lcom/yandex/metrica/impl/ob/en;

    return-object p0
.end method

.method public b(J)Lcom/yandex/metrica/impl/ob/ek;
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ek;->b:J

    return-object p0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/en;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ek;->d:Lcom/yandex/metrica/impl/ob/en;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ek;->b:J

    return-wide v0
.end method

.method public c(J)Lcom/yandex/metrica/impl/ob/ek;
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ek;->c:J

    return-object p0
.end method

.method public d()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ek;->c:J

    return-wide v0
.end method
