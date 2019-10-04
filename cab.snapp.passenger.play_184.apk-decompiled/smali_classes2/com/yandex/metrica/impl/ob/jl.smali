.class public abstract Lcom/yandex/metrica/impl/ob/jl;
.super Lcom/yandex/metrica/impl/ob/jq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/metrica/impl/ob/jq;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ji;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/yandex/metrica/impl/ob/jq;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    .line 33
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/jl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/jy;)V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jl;->e()Lcom/yandex/metrica/impl/ob/ji;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jl;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/jy;->a(ILjava/lang/String;)Lcom/yandex/metrica/impl/ob/ke$a$a;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/yandex/metrica/impl/ob/ji;->a(Lcom/yandex/metrica/impl/ob/jy;Lcom/yandex/metrica/impl/ob/ke$a$a;Lcom/yandex/metrica/impl/ob/jg;)Lcom/yandex/metrica/impl/ob/ke$a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/jl;->a(Lcom/yandex/metrica/impl/ob/ke$a$a;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/ob/ke$a$a;)V
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jl;->a:Ljava/lang/Object;

    return-object v0
.end method
