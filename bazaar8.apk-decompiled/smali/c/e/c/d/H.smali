.class public final Lc/e/c/d/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/c/d/G;

.field public final synthetic b:Lc/e/c/d/I;


# direct methods
.method public constructor <init>(Lc/e/c/d/I;Lc/e/c/d/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/c/d/H;->b:Lc/e/c/d/I;

    iput-object p2, p0, Lc/e/c/d/H;->a:Lc/e/c/d/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "bg processing of the intent starting now"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/c/d/H;->b:Lc/e/c/d/I;

    invoke-static {v0}, Lc/e/c/d/I;->a(Lc/e/c/d/I;)Lc/e/c/d/E;

    move-result-object v0

    iget-object v1, p0, Lc/e/c/d/H;->a:Lc/e/c/d/G;

    iget-object v1, v1, Lc/e/c/d/G;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lc/e/c/d/E;->d(Landroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lc/e/c/d/H;->a:Lc/e/c/d/G;

    invoke-virtual {v0}, Lc/e/c/d/G;->a()V

    return-void
.end method
