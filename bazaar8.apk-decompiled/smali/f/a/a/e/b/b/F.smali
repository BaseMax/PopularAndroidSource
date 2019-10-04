.class public Lf/a/a/e/b/b/F;
.super Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
.source "RatingInputInflater.java"


# static fields
.field public static final g:Ljava/lang/Float;

.field public static final h:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lf/a/a/e/b/b/F;->g:Ljava/lang/Float;

    .line 2
    sput-object v0, Lf/a/a/e/b/b/F;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;-><init>()V

    return-void
.end method

.method public static synthetic g()Ljava/lang/Float;
    .locals 1

    .line 1
    sget-object v0, Lf/a/a/e/b/b/F;->h:Ljava/lang/Float;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
    .locals 5

    .line 1
    sget v0, Lf/a/a/e;->inline_rating_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 2
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    .line 4
    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p2

    aput p2, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_0
    new-instance p2, Lf/a/a/e/b/b/C;

    invoke-direct {p2, p0, p3, p1}, Lf/a/a/e/b/b/C;-><init>(Lf/a/a/e/b/b/F;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/widget/RatingBar;)V

    .line 8
    new-instance p3, Lf/a/a/e/b/b/D;

    invoke-direct {p3, p0, p1}, Lf/a/a/e/b/b/D;-><init>(Lf/a/a/e/b/b/F;Landroid/widget/RatingBar;)V

    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    new-instance p3, Lf/a/a/e/b/b/E;

    invoke-direct {p3, p0}, Lf/a/a/e/b/b/E;-><init>(Lf/a/a/e/b/b/F;)V

    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 10
    sget-object p3, Lf/a/a/e/b/b/F;->g:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 11
    invoke-virtual {p1, v3}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    const/4 p3, 0x5

    .line 12
    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setNumStars(I)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_rating:I

    return v0
.end method
