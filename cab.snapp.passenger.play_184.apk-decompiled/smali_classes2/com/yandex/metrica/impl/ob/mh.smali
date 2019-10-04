.class public Lcom/yandex/metrica/impl/ob/mh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/md;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/ls;)Lcom/yandex/metrica/impl/ob/mg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/yandex/metrica/impl/ob/ai;",
            ">(TC;",
            "Lcom/yandex/metrica/impl/ob/ls;",
            ")",
            "Lcom/yandex/metrica/impl/ob/mg;"
        }
    .end annotation

    .line 21
    new-instance p1, Lcom/yandex/metrica/impl/ob/mi;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/mi;-><init>()V

    return-object p1
.end method
