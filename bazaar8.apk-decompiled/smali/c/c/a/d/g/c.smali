.class public final Lc/c/a/d/g/c;
.super Ljava/lang/Object;
.source "ViewUtil.kt"


# static fields
# The value of this static final field might be set in the static constructor
.field public static final a:Ljava/lang/String; = "      |"

.field public static final b:Lc/c/a/d/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/d/g/c;

    invoke-direct {v0}, Lc/c/a/d/g/c;-><init>()V

    sput-object v0, Lc/c/a/d/g/c;->b:Lc/c/a/d/g/c;

    const-string v0, "      |"

    .line 2
    sput-object v0, Lc/c/a/d/g/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/View;)Landroid/graphics/Point;
    .locals 5

    const-string v0, "view"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [I

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    invoke-virtual {v2, v1, p0}, Landroid/graphics/Point;->offset(II)V

    return-object v2
.end method
