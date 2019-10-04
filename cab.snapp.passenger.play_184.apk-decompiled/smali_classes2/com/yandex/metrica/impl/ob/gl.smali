.class public Lcom/yandex/metrica/impl/ob/gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P:",
        "Lcom/yandex/metrica/impl/ob/e;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/gk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/fl;

.field private final c:Lcom/yandex/metrica/impl/ob/gj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/gj<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/gr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/gr<",
            "TT;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/gj;Lcom/yandex/metrica/impl/ob/gr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/fl;",
            "Lcom/yandex/metrica/impl/ob/gj<",
            "TP;>;",
            "Lcom/yandex/metrica/impl/ob/gr<",
            "TT;TP;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gl;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gl;->b:Lcom/yandex/metrica/impl/ob/fl;

    .line 34
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/gl;->c:Lcom/yandex/metrica/impl/ob/gj;

    .line 35
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/gl;->d:Lcom/yandex/metrica/impl/ob/gr;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gl;->b:Lcom/yandex/metrica/impl/ob/fl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/fl;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gl;->d:Lcom/yandex/metrica/impl/ob/gr;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gl;->c:Lcom/yandex/metrica/impl/ob/gj;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/gj;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/e;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/gr;->a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gl;->d:Lcom/yandex/metrica/impl/ob/gr;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/gl;->c:Lcom/yandex/metrica/impl/ob/gj;

    invoke-interface {v2, v0}, Lcom/yandex/metrica/impl/ob/gj;->b([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/e;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/gr;->a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 52
    :catch_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gl;->d:Lcom/yandex/metrica/impl/ob/gr;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gl;->c:Lcom/yandex/metrica/impl/ob/gj;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/gj;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/e;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/gr;->a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gl;->b:Lcom/yandex/metrica/impl/ob/fl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gl;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/gl;->c:Lcom/yandex/metrica/impl/ob/gj;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/gl;->d:Lcom/yandex/metrica/impl/ob/gr;

    invoke-interface {v3, p1}, Lcom/yandex/metrica/impl/ob/gr;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/e;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/yandex/metrica/impl/ob/gj;->a(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/fl;->a(Ljava/lang/String;[B)V

    return-void
.end method
