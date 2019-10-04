.class public Lcom/yandex/metrica/profile/StringAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/os<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/jn;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/os;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/os<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/jh;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/ob/jn;

    invoke-direct {v0, p1, p3, p4}, Lcom/yandex/metrica/impl/ob/jn;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    iput-object v0, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 45
    iput-object p2, p0, Lcom/yandex/metrica/profile/StringAttribute;->a:Lcom/yandex/metrica/impl/ob/os;

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/String;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v7, Lcom/yandex/metrica/impl/ob/jw;

    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 59
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/yandex/metrica/profile/StringAttribute;->a:Lcom/yandex/metrica/impl/ob/os;

    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 62
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->c()Lcom/yandex/metrica/impl/ob/pa;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/jk;

    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 63
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/jw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/os;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method

.method public withValueIfUndefined(Ljava/lang/String;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v7, Lcom/yandex/metrica/impl/ob/jw;

    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 80
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/yandex/metrica/profile/StringAttribute;->a:Lcom/yandex/metrica/impl/ob/os;

    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 83
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->c()Lcom/yandex/metrica/impl/ob/pa;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/ju;

    iget-object v1, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 84
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/jw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/os;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method

.method public withValueReset()Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v1, Lcom/yandex/metrica/impl/ob/jt;

    iget-object v2, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 99
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 100
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/jn;->c()Lcom/yandex/metrica/impl/ob/pa;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/profile/StringAttribute;->b:Lcom/yandex/metrica/impl/ob/jn;

    .line 101
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/jt;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method
