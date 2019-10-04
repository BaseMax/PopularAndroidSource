.class Lcom/yandex/metrica/impl/ay$e;
.super Lcom/yandex/metrica/impl/ay$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private s:Lcom/yandex/metrica/impl/ob/od;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 715
    new-instance v0, Lcom/yandex/metrica/impl/ob/od;

    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/v;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/od;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ay$e;-><init>(Lcom/yandex/metrica/impl/ob/od;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/od;)V
    .locals 0

    .line 718
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ay$c;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$e;->s:Lcom/yandex/metrica/impl/ob/od;

    return-void
.end method


# virtual methods
.method protected b()[B
    .locals 3

    .line 724
    invoke-super {p0}, Lcom/yandex/metrica/impl/ay$c;->b()[B

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/yandex/metrica/impl/ay$e;->s:Lcom/yandex/metrica/impl/ob/od;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ay$e;->q:Lcom/yandex/metrica/impl/ob/oe;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/od;->a(Lcom/yandex/metrica/impl/ob/oe;)Lcom/yandex/metrica/impl/ob/oc;

    move-result-object v1

    .line 726
    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/oc;->a([B)[B

    move-result-object v0

    return-object v0
.end method
