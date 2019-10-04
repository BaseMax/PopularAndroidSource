.class public Lcom/yandex/metrica/impl/ob/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<COMPONENT::",
        "Lcom/yandex/metrica/impl/ob/ak;",
        ":",
        "Lcom/yandex/metrica/impl/ob/ai<",
        "+",
        "Lcom/yandex/metrica/impl/ob/bb;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/ae<",
        "Lcom/yandex/metrica/impl/ob/ar;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/be<",
            "TCOMPONENT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/be<",
            "TCOMPONENT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/be;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/ar;
    .locals 2

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/ar;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/yandex/metrica/impl/ob/ar;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/be;)V

    return-object v0
.end method

.method public synthetic b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/as;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/ar;

    move-result-object p1

    return-object p1
.end method
