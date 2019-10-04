.class public Lcom/yandex/metrica/impl/ob/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/ae<",
        "Lcom/yandex/metrica/impl/ob/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ao;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ao;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ao;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/y;-><init>(Lcom/yandex/metrica/impl/ao;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ao;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/y;->a:Lcom/yandex/metrica/impl/ao;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/x;
    .locals 8

    .line 29
    new-instance v7, Lcom/yandex/metrica/impl/ob/x;

    .line 31
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ls;->a()Lcom/yandex/metrica/impl/ob/ls;

    move-result-object v2

    .line 34
    invoke-static {}, Lcom/yandex/metrica/impl/v;->a()Lcom/yandex/metrica/impl/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->c()Lcom/yandex/metrica/impl/ob/kv;

    move-result-object v5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/y;->a:Lcom/yandex/metrica/impl/ao;

    .line 35
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ao;->a(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/an;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/x;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/kv;Lcom/yandex/metrica/impl/an;)V

    return-object v7
.end method

.method public synthetic b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/y;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/x;

    move-result-object p1

    return-object p1
.end method
