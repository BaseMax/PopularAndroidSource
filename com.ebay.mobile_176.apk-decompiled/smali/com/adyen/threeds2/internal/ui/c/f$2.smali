.class Lcom/adyen/threeds2/internal/ui/c/f$2;
.super Lcom/adyen/threeds2/internal/ui/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/ui/c/f;->c(Lcom/adyen/threeds2/internal/a/a/b/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/ui/c/f;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/ui/c/f;Ljava/util/List;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$2;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/c/f$b;-><init>(Lcom/adyen/threeds2/internal/ui/c/f;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup;)Lcom/adyen/threeds2/internal/ui/c/f$e;
    .locals 3

    .line 181
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adyen/threeds2/R$layout;->a3ds2_view_multi_select_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 183
    new-instance v0, Lcom/adyen/threeds2/internal/ui/c/f$a;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/c/f$2;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-direct {v0, v1, p1}, Lcom/adyen/threeds2/internal/ui/c/f$a;-><init>(Lcom/adyen/threeds2/internal/ui/c/f;Landroid/view/View;)V

    return-object v0
.end method
