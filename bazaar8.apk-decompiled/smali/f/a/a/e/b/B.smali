.class public Lf/a/a/e/b/B;
.super Lf/a/a/e/b/n;
.source "RatingInflater.java"


# static fields
.field public static final c:Ljava/lang/Float;


# instance fields
.field public d:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lf/a/a/e/b/B;->c:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 6

    .line 2
    sget v0, Lf/a/a/e;->inline_rating_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    .line 4
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    new-array v3, v2, [[I

    const/4 v4, 0x0

    new-array v5, v4, [I

    aput-object v5, v3, v4

    new-array v5, v2, [I

    .line 5
    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p1

    aput p1, v5, v4

    invoke-direct {v1, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 9
    sget-object p1, Lf/a/a/e/b/B;->c:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 10
    iget-object p1, p0, Lf/a/a/e/b/B;->d:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    const/4 p1, 0x5

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setNumStars(I)V

    return-object p2
.end method

.method public a(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/B;->d:Ljava/lang/Float;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_rating:I

    return v0
.end method
