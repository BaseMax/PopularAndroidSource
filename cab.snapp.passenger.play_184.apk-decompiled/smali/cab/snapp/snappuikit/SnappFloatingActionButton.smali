.class public Lcab/snapp/snappuikit/SnappFloatingActionButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;,
        Lcab/snapp/snappuikit/SnappFloatingActionButton$b;,
        Lcab/snapp/snappuikit/SnappFloatingActionButton$a;
    }
.end annotation


# static fields
.field public static final MODE_MINI:I = 0x1

.field public static final MODE_NORMAL:I

.field private static final k:Landroid/graphics/Xfermode;


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Landroid/graphics/RectF;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Z

.field private H:J

.field private I:F

.field private J:J

.field private K:D

.field private L:Z

.field private M:I

.field private N:F

.field private O:F

.field private P:F

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:Z

.field a:I

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Landroid/view/GestureDetector;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->k:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    .line 62
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    .line 63
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    .line 75
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->n:I

    .line 86
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 90
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->A:F

    .line 91
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->B:F

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->D:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->E:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->F:Landroid/graphics/Paint;

    const/high16 v0, 0x43430000    # 195.0f

    .line 98
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->I:F

    const-wide/16 v2, 0x0

    .line 99
    iput-wide v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->J:J

    .line 101
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->L:Z

    const/16 v0, 0x10

    .line 102
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->M:I

    const/16 v0, 0x64

    .line 110
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    .line 112
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;

    invoke-direct {v2, p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->j:Landroid/view/GestureDetector;

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p4, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    .line 62
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    .line 63
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p4, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    .line 75
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p4, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->n:I

    .line 86
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p4, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    const/high16 p4, -0x40800000    # -1.0f

    .line 90
    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->A:F

    .line 91
    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->B:F

    .line 93
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->D:Landroid/graphics/RectF;

    .line 94
    new-instance p4, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->E:Landroid/graphics/Paint;

    .line 95
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->F:Landroid/graphics/Paint;

    const/high16 p4, 0x43430000    # 195.0f

    .line 98
    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->I:F

    const-wide/16 v1, 0x0

    .line 99
    iput-wide v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->J:J

    .line 101
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->L:Z

    const/16 p4, 0x10

    .line 102
    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->M:I

    const/16 p4, 0x64

    .line 110
    iput p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    .line 112
    new-instance p4, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$1;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    invoke-direct {p4, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->j:Landroid/view/GestureDetector;

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1055
    new-instance v0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;Landroid/graphics/drawable/shapes/Shape;B)V

    .line 1056
    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 802
    sget-object v0, Lcab/snapp/snappuikit/a$h;->floatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 803
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabColorNormal:I

    const p3, -0x25bcca

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g:I

    .line 804
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabColorPressed:I

    const p3, -0x18afbd

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->h:I

    .line 805
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabColorDisabled:I

    const p3, -0x555556

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->l:I

    .line 806
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabColorRipple:I

    const p3, -0x66000001

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i:I

    .line 807
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabShowShadow:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    .line 808
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabShadowColor:I

    const/high16 v0, 0x66000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    .line 809
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabShadowRadius:I

    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    .line 810
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabShadowXOffset:I

    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    .line 811
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabShadowYOffset:I

    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    .line 812
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a:I

    .line 813
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->q:Ljava/lang/String;

    .line 814
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabProgressIndeterminate:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->S:Z

    .line 815
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabProgressColor:I

    const v0, -0xff6978

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->x:I

    .line 816
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabProgressBackgroundColor:I

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->y:I

    .line 817
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabProgressMax:I

    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    .line 818
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabProgressShowBackground:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->V:Z

    .line 820
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabProgress:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 822
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabProgress:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I

    .line 823
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->T:Z

    .line 826
    :cond_0
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabElevationCompat:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 828
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabElevationCompat:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    .line 829
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setElevation(F)V

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setElevationCompat(F)V

    .line 839
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(Landroid/content/res/TypedArray;)V

    .line 840
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b(Landroid/content/res/TypedArray;)V

    .line 841
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 843
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 845
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->S:Z

    if-eqz p1, :cond_3

    .line 847
    invoke-virtual {p0, p3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setIndeterminate(Z)V

    goto :goto_1

    .line 849
    :cond_3
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->T:Z

    if-eqz p1, :cond_4

    .line 851
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f()V

    .line 852
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I

    invoke-virtual {p0, p1, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setProgress(IZ)V

    .line 857
    :cond_4
    :goto_1
    invoke-virtual {p0, p3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setClickable(Z)V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 862
    sget v0, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabShowAnimation:I

    sget v1, Lcab/snapp/snappuikit/a$a;->fab_scale_up:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 863
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->o:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic b()Landroid/graphics/Xfermode;
    .locals 1

    .line 50
    sget-object v0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->k:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method private b(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 868
    sget v0, Lcab/snapp/snappuikit/a$h;->floatingActionButton_fabHideAnimation:I

    sget v1, Lcab/snapp/snappuikit/a$a;->fab_scale_down:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 869
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->p:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    return p0
.end method

.method private c()I
    .locals 2

    .line 880
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getCircleSize()I

    move-result v0

    .line 4900
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 881
    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    if-eqz v1, :cond_1

    .line 883
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method static synthetic c(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I
    .locals 0

    .line 50
    iget p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    return p0
.end method

.method private d()I
    .locals 2

    .line 890
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getCircleSize()I

    move-result v0

    .line 4905
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowY()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 891
    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    if-eqz v1, :cond_1

    .line 893
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method static synthetic d(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c()I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d()I

    move-result p0

    return p0
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1028
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, -0x101009e

    aput v4, v2, v3

    .line 1029
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->l:I

    invoke-direct {p0, v4}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v1, [I

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 1030
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->h:I

    invoke-direct {p0, v4}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    .line 1031
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g:I

    invoke-direct {p0, v4}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1033
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v1, [[I

    new-array v6, v3, [I

    aput-object v6, v5, v3

    new-array v6, v1, [I

    iget v7, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i:I

    aput v7, v6, v3

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v2, v4, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1037
    new-instance v0, Lcab/snapp/snappuikit/SnappFloatingActionButton$3;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$3;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1044
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setClipToOutline(Z)V

    .line 1045
    iput-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 1049
    :cond_0
    iput-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I
    .locals 0

    .line 50
    iget p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g:I

    return p0
.end method

.method private f()V
    .locals 2

    .line 1076
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->C:Z

    if-nez v0, :cond_2

    .line 1078
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->A:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getX()F

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->A:F

    .line 1083
    :cond_0
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->B:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1085
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getY()F

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->B:F

    :cond_1
    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->C:Z

    :cond_2
    return-void
.end method

.method static synthetic g(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getCircleSize()I

    move-result p0

    return p0
.end method

.method private g()V
    .locals 6

    .line 1123
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowX()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1124
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowY()I

    move-result v1

    .line 1125
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 1128
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c()I

    move-result v5

    sub-int/2addr v5, v0

    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    int-to-float v0, v5

    .line 1129
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d()I

    move-result v5

    sub-int/2addr v5, v1

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-direct {v2, v4, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->D:Landroid/graphics/RectF;

    return-void
.end method

.method private getCircleSize()I
    .locals 2

    .line 874
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a:I

    if-nez v1, :cond_0

    sget v1, Lcab/snapp/snappuikit/a$c;->fab_size_normal:I

    goto :goto_0

    :cond_0
    sget v1, Lcab/snapp/snappuikit/a$c;->fab_size_mini:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getShadowX()I
    .locals 2

    .line 910
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getShadowY()I
    .locals 2

    .line 915
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->V:Z

    return p0
.end method

.method static synthetic i(Lcab/snapp/snappuikit/SnappFloatingActionButton;)F
    .locals 0

    .line 5920
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method static synthetic j(Lcab/snapp/snappuikit/SnappFloatingActionButton;)F
    .locals 0

    .line 5925
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1064
    invoke-static {}, Lcab/snapp/c/a;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1070
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 12

    .line 964
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 966
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v5, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;

    invoke-direct {v5, p0, v3}, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;B)V

    aput-object v5, v4, v3

    .line 968
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 969
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 974
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    .line 975
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    .line 976
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v4, -0x1

    .line 981
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 983
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 985
    :cond_1
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getCircleSize()I

    move-result v5

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->n:I

    :goto_1
    sub-int/2addr v5, v4

    div-int/2addr v5, v2

    .line 986
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    iget v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 987
    :goto_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    iget v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 989
    :cond_4
    iget-boolean v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    if-eqz v6, :cond_5

    .line 991
    iget v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    add-int/2addr v4, v6

    add-int/2addr v3, v6

    .line 1003
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v7, 0x2

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    :goto_3
    add-int v10, v4, v5

    add-int v11, v3, v5

    move-object v6, v0

    move v8, v10

    move v9, v11

    .line 1002
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 1010
    invoke-direct {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getButtonMode()I
    .locals 1

    .line 301
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a:I

    return v0
.end method

.method public getColorDisabled()I
    .locals 1

    .line 182
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->l:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .line 172
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 177
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->h:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .line 192
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i:I

    return v0
.end method

.method getHideAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1152
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->p:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1015
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 1021
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->q:Ljava/lang/String;

    return-object v0
.end method

.method getLabelView()Lcab/snapp/snappuikit/fab/Label;
    .locals 1

    .line 1157
    sget v0, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    return-object v0
.end method

.method public getLabelVisibility()I
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 243
    :try_start_0
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 168
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 212
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 197
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    return v0
.end method

.method public getShadowXOffset()I
    .locals 1

    .line 202
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    return v0
.end method

.method public getShadowYOffset()I
    .locals 1

    .line 207
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    return v0
.end method

.method getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1147
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->o:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public hasShadow()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hide(Z)V
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2141
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->o:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 2142
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x4

    .line 762
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public hideButtonInMenu(Z)V
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 675
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hide(Z)V

    .line 677
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->hide(Z)V

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getHideAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappuikit/SnappFloatingActionButton$2;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$2;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized hideProgress()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 253
    :try_start_0
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->z:Z

    .line 255
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHidden()Z
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isProgressBackgroundShown()Z
    .locals 1

    monitor-enter p0

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActionDown()V
    .locals 4

    .line 769
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 771
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v2, [I

    .line 772
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    return-void

    .line 774
    :cond_0
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v2, [I

    .line 777
    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 2920
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 2925
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v2, v3

    .line 778
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 v1, 0x1

    .line 779
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public onActionUp()V
    .locals 5

    .line 786
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const v2, 0x101009e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 788
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 789
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    return-void

    .line 791
    :cond_0
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 794
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 3920
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 3925
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 795
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 796
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1201
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1203
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    if-eqz v0, :cond_9

    .line 1205
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->V:Z

    if-eqz v0, :cond_0

    .line 1207
    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->D:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->E:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    .line 1212
    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->G:Z

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 1216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->H:J

    sub-long/2addr v0, v4

    long-to-float v4, v0

    .line 1217
    iget v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->I:F

    mul-float v4, v4, v5

    div-float/2addr v4, v2

    .line 4930
    iget-wide v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->J:J

    const-wide/16 v7, 0xc8

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    .line 4932
    iget-wide v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->K:D

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v0

    iput-wide v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->K:D

    .line 4934
    iget-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->K:D

    const-wide v5, 0x407f400000000000L    # 500.0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_1

    sub-double/2addr v0, v5

    .line 4936
    iput-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->K:D

    const-wide/16 v0, 0x0

    .line 4937
    iput-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->J:J

    .line 4938
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->L:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->L:Z

    .line 4941
    :cond_1
    iget-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->K:D

    div-double/2addr v0, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 4942
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->M:I

    rsub-int v1, v1, 0x10e

    int-to-float v1, v1

    .line 4944
    iget-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->L:Z

    if-eqz v2, :cond_2

    mul-float v0, v0, v1

    .line 4946
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->N:F

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    .line 4951
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->N:F

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    .line 4952
    iput v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->N:F

    goto :goto_0

    :cond_3
    add-long/2addr v5, v0

    .line 4957
    iput-wide v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->J:J

    .line 1221
    :goto_0
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    add-float/2addr v0, v4

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    .line 1222
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    sub-float/2addr v0, v1

    .line 1224
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    .line 1227
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->H:J

    .line 1228
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    .line 1229
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->M:I

    int-to-float v1, v1

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->N:F

    add-float/2addr v1, v2

    .line 1231
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    const/high16 v1, 0x43070000    # 135.0f

    const/4 v6, 0x0

    const/high16 v7, 0x43070000    # 135.0f

    goto :goto_1

    :cond_5
    move v6, v0

    move v7, v1

    .line 1237
    :goto_1
    iget-object v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->D:Landroid/graphics/RectF;

    const/4 v8, 0x0

    iget-object v9, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->F:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1241
    :cond_6
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->P:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->H:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 1245
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->I:F

    mul-float v0, v0, v1

    .line 1247
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->P:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_7

    sub-float/2addr v1, v0

    .line 1249
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    goto :goto_2

    :cond_7
    add-float/2addr v1, v0

    .line 1253
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    .line 1255
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->H:J

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 1258
    :goto_3
    iget-object v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->D:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    iget v7, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->F:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_4
    if-eqz v3, :cond_9

    .line 1263
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->invalidate()V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1195
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c()I

    move-result p1

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1369
    instance-of v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;

    if-nez v0, :cond_0

    .line 1371
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1375
    :cond_0
    check-cast p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;

    .line 1376
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1378
    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->a:F

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    .line 1379
    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->b:F

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->P:F

    .line 1380
    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->c:F

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->I:F

    .line 1381
    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->e:I

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    .line 1382
    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->f:I

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->x:I

    .line 1383
    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->g:I

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->y:I

    .line 1384
    iget-boolean v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->k:Z

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->S:Z

    .line 1385
    iget-boolean v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->l:Z

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->T:Z

    .line 1386
    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->d:I

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I

    .line 1387
    iget-boolean v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->m:Z

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->R:Z

    .line 1388
    iget-boolean p1, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->n:Z

    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->V:Z

    .line 1390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->H:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1347
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1349
    new-instance v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;

    invoke-direct {v1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1351
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    iput v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->a:F

    .line 1352
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->P:F

    iput v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->b:F

    .line 1353
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->I:F

    iput v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->c:F

    .line 1354
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    iput v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->e:I

    .line 1355
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->x:I

    iput v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->f:I

    .line 1356
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->y:I

    iput v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->g:I

    .line 1357
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->G:Z

    iput-boolean v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->k:Z

    .line 1358
    iget-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I

    if-lez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->l:Z

    .line 1359
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I

    iput v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->d:I

    .line 1360
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->R:Z

    iput-boolean v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->m:Z

    .line 1361
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->V:Z

    iput-boolean v0, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->n:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1271
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f()V

    .line 1273
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1275
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setIndeterminate(Z)V

    .line 1276
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->S:Z

    goto :goto_2

    .line 1278
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->T:Z

    if-eqz v0, :cond_1

    .line 1280
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I

    iget-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->R:Z

    invoke-virtual {p0, v0, v2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setProgress(IZ)V

    .line 1281
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->T:Z

    goto :goto_2

    .line 1283
    :cond_1
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->z:Z

    if-eqz v0, :cond_5

    .line 5096
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    if-eqz v0, :cond_4

    .line 5098
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->A:F

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getX()F

    move-result v0

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getX()F

    move-result v0

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 5099
    :goto_0
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->B:F

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getY()F

    move-result v2

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getY()F

    move-result v2

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_1

    .line 5103
    :cond_4
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->A:F

    .line 5104
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->B:F

    .line 5106
    :goto_1
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setX(F)V

    .line 5107
    invoke-virtual {p0, v2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setY(F)V

    .line 1286
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->z:Z

    .line 1288
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 1290
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g()V

    .line 5112
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->E:Landroid/graphics/Paint;

    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->y:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5113
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->E:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5114
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->E:Landroid/graphics/Paint;

    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5116
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->F:Landroid/graphics/Paint;

    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->x:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5117
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->F:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5118
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->F:Landroid/graphics/Paint;

    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->w:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1292
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1312
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1314
    sget v0, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    if-nez v0, :cond_0

    .line 1317
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1320
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1334
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->onActionUp()V

    .line 1336
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionUp()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 1326
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->onActionUp()V

    .line 1328
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionUp()V

    .line 1339
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1341
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setButtonMode(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FabSize constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_1
    :goto_0
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a:I

    if-eq v0, p1, :cond_2

    .line 280
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a:I

    .line 281
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_2
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    .line 334
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->l:I

    if-eq p1, v0, :cond_0

    .line 336
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->l:I

    .line 337
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 287
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g:I

    if-eq v0, p1, :cond_0

    .line 289
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g:I

    .line 290
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 306
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->h:I

    if-eq p1, v0, :cond_0

    .line 308
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->h:I

    .line 309
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setColorRipple(I)V
    .locals 1

    .line 320
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i:I

    if-eq p1, v0, :cond_0

    .line 322
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i:I

    .line 323
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 500
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 502
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 503
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 505
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->t:Z

    const/4 p1, 0x0

    .line 506
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_1
    return-void
.end method

.method public setElevationCompat(F)V
    .locals 3

    const/high16 v0, 0x26000000

    .line 521
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 522
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    const/4 v1, 0x0

    .line 523
    iput v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    .line 524
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a:I

    if-nez v2, :cond_0

    move v0, p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    .line 526
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 528
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 529
    iput-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->u:Z

    .line 530
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    .line 531
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    .line 533
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 536
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    .line 541
    :cond_2
    iput-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    .line 542
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1172
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1173
    sget v0, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->p:Landroid/view/animation/Animation;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1396
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1398
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    .line 1399
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1406
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1407
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1409
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    .line 1410
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 557
    :try_start_0
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    .line 560
    :cond_0
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->z:Z

    .line 562
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->G:Z

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->H:J

    .line 564
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g()V

    .line 566
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLabelColors(III)V
    .locals 5

    .line 631
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->getPaddingLeft()I

    move-result v1

    .line 634
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->getPaddingTop()I

    move-result v2

    .line 635
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->getPaddingRight()I

    move-result v3

    .line 636
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->getPaddingBottom()I

    move-result v4

    .line 638
    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/snappuikit/fab/Label;->setColors(III)V

    .line 639
    invoke-virtual {v0}, Lcab/snapp/snappuikit/fab/Label;->updateBackground()V

    .line 640
    invoke-virtual {v0, v1, v2, v3, v4}, Lcab/snapp/snappuikit/fab/Label;->setPadding(IIII)V

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    .line 469
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->q:Ljava/lang/String;

    .line 470
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->setTextColor(I)V

    return-void
.end method

.method public setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 650
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 493
    :goto_0
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->setHandleVisibilityChanges(Z)V

    :cond_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1299
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->u:Z

    if-eqz v0, :cond_0

    .line 1301
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1302
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1303
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1304
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1306
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 0

    monitor-enter p0

    .line 571
    :try_start_0
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1417
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    .line 1419
    sget p1, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1422
    new-instance v0, Lcab/snapp/snappuikit/SnappFloatingActionButton$4;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$4;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(IZ)V
    .locals 2

    monitor-enter p0

    .line 576
    :try_start_0
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 578
    monitor-exit p0

    return-void

    .line 581
    :cond_0
    :try_start_1
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->Q:I

    .line 582
    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->R:Z

    .line 584
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->C:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 586
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->T:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 590
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->v:Z

    .line 591
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->z:Z

    .line 592
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g()V

    .line 593
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f()V

    .line 594
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 600
    :cond_2
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    if-le p1, v0, :cond_3

    .line 602
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    :cond_3
    :goto_0
    int-to-float p1, p1

    .line 605
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->P:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    .line 607
    monitor-exit p0

    return-void

    .line 610
    :cond_4
    :try_start_3
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    if-lez v0, :cond_5

    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->U:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->P:F

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->H:J

    if-nez p2, :cond_6

    .line 615
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->P:F

    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->O:F

    .line 618
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->invalidate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 460
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    if-eq v0, p1, :cond_0

    .line 462
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    .line 463
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setShadowColorResource(I)V
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 451
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    if-eq v0, p1, :cond_0

    .line 453
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    .line 454
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    .line 382
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->requestLayout()V

    .line 383
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 363
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    if-eq v0, p1, :cond_0

    .line 365
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    .line 366
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->requestLayout()V

    .line 367
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setShadowXOffset(F)V
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    .line 413
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->requestLayout()V

    .line 414
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    return-void
.end method

.method public setShadowXOffset(I)V
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 394
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    if-eq v0, p1, :cond_0

    .line 396
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    .line 397
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->requestLayout()V

    .line 398
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setShadowYOffset(F)V
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    .line 444
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->requestLayout()V

    .line 445
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    return-void
.end method

.method public setShadowYOffset(I)V
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 425
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    if-eq v0, p1, :cond_0

    .line 427
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    .line 428
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->requestLayout()V

    .line 429
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->o:Landroid/view/animation/Animation;

    return-void
.end method

.method public declared-synchronized setShowProgressBackground(Z)V
    .locals 0

    monitor-enter p0

    .line 623
    :try_start_0
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShowShadow(Z)V
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    if-eq v0, p1, :cond_0

    .line 350
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    .line 351
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1183
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1184
    sget v0, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/fab/Label;

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 739
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2135
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 2136
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->o:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    .line 745
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showButtonInMenu(Z)V
    .locals 1

    .line 706
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 711
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setVisibility(I)V

    .line 712
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->show(Z)V

    .line 713
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/fab/Label;->show(Z)V

    :cond_1
    return-void
.end method

.method public toggle(Z)V
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->show(Z)V

    return-void

    .line 728
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hide(Z)V

    return-void
.end method
