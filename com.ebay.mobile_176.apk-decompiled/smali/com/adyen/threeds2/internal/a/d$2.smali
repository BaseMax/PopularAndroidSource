.class Lcom/adyen/threeds2/internal/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/a/d;->a(Ljava/lang/Exception;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adyen/threeds2/internal/a/d;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/a/d;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/d$2;->c:Lcom/adyen/threeds2/internal/a/d;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/d$2;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/d$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/d$2;->c:Lcom/adyen/threeds2/internal/a/d;

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/d;->a(Lcom/adyen/threeds2/internal/a/d;)Lcom/adyen/threeds2/internal/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/d$2;->a:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/d$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/adyen/threeds2/internal/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
