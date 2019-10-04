.class abstract Lcom/adyen/threeds2/internal/ui/c/f$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/ui/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/a/a/b/p;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/adyen/threeds2/internal/ui/c/f;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/ui/c/f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/a/a/b/p;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$b;->b:Lcom/adyen/threeds2/internal/ui/c/f;

    .line 217
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/adyen/threeds2/internal/a/a/b/p;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/p;

    return-object p1
.end method

.method abstract a(Landroid/view/ViewGroup;)Lcom/adyen/threeds2/internal/ui/c/f$e;
.end method

.method public getCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f$b;->a(I)Lcom/adyen/threeds2/internal/a/a/b/p;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 239
    invoke-virtual {p0, p3}, Lcom/adyen/threeds2/internal/ui/c/f$b;->a(Landroid/view/ViewGroup;)Lcom/adyen/threeds2/internal/ui/c/f$e;

    move-result-object p2

    .line 241
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/f$b;->a(I)Lcom/adyen/threeds2/internal/a/a/b/p;

    move-result-object p1

    .line 242
    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/ui/c/f$e;->a(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    .line 244
    iget-object p1, p2, Lcom/adyen/threeds2/internal/ui/c/f$e;->b:Landroid/view/View;

    return-object p1
.end method
