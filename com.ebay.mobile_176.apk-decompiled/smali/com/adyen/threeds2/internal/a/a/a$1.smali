.class Lcom/adyen/threeds2/internal/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/a/b/i;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/adyen/threeds2/internal/a/a/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/a/a/b/i;

.field final synthetic b:Lcom/adyen/threeds2/internal/a/a/a;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/a/a/a;Lcom/adyen/threeds2/internal/a/a/b/i;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/a$1;->b:Lcom/adyen/threeds2/internal/a/a/a;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/a/a$1;->a:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/a/a/b/j;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/a$1;->b:Lcom/adyen/threeds2/internal/a/a/a;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/a$1;->a:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-static {v0, v1}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/a/a;Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/a$1;->b:Lcom/adyen/threeds2/internal/a/a/a;

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/a$1;->a:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-static {v1, v0, v2}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/a/a;Lcom/adyen/threeds2/internal/a/a/b/j;Lcom/adyen/threeds2/internal/a/a/b/i;)Lcom/adyen/threeds2/internal/a/a/b/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/a/a/a$1;->a()Lcom/adyen/threeds2/internal/a/a/b/j;

    move-result-object v0

    return-object v0
.end method
