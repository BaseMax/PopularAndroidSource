.class Lcom/yandex/metrica/impl/ay$h;
.super Lcom/yandex/metrica/impl/ay$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 798
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ay$e;-><init>()V

    return-void
.end method


# virtual methods
.method public f()I
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$h;->q:Lcom/yandex/metrica/impl/ob/oe;

    sget-object v1, Lcom/yandex/metrica/impl/ob/oe;->b:Lcom/yandex/metrica/impl/ob/oe;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
