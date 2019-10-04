.class final Lcom/yandex/metrica/impl/ob/lm$1;
.super Lcom/yandex/metrica/impl/ob/kn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/kn<",
        "Lcom/yandex/metrica/impl/ob/kl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/kn;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;
    .locals 1

    .line 1032
    new-instance v0, Lcom/yandex/metrica/impl/ob/kl;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/kl;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 1034
    invoke-static {p1}, Lcom/yandex/metrica/c;->a(Ljava/lang/String;)Lcom/yandex/metrica/c$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/c$a;->a(I)Lcom/yandex/metrica/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/c$a;->a()Lcom/yandex/metrica/c;

    move-result-object p1

    .line 1033
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kl;->a(Lcom/yandex/metrica/c;)V

    return-object v0
.end method
