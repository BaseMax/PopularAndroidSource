.class final Lcab/snapp/passenger/units/tour/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/tour/e;->addPageTransformerForAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/tour/e;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/tour/e;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcab/snapp/passenger/units/tour/e$2;->a:Lcab/snapp/passenger/units/tour/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    const/high16 p1, -0x40800000    # -1.0f

    cmpg-float p1, p2, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    nop

    :cond_0
    return-void
.end method
