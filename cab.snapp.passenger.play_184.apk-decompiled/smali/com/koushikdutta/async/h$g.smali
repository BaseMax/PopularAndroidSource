.class final Lcom/koushikdutta/async/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/koushikdutta/async/h$f;",
        ">;"
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/koushikdutta/async/h$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    new-instance v0, Lcom/koushikdutta/async/h$g;

    invoke-direct {v0}, Lcom/koushikdutta/async/h$g;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/h$g;->INSTANCE:Lcom/koushikdutta/async/h$g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/koushikdutta/async/h$f;Lcom/koushikdutta/async/h$f;)I
    .locals 5

    .line 240
    iget-wide v0, p1, Lcom/koushikdutta/async/h$f;->time:J

    iget-wide v2, p2, Lcom/koushikdutta/async/h$f;->time:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 242
    :cond_0
    iget-wide v0, p1, Lcom/koushikdutta/async/h$f;->time:J

    iget-wide p1, p2, Lcom/koushikdutta/async/h$f;->time:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 233
    check-cast p1, Lcom/koushikdutta/async/h$f;

    check-cast p2, Lcom/koushikdutta/async/h$f;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/h$g;->compare(Lcom/koushikdutta/async/h$f;Lcom/koushikdutta/async/h$f;)I

    move-result p1

    return p1
.end method
