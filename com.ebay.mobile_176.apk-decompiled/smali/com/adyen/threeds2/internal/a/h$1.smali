.class Lcom/adyen/threeds2/internal/a/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/a/h;->a(Ljava/lang/ref/WeakReference;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lcom/adyen/threeds2/internal/a/h;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/a/h;Landroid/net/Uri;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/h$1;->c:Lcom/adyen/threeds2/internal/a/h;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/h$1;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/h$1;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    :try_start_0
    new-instance v0, Lcom/adyen/threeds2/internal/a/i$a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/i$a;-><init>()V

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/h$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/a/i$a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/i$a;->a()Lcom/adyen/threeds2/internal/a/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/i$a;->b()Lcom/adyen/threeds2/internal/a/i;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/h$1;->c:Lcom/adyen/threeds2/internal/a/h;

    invoke-virtual {v1, v0}, Lcom/adyen/threeds2/internal/a/h;->a(Lcom/adyen/threeds2/internal/a/i;)Lcom/adyen/threeds2/internal/a/j;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/j;->b()[B

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/h$1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/adyen/threeds2/internal/a/h$1;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 102
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    new-instance v2, Lcom/adyen/threeds2/internal/a/h$1$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/adyen/threeds2/internal/a/h$1$1;-><init>(Lcom/adyen/threeds2/internal/a/h$1;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
