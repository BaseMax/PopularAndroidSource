.class Lcom/adyen/threeds2/internal/f$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/f$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/f$a;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/f$a;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/adyen/threeds2/internal/f$a$1;->a:Lcom/adyen/threeds2/internal/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 399
    invoke-static {}, Lcom/adyen/threeds2/internal/f;->a()Lcom/adyen/threeds2/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/f;->b()V

    return-void
.end method
