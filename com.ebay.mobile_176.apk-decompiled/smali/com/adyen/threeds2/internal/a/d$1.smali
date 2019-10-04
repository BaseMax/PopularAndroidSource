.class Lcom/adyen/threeds2/internal/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/a/d;->a(Lcom/adyen/threeds2/internal/a/a/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/a/a/b/j;

.field final synthetic b:Lcom/adyen/threeds2/internal/a/d;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/a/d;Lcom/adyen/threeds2/internal/a/a/b/j;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/d$1;->b:Lcom/adyen/threeds2/internal/a/d;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/d$1;->a:Lcom/adyen/threeds2/internal/a/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/d$1;->b:Lcom/adyen/threeds2/internal/a/d;

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/d;->a(Lcom/adyen/threeds2/internal/a/d;)Lcom/adyen/threeds2/internal/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/d$1;->a:Lcom/adyen/threeds2/internal/a/a/b/j;

    invoke-interface {v0, v1}, Lcom/adyen/threeds2/internal/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method
