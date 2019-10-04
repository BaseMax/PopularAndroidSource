.class Lcom/adyen/threeds2/internal/ui/activity/a$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/adyen/threeds2/internal/ui/activity/a;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/ui/activity/a;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->c:Lcom/adyen/threeds2/internal/ui/activity/a;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 216
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 217
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->c:Lcom/adyen/threeds2/internal/ui/activity/a;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Lcom/adyen/threeds2/internal/ui/activity/a;Landroid/view/View;)V

    .line 218
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->c:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-static {p1}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Lcom/adyen/threeds2/internal/ui/activity/a;)V

    .line 220
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->c:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-static {p1}, Lcom/adyen/threeds2/internal/ui/activity/a;->b(Lcom/adyen/threeds2/internal/ui/activity/a;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->b:Landroid/view/View;

    instance-of p1, p1, Lcom/adyen/threeds2/internal/ui/c/c;

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a$1;->c:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-static {p1}, Lcom/adyen/threeds2/internal/ui/activity/a;->c(Lcom/adyen/threeds2/internal/ui/activity/a;)Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/adyen/threeds2/internal/ui/b/a;->b()V

    :cond_0
    return-void
.end method
