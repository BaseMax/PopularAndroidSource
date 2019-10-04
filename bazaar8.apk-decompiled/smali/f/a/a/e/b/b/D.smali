.class public Lf/a/a/e/b/b/D;
.super Ljava/lang/Object;
.source "RatingInputInflater.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/F;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/RatingBar;

.field public final synthetic b:Lf/a/a/e/b/b/F;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/F;Landroid/widget/RatingBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/D;->b:Lf/a/a/e/b/b/F;

    iput-object p2, p0, Lf/a/a/e/b/b/D;->a:Landroid/widget/RatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/b/D;->a:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p1

    invoke-static {}, Lf/a/a/e/b/b/F;->g()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/b/D;->a:Landroid/widget/RatingBar;

    invoke-static {}, Lf/a/a/e/b/b/F;->g()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
