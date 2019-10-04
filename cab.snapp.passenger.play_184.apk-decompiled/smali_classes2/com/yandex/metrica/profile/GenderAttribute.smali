.class public Lcom/yandex/metrica/profile/GenderAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/profile/GenderAttribute$Gender;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jn;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/jn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ot;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ot;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/jv;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/jv;-><init>()V

    const-string v3, "appmetrica_gender"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/impl/ob/jn;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    iput-object v0, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    return-void
.end method


# virtual methods
.method public withValue(Lcom/yandex/metrica/profile/GenderAttribute$Gender;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/profile/GenderAttribute$Gender;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v7, Lcom/yandex/metrica/impl/ob/jw;

    iget-object v1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 66
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lcom/yandex/metrica/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/ol;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/ol;-><init>()V

    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 69
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jn;->c()Lcom/yandex/metrica/impl/ob/pa;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/jk;

    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 70
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/jw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/os;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method

.method public withValueIfUndefined(Lcom/yandex/metrica/profile/GenderAttribute$Gender;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/profile/GenderAttribute$Gender;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/jz;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v7, Lcom/yandex/metrica/impl/ob/jw;

    iget-object v1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 88
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lcom/yandex/metrica/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/ol;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/ol;-><init>()V

    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 91
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jn;->c()Lcom/yandex/metrica/impl/ob/pa;

    move-result-object v5

    new-instance v6, Lcom/yandex/metrica/impl/ob/ju;

    iget-object p1, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 92
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/ju;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    move-object v1, v7

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

    .line 104
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    new-instance v1, Lcom/yandex/metrica/impl/ob/jt;

    iget-object v2, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 106
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/jn;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 107
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/jn;->c()Lcom/yandex/metrica/impl/ob/pa;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/profile/GenderAttribute;->a:Lcom/yandex/metrica/impl/ob/jn;

    .line 108
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/jn;->b()Lcom/yandex/metrica/impl/ob/jh;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/jt;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/jz;)V

    return-object v0
.end method
