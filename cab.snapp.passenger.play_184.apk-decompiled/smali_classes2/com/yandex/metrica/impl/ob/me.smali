.class public Lcom/yandex/metrica/impl/ob/me;
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
    .locals 1
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
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/mf;-><init>(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/ls;)V

    return-object v0
.end method
