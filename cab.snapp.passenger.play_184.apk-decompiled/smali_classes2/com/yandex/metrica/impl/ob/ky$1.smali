.class Lcom/yandex/metrica/impl/ob/ky$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ky;->a(Lcom/yandex/metrica/impl/ob/kx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/kx;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kx;Ljava/lang/Object;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ky$1;->a:Lcom/yandex/metrica/impl/ob/kx;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ky$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ky$1;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "endConnection"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ky$1;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kw;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ky$1;->a:Lcom/yandex/metrica/impl/ob/kx;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/kx;->a(Lcom/yandex/metrica/impl/ob/kw;)V

    .line 46
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ky$1;->a()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ky$1;->a:Lcom/yandex/metrica/impl/ob/kx;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/kx;->a(Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ky$1;->a()V

    return-void
.end method
