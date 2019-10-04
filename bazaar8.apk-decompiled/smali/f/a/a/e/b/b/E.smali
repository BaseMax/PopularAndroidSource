.class public Lf/a/a/e/b/b/E;
.super Ljava/lang/Object;
.source "RatingInputInflater.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/F;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/b/F;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/E;->a:Lf/a/a/e/b/b/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 0

    .line 1
    invoke-static {}, Lf/a/a/e/b/b/F;->g()Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_0

    .line 2
    invoke-static {}, Lf/a/a/e/b/b/F;->g()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_0
    return-void
.end method
