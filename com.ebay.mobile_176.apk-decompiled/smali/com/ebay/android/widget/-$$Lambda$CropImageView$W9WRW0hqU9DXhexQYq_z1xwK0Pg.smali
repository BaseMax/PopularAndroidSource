.class public final synthetic Lcom/ebay/android/widget/-$$Lambda$CropImageView$W9WRW0hqU9DXhexQYq_z1xwK0Pg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/android/widget/CropImageView;

.field private final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/android/widget/CropImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/android/widget/-$$Lambda$CropImageView$W9WRW0hqU9DXhexQYq_z1xwK0Pg;->f$0:Lcom/ebay/android/widget/CropImageView;

    iput-object p2, p0, Lcom/ebay/android/widget/-$$Lambda$CropImageView$W9WRW0hqU9DXhexQYq_z1xwK0Pg;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ebay/android/widget/-$$Lambda$CropImageView$W9WRW0hqU9DXhexQYq_z1xwK0Pg;->f$0:Lcom/ebay/android/widget/CropImageView;

    iget-object v1, p0, Lcom/ebay/android/widget/-$$Lambda$CropImageView$W9WRW0hqU9DXhexQYq_z1xwK0Pg;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/ebay/android/widget/CropImageView;->lambda$initImage$0(Lcom/ebay/android/widget/CropImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
