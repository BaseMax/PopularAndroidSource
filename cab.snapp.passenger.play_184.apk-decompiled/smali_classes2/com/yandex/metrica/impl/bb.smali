.class public Lcom/yandex/metrica/impl/bb;
.super Lcom/yandex/metrica/impl/bd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bb$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bd;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-void
.end method

.method public static F()Lcom/yandex/metrica/impl/bc$a;
    .locals 1

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/bb$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bb$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected D()J
    .locals 2

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method protected E()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/bd;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/bd;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic g()V
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/bd;->g()V

    return-void
.end method

.method public bridge synthetic u()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/yandex/metrica/impl/bd;->u()Z

    move-result v0

    return v0
.end method
