.class abstract Lcom/yandex/metrica/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/j$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/j$a;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/j;->a:Lcom/yandex/metrica/impl/j$a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/j;->a:Lcom/yandex/metrica/impl/j$a;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/j$a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/j;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method abstract b(Ljava/lang/Throwable;)V
.end method
