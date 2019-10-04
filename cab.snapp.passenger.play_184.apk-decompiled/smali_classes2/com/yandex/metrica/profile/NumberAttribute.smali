.class public final Lcom/yandex/metrica/profile/NumberAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jn;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V
    .locals 1
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/jn;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/jn;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    iput-object v0, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    return-void
.end method


# virtual methods
.method public final withValue(D)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v7, Lcom/yandex/metrica/impl/ob/jr;

    iget-object v1, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 59
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/yandex/metrica/impl/ob/jo;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/jo;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/jk;

    new-instance v1, Lcom/yandex/metrica/impl/ob/jp;

    new-instance v3, Lcom/yandex/metrica/impl/ob/ok;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/ok;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/jp;-><init>(Lcom/yandex/metrica/impl/ob/ok;)V

    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    move-object v1, v7

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/jr;-><init>(Ljava/lang/String;DLcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method

.method public final withValueIfUndefined(D)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v7, Lcom/yandex/metrica/impl/ob/jr;

    iget-object v1, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 83
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/yandex/metrica/impl/ob/jo;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/jo;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/ju;

    new-instance v1, Lcom/yandex/metrica/impl/ob/jp;

    new-instance v3, Lcom/yandex/metrica/impl/ob/ok;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/ok;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/jp;-><init>(Lcom/yandex/metrica/impl/ob/ok;)V

    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    move-object v1, v7

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/jr;-><init>(Ljava/lang/String;DLcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method

.method public final withValueReset()Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v1, Lcom/yandex/metrica/impl/ob/jt;

    iget-object v2, p0, Lcom/yandex/metrica/profile/NumberAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 105
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/jo;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/jo;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/jp;

    new-instance v5, Lcom/yandex/metrica/impl/ob/ok;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/ob/ok;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/jp;-><init>(Lcom/yandex/metrica/impl/ob/ok;)V

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/jt;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method
