.class public abstract Lcom/yandex/metrica/impl/ob/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BaseHandler:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/do;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/do;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dh;->a:Lcom/yandex/metrica/impl/ob/do;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/do;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dh;->a:Lcom/yandex/metrica/impl/ob/do;

    return-object v0
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TBaseHandler;>;)V"
        }
    .end annotation
.end method
