.class public final Lh/f/b/g;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# static fields
# The value of this static final field might be set in the static constructor
.field public static final a:F = 1.4E-45f

# The value of this static final field might be set in the static constructor
.field public static final b:F = 3.4028235E38f

# The value of this static final field might be set in the static constructor
.field public static final c:F = Infinityf

# The value of this static final field might be set in the static constructor
.field public static final d:F = -Infinityf

# The value of this static final field might be set in the static constructor
.field public static final e:F = NaNf

.field public static final f:Lh/f/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/f/b/g;

    invoke-direct {v0}, Lh/f/b/g;-><init>()V

    sput-object v0, Lh/f/b/g;->f:Lh/f/b/g;

    const/4 v0, 0x1

    .line 2
    sput v0, Lh/f/b/g;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    sput v0, Lh/f/b/g;->b:F

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 4
    sput v0, Lh/f/b/g;->c:F

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 5
    sput v0, Lh/f/b/g;->d:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    sput v0, Lh/f/b/g;->e:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    sget v0, Lh/f/b/g;->e:F

    return v0
.end method
