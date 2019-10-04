.class public final Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView$rect$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AspectRatioRoundImageView.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView$rect$2;->this$0:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/RectF;
    .locals 4

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView$rect$2;->this$0:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView$rect$2;->this$0:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView$rect$2;->invoke()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method
