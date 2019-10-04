.class Lcom/adyen/threeds2/internal/a/h$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adyen/threeds2/internal/a/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/adyen/threeds2/internal/a/h$1;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/a/h$1;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/h$1$1;->c:Lcom/adyen/threeds2/internal/a/h$1;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/h$1$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/h$1$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/h$1$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/h$1$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
