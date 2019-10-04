.class public Lcom/yandex/metrica/impl/ob/dg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ce;

.field private final b:Lcom/yandex/metrica/impl/ob/cf;

.field private final c:Lcom/yandex/metrica/impl/ob/cd;

.field private final d:Lcom/yandex/metrica/impl/ob/cg;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/x;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/ce;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ce;-><init>(Lcom/yandex/metrica/impl/ob/x;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Lcom/yandex/metrica/impl/ob/ce;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/cf;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cf;-><init>(Lcom/yandex/metrica/impl/ob/x;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->b:Lcom/yandex/metrica/impl/ob/cf;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/cd;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/x;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->c:Lcom/yandex/metrica/impl/ob/cd;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/cg;

    .line 33
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/v;->f()Lcom/yandex/metrica/impl/bs;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/x;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/ob/cg;-><init>(Lcom/yandex/metrica/impl/ob/x;Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/impl/ob/hw;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/cg;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/ce;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Lcom/yandex/metrica/impl/ob/ce;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cd;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->c:Lcom/yandex/metrica/impl/ob/cd;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/cf;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->b:Lcom/yandex/metrica/impl/ob/cf;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/cb;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/cg;

    return-object v0
.end method
