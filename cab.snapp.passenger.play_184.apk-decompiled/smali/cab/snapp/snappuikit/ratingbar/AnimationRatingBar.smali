.class public Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;
.super Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;
.source "SourceFile"


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Ljava/lang/Runnable;

.field protected c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->c:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->a()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->c:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->a()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->c:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->a:Landroid/os/Handler;

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xf

    add-long/2addr v0, v2

    .line 42
    iget-object v2, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;->c:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
