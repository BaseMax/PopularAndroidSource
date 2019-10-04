.class Lcom/yandex/metrica/impl/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/p$a$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/yandex/metrica/impl/p$a$a;
    .locals 3

    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 47
    new-instance p1, Lorg/a/c;

    invoke-direct {p1, v1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/yandex/metrica/impl/p$a$a;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/p$a$a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method
