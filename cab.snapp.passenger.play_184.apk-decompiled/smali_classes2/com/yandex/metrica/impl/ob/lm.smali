.class public Lcom/yandex/metrica/impl/ob/lm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/kn<",
            "Lcom/yandex/metrica/impl/ob/kl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/lm$1;

    .line 26
    invoke-static {}, Lcom/yandex/metrica/impl/by;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/lm$1;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/lm;->a:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/b;
    .locals 2

    .line 41
    sget-object v0, Lcom/yandex/metrica/impl/ob/lm;->a:Lcom/yandex/metrica/impl/ob/kn;

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/kn;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/km;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/b;

    return-object p0
.end method
